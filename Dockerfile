# Use uma imagem base com Ruby 3.1
FROM ruby:3.1.4

# Instale dependências do sistema
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs yarn

# Defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos de gem (para instalar as gems antes de copiar tudo)
COPY Gemfile Gemfile.lock ./

# Instale as gems
RUN bundle install

# Copie o restante do projeto
COPY . .

# Instale dependências JS
RUN yarn install --check-files || true

# Precompile assets
RUN bundle exec rails assets:precompile

# Porta que será exposta
EXPOSE 3000

# Comando de inicialização
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
