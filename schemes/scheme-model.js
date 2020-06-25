const db = require("../data/config")


function find(){
    return db("schemes")
}

function findById(id){
   return db("schemes")
   .where({id})
   .first()
}

 function findSteps(id){
    return db("steps")
    .join("schemes", "steps.scheme_id", "schemes.id")
    .select("step_number", "steps.instructions", "scheme_name")
    .where( {scheme_id: id})
    
}

function add(schemeData){
return db("schemes").insert(schemeData)

}

function addStep(stepData) {
    return db("schemes", "steps").insert(stepData)
}


function update(changes, id){
return db("schemes")
       .where({id})
       .update(changes)
}


function remove(id){
    return db("schemes").where({id}).del()
}

module.exports = {
find,
findById,
findSteps,
add,
addStep,
update,
remove
}
