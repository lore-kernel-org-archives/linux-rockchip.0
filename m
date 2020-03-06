From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
Date: Fri, 6 Mar 2020 08:22:00 +0100
Message-ID: <7a799284-92ab-ea04-285e-37d655064118@gmail.com>
References: <20200304213023.689983-2-t.schramm@manjaro.org>
 <20200304213023.689983-3-t.schramm@manjaro.org> <6168222.Wuk326WHQK@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <6168222.Wuk326WHQK@phil>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Tobias Schramm <t.schramm@manjaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Andy Yan <andy.yan@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, Jagan Teki <jagan@amarulasolutions.com>, Markus Reichl <m.reichl@fivetechno.de>, Alexis Ballier <aballier@gentoo.org>, Matthias Kaehlcke <mka@chromium.org>, Nick Xie <nick@khadas.com>, Kever Yang <kever.yang@rock-chips.com>, Vivek Unune <npcomplete13@gmail.com>, Katsuhiro Suzuki <katsuhiro@katsuster.net>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Vasily Khoruzhick <anarsoul@gmail.com>, Emmanuel Vadot <manu@freebsd.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

Missing #address-cells, #size-cells
Can you still fix that?

On 3/6/20 1:23 AM, Heiko Stuebner wrote:
> Am Mittwoch, 4. März 2020, 22:30:23 CET schrieb Tobias Schramm:
>> This commit adds initial dt support for the rk3399 based Pinebook Pro.
>>
>> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
> 
> applied for 5.7
> 
> Thanks
> Heiko
> 
> 

> +&edp {
> +	force-hpd;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&edp_hpd>;
> +	status = "okay";
> +
> +	ports {

#address-cells = <1>;
#size-cells = <0>;

Don't forget that extra empty line here.


> +		edp_out: port@1 {
> +			reg = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			edp_out_panel: endpoint@0 {
> +				reg = <0>;
> +				remote-endpoint = <&panel_in_edp>;
> +			};
> +		};
> +	};
> +};
