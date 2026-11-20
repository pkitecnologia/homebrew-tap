class Agentes < Formula
  desc "Instalador e atualizador da frota de agentes da PKI Tecnologia"
  homepage "https://github.com/pkitecnologia/homebrew-tap"
  url "https://github.com/pkitecnologia/homebrew-tap/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d2e9513506c7565ec1aa1cffde7b3c8b7f01ce9624e48c6920166d456abd988a"
  license :cannot_represent

  depends_on "gh"
  depends_on "git"
  depends_on "herdr"
  depends_on "jq"

  def install
    bin.install "bin/agentes"
  end

  def caveats
    <<~EOS
      Para instalar ou atualizar a frota de agentes, rode:
        agentes instalar
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentes --versao")
  end
end
