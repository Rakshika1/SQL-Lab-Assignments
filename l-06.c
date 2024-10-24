#include <stdio.h>
#include <string.h>

#define MAX_FDS 10    // Maximum number of functional dependencies
#define MAX_ATTRS 10  // Maximum number of attributes

// Structure to represent a functional dependency (X -> Y)
struct FunctionalDependency {
    char left[MAX_ATTRS];  // Left-hand side of the FD (determinant)
    char right[MAX_ATTRS]; // Right-hand side of the FD (dependent)
};

// Function to compute closure of a set of attributes
void computeClosure(char attrs[], struct FunctionalDependency fds[], int num_fds, char closure[]) {
    strcpy(closure, attrs); // Start with the given set of attributes

    int changed;
    do {    char left[MAX_ATTRS];  // Left-hand side of the FD (determinant)

        changed = 0;  // Flag to check if closure has been expanded
        for (int i = 0; i < num_fds; i++) {
            int all_in_closure = 1;

            // Check if all attributes of the left side are in the closure
            for (int j = 0; j < strlen(fds[i].left); j++) {
                if (strchr(closure, fds[i].left[j]) == NULL) {
                    all_in_closure = 0;
                    break;
                }
            }

            // If they are, add the right side attributes to the closure
            if (all_in_closure) {
                for (int j = 0; j < strlen(fds[i].right); j++) {
                    if (strchr(closure, fds[i].right[j]) == NULL) {
                        strncat(closure, &fds[i].right[j], 1); // Add to closure
                        changed = 1;
                    }
                }
            }
        }
    } while (changed); // Repeat until no more changes
}

// Function to check if relation is in 2NF
int is2NF(char candidate_key[], struct FunctionalDependency fds[], int num_fds) {
    for (int i = 0; i < num_fds; i++) {
        // Check if FD has partial dependency
        if (strchr(candidate_key, fds[i].left[0]) != NULL && strlen(fds[i].left) < strlen(candidate_key)) {
            return 0; // Not in 2NF if partial dependency exists
        }
    }
    return 1; // In 2NF
}

// Function to check if relation is in 3NF
int is3NF(char candidate_key[], struct FunctionalDependency fds[], int num_fds) {
    char closure[MAX_ATTRS];

    for (int i = 0; i < num_fds; i++) {
        // Compute closure of the determinant
        computeClosure(fds[i].left, fds, num_fds, closure);

        // Check if right side of FD is not part of the closure or key (transitive dependency)
        if (strchr(closure, fds[i].right[0]) == NULL && strchr(candidate_key, fds[i].left[0]) == NULL) {
            return 0; // Not in 3NF if transitive dependency exists
        }
    }
    return 1; // In 3NF
}

int main() {
    struct FunctionalDependency fds[MAX_FDS]; // Array to store functional dependencies
    int num_fds;
    char candidate_key[MAX_ATTRS], attrs[MAX_ATTRS], closure[MAX_ATTRS];

    // Input number of functional dependencies
    printf("Enter number of functional dependencies: ");
    scanf("%d", &num_fds);

    // Input each functional dependency
    for (int i = 0; i < num_fds; i++) {
        printf("Enter left-hand side of FD %d: ", i + 1);
        scanf("%s", fds[i].left);
        printf("Enter right-hand side of FD %d: ", i + 1);
        scanf("%s", fds[i].right);
    }

    // Input candidate key
    printf("Enter candidate key: ");
    scanf("%s", candidate_key);

    // Input the set of attributes for closure computation
    printf("Enter the set of attributes to compute closure: ");
    scanf("%s", attrs);

    // Compute closure
    computeClosure(attrs, fds, num_fds, closure);
    printf("Closure of {%s}: {%s}\n", attrs, closure);

    // Check if relation is in 2NF and 3NF
    if (is2NF(candidate_key, fds, num_fds)) {
        printf("Relation is in 2NF.\n");
    } else {
        printf("Relation is NOT in 2NF.\n");
    }

    if (is3NF(candidate_key, fds, num_fds)) {
        printf("Relation is in 3NF.\n");
    } else {
        printf("Relation is NOT in 3NF.\n");
    }

    return 0;
}
