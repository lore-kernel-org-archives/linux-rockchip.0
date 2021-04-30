Return-Path: <SRS0=A12b=J3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED73BC433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 21:41:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6EBE2613BD
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 21:41:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6EBE2613BD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GRrVJROM2XBTwyVUtiYI5GcjZoCVSoOaGR2zLV2t43w=; b=pi/S0FxWpw1vgODyj4sAefVQW
	d7K7cqhZSDnbpATcwft2FL+goP3466r0/IjKOyFwIFySwyYn4z7XLsSPutzCUxlsA47L46Hk6MSHj
	LPANqbEutkmpR96qgKhnsNguB55lL9aTkUS2IhBiBs0TUBu2UtckWoUS4hjDriTmJB6oVWaAFCd0d
	0QwCy1VYQZP/Iv5pUlxYK4NZKx+PALN7Y4aZDELcpf48qyg9Sm3D/0r86j8GPMZUeTbxgnClMKTfp
	ubHPSFPBGMEGppbenzDSItPDSzKskmIVWM/O//76GqcdZjtwo8Ns01mP07mbNy/CM98ePOXfCUcG4
	twFRvWiQg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcat5-008fwo-E4; Fri, 30 Apr 2021 21:41:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcas5-008fmW-TQ; Fri, 30 Apr 2021 21:40:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=HyP+/B8IS6YJDID6abklHLjJCypbL5+nqtHOxB04MIc=; b=khqnRF/ITehTwgJgLNcs05kC4O
 50WPFsHC4p/ZPpVg/dTAjTIQdcZ6qdUAQKiBTLHEVU5zOOxHTMDZB9HDowvcZntxyIEjH+IFwu42R
 ZUa9roCR6kVIgXAF/afZnAuL944y1PzV5zYJNKf8zAh8ITNyvOgbT9NDVJKfhFKDyxqQwCBbqn8xY
 Fp3FoUFdoQhBHiVXRfmZQtQERfq95QUFfo/OYW030H59FZdMF9am4kjfUC0XAIPACHU/6yIDPBB/x
 ypnn0+160rfkdbgPHFBjDjZB9jgpDQkr3tnyGz14iKuIwdJKfVTL2FyqzrVecUk5p0P8mpiudrQJX
 EY6sb58A==;
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcas3-001gqG-Ab; Fri, 30 Apr 2021 21:40:24 +0000
Received: by mail-oi1-f182.google.com with SMTP id t24so13998245oic.10;
 Fri, 30 Apr 2021 14:40:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HyP+/B8IS6YJDID6abklHLjJCypbL5+nqtHOxB04MIc=;
 b=KWU8els83yCJlCnqhAK79/aWIa8aSDd1KVoQbdWxF9NnJ5D4r7ioIXmjWbgSs1pRA2
 i/8Q8bKFNvQKQDhh5O/afwRw/iueafOKWF5ioNnz7DuRRHZJajTdRG96oVB7KU7jpeK+
 9zpJJPdrJRIrkz7Ie5zCob4CRsbkIvaMX87YDpyS9T9pYPrmuBwOOHEJljTLCxjjVusW
 35gO825n7UpGNQKBGgKFIlE6GP9I4FaCadqC/sQJ86Q/7yAH9lD/4Sly92Skqwg9WdoL
 seKodwNIj4wkYB2sgd5eMi0Cmmd96bR0s34YIqEfWJrtS0SVajQkBsN/HN20ua/XGqcR
 sdpg==
X-Gm-Message-State: AOAM531pPU/qM1aNpbtIgB+ziFXWJWyjSO77gjaJBVYvnj8BQUbLpMpu
 +WQiOXIMqiovCvxfJn9QiA==
X-Google-Smtp-Source: ABdhPJzdPPDNaaPujlksMqGMKWRckmWYPJeon7Q6a4hGNPO4H4oDJeevftRsqwFKpyxgJV+kULFuyw==
X-Received: by 2002:aca:f008:: with SMTP id o8mr5635930oih.106.1619818821938; 
 Fri, 30 Apr 2021 14:40:21 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 10sm972253oiq.48.2021.04.30.14.40.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Apr 2021 14:40:21 -0700 (PDT)
Received: (nullmailer pid 3946462 invoked by uid 1000);
 Fri, 30 Apr 2021 21:40:19 -0000
Date: Fri, 30 Apr 2021 16:40:19 -0500
From: Rob Herring <robh@kernel.org>
To: cl@rock-chips.com
Cc: jamie@jamieiles.com, jbx6244@gmail.com, linux@roeck-us.net, wens@csie.org,
 linux-watchdog@vger.kernel.org, robh+dt@kernel.org, jay.xu@rock-chips.com,
 gregkh@linuxfoundation.org, zhangqing@rock-chips.com,
 jagan@amarulasolutions.com, huangtao@rock-chips.com, ulf.hansson@linaro.org,
 wim@linux-watchdog.org, linux-serial@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 maz@kernel.org, cnsztl@gmail.com, linux-i2c@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mail@david-bauer.net,
 shawn.lin@rock-chips.com, devicetree@vger.kernel.org,
 linux-mmc@vger.kernel.org, heiko@sntech.de, uwe@kleine-koenig.org,
 jensenhuang@friendlyarm.com, david.wu@rock-chips.com,
 michael@amarulasolutions.com
Subject: Re: [PATCH v4 10/10] arm64: dts: rockchip: add basic dts for RK3568
 EVB
Message-ID: <20210430214019.GA3946409@robh.at.kernel.org>
References: <20210429081151.17558-1-cl@rock-chips.com>
 <20210429081358.18057-1-cl@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210429081358.18057-1-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_144023_404968_3004D238 
X-CRM114-Status: GOOD (  11.03  )
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

On Thu, 29 Apr 2021 16:13:58 +0800, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> This patch add rk3568-evb1-v10.dts for RK3568 evaluation board.
> add uart/emmc/i2c/rk809 node for basic function.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     |  5 ++
>  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
>  .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 79 +++++++++++++++++++
>  3 files changed, 85 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
