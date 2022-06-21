Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D913AC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jun 2022 08:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oPqu7kqH9lyZLRP/nHnrs9BlS3zSRjgDfAQyuQOd0EI=; b=wGySeV6Pf3Nsgu
	bcoa2rVYWhvwjpSgHWQkTmtjH6CCB41xHwhSP+xihYDRM+TNQfBL/x+5UaiVvK63RyPa7PaLGZmse
	ExXt1qYlAiRtQzYY9/lbirlKDqOQy489GEGV9Nol+OGs2uk4mJgtTiabsGmlkoswDM+8f5NqMHZuJ
	SjNbakqthfxIb1aTvNGsILQhQED69cNz67HvW78Qjhq+jIllvJV7ZJCmbfBQldZ7rvfsK3oGERrGW
	+Bwfi3wIUsFGI13eJVtVc6k/pwqoeParzMPhcVzIQMO35AOQdXHivF68TMNjeDtZ3Q3KZOFy9Be76
	tw0wv+U8O1qlsIuQA3LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Yti-004Hyn-0f; Tue, 21 Jun 2022 08:06:06 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Yte-004HwV-2Q
	for linux-rockchip@lists.infradead.org; Tue, 21 Jun 2022 08:06:04 +0000
Received: by mail-wm1-x32e.google.com with SMTP id p6-20020a05600c1d8600b0039c630b8d96so7324205wms.1
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Jun 2022 01:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=GsCQyeSS9WqgWVTSCSRei8+jKy0pNjIeX7QnW7mozH8=;
        b=jibc9DU08V3+hmlKpMeuFBDRViUNOmAqhLv6bBMBvot6Y1y5fIwWhHP50ijPfYjSkP
         dofNHKktUMXyQWgFL3kXgkNcCMI2EyGV7jpxsE895xWHEcXseYPy3ALYyk3QO/N0mUp0
         vdtIIlaM3jdF4mNnqhGbeiMjdwIE1RoqzlR0jkpN01OXtm8YiT2z6tDuzLLchasFD2w2
         Mkh6LtyCFJWejhKMxgykZsEQj/x8fiEINVD1qJbJOxZgN2YH/UWuZMuMZW32iBeGtvQq
         /lW7BLRvhMJx91EGYj8g/3IgB34BAKrk4wE5Qh21ccOj72gocm1+GPBZgzZ2TTnx2Dna
         r2Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=GsCQyeSS9WqgWVTSCSRei8+jKy0pNjIeX7QnW7mozH8=;
        b=fNW0StCXpTpvgaO+qdNo3Nu7u9PKK5vpHLmG7GJ21PjbxLUz8Kz2pgcK8FnJojN2Dp
         QrNJo59X2G2p8TPXM1Qnk3O0KKIr69OWu6NAj3Wu2ts2BUci7AfFXw6/EJf9fZWFoynr
         b2F8K6WEZMU5m4o1bgw2txM34PFRSDFze4STh/3Tmdt06EOV9bk1xQviGaxTYW/DMmgh
         IKHcXVkIC+xNRku04hza7Rzv6PDU1d3zX/TTGteMi0zQC2oTnp1e7cfHOU0GHZz+AmvR
         APsTni19inK2+S5gTf4xc+QNbrlO43tcdX5FmMxhMB6warmLrM2SDO5SlIU4qqfh8vzO
         LBMg==
X-Gm-Message-State: AJIora+c5JeHYgA0I0B4HfcM4KqTAInGDyGANNz3iWTaVAMszjvhATC2
	yOUDhk7aWJ1ZwJebc/z2nmEzkA==
X-Google-Smtp-Source: AGRyM1uyuBI4yQO8I87mv5kU872kiOSXmbKPq5Tg/yiYqqbU8VShLy0QcRaY062PjM90XL8FvpDVSQ==
X-Received: by 2002:a05:600c:1c10:b0:39c:4708:648d with SMTP id j16-20020a05600c1c1000b0039c4708648dmr28938957wms.85.1655798758346;
        Tue, 21 Jun 2022 01:05:58 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id t5-20020a05600001c500b0020d106c0386sm7043231wrx.89.2022.06.21.01.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jun 2022 01:05:57 -0700 (PDT)
Date: Tue, 21 Jun 2022 10:05:54 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: John Keeping <john@metanate.com>
Cc: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 14/33] crypto: rockchip: handle reset also in PM
Message-ID: <YrF74tmA9qc+I3JF@Red>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
 <20220508185957.3629088-15-clabbe@baylibre.com>
 <YrBUODGF51oUsF1f@donbot>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YrBUODGF51oUsF1f@donbot>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_010602_368072_4184B149 
X-CRM114-Status: GOOD (  16.48  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Mon, Jun 20, 2022 at 12:04:24PM +0100, John Keeping a =E9crit :
> On Sun, May 08, 2022 at 06:59:38PM +0000, Corentin Labbe wrote:
> > reset could be handled by PM functions.
> =

> Is there any further rationale for this?
> =

> After this change there is no longer a guaranteed reset pulse on probe
> since the reset control may already be de-asserted.  This is normally
> the most important case for a reset as it's the only time when the state
> of the hardware is unknown.
> =

> The original use of devm_add_action_or_reset() seems a bit weird already
> since there doesn't seem to be any need to assert reset when the driver
> is unloaded.
> =


I am not an hw engineer, so my knowledge on reset is low.
So why not having a reset pulse on probe is a problem ?

Do you mean I must put reset asserted on probe ?


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
