Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38588C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Nov 2021 09:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKeyEujYndm1d7HzYuy3XAOVtJ4QtUqHGO2PNjyi7tk=; b=CCt5m0T3baKT5T
	6g9H2r1BvFb9Gwr2ModF9lMaGrp9Fm3olzjQw72hRAiSz0xDuap4F76xnZfndadgqLu//irM2BFPB
	SCHievcTMD/VzTn4E1eXFcbc7OLhBN5nrUZu2MB80q+iJlJ2Zs0fdivlIlEUzrsNTeyCwDGiN2QDp
	4Ax3yl8QHjo9HL1OMIw4QFgbWMY4jKrFlO0ogww4PMOKGpdJH8FdoHTllmR0g1AAv7aTQMHjdtABV
	cCAdTzNqEyG19HjLu6P5JlAEvt8CWJ2f0m9KxoshZ6iEk8uEBAQTcyhinbIu0fVc9DouHTm9J09/b
	NHZFBhVLk/NQVKxKSpqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqBDs-006wfa-11; Thu, 25 Nov 2021 09:39:20 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqBDp-006wee-Ly; Thu, 25 Nov 2021 09:39:18 +0000
Received: by mail-wm1-x333.google.com with SMTP id
 m25-20020a7bcb99000000b0033aa12cdd33so578667wmi.1; 
 Thu, 25 Nov 2021 01:39:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JsWSBzoF6q60IKzONTXTKTOX38hGEElpEC5e1cFXxMw=;
 b=e9BNmaZr+9frNsh1OxVSxcuyZYi5JHpT5RH5ySRVrg9VUsQimIf8iryHBDnjO6Q/Gf
 4CNOcPC6pF1ffCESR/nfd1pkj8i3Gn2KIczOpCw7emtLwlsjCR6Zc0U9eVjQdzoAO+HW
 Z3mBdV04WIQp60cXuw3cXABF49Fku3m7yzAuwWHTKndsWNTG/8EXu8Gr+H4NOscy6vM7
 qHV1d4UduVpXX8Rqi83rOxxNjQmGhtLLHwyW/MBcL2oSl8pkgaILPA/q1wHvGLZp35sq
 s7ofF4kG609Ul/4jqIOS27xPi0I5gJwpRIgkWEauHJb7uL74APaGL0UiSKaOQSUQQer7
 fQnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JsWSBzoF6q60IKzONTXTKTOX38hGEElpEC5e1cFXxMw=;
 b=DM0BeSowE30ck9UgPVbq4rn8tBg4dr6sCNQsvEWA/nl+gFugrVYuDdxGFr/34DuneD
 pF9YGN2Gq0lmlk2aPMUkrwWIpwK2Q3/pQzdqrRrhGINGBSRWIsYyHDjdFUVSGICnz9wb
 gW/sRelgLjqUAZhUGoquyvgH9uNhHBvWtP5cOi4S44r9dZRo/09VljAfS+sGsPhD6f6R
 CRXO7o9lJ6D+xDbF7Zy8R1GslxWm81H4uhfxC1gnx8dCtC30IOgkxfAky1zXfhxxmRF/
 b9okNR5sz1kqsFGzYvJ7EaWLikqbj2pi1opK2IOI/pBL8bdTFQD80bVxWUk0iGSzNxSl
 g5eA==
X-Gm-Message-State: AOAM533y8pPdQjMpxsrO/u/Rqh7jG32zso68WbTCG9o+WUmLg7vs8u8X
 VnhrKcNr2jClBK5/x6eKdmiVpHozwFM=
X-Google-Smtp-Source: ABdhPJwn9WYM4A5Ba6uOrUY3qZJujkwovHFYdpg+NpSmE67uRNgza9NoVF3XBWhs8MyNZm5A0klAMw==
X-Received: by 2002:a05:600c:4f03:: with SMTP id
 l3mr5548476wmq.47.1637833156147; 
 Thu, 25 Nov 2021 01:39:16 -0800 (PST)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id i17sm2732092wmq.48.2021.11.25.01.39.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 01:39:15 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-rockchip@lists.infradead.org
Cc: Kyle Copperfield <kmcopper@danwin1210.me>,
 Dragan Simic <dragan.simic@gmail.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Kyle Copperfield <kmcopper@danwin1210.me>
Subject: Re: [PATCH] media: rockchip/rga: do proper error checking in probe
Date: Thu, 25 Nov 2021 10:39:14 +0100
Message-ID: <1864840.RQ6cyUMOaI@archbook>
In-Reply-To: <20211120122321.20253-1-kmcopper@danwin1210.me>
References: <20211120122321.20253-1-kmcopper@danwin1210.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_013917_750706_A96B3D91 
X-CRM114-Status: GOOD (  10.63  )
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

On Samstag, 20. November 2021 13:23:02 CET Kyle Copperfield wrote:
> The latest fix for probe error handling contained a typo that causes
> probing to fail with the following message:
> 
>   rockchip-rga: probe of ff680000.rga failed with error -12
> 
> This patch fixes the typo.
> 
> Fixes: e58430e1d4fd (media: rockchip/rga: fix error handling in probe)
> Reviewed-by: Dragan Simic <dragan.simic@gmail.com>
> Signed-off-by: Kyle Copperfield <kmcopper@danwin1210.me>
> ---

Tested-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>

Fixes RGA probing for me, many thanks!



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
