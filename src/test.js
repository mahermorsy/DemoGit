function greet(name) {
    console.log(`Hello, ${name}!`);
}
module.exports = greet;
if (require.main === module) {
    const name = process.argv[2] || 'World';
    greet(name);
}