Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1166C38142
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Jan 2023 10:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iEPFXUb7iyN5kpritaDARJ/mtAqzAWPHop37Nymr1Ks=; b=M/OqrSJ0AuyUNB
	NVNavoLlEX2BVY9NxnmCbzGlP6inOgPhQGjKdDjRM/IvzQLx08ZTsNNpT047gRfgtKRNs0SWngtmZ
	W0mTJ+kelBiMvJfb/aRGwdDEUtX6jqzYz17vS5Ksrmkga7O2WGVdckPpfXcjsYvxYHHtKiMdX60oK
	PN1Qpcs1I7bFwGUdaZjbbBLZ69DOH5FHXrif3ybwB6a8uj4j5dIy/978W6eNq0pvwsYN/hsCMVvN7
	nQB0cJNEcO4ypikM++uOok1TD2r/mHaYPkaVLzcJhbEEoBBOgHckgYPI+IkQ6bI3Vjm+UtuwbJvXO
	U+8hW+VcVX2FWSHq+eiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMo3Z-007URG-Sf; Tue, 31 Jan 2023 10:40:06 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMnyR-007S6m-Uf
	for linux-rockchip@lists.infradead.org; Tue, 31 Jan 2023 10:34:50 +0000
Received: by mail-wm1-x336.google.com with SMTP id f47-20020a05600c492f00b003dc584a7b7eso4064954wmp.3
        for <linux-rockchip@lists.infradead.org>; Tue, 31 Jan 2023 02:34:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pGDnJGJacVF1PMUap5ezjy6PuTvYC3mIm+zih6cOuVQ=;
        b=fUXj+8w9PNWhPejeQuG8YDIzmXrPw6BgnpaSXVKcjFMoLq7zZ+qdUWYNnvJQxBJk/Y
         8jkYlJdHo59yRxNSn38ydjWTQBf5+6mQK0Y1MksanP88KDqz6LZ35Z1V3C8z7cqWYOq0
         nyViAp4vJFBB5AawR2mxkaq6VoCNFLSunydwkt89OM0wmw+nVjjS2CcHfFGbAIV6DJKj
         66AYmiLwy0hbS5wvYT2aKFoNwApOSlWupeyoKa4dXFmfdwcnw1iYGqy8J1g+X+WftVPe
         d+yjmfKQkXCGHo17mMZWRaUiswqTqR2sURPPqtYCPMFxiyIFgEVa1OZWtWkpXlIjO3Zf
         66Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pGDnJGJacVF1PMUap5ezjy6PuTvYC3mIm+zih6cOuVQ=;
        b=Ql2gzkjjJJz+qkLglf7OhjpS4XXFLt4edIy4weyUz6jN9zXYD+SPG3enkScaufyWec
         ZAIjx6XzH/hAauLKZfPNG5+bwFimxSLmfmSLNEcTqMBgPAtoWI+61SOvxgI7uj268gcY
         AzoHPUBnM/7FObBC8Wt3UhfwlFznwF4YwkLpRDNEoUl/D/Fl1XqVz46w+EXrIk7E0Lub
         +26/lJYjefkKFr7mPhQ+8u6iDu0SzV+gusk5oMCALekGhi5xiRxFgdoqF/glDy6m+uLU
         i2sRuL6fam+OZkdnZIhv9kp92fGXjKm24vw2ea/fiVfjbEyBvdcgodKC6w/JVEhg2T1W
         Wq1A==
X-Gm-Message-State: AO0yUKUzTZZw1Pijkgb+dFSzTFe8i2cMpap/N9NA5toouEgU7Sqm3A7x
	+WOjK5oWWiCFRARyoqw+pE074CTY2PTRGzY/
X-Google-Smtp-Source: AK7set9miOpPKqLx30aMxVqgYoOxwtZBLwr3guJySEdGJ1fZiIka9A50E9jnmWTtUAeA/hVHH0RuVQ==
X-Received: by 2002:a1c:f014:0:b0:3dc:4318:d00d with SMTP id a20-20020a1cf014000000b003dc4318d00dmr14272307wmb.11.1675161284465;
        Tue, 31 Jan 2023 02:34:44 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id m29-20020a05600c3b1d00b003dc51c48f0bsm8923701wms.19.2023.01.31.02.34.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Jan 2023 02:34:44 -0800 (PST)
Date: Tue, 31 Jan 2023 11:34:37 +0100
From: Corentin LABBE <clabbe@baylibre.com>
To: troy.lin@rock-chips.com, shawn.lin@rock-chips.com, hl@rock-chips.com,
	ty@wevs.org, mike.rudenko@gmail.com
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org, robin.murphy@arm.com
Subject: Re: [PATCH] hw_random: rockchip: import driver from vendor tree
Message-ID: <Y9juvficPxFUfgHD@Red>
References: <20220919210025.2376254-1-Jason@zx2c4.com>
 <32f8797a-4b65-69df-ee8e-7891a6b4f1af@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <32f8797a-4b65-69df-ee8e-7891a6b4f1af@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_023448_018129_FCDE8C1A 
X-CRM114-Status: GOOD (  16.10  )
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

Le Tue, Sep 20, 2022 at 10:35:44AM +0100, Robin Murphy a =E9crit :
> On 2022-09-19 22:00, Jason A. Donenfeld wrote:
> > The Rockchip driver has long existed out of tree, but not upstream.
> > There is support for it upstream in u-boot, but not in Linux proper.
> > This commit imports the GPLv2 driver written by Lin Jinhan, together
> > with the DTS and config blobs from Wevsty.
> =

> Note that Corentin has a series enabling the full crypto driver for =

> RK3328 and RK3399[1], so it would seem more sensible to add TRNG support =

> to that. Having confliciting compatibles for the same hardware that =

> force the user to change their DT to choose one functionality or the =

> other isn't good (plus there's also no binding for this one).
> =

> Robin.
> =


Hello

I am very interested on how this serie was tested and which tools was used =
to ensure output was random.
And how did you get that CRYPTO_V1_TRNG_SAMPLE_PERIOD(100); was the best ch=
oice.

Thanks
Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
