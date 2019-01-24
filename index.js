'use strict'
console.log('Load Function Baseline')

/**
 * handler
 * @param {event} event The event calling the Lambda
 * @param {context} Information about the function
 * @param {callback} Callback to end execution
 */
exports.handler = (event, context, callback) => {

    const first = parseInt(event.first);
    const second = parseInt(event.second);
    const sum = first + second;
    callback(null, `The sum is: ${sum}`);
}