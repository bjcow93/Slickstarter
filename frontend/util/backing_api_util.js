export const createBacking = backing => {
  return (
  $.ajax({
    method: 'POST',
    url: 'api/backings',
    data: backing,
    contentType: false,
    processData: false
  })
  );
}