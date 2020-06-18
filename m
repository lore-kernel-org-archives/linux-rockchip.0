From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 13/29] dt: fix broken links due to txt->yaml renames
Date: Thu, 18 Jun 2020 10:44:31 -0600
Message-ID: <20200618164431.GA504444@bogus>
References: <cover.1592203542.git.mchehab+huawei@kernel.org>
 <0e4a7f0b7efcc8109c8a41a2e13c8adde4d9c6b9.1592203542.git.mchehab+huawei@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-doc-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <0e4a7f0b7efcc8109c8a41a2e13c8adde4d9c6b9.1592203542.git.mchehab+huawei@kernel.org>
Sender: linux-doc-owner@vger.kernel.org
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org, linux-mips@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>, linux-bluetooth@vger.kernel.org, Linux Doc Mailing List <linux-doc@vger.kernel.org>, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>, "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org, Mark Brown <broonie@kernel.org>, David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Jonathan Corbet <corbet@lwn.net>, linux-arm-kernel@lists.infradead.org, Sandy Huang <hjc@rock-chips.com>, alsa-devel@alsa-project
List-Id: linux-rockchip.vger.kernel.org

On Mon, 15 Jun 2020 08:46:52 +0200, Mauro Carvalho Chehab wrote:
> There are some new broken doc links due to yaml renames
> at DT. Developers should really run:
> 
> 	./scripts/documentation-file-ref-check
> 
> in order to solve those issues while submitting patches.
> This tool can even fix most of the issues with:
> 
> 	./scripts/documentation-file-ref-check --fix
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  Documentation/devicetree/bindings/display/bridge/sii902x.txt  | 2 +-
>  .../devicetree/bindings/display/rockchip/rockchip-drm.yaml    | 2 +-
>  Documentation/devicetree/bindings/net/mediatek-bluetooth.txt  | 2 +-
>  Documentation/devicetree/bindings/sound/audio-graph-card.txt  | 2 +-
>  Documentation/devicetree/bindings/sound/st,sti-asoc-card.txt  | 2 +-
>  Documentation/mips/ingenic-tcu.rst                            | 2 +-
>  MAINTAINERS                                                   | 4 ++--
>  7 files changed, 8 insertions(+), 8 deletions(-)
> 

Applied, thanks!
