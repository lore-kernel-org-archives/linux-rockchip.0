Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04851C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 23:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=smakma0y1PuvlnMuEuVb4HkWRE9VOvKJbyS0bPBlt78=; b=QC3ZbPGG6CTt6l
	gXu8TdU+VGPCCitT9ieyzVbEZz6t+7C9G7PNPkQQ33uTKhAfqkXP3ABdYGiwGSDdzxnkyXzWsaEzs
	zN1OFL9U83V3FN7vy8ekeQW280ZzMdoidahPt7IPPrpvyGFbBagSLsp8KexEDt3RdDHWNbmuqPEmY
	4+0dd6KeP2+qBulbnUq3/QgwXmR5gZVkTC9zWPb6KnWcXOXf1h5V/fhxVgMmMuogrCphQSWDb5Wp9
	M9SOL9OLVfALCOfYx2WCy/aS3A8KL6UpXkWEVaY2Rem7CQKg7Mw9+gRBdXfkJrHPqhMI5wn/1tm00
	8RD/39XoMKf4MKGXvyPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa1UU-0000000AK8Z-3mFZ;
	Fri, 02 Aug 2024 23:15:18 +0000
Received: from smtpbgau2.qq.com ([54.206.34.216])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa1UR-0000000AK6r-3uLn
	for linux-rockchip@lists.infradead.org;
	Fri, 02 Aug 2024 23:15:17 +0000
X-QQ-mid: bizesmtpsz9t1722640500tdylm9z
X-QQ-Originating-IP: aTTLbB+z10h/DGPtFqVnzLNciTL7dILHAUkjeZieK0M=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 03 Aug 2024 07:14:58 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8779928310207790743
Message-ID: <17379D21DA0BC164+33440174-cb01-42b9-9e64-b84bcaea95ea@radxa.com>
Date: Sat, 3 Aug 2024 08:14:58 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: make USB gadget functions usable on
 Radxa ROCK 3C
To: heiko@sntech.de
Cc: amadeus@jmu.edu.cn, linux-rockchip@lists.infradead.org
References: <20240802042552.663-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20240802042552.663-1-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_161516_381977_98D642B7 
X-CRM114-Status: GOOD (  13.64  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

hi,

please don't merge this for a while.

I'm thinking opposite change may be better to align with ROCK 4/5 
series. (OTG port is "host")

any comment?

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 8/2/24 13:25, FUKAUMI Naoki wrote:
> Radxa ROCK 3A and 3B use a USB 3.0 Type-A OTG port as "otg" mode for
> USB gadget functions.
> 
> Radxa ROCK 3C also has a USB 2.0 Type-A OTG port, it should be "otg"
> mode for USB gadget functions.
> 
> Fixes: ee219017ddb5 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> index f2cc086e5001..a9535eaa5235 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> @@ -664,7 +664,6 @@ &usb_host0_ohci {
>   };
>   
>   &usb_host0_xhci {
> -	dr_mode = "host";
>   	status = "okay";
>   };
>   

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
