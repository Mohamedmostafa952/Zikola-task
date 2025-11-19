


// the function returns a Future, meaning it works asynchronously because it will tke time
static Future<void> addUserToFireStore(UserDm user) {

//Gets the collection in Firestore where all users are stored
CollectionReference<UserDm> usersCollection = getUserCollection();

// Creates a document with the same ID as the user.
DocumentReference<UserDm> document = usersCollection.doc(user.id);

//Saves the user data inside that document.
return document.set(user);
}

