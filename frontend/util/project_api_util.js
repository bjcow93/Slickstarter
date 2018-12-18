export const fetchProjects = () => (
  $.ajax({
    method: 'GET',
    url: 'api/projects'
  })
);

export const fetchProject = id => (
  $.ajax({
    method: 'GET',
    url: `api/projects/${id}`
  })
);

// export const createProject = (project) => {
//   // pokemon.moves = Object.keys(pokemon.moves).map(k => pokemon.moves[k]);

//   return $.ajax({
//     method: 'POST',
//     url: 'api/projects/',
//     data: { project }
//   });
// };