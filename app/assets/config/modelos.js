// models/usuario.js
Usuario.associate = (models) => {
    Usuario.hasMany(models.Articulo, { foreignKey: 'usuario_id' });
    Usuario.hasMany(models.Comentario, { foreignKey: 'usuario_id' });
};

// models/articulo.js
Articulo.associate = (models) => {
    Articulo.belongsTo(models.Usuario, { foreignKey: 'usuario_id' });
    Articulo.belongsTo(models.Categoria, { foreignKey: 'categoria_id' });
    Articulo.hasMany(models.Comentario, { foreignKey: 'articulo_id' });
};

// models/categoria.js
Categoria.associate = (models) => {
    Categoria.hasMany(models.Articulo, { foreignKey: 'categoria_id' });
};

// models/comentario.js
Comentario.associate = (models) => {
    Comentario.belongsTo(models.Usuario, { foreignKey: 'usuario_id' });
    Comentario.belongsTo(models.Articulo, { foreignKey: 'articulo_id' });
};
