Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8124EC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 16:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QguHHj1270JdNUGy0ND/w8sraeg3GvE423188AGmX98=; b=yF8P1lAu9qiQ5/
	nGgfk7JYqo9SYYDukAhVZCAfmtRMHMzW466+90aojyxI56OWO39CU01c/rK5SxSDXqrMLREZDrZx/
	DSgxeaAk3U6JAba+uxD98bN3BYsHcKgK0rJUMgjwshUyJXcwaf3S1Z+9lISPL0WrItrVmZWFIV84m
	3IIHcNiT7z88ZEfEJ7MwrnMnGYZrAJ00l0s8/agRA52NolJz99dF8pwDUC6mqDe/UEA8x3EDfzLO1
	N6bcj5usX12/o1wlniPb42iP1d8BauMS0TbLfcD7tg+BoA1w7oOHqyGVjAClGvnXPs4eQEFX0BpAn
	izel0vsBi1pT1wGZoPfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc8D3-0075o9-NJ; Wed, 06 Apr 2022 16:08:41 +0000
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc8Bd-0075Ae-QP; Wed, 06 Apr 2022 16:07:15 +0000
Received: by mail-oi1-f176.google.com with SMTP id w127so2836590oig.10;
 Wed, 06 Apr 2022 09:07:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mi0PlXno3D6jBV7awtJNZHmVjzTuCmSnSrCiUvwpU7E=;
 b=RIT6vq4JBSmBNepGrqU1adyaKM18HRRTYJ5PKbco6faT3RXtmcyJjaU9paBu3nh5sh
 XWFQT+3CBdQ+5NPNBoupb+6AmSmhBUWBmQQYjG5Httoz2W1Xiw118wpcQ0KfaaPOpOYJ
 Ow+t8y/Kf77f/tKAfC6IW4U9p9g+ddsQ8ADpK1jJYzdZdSHvmwA64M+3LnqmQ0PK8dD+
 3uLhY8+8mWYFN+opC5a9vMyZUsDBuXtwwCDfg3xrR2TIDmhd8AAzLbeZEAyjZLw2PIOU
 BVU5CdyImhsJ08KMUKDhFZdNizCCZuMfUP1GdQ0a3XWh44rmx9RcPCTk65rIpEOjvLmL
 JCgA==
X-Gm-Message-State: AOAM533QbSAkUb/2kWYfqRpTW73RX3gjHQfcIzkzVFef5xYs2M95UWTt
 HRtJMC1RBQWoFAJRN//Fog==
X-Google-Smtp-Source: ABdhPJyf9cDvzdnJyrz88zNtK+fVSdGACNFc6ZhTULEzyvDAXPx26QtcqONjw4TvsYhTPVBvMs061A==
X-Received: by 2002:a05:6808:2183:b0:2da:6d62:6ec6 with SMTP id
 be3-20020a056808218300b002da6d626ec6mr3895459oib.51.1649261230982; 
 Wed, 06 Apr 2022 09:07:10 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 mj27-20020a0568700d9b00b000de29e1d6adsm4905187oab.16.2022.04.06.09.07.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Apr 2022 09:07:10 -0700 (PDT)
Received: (nullmailer pid 2334572 invoked by uid 1000);
 Wed, 06 Apr 2022 16:07:09 -0000
Date: Wed, 6 Apr 2022 11:07:09 -0500
From: Rob Herring <robh@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: krzk+dt@kernel.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, heiko@sntech.de,
 herbert@gondor.apana.org.au, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 29/33] clk: rk3399: use proper crypto0 name
Message-ID: <Yk26rQaTfZ1QvLN0@robh.at.kernel.org>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
 <20220401201804.2867154-30-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220401201804.2867154-30-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_090713_911260_5FBDF8D9 
X-CRM114-Status: GOOD (  10.03  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 01 Apr 2022 20:18:00 +0000, Corentin Labbe wrote:
> RK3399 has 2 crypto instance, named crypto0 and crypto1 in the TRM.
> Only reset for crypto1 is correctly named, but crypto0 is not.
> Since nobody use them, add a 0 to be consistent with the TRM and crypto1 entries.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  include/dt-bindings/clock/rk3399-cru.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
