function() {
  return {
    randomEmail: function() {
      var s = Math.random().toString(36).substring(7);
      return "user_" + s + "@dominio.com";
    },
    randomName: function() {
      var names = ["Fulano", "de", "Silva", "Anonimo"];
      return names[Math.floor(Math.random() * names.length)] + " " + Math.floor(Math.random() * 100);
    }
  }
}