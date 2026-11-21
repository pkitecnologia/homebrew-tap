class Agentes < Formula
  desc "Instalador e atualizador da frota de agentes da PKI Tecnologia"
  homepage "https://github.com/pkitecnologia/homebrew-tap"
  url "https://github.com/pkitecnologia/homebrew-tap/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "1d5c0f130cff4ef2ccf0f0736a6d006cdb6d810683712ca95ac7b5d311629337"
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
      Depois, numa aba nova do Herdr (ou após hash -r), abra o maestro:
        pki
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentes --versao")
  end
end
