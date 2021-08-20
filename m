Return-Path: <SRS0=iF3C=NL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66EC3C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 14:17:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0C75E61102
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 14:17:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0C75E61102
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IFmisDOr/sk8XC/sL/2je/6kCqPvuxWQvuTOKyrj4I4=; b=UO1c6SpTh8WivG9WmAENy/iCKg
	yizOXQBAnbyn3kLt/jAuHXIpwDEqBrrMOjnYh6WeeSZpW46mvIafNBC3OcF44Lgk2gd+X725pMefj
	DDvd3LWocuiLg4/d0gM7mdXHj75JLX1DMimEPy35iKb3oVfMuaoxniGz3ADgrvubaEiNAZ5gATCrA
	N+R0LuePSZGkj61CXAX23IhnL1etG+yw45mwASipvGz+Ztnnq1mDSsvkkbge48hjOHPdAYOrKLmIl
	LKT2s1flzBlMfnERspFV+i/9C1mEhNd9A6eT2t17VOS6TYutpSOo5G5ctxHszItI/kjTxY79iyMCo
	kKbs/PPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mH5Ku-00BNBh-9Y; Fri, 20 Aug 2021 14:17:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mH5Kg-00BN9r-Qr; Fri, 20 Aug 2021 14:17:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5C0E311FB;
 Fri, 20 Aug 2021 07:17:13 -0700 (PDT)
Received: from [10.57.15.112] (unknown [10.57.15.112])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2432C3F66F;
 Fri, 20 Aug 2021 07:17:12 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: rockchip: remove cap-mmc-highspeed property
 from mk808 &mmc0 node
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, paweljarosz3691@gmail.com
References: <20210820131920.1831-1-jbx6244@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <bf6cba99-da3b-a6fe-4e4b-f4ea6e3c6e63@arm.com>
Date: Fri, 20 Aug 2021 15:17:06 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210820131920.1831-1-jbx6244@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210820_071718_969335_B9A6089D 
X-CRM114-Status: GOOD (  18.17  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 2021-08-20 14:19, Johan Jonker wrote:
> On the MK808 only a microSD slot is connected with the SDMMC Host Controller,
> so remove the cap-mmc-highspeed property from the &mmc0 node.

Why, does it do any harm? It's perfectly possible to connect a 
full-sized card to a microSD slot with an adapter. I came across my old 
SDIO WiFi card a while back and tried it that way for a giggle, but 
unfortunately it turned out not to be a chipset supported by any 
upstream driver.

Robin.

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>   arch/arm/boot/dts/rk3066a-mk808.dts | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/rk3066a-mk808.dts b/arch/arm/boot/dts/rk3066a-mk808.dts
> index 9790bc63b..b67f5cb51 100644
> --- a/arch/arm/boot/dts/rk3066a-mk808.dts
> +++ b/arch/arm/boot/dts/rk3066a-mk808.dts
> @@ -123,7 +123,6 @@
>   
>   &mmc0 {
>   	bus-width = <4>;
> -	cap-mmc-highspeed;
>   	cap-sd-highspeed;
>   	vmmc-supply = <&vcc_sd>;
>   	status = "okay";
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
