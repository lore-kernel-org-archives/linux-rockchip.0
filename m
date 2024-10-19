Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EDD6D3C911
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Oct 2024 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=haJVs0R3/qxsd4WbQTZvRiQ6bcc112P3cPyfRqUDTAs=; b=tQugXqKEHu/m1+
	N/atmOogjPE/bHpu/0mrFF9ep5b5KFkqLmz+/jFZGMSOLmaIm12Jb36qBReUq5BizJ4ec06yQx2i7
	9cvokInGuxUZXpU+2+4QCiJN+gOAT3G1d4k/8w2HMj3XOQDye3KoMwir7s9mkgEjFPjGHqIK0j2pM
	G/Za8EDStjV4BKV1iBbnlWYZN82fzbuvRvCdxcaOpm/bz/UCc72l/xWP8AUfuaHxLCCygUA41Kk+k
	pR3LKgEFzQcpi/mcVuIDc1Qrz7QA372xPmvRaz/GMC8x4jLUOfFUEAhpoQRp4UYNPxHSeIxfacUCI
	PU0ubSPbMpS0KtZ/Brbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t296T-00000003KAI-1GGI;
	Sat, 19 Oct 2024 13:02:45 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t296P-00000003K9X-0S9N
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Oct 2024 13:02:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1729342933;
 bh=lFVey/vmL79CFl6aqyjl9RKcgfPnkmjg2Z7v8kUFxG4=;
 b=uKTrbrDhgdsNw1cnm8/yhtZ0ZrQxa7nx0frcrCSfw6REiKPF8im/UR7G3ko2BqjgwNosruUFC
 7gzRqal/vpZRi4VDxXuHovVN8yS0pUnVRIIMU+My73o1f3L4lcmMncNHUTkCN0kf428I6NIxtia
 X9reEEFm9pRIXpk8M9J59IFCHu92KROH/8XtDDTaDjeQnx1uRJn8LDH+pVFV1fvOB/NYXOazn6I
 53YZaV9FoVee19i9fT9wkh/dyM6kAZ/FagAz2BKoUjrJt3qKVNql4Y7VZrPy5QIUL4A75NhYJoZ
 VLmUcDAoUAyYEXJuUbW05ANleav9Tx0uvplAmqSWWQuw==
Message-ID: <a90437be-eae6-4dc9-93fa-fd4af8ad9bed@kwiboo.se>
Date: Sat, 19 Oct 2024 15:02:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] arm64: dts: rockchip: Enable HDMI0 on rock-5a
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Luis de Arquer <ldearquer@gmail.com>, Alexandre ARNOUD <aarnoud@me.com>,
 kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
 <20241019-rk3588-hdmi0-dt-v2-5-466cd80e8ff9@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20241019-rk3588-hdmi0-dt-v2-5-466cd80e8ff9@collabora.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 6713add56ab72d6a578a01d7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_060242_717434_9D3FF9B5 
X-CRM114-Status: GOOD (  10.83  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Cristian,

On 2024-10-19 12:12, Cristian Ciocaltea wrote:
> Add the necessary DT changes to enable HDMI0 on Radxa ROCK 5A.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 52 ++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index 87fce8d9a964cd53d179ce214ae1c0ff505a2dce..2b141af5e709b0bc2193dbfb2327e6bc1fdaa502 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -5,6 +5,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/leds/common.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
>  #include "rk3588s.dtsi"
>  
>  / {
> @@ -35,6 +36,17 @@ chosen {
>  		stdout-path = "serial2:1500000n8";
>  	};
>  
> +	hdmi0-con {
> +		compatible = "hdmi-connector";
> +		type = "a";

ROCK 5A use micro HDMI connector type, so this should be type = "d".

Regards,
Jonas

> +
> +		port {
> +			hdmi0_con_in: endpoint {
> +				remote-endpoint = <&hdmi0_out_con>;
> +			};
> +		};
> +	};
> +

[snip]


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
