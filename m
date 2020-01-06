From: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v12 09/11] media: staging: dt-bindings: add Rockchip MIPI
 RX D-PHY yaml bindings
Date: Mon, 6 Jan 2020 16:29:39 -0600
Message-ID: <CAL_Jsq+Oarx=Q95H+_mOYUiD0OpdxX6eMNJ0Dyv_zzSiEUzWaw@mail.gmail.com>
References: <20191227200116.2612137-1-helen.koike@collabora.com> <20191227200116.2612137-10-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191227200116.2612137-10-helen.koike@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Helen Koike <helen.koike@collabora.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Eddie Cai <eddie.cai.linux@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrey Konovalov <andrey.konovalov@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hans.verkuil@cisco.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, joacim.zetterling@gmail.com, kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, Jacob Chen <jacob-chen@iotwrt.com>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Dec 27, 2019 at 2:02 PM Helen Koike <helen.koike@collabora.com> wrote:
>
> Add yaml DT bindings for Rockchip MIPI D-PHY RX
>
> This was tested and verified with:
> mv drivers/staging/media/phy-rockchip-dphy/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml  Documentation/devicetree/bindings/phy/
> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml
> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml
>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
>
> ---
>
> Changes in v12:
> - The commit replaces the following commit in previous series named
> media: staging: dt-bindings: Document the Rockchip MIPI RX D-PHY bindings
> This new patch adds yaml binding and was verified with
> make dtbs_check and make dt_binding_check
>
> Changes in v11: None
> Changes in v10:
> - unsquash
>
> Changes in v9:
> - fix title division style
> - squash
> - move to staging
>
> Changes in v8: None
> Changes in v7:
> - updated doc with new design and tested example
>
>  .../bindings/phy/rockchip-mipi-dphy.yaml      | 75 +++++++++++++++++++
>  1 file changed, 75 insertions(+)
>  create mode 100644 drivers/staging/media/phy-rockchip-dphy/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml

Reviewed-by: Rob Herring <robh@kernel.org>
