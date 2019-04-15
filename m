From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH] arm64: dts: rockchip: fix IO domain voltage setting of
 APIO5
Date: Mon, 15 Apr 2019 18:48:06 +0900
Message-ID: <5170ca5c-ac5a-d88f-6c3d-3794a5afdb30@katsuster.net>
References: <20190327120317.15256-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190327120317.15256-1-katsuhiro@katsuster.net>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

ping...

On 2019/03/27 21:03, Katsuhiro Suzuki wrote:
> This patch fixes IO domain voltage setting that is related to
> audio_gpio3d4a_ms (bit 1) of GRF_IO_VSEL.
> 
> This is because RockPro64 schematics P.16 says that regulator
> supplies 3.0V power to APIO5_VDD. So audio_gpio3d4a_ms bit should
> be clear (means 3.0V). Power domain map is saying different thing
> (supplies 1.8V) but I believe P.16 is actual connectings.
> 
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> Suggested-by: Robin Murphy <robin.murphy@arm.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> index 791fb0ee9722..20ec7d1c25d7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> @@ -508,7 +508,7 @@
>   	status = "okay";
>   
>   	bt656-supply = <&vcc1v8_dvp>;
> -	audio-supply = <&vcca1v8_codec>;
> +	audio-supply = <&vcc_3v0>;
>   	sdmmc-supply = <&vcc_sdio>;
>   	gpio1830-supply = <&vcc_3v0>;
>   };
> 
