var responseContent = context.getVariable('response.content');

if (responseContent) {
  var input = JSON.parse(responseContent);

  var output = {
    users: input.map(function(user) {
      return {
        userId: user.id,
        fullName: user.name,
        username: user.username,
        email: user.email,
        city: user.address ? user.address.city : null,
        company: user.company ? user.company.name : null
      };
    })
  };

  context.setVariable('response.content', JSON.stringify(output, null, 2));
  context.setVariable('message.header.Content-Type', 'application/json');
}