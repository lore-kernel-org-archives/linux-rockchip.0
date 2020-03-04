From: Tobias Schramm <t.schramm-x9ov/VOV9nNAfugRpC6u6w@public.gmane.org>
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
Date: Wed, 4 Mar 2020 19:24:41 +0100
Message-ID: <46a66389-c709-2c16-dd9a-f7fd6371a768@manjaro.org>
References: <20200229144817.355678-1-t.schramm@manjaro.org>
 <20200229144817.355678-3-t.schramm@manjaro.org>
 <bcc2c8d4-a2cd-58c1-89af-e42439f8f344@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <bcc2c8d4-a2cd-58c1-89af-e42439f8f344-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-US-large
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Schramm <t.schramm-x9ov/VOV9nNAfugRpC6u6w@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Markus Reichl <m.reichl-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org>, Alexis Ballier <aballier-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>, Matthias Kaehlcke <mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Nick Xie <nick-XW3xCAIBE2TQT0dZR+AlfA@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Vivek Unune <npcomplete13-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Vasily Khoruzhick <anarsoul-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Johan,

thanks for the additional feedback. I'll send a v4 with your fixes included.

>> +		partitions {
>> +			compatible = "fixed-partitions";
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +
>> +			loader@8000 {
>> +				label = "loader";
>> +				reg = <0x0 0x3F8000>;
>> +			};
>> +
>> +			env@3f8000 {
>> +				label = "env";
>> +				reg = <0x3F8000 0x8000>;
>> +			};
>> +
>> +			vendor@7c0000 {
>> +				label = "vendor";
>> +				reg = <0x7C0000 0x40000>;
>> +			};
>> +		};
> 
> Partitions are normaly up to the user and should not be included to dts
> files,
> else could you explain why we need this exception?
> 
Right. I don't see any reason why we would need to keep it either. I'll
remove it.

Tobias
