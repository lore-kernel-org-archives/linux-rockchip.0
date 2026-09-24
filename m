Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7949C98318
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 16:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4sdf3xR9qhQ9kcFHG92/cfi4BPQstMCWHZrUjue8xk=; b=eIfM37p2OT6GxX
	V24H8YgxOpTDz6nL156Ikfj4DgceCNr1tn2VgmmzhU+FDr/ZVjvpMXzK4ZW/2cyN0bAWQFqH8kgSx
	/OR9CJ6fKebxoDLnuO/irbFNfXvojBZW1Bu31gMp7v7y11gFcfFfsTtYLHTIB3vEcA1Z+Z9w5zj8E
	GR3Xxx+mMmsY+IjECVTyzXKvblRlM5xs5+ruuU7im8GpugNa09gXwEUP7kyZFNbo1SGeQS7ZtQjei
	EutsBFpi9elWGbqNW7Gjeg4ysFLAj2glVOZh4z6x4Yz1C4Tfb4DAI5wy74IHN/Ymu8oQIEK54iovF
	vpcVJr/BhHE4Qc0vp6lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9lua-0000000BVu9-1fg0;
	Thu, 24 Sep 2026 16:03:04 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9luW-0000000BVrh-3XbU
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 16:03:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1790265777;
 bh=4Z6hK1wJOvRpU/CGhkbccoyVt+96evFlvSWCRsULX+k=;
 b=D3YsLwMNaJfRPq+ppJcriT30EIpDIa37YXLqxSSwvGMksoKScUpybiE8Is6AFXm2kUKpJr3IE
 QmMx/XrFmO9CRTz5PsLulxdNDaZbYa/L1BJBnbyUMRlQK/vEplto52QXLAF9Bqx314qhxB1tPoz
 DH9xRWONkg/HKBXLuoVrq0AXYQ49u/TFWLoZOAelAD/L0XPIZsyE8UrjMIo4HwpMm7Gxwys2kic
 c783i/bD6G/7M8TGawnCgqwobJzzR4TS2VvHBQNz4lTRykwNZMKU9bOkAFJh04Jf4t5Wi4S18tr
 vXn7L5fJ8xk+BEIj8DtHx41E7nqasM+1w8+ksDd0dSTA==
X-Forward-Email-ID: 6ab549aec3cf5b1855119e7f
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.16.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <d3c0b1c9-a9fe-42c1-b865-dd1a8cc4e416@kwiboo.se>
Date: Thu, 24 Sep 2026 18:02:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: Remove cap-sd-highspeed on Rock
 Pi S eMMC
To: Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <1790147498-47766-1-git-send-email-shawn.lin@rock-chips.com>
 <1790147498-47766-3-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <1790147498-47766-3-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_090300_933897_6ED5C628 
X-CRM114-Status: GOOD (  12.82  )
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

Hi,

On 9/23/2026 9:11 AM, Shawn Lin wrote:
> cap-sd-highspeed declares SD high-speed support and has no place on
> the non-removable eMMC node. Drop it.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> index c1e3098..677d129 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> @@ -133,7 +133,6 @@
>  
>  &emmc {
>  	cap-mmc-highspeed;
> -	cap-sd-highspeed;

The Rock Pi S board has two similar revisions that is supported by this
DT, one has onboard SD NAND Flash and the other one has onboard eMMC
supported by the emmc dw-mshc.

So this board should have both cap-mmc-highspeed and cap-sd-highspeed
here to support best speed depending on board revision.

Regards,
Jonas

>  	no-sdio;
>  	non-removable;
>  	pinctrl-names = "default";


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
