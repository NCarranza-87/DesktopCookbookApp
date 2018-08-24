using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DesktopRecipeCookBookApp
{
    public class RecipeDB
    {
        public static List<recipe> GetAllRecipes()
        {
            RecipeContext context = new RecipeContext();

            List<recipe> allRecipes = (from r in context.recipe
                                       orderby r.recipeTitle ascending
                                       select r).ToList();
            return allRecipes;
        }

        public static void InsertRecipe(recipe r)
        {
            RecipeContext context = new RecipeContext();

            //assume Recipe is valid
            context.recipe.Add(r);

            context.SaveChanges();
        }

        public static void Update(recipe r)
        {
            var context = new RecipeContext();

            //add recipe to object to current context
            context.recipe.Add(r);

            //Let EF know the book already exists
            context.Entry(r).State = EntityState.Modified;

            context.SaveChanges();
        }

        public static void Delete(recipe r)
        {
            var context = new RecipeContext();

            context.recipe.Add(r);

            //mark the recipe as deleted
            context.Entry(r).State = EntityState.Deleted;

            context.SaveChanges();
        }

    }
}
