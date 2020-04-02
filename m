From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 1/4] dt-bindings: phy: phy-rockchip-dphy-rx0: move
 rockchip dphy rx0 bindings out of staging
Date: Thu, 02 Apr 2020 13:17:27 -0300
Message-ID: <a86bfa69fef8eee428d7c89b1d4fe99728af2ab7.camel@collabora.com>
References: <20200402000234.226466-1-helen.koike@collabora.com>
         <20200402000234.226466-2-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200402000234.226466-2-helen.koike@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Helen Koike <helen.koike@collabora.com>, devicetree@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org, robh+dt@kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl, kernel@collabora.com, dafna.hirschfeld@collabora.com, mark.rutland@arm.com, karthik.poduval@gmail.com
List-Id: linux-rockchip.vger.kernel.org

(+Kishon)

Hi Helen,

I was wondering if we couldn't also move the phy driver out of staging.

Thanks,
Ezequiel
 
On Wed, 2020-04-01 at 21:02 -0300, Helen Koike wrote:
> Move phy-rockchip-dphy-rx0 bindings to Documentation/devicetree/bindings/phy
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
>  .../devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml           | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename {drivers/staging/media/phy-rockchip-dphy-rx0/Documentation => Documentation}/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml (100%)
> 
> diff --git a/drivers/staging/media/phy-rockchip-dphy-rx0/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
> b/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
> similarity index 100%
> rename from drivers/staging/media/phy-rockchip-dphy-rx0/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
> rename to Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
