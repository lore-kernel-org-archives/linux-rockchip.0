Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1D61C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Mar 2022 13:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/o8Idq/FF4W3XgAh8xXN1jxVVNcz6L4jqFfuhTkRLtM=; b=X6x50X5O+iGksa
	fXJ86qIfDktWhGvNVz7Et9NQM+ggXjLfJ3JhyqFUy5pkIv5o87P0j79ho6iHSNHm4H+HimZlV4o8y
	ohLmvXxBTs+8NUCv10loBwIJhVsgJJBR3k5H5uHLH/6KB6r4aCo8mwCnarm2cyz14+Q1fTlIV3hzP
	YvKdXoAoat3EguNTL9tWnBOqNQPvfOD0RumZq0Btl0jrmfQhvKkKI7pbRNLV/7dHT24BQb+TIph6T
	G9XfALSqVY+CLBzCPNM3mHCp9HQwmAk0mfPHc7+f0eZ6BlTxVAzp9ms4w8et9IgEQHxv02HMSZbBc
	nJ81vvURYWcW/HA9g1yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nX0i6-00DgCC-Ek; Wed, 23 Mar 2022 13:07:34 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nX0i2-00DgAn-Rn
 for linux-rockchip@lists.infradead.org; Wed, 23 Mar 2022 13:07:33 +0000
Received: by mail-wr1-x431.google.com with SMTP id h4so2014593wrc.13
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Mar 2022 06:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=/7GPfWTScrdUPxYCfpF4p4gmdocaWvB3DedYIkySiRQ=;
 b=7EDiYHM0/mHUHNh2nAcUtV8Mo87BBMJDjh2R3QaAEXuxurVdInHyGhkLnwH6gL3bPY
 ftLMYfyygow8mzkD5Dev2Iq+3cB/DbsVL3VVzYv3NYkRy77gO07thxxfnDuE/5vvFwiB
 SnNZc9jBzd7JxXBaPe5MmyMhQ/dZvf5IJrjHbztF2VDxy+YSXfGCFsGy91bzu0dpwUVD
 vLLzZ2UR7OCpthmgXf0+rBDgwrScxpIXhhh0aF66G9+NvYfooCnN6Ac965njTsu7vX7H
 5rK015KemhcLQmxFbNnPmlRfVnVllLsShyU6SyQvhK65gIf9XVzlSMG1ZoK1rbNLFDgk
 2K8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=/7GPfWTScrdUPxYCfpF4p4gmdocaWvB3DedYIkySiRQ=;
 b=qxXUpjnzjRHxupuam+kguZ4Ln+UhEHz+shVoNzIeLAwD8NwuecmxWvB0gflsx0bTsM
 wodx6wILeeUQmi1JXCqrfM01+ZmWNF0dKEh7IQJ6jxhhJR4GMpxZQG+1bSeSOyf9BsBF
 QPKB1aFBaAGiyEjLAcmIMYtNUlW9hJhxdOgP/dRE3eNpVh1jq/ehKXmLXCVilH5aDDEk
 UuAwav5XHLfzs72yNIAjpDuTGBfRfExqUws7VTZXIa3dMxbEA26QMhPuQF0GNcanKMMt
 gjjshTtVjNqPW+KL2EsHFElqTDSwzrVoP2YQ43T6wUSXNvfLWYSOeb57vjOxd/MWkKxB
 y88g==
X-Gm-Message-State: AOAM530cxg32J+9L3ikvP6FzOe80Qf4QgyIU+6FfYbeDJVlkJ8osgIWf
 JmA+vW7mIpjiPpEFfL5a+yJ1Gg==
X-Google-Smtp-Source: ABdhPJwlHTs/jXded6YR+bEyG9ABUfL/AlSP0pBeJMmhWDxUYvyYfFnDLfkgPcSrNXyLqFblB0f+cw==
X-Received: by 2002:a5d:5509:0:b0:204:f77:c2d with SMTP id
 b9-20020a5d5509000000b002040f770c2dmr13533390wrv.432.1648040848448; 
 Wed, 23 Mar 2022 06:07:28 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 n20-20020a05600c4f9400b0038cbd13e06esm2794951wmq.2.2022.03.23.06.07.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Mar 2022 06:07:27 -0700 (PDT)
Date: Wed, 23 Mar 2022 14:07:25 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 06/26] crypto: rockchip: add fallback for cipher
Message-ID: <YjsbjaQrj2Y+cLmL@Red>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
 <20220321200739.3572792-7-clabbe@baylibre.com>
 <c643c8a0-3ebc-519b-bc6e-f95362d43a69@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c643c8a0-3ebc-519b-bc6e-f95362d43a69@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220323_060730_991102_96F93C81 
X-CRM114-Status: GOOD (  17.03  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Tue, Mar 22, 2022 at 11:25:25AM +0000, Robin Murphy a =E9crit :
> On 2022-03-21 20:07, Corentin Labbe wrote:
> > The hardware does not handle 0 size length request, let's add a
> > fallback.
> > Furthermore fallback will be used for all unaligned case the hardware
> > cannot handle.
> > =

> > Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >   drivers/crypto/Kconfig                        |   4 +
> >   drivers/crypto/rockchip/rk3288_crypto.h       |   2 +
> >   .../crypto/rockchip/rk3288_crypto_skcipher.c  | 105 +++++++++++++++---
> >   3 files changed, 98 insertions(+), 13 deletions(-)
> > =

> > diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
> > index 7b2d138bc83e..84ab14afcbd9 100644
> > --- a/drivers/crypto/Kconfig
> > +++ b/drivers/crypto/Kconfig
> > @@ -784,6 +784,10 @@ config CRYPTO_DEV_IMGTEC_HASH
> >   config CRYPTO_DEV_ROCKCHIP
> >   	tristate "Rockchip's Cryptographic Engine driver"
> >   	depends on OF && ARCH_ROCKCHIP
> > +	depends on PM
> =

> This appears to belong to patch #13 rather than this one.
> =


Hello

Yes this is an error, I will move it this line on the right patch.

> My initial thought was that it probably shouldn't be something for =

> random consumers to care about at all, but there do seem to be a handful =

> of other drivers relying on pm_runtime_resume to enable their clocks, so =

> I guess maybe it's an acceptable idiom :/
> =


Depending on PM made the driver easier to understand (no more if PM/if not =
PM).
And anyway, since it's embedded device, PM should be always enabled.

Thanks

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
