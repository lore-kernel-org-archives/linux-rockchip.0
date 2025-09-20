Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A991CAC5A0
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Sep 2025 08:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Cc:From:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5ySV0GUWKU+G5J7dfB3KQRjwVmQmqlytGbS3NZ5/G4=; b=ezavYfINv2VbNf
	mdFLzLpPRSK3ZHqY0QA9M3rexDhZftoGpHSPCMsw8lMy8MIG2p90b2GCT7/mfwZSbveGWXNJ6tyj2
	08z+yFtcD+XNgWu1hBiBe/A/Y1udq2kJlVTpKv4dT3qRRWJvhdJBq09wmxJ6N3OVZQAXdSGVXk7XC
	TRVb3OjfD/zrsmNQiOYGDbhh+PDA93rkX3KVxeoQ7Ap9Hw9Aw1+JNCE2dghyFKDjsMuGLWx4zBAfS
	Q9i7mFDS9wJpc6Sjjyu0JPbJHUG2aAYf9hlVKTOJ9/gJJbxhrhcYNtnHEA5lmAvXYLbQOkQRiUIOq
	5kjFwcAzl5f0mbHo+kpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzskI-0000000525I-2RDo;
	Sat, 20 Sep 2025 08:15:02 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzskF-0000000523T-12sj
	for linux-rockchip@lists.infradead.org;
	Sat, 20 Sep 2025 08:15:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: Cc: From:
 References: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1758356099;
 bh=nhhXvyJU4Q/ep+pG2LVNeGtKFMmPOfCIGjE2903J/IY=;
 b=CFitBvjiqHjd0zjZvZ9pEkU54nuDQnGGG3dqH7ZGlxQ+x6Ule1tKCDDnKWmETDswLS6RmUQ1M
 S2U0nqamDRFKIShsWpEas49QbzOkgvSbDYCfflUIEnP1TAz3Gf5vnEuGkBoTeTKLIihqTJOfunH
 bpgnrCVarkAyFHPx9b/RrUQUinSnRlqMo7P9ImnnMOgnuaYEQTYtVgCA0khsyJRaHstYv3/oDLG
 tH2bWI5D7OXyhFoYsWZJsooj9TZXM9y9bqPNKFtHGO6qY8KagDQvYV/dGKHShASX8qTsleUHG8p
 L5af9iD9zGRc1MrCzPglGUxNELRGEitoQQpiAvHEeNJg==
X-Forward-Email-ID: 68ce627a528963d4864a57f8
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.2.14
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <07560892-6672-45a0-aa3d-79e47d145ff4@kwiboo.se>
Date: Sat, 20 Sep 2025 10:14:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: correct uart mux for Radxa ZERO
 3
To: Ed Wildgoose <lists@wildgooses.com>
References: <20250917114932.25994-1-lists@wildgooses.com>
 <20250917114932.25994-2-lists@wildgooses.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
In-Reply-To: <20250917114932.25994-2-lists@wildgooses.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250920_011459_559960_BD7EF222 
X-CRM114-Status: GOOD (  17.61  )
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

Hi Ed,

On 9/17/2025 1:49 PM, Ed Wildgoose wrote:
> The rk3566 has multiplexed pins and the uarts can be moved to a choice
> of 2 pin groups. The default rk356x-base.dtsi appears to default to mux0
> for all uarts, however, specific hardware might choose to implement
> alternatives
> 
> The Radxa zero 3 shows that is uses M1 for uarts:
> - uart4
> - uart5
> - uart9
> 
> These aren't normally enabled, but we should at least correct the
> default pinctrl definitions. Without these changes there will be
> conflicts with mmc0/mmc1, leading to the SD or eMMC going missing.

Please rephrase the commit subject and message, currently it seem to
imply that there is something broken that needs fixing, however this
mainly make it easier to apply an overlay that does not include
description of any changed behavior for pins on the 40-pin header.

Current expected behavior of the hw, using pins on 40-pin header as gpio
pins should already be correctly described in this board device tree.

My original intent when submitting board device trees, such as this one, 
is that a device tree overlay will fully describe any required changes.
Also I do not expect that using an overlay intended for an old vendor
kernel device tree will work as-is on mainline kernel device tree.

> 
> Signed-off-by: Ed Wildgoose <lists@wildgooses.com>
> ---
>  .../boot/dts/rockchip/rk3566-radxa-zero-3.dtsi    | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
> index 1ee5d96a4..41b3c4403 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
> @@ -492,6 +492,21 @@ &uart2 {
>  	status = "okay";
>  };
>  
> +&uart4{

nit: missing space

> +    pinctrl-names = "default";
> +    pinctrl-0 = <&uart4m1_xfer>;

nit: seem to use space instead of tab, same for rest.

Regards,
Jonas

> +};
> +
> +&uart5 {
> +    pinctrl-names = "default";
> +    pinctrl-0 = <&uart5m1_xfer>;
> +};
> +
> +&uart9 {
> +    pinctrl-names = "default";
> +    pinctrl-0 = <&uart9m1_xfer>;
> +};
> +
>  &usb_host0_xhci {
>  	status = "okay";
>  };


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
