From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH] arm64: dts: rock960: Enable HDMI audio devices
Date: Tue, 29 Jan 2019 17:10:31 +0530
Message-ID: <20190129114031.GA17014@Mani-XPS-13-9360>
References: <20190129113324.29440-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <20190129113324.29440-1-ezequiel@collabora.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>, linux-rockchip@lists.infradead.org, kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, Jan 29, 2019 at 08:33:24AM -0300, Ezequiel Garcia wrote:
> This commit enable the hdmi-sound and i2s2 devices needed
> to have audio over HDMI.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

Since this patch affects both Rock960 and Ficus, it should be mentioned
in the description. Other than that,

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
>  arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> index f04a31d48ba4..1bbf0b1f9374 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> @@ -94,6 +94,10 @@
>  	status = "okay";
>  };
>  
> +&hdmi_sound {
> +	status = "okay";
> +};
> +
>  &i2c0 {
>  	clock-frequency = <400000>;
>  	i2c-scl-rising-time-ns = <168>;
> @@ -336,6 +340,10 @@
>  	status = "okay";
>  };
>  
> +&i2s2 {
> +        status = "okay";
> +};
> +
>  &io_domains {
>  	bt656-supply = <&vcc1v8_s0>; /* bt656_gpio2ab_ms */
>  	audio-supply = <&vcc1v8_s0>; /* audio_gpio3d4a_ms */
> -- 
> 2.20.1
> 
