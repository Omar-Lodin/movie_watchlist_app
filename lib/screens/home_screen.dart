ListView.builder(
  itemCount: sampleMovies.length,
  itemBuilder: (context, index) {
    final movie = sampleMovies[index];
    return Card(
      child: ListTile(
        leading: Image.asset(movie.posterPath, width: 56, fit: BoxFit.cover),
        title:   Text(movie.title),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => DetailsScreen(movie: movie),
            ),
          );
        },
      ),
    );
  },
)