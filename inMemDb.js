/*jshint esversion: 6*/

const users = {
  '1': { name: 'Alice', age: 12, gender: 'f', jobType: 'st' },
  '2': { name: 'Bob', age: 21, gender: 'm', jobType: 'dv' },
  '3': { name: 'Claire', age: 56, gender: 'f', jobType: 'dv' },
  '4': { name: 'David', age: 9, gender: 'm', jobType: 'na' },
  '5': { name: 'Eric', age: 61, gender: 'm', jobType: 'dv' },
  '6': { name: 'Fred', age: 45, gender: 'm', jobType: 'dv' },
  '7': { name: 'George', age: 38, gender: 'm', jobType: 'dv' },
  '8': { name: 'Hannah', age: 15, gender: 'f', jobType: 'na' },
  '9': { name: 'Ilona', age: 17, gender: 'f', jobType: 'st' },
  '10': { name: 'Jake', age: 27, gender: 'm', jobType: 'dv' },
  '11': { name: 'Kathy', age: 8, gender: 'f', jobType: 'na' },
  '12': { name: 'Liam', age: 20, gender: 'm', jobType: 'st' }
};
// console.log(users);

const employer = {
  dv: 'DevLeague',
  st: 'Student',
  na: 'N/A'
};

function byId(id) {
  return users[id];
}

function youngest() {
  let youngest = 100;
  Object.keys(users).forEach(function(key,index){
    let user = users[key];
    if( youngest > user.age){
      youngest = user.age;
    }
  });
  return youngest;
 }


function oldest() {
  let oldest = 0;
  Object.keys(users).forEach(function(key,index){
    let user = users[key];
    if( oldest < user.age){
      oldest = user.age;
    }
  });
  return oldest;
}

function males () {
  let males = [];
  Object.keys(users).forEach(function(key,index){
    let user = users[key];
    if(user.gender === 'm'){
      males.push(user);
    }
  });
  return males;
}


function females() {
  let females = [];
  Object.keys(users).forEach(function(key,index){
    let user = users[key];
    if(user.gender === 'f'){
      females.push(user);
    }
  });
  return females;

}
//females();

function employerKey(name){
  Object.keys(employer).forEach(function(key,index){
    console.log(employer[key]);

  });
}
employerKey();

function employees(employer) {
  let key = employerKey(employer);
  let employees = [];
  Object.keys(users).forEach(function(key,index){
    let user = key;
    if(user.jobType === employer){
      employees.push(user);
    }
  });
  return employees;

}

employees('dv');

function canDrink(){
  let canDrink = [];
  Object.keys(users).forEach(function(key,index){
    let user = users[key];
    if(user.age >= 21){
      canDrink.push(user);
    }
  });
  return canDrink;

}

const functions = {
  byId: byId,
  youngest: youngest,
  oldest: oldest,
  males: males,
  females: females,
  employees: employees,
  canDrink: canDrink
};

module.exports = functions;
