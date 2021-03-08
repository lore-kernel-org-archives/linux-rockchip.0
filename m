Return-Path: <SRS0=fRcm=IG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02C47C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 20:09:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9F0F365194
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 20:09:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9F0F365194
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wrJHFul8Qu7ziHYFVh8czu4OF+bGKaz8GSWpvcqI0gA=; b=Zu3rsa6JGyrcD7t3axOe79Iuo
	N8DZK/Lsx55wpGQPzC4yrRca7AHz9c+LaIb6tuy090b1YvxYKfuNuE33BYUBJNXbMm3jWCsju+eBJ
	zLNg4Czf1FxSweRObLXTmK/azZSe5P2ohcoRw3RYcu1lJiBZXY+Mw3eYApWk/aby9aQHlExKW5jrk
	1ClHx1uiUQ22VKwfrxS0M8ALQpVhXaHQq8xfTrDzyGnRNvp+tzOKccOc58GDvvoZ7sZVsd59lSIPF
	PT3mFGkZkha0lMvyobATNpZd6cEnb6G0AsFqgtPE1nfhYKIFkaec0eADko7+B73sjQZX+3AV/1OLV
	bINanFG+Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJMCD-002QaZ-NF; Mon, 08 Mar 2021 20:09:42 +0000
Received: from mail-il1-f173.google.com ([209.85.166.173])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJMBP-002Q08-Rg; Mon, 08 Mar 2021 20:08:59 +0000
Received: by mail-il1-f173.google.com with SMTP id h18so10040120ils.2;
 Mon, 08 Mar 2021 12:08:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=89JRuh9tQEQ6fMlveO5xtA5I/16pwqBqFySAsay3IKY=;
 b=rm+dVzIBdRVVqiaR3gIiCJera98f1tALmLdgB2uS7ZlPtxQxEk02kDEvHXvOndFFy/
 SwSTUcKkaDbj8Mr3Id+sHyj3jYwuOty+LDe8zqj+Xb8sObpyxk3lw4CEt6yOtDaGFdVF
 kEPVcIyv4clrcAFFIl++50YnilA+MHHVKhBphisdHHuSePLLjKmY59yWINZ+BY06EdpW
 jiGkrLMV+oeibXSYAY86oO/Eo8tVeNL1cAtSXi4RWSsQ2N4kTFf5lGg/d9yFX4/3t4gF
 kj+G5yxruHMykQIr5iSUx7Ig9A68e5xzH8drmq8VnDDalL9EqBGCBqJ/4mzF+SB8NBTY
 ujCA==
X-Gm-Message-State: AOAM532fechsHGl9Wpzt92OP4YZmRHW26uxo4nircxZY5Ykg6lqCHwSR
 sYWFfhti1+rBSzvSzZFSuQ==
X-Google-Smtp-Source: ABdhPJzxiaNR6oqsqybVnTWQJpRAagmn1BRONpJwC44uPTv4w+VvgAh7BNmETS8Lx8C9BXE/DJ1/8g==
X-Received: by 2002:a92:d5d2:: with SMTP id d18mr3972946ilq.50.1615234130405; 
 Mon, 08 Mar 2021 12:08:50 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id k3sm6428250ioj.35.2021.03.08.12.08.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 12:08:49 -0800 (PST)
Received: (nullmailer pid 2879384 invoked by uid 1000);
 Mon, 08 Mar 2021 20:08:47 -0000
Date: Mon, 8 Mar 2021 13:08:47 -0700
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, peng.fan@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-rockchip@lists.infradead.org, shawnguo@kernel.org, mchehab@kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, dan.carpenter@oracle.com,
 kernel@collabora.com, gregkh@linuxfoundation.org, kernel@pengutronix.de,
 devicetree@vger.kernel.org, wens@csie.org, festevam@gmail.com,
 s.hauer@pengutronix.de, ezequiel@collabora.com, hverkuil-cisco@xs4all.nl,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, linux-media@vger.kernel.org,
 jernej.skrabec@siol.net
Subject: Re: [PATCH v4 10/11] dt-bindings: media: nxp,imx8mq-vpu: Update
 bindings
Message-ID: <20210308200847.GA2879333@robh.at.kernel.org>
References: <20210303113952.178519-1-benjamin.gaignard@collabora.com>
 <20210303113952.178519-11-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210303113952.178519-11-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_200853_004150_6885FAB0 
X-CRM114-Status: GOOD (  16.47  )
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

On Wed, 03 Mar 2021 12:39:51 +0100, Benjamin Gaignard wrote:
> The current bindings seem to make the assumption that the
> two VPUs hardware blocks (G1 and G2) are only one set of
> registers.
> After implementing the VPU reset driver and G2 decoder driver
> it shows that all the VPUs are independent and don't need to
> know about the registers of the other blocks.
> Remove from the bindings the need to set all blocks register
> but keep reg-names property because removing it from the driver
> may affect other variants.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 4:
> - rebase the change on top of VPU reset patches:
>   https://www.spinics.net/lists/arm-kernel/msg878440.html
> 
> version 2:
> - be more verbose about why I change the bindings
> Keep in mind that series comes after: https://www.spinics.net/lists/arm-kernel/msg875766.html
> without that review and ack it won't work
> 
>  .../bindings/media/nxp,imx8mq-vpu.yaml        | 46 ++++++++++++-------
>  1 file changed, 30 insertions(+), 16 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
