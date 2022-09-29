Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08E39C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Sep 2022 22:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Rg8eBASxLGqC/2Fb57ghMBy1CyR+JCUNMR7+f68wgI=; b=GiQR4jlyy0PGEc
	WwwEqxD3oKHFG6NTCvodH0ZF83xsNtasYMRNLZB4+okALUNFwzWtNGaeniNDi7U90qeJuPGjP2SzF
	EaPJCJdJ68SWPfQnsayNIhht+t8QdHTFlZ2HU/DufYws1GZFx1iazRAv7cVd/uvBAZV2aF2uvZ5HN
	fhrB7B3io/PxQvRPt4p7tdxCm9R4cMmkaXuHiHhC5jDd4wNNKY8cJKX2D0OlCc55wMrGF3bp5NfMm
	XJ6y4xs5LzuEbiFz0bfvxWkbHXupWfg1ftF6Sx1JWq9uH1j/kayPl/xZzn+VKTqLnfTAlNxUpQE4D
	JK3gDz8SjXthrGd5YedQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe1oF-005eIq-1m; Thu, 29 Sep 2022 22:15:11 +0000
Received: from mail-oo1-f41.google.com ([209.85.161.41])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe1o4-005eFx-AR; Thu, 29 Sep 2022 22:15:01 +0000
Received: by mail-oo1-f41.google.com with SMTP id k11-20020a4ab28b000000b0047659ccfc28so1060160ooo.8;
        Thu, 29 Sep 2022 15:14:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=G3ixGfgN7BtiMl2GIJrXgjiRG+Ja3k65KHc2UeJTU2Y=;
        b=z9lj0PJPzv4bkHGmj7lRo2XOa0BJmTgBj+BRIE+G5GZFeXuxchsAz7Zk+pWE6cY/Gl
         eymtAWoFkflS4l+MYiuB3sq0ruSQRlVJqhf91uJcmEC7Bs0azfso4xgySnxLkgBstH9A
         pkEpUwWz119irPhd54Ox8qtmws5chsC/5rYr+o9XGZYxW/vYw6/OaLs0+uLvLUAiNqWH
         k7K4KqdwCWW1Uc61S6KsyoxmEikXfDrGasi/G44lsBtNudVxLpQVz2RVHlwVgG+Ht0b3
         OeFNdY/Qd4X7ywfBB2Ak1XlroXNEqHducll0A1HDttM4Yq5UrKlFLzRRk8egDS6EnOS6
         Yy2Q==
X-Gm-Message-State: ACrzQf3VEe3N3rB0yxf4YFDDnURnUDe1H++dCtOmN76m4c/wZ8FfjHPs
	gkeRph7TBgBIuChaPIP4Gg==
X-Google-Smtp-Source: AMsMyM6X8fuxncInKY1HHajfMs3xBeGsJpxqmoGci0kg/caJyZtFTBc6uzl+qdSsE6tynspmpVwZHw==
X-Received: by 2002:a9d:666:0:b0:655:d979:8a6 with SMTP id 93-20020a9d0666000000b00655d97908a6mr2406280otn.200.1664489699187;
        Thu, 29 Sep 2022 15:14:59 -0700 (PDT)
Received: from macbook.herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id c6-20020a9d7846000000b0065892f42157sm199147otm.75.2022.09.29.15.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 15:14:58 -0700 (PDT)
Received: (nullmailer pid 2862895 invoked by uid 1000);
	Thu, 29 Sep 2022 22:14:57 -0000
Date: Thu, 29 Sep 2022 17:14:57 -0500
From: Rob Herring <robh@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: heiko@sntech.de, devicetree@vger.kernel.org, herbert@gondor.apana.org.au, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, mturquette@baylibre.com, linux-rockchip@lists.infradead.org, davem@davemloft.net, linux-clk@vger.kernel.org, ardb@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, linux-crypto@vger.kernel.org, sboyd@kernel.org
Subject: Re: [PATCH v10 25/33] dt-bindings: crypto: rockchip: add new
 compatible
Message-ID: <166448969734.2862850.15734713971995985090.robh@kernel.org>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
 <20220927075511.3147847-26-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220927075511.3147847-26-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_151500_380198_22E4D714 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
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

On Tue, 27 Sep 2022 07:55:03 +0000, Corentin Labbe wrote:
> Since driver support new compatible, we need to update the driver bindings.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../crypto/rockchip,rk3288-crypto.yaml        | 79 +++++++++++++++++--
>  1 file changed, 71 insertions(+), 8 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
