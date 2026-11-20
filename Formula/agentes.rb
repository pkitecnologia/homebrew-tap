class Agentes < Formula
  desc "Instalador e atualizador da frota de agentes da PKI Tecnologia"
  homepage "https://github.com/pkitecnologia/homebrew-tap"
  url "https://github.com/pkitecnologia/homebrew-tap/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "76e26f23285aba1b92fce814036e4da0ac7d072485d57716278209579c60a5e1"
  license :cannot_represent

  depends_on "gh"
  depends_on "git"
  depends_on "herdr"
  depends_on "jq"

  def install
    bin.install "bin/agentes", "bin/pki"
  end

  def caveats
    <<~EOS
      Para instalar ou atualizar a frota de agentes, rode:
        agentes instalar
      Depois, para abrir o maestro da frota:
        pki
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentes --versao")
  end
end
