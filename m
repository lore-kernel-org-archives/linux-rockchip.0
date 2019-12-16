From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v3] arm64: dts: rockchip: split rk3399-rockpro64 for v2 and v2.1 boards
Date: Mon, 16 Dec 2019 11:04:08 +0100
Message-ID: <6656576.A7zHEAv81k@phil>
References: <20191202055929.26540-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191202055929.26540-1-katsuhiro@katsuster.net>
Sender: linux-kernel-owner@vger.kernel.org
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Hugh Cole-Baker <sigmaris@gmail.com>, Vasily Khoruzhick <anarsoul@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Katsuhiro,

Am Montag, 2. Dezember 2019, 06:59:29 CET schrieb Katsuhiro Suzuki:
> This patch splits rk3399-rockpro64 dts file to 2 files for v2 and
> v2.1 boards.
> 
> Both v2 and v2.1 boards can use almost same settings but we find a
> difference in I2C address of audio CODEC ES8136.
> 
> Reported-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> 
> ---
> 
> Changes in v3:
>   - Add compatible strings for v2.0 and v2.1 boards
> 
> Changes in v2:
>   - Use rk3399-rockpro64.dts for for v2.1 instead of creating
>     rk3399-rockpro64-v2.1.dts
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     |   2 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3399-rockpro64-v2.dts |  30 +
>  .../boot/dts/rockchip/rk3399-rockpro64.dts    | 759 +----------------
>  .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 763 ++++++++++++++++++
>  5 files changed, 800 insertions(+), 755 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index d9847b306b83..8d8658613c57 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -409,6 +409,8 @@ properties:
>  
>        - description: Pine64 RockPro64
>          items:
> +          - const: pine64,rockpro64-v2.1
> +          - const: pine64,rockpro64-v2.0
>            - const: pine64,rockpro64
>            - const: rockchip,rk3399
>  

applied for 5.6 with a changed binding. If you need a
"one-of-many" element it should use an enum ... see the rk3399-firefly
and other boards for example. So I've adapted the patch accordingly:

@@ -409,6 +409,9 @@ properties:
 
       - description: Pine64 RockPro64
         items:
+          - enum:
+              - pine64,rockpro64-v2.1
+              - pine64,rockpro64-v2.0
           - const: pine64,rockpro64
           - const: rockchip,rk3399
 

Heiko
