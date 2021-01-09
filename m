Return-Path: <SRS0=bvFq=GM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B759C433E0
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 13:41:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DBB102231F
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 13:41:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DBB102231F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WOA4RG2hHlrR9bZDENMT14FuZwFvG272EKYPFS9wM/w=; b=GB/3FQRi0TfmoSvJ8NqM9W306
	bu5JSKhXY0e81f+/NMeh2lxf91nzXuDuBNWbrp+3kPOixPMnlHyBAwJq1G+Icrw1owLhSdW7NmnvB
	1pqJjToIFxfasPcpWy9QCMXQUqmWv5lwensCukLQbCR7nhK6gYr8tw1v4UFmrmjUaYNDxU20WWkx9
	Ow2vsq1ZuKGTGFSAff7hMIwJm1S8WVLkd60tMIb49RDVknOJY/rS5u/7/O5akNDtKudD9uZX3G9j/
	J66ZWy2URqkbP3ty1eYe4bTjRPotHDEBT3uCJlJt7ZoxdlhQskd8qkz5B9zyWy8tUEJRIazLPu7a/
	aBUSNRNAg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyEUK-0000A3-Th; Sat, 09 Jan 2021 13:41:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyEUF-00008C-Jk; Sat, 09 Jan 2021 13:41:00 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kyEUC-0000GE-1w; Sat, 09 Jan 2021 14:40:56 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Demetris Ierokipides <ierokipides.dem@gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: add extra cpu opp points to
 rk3288-miqi
Date: Sat, 09 Jan 2021 14:40:55 +0100
Message-ID: <1680769.VLH7GnMWUR@diego>
In-Reply-To: <20210108151036.36434-3-ierokipides.dem@gmail.com>
References: <20210108151036.36434-1-ierokipides.dem@gmail.com>
 <20210108151036.36434-3-ierokipides.dem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210109_084059_738901_5FB68E5E 
X-CRM114-Status: GOOD (  18.10  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Demetris Ierokipides <ierokipides.dem@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Demetris,

Am Freitag, 8. Januar 2021, 16:10:36 CET schrieb Demetris Ierokipides:
> Add extra 1.7GHz and 1.8GHz opp points to the MiQi device-tree to improve
> performance.
> 
> Signed-off-by: Demetris Ierokipides <ierokipides.dem@gmail.com>
> ---
>  arch/arm/boot/dts/rk3288-miqi.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk3288-miqi.dts b/arch/arm/boot/dts/rk3288-miqi.dts
> index 713f55e143c6..1b48855db6ff 100644
> --- a/arch/arm/boot/dts/rk3288-miqi.dts
> +++ b/arch/arm/boot/dts/rk3288-miqi.dts
> @@ -96,6 +96,18 @@ &cpu3 {
>  	cpu-supply = <&vdd_cpu>;
>  };
>  
> +&cpu_opp_table {
> +	opp-1704000000 {
> +		opp-hz = /bits/ 64 <1704000000>;
> +		opp-microvolt = <1350000>;
> +	};
> +
> +	opp-1800000000 {
> +		opp-hz = /bits/ 64 <1800000000>;
> +		opp-microvolt = <1350000>;
> +	};
> +};
> +

sorry, but no .

The OPPs in the mainline kernel match the specifications released by the
soc vendor. Going outside these specs _may_ affect things like stability
on some boards or in general simply the lifetime of the chip itself.

So yes, while boards may generally work with these higher frequencies
I don't think this should be the default coming from the mainline kernel.

If board-owners feel the need to exceed the specs they can still modify
the dts, but we shouldn't force this decision on everyone.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
