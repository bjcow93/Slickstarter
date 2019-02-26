export const filterProjects = (projects) => {
  let projectOptions = [];
  // if (projects.length == 0) return;
  projects.forEach(project => {

    projectOptions.push({
      value: project.title,
      label: project.title
    });
  });
  return projectOptions;
};


// export const handleUsers = (users, current) => {
//   let friendOptions = []
//   users.forEach(user => {
//     if (user.username == current.username) {
//       return;
//     }
//     friendOptions.push({
//       value: user.username,
//       label: user.username
//     })
//   })
//   return friendOptions;
// }