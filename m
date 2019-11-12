From: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rockpro64: fix ES8316 i2c address
Date: Mon, 11 Nov 2019 23:38:18 -0800
Message-ID: <CA+E=qVc+yzVj7dyp9jpeuif5K3dVMEDSiCTG-zSuzLt0intMsw@mail.gmail.com>
References: <20191112011521.3155504-1-anarsoul@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191112011521.3155504-1-anarsoul@gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Akash Gajjar <Akash_Gajjar@mentor.com>, Katsuhiro Suzuki <katsuhiro@katsuster.net>, devicetree <devicetree@vger.kernel.org>, arm-linux <linux-arm-kernel@lists.infradead.org>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, Nov 11, 2019 at 5:15 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> According to Rockpro64 schematics [1] CE pin of ES8316 is wired
> to ground, so codec address should be 0x10.
>
> [1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf

Please don't merge it yet, it appears that on Katsuhiro's board codec
is at address 0x11.

> Fixes: 6860769ea771 ("arm64: dts: rockchip: add analog audio nodes on rk3399-rockpro64")
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> index 7f4b2eba31d4..18bbe548839b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> @@ -477,9 +477,9 @@
>         i2c-scl-falling-time-ns = <15>;
>         status = "okay";
>
> -       es8316: codec@11 {
> +       es8316: codec@10 {
>                 compatible = "everest,es8316";
> -               reg = <0x11>;
> +               reg = <0x10>;
>                 clocks = <&cru SCLK_I2S_8CH_OUT>;
>                 clock-names = "mclk";
>                 #sound-dai-cells = <0>;
> --
> 2.23.0
>
