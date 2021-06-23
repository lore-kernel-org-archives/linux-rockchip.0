Return-Path: <SRS0=6gll=LR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14529C48BE5
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 13:11:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DB82D61075
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 13:11:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DB82D61075
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWF6Nlo8Twz/IJ3KLd2o6vtWWn+d+hyH3wDeoYQKBQg=; b=l5Iw8IU4AwyT61
	Oe5c1gpLADi6s9pmxMOisUxgIxIDSgLrMGqy/4et5ICr1gWpzbiKPHgUaWVDb7bCfV7wdUN0zLv4x
	9i2x22vjqCIuTsn8bm68IP2hH/oZzWDIUCplCM6d6wG2rdIQtBjA9CsMsHuXSTCwmrgkuHx6heRHX
	1Y2sSO0i7qpslmbL84+Is9eiEW0uhvpMGSXrDTEfWjI5BvnhKUab6Y3LxpkvXamF0J2tp0bc1Ssev
	zbahL93XADZcMkw5stU2sDLSIdLWermZQTkO2ZCOhJqj9e4uNRX67267PRRQXf4UsgRnmwQc8Ycth
	FeBnxGOUdGgTAiMhaubg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw2fP-00AkVE-22; Wed, 23 Jun 2021 13:11:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw2f8-00AkRP-G5; Wed, 23 Jun 2021 13:11:29 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C9E6D60FD8;
 Wed, 23 Jun 2021 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624453885;
 bh=/blXvtCxZawzukWrMHd4didSA48vZpDv5YhTrQQKVqY=;
 h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
 b=e9fK9m5MgIRPg1NVVqoE3FK3uD30J9j7VOC8QoEQfNInsHLhBoccrl4UaxSoV7Io9
 ZyCRbL+Q6jFPOUuAU314ilXnWFLebPGn1JdW4xRjo0QY3Dmw9kqZAfPScjsUM2fxOV
 im/QTxjI5hTZBXV8IMLbF3VlRt7WXLF4oY+ToVUzZF1R05actGGsLSO00f/u8wqscI
 gAe2M6pSXJuLchV1waHfrcru1p22vdMxXF6csNk70NyguSmGJmH6+Amzoi1qdKbeAK
 fe5zubiaAf3U1txTtnxsDLoxU5g1xwqREDFOY/wljigFLFIqeOBpS3Wb6Vv6XIiCAZ
 5cq0s1dl8acKA==
Received: by mail-lj1-f181.google.com with SMTP id f13so2907284ljp.10;
 Wed, 23 Jun 2021 06:11:25 -0700 (PDT)
X-Gm-Message-State: AOAM533QljpZWpaR2TPvga+SgyV8/GBWg5BEiNjkc3MeY2AvEwWD5sKx
 doJLnQL/4aGGKjYDFwZiQnLkDmYnsEKVBJakWqM=
X-Google-Smtp-Source: ABdhPJwSSz9HB4JFze26YtRuZndqnzLvA54RbVubu2ZMK2SJ8j1l1bIGHHU8vEaSU+X/2yyGfPBuqfoUT0wgJJ5C82I=
X-Received: by 2002:a2e:9ac3:: with SMTP id p3mr8133193ljj.94.1624453884191;
 Wed, 23 Jun 2021 06:11:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210623120001.164920-1-knaerzche@gmail.com>
In-Reply-To: <20210623120001.164920-1-knaerzche@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 23 Jun 2021 21:11:12 +0800
X-Gmail-Original-Message-ID: <CAGb2v67K-BRhQ_a1yXtdPCX8T30FJPLojueJ2cvpXmGUskOLjA@mail.gmail.com>
Message-ID: <CAGb2v67K-BRhQ_a1yXtdPCX8T30FJPLojueJ2cvpXmGUskOLjA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add sdmmc_ext for RK3328
To: Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_061126_598660_2CEC3597 
X-CRM114-Status: GOOD (  12.83  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jun 23, 2021 at 8:00 PM Alex Bee <knaerzche@gmail.com> wrote:
>
> RK3328 SoC has a fourth mmc controller called SDMMC_EXT. Some
> boards have sdio wifi connected to it. In order to use it
> one would have to add the pinctrls from sdmmc0ext group which
> is done on board level.
>
> While at that also add the reset controls for the other mmc
> controllers.

I recommend splitting this part into a separate patch, and
adding an appropriate "Fixes" tag to it.

ChenYu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
