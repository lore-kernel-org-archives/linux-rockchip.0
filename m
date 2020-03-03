From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
Date: Tue, 3 Mar 2020 17:11:21 +0100
Message-ID: <850e60b0-c260-c184-839f-93b064388e32@gmail.com>
References: <20200229144817.355678-1-t.schramm@manjaro.org>
 <20200229144817.355678-3-t.schramm@manjaro.org>
 <bcc2c8d4-a2cd-58c1-89af-e42439f8f344@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <bcc2c8d4-a2cd-58c1-89af-e42439f8f344-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Tobias Schramm <t.schramm-x9ov/VOV9nNAfugRpC6u6w@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Markus Reichl <m.reichl-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org>, Alexis Ballier <aballier-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>, Matthias Kaehlcke <mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Nick Xie <nick-XW3xCAIBE2TQT0dZR+AlfA@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Vivek Unune <npcomplete13-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Vasily Khoruzhick <anarsoul-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

Add more reg = <..>

On 3/3/20 4:37 PM, Johan Jonker wrote:
> Hi Tobias,
> 
> Some minor style issues.
> This dts file contains a partition node.
> Question for the maintainers (Heiko?):
> Should that partition be included or not?

[..]

>> +&i2c4 {
>> +	i2c-scl-falling-time-ns = <20>;
>> +	i2c-scl-rising-time-ns = <600>;
>> +	status = "okay";
>> +
>> +	fusb0: fusb30x@22 {
>> +		compatible = "fcs,fusb302";
>> +		reg = <0x22>;
>> +		fcs,int_n = <&gpio1 RK_PA2 GPIO_ACTIVE_HIGH>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&fusb0_int_gpio>;
> 
>> +		status = "okay";
> 
> Remove or else status below.
> New nodes are already okay I think.
> If insure check compiled flat dts output to see if it is still there.
> 
>> +		vbus-supply = <&vbus_typec>;
>> +
>> +		connector {
>> +			compatible = "usb-c-connector";
>> +			label = "USB-C";
>> +			op-sink-microwatt = <1000000>;
>> +			power-role = "dual";
>> +			sink-pdos =
>> +				<PDO_FIXED(5000, 2500, PDO_FIXED_USB_COMM)>;
>> +			source-pdos =
>> +				<PDO_FIXED(5000, 1400, PDO_FIXED_USB_COMM)>;
>> +			try-power-role = "sink";
>> +
>> +			ports {
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +
>> +				port@0 {

reg = <0>;

>> +					usbc_hs: endpoint {
>> +						remote-endpoint =
>> +							<&u2phy0_typec_hs>;
>> +					};
>> +				};
>> +
>> +				port@1 {

reg = <1>;

>> +					usbc_ss: endpoint {
>> +						remote-endpoint =
>> +							<&tcphy0_typec_ss>;
>> +					};
>> +				};
>> +
>> +				port@2 {

reg = <2>;

>> +					usbc_dp: endpoint {
>> +						remote-endpoint =
>> +							<&tcphy0_typec_dp>;
>> +					};
>> +				};
>> +			};
>> +		};
>> +	};
>> +};
