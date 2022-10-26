Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EAB4C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Oct 2022 07:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t7YCI0LJuBgpqffJZiCTQmzKvqda4F69wK+a5njvSOI=; b=KvFt37Up1GtA3m
	YljT7iWQSb7zOsIx9FKetWccmYsjTwBchw+qkFNAgpsiUJHPhSYJ4QWOUNJwxFx9IriCk6oJJpesM
	dVVZgh8SnKxr+K25weJ5iQRpcasokKeQTjGflIAXOxBfj3PkE1kS5avUhb06fxjm8hzyPBO7Npn6m
	fI8DdFIR5Wb1TjfVfjWzE5ugqd0/+2R8Zu9LA2WREl/w1mhjzuDNXeP9s1V0V+1iAoVIx3j95Plc4
	THgIWeZzvnicZdCZSgueNxJO9KeKBHPr8Tbm1B59kY4VdTc5sYDANCzC8NiOGnVHlSsiF1MUhR6ZE
	WvWrCKoyhFIkf3zKxT7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onb2m-008Plq-DV; Wed, 26 Oct 2022 07:41:44 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onb2i-008PjE-FV
	for linux-rockchip@lists.infradead.org; Wed, 26 Oct 2022 07:41:43 +0000
Received: by mail-wr1-x430.google.com with SMTP id y16so14452205wrt.12
        for <linux-rockchip@lists.infradead.org>; Wed, 26 Oct 2022 00:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qX+c/eqfKIRmSzQ2TAxdY0LKUbRjF3m5mcG02oMGx8Q=;
        b=EGnZTiW4mN/u1L+KFftDWxXLRHrI00+AmvAaQQQ1bURMf22zv1OHtlPR/H7SUlo1xJ
         fTLksIEiBVk/vYtUiqhHH+WeQMz81sDDpni+g1os3iml+wBrTaKNtPzeQ2gi9kupiQXT
         iz7ggqhUEm8RugKYJkKqp+ZxE3PnQPjCAKtlF1m1brJaP3z5MqAuxVPc0vPN7sSxpbsg
         anaIGMEx4eOGC7OC8w5Jhy264e2k+OotLo1DqfjJEhvn5EhZWLsI3Kv3iik8lHFDUNrG
         il8K4Mejef+FYzG1mGYubXfdTuAIloBpBQv3eUuIaoVWb4faCOB6LwD+KrRuFx0eGNNO
         vyrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qX+c/eqfKIRmSzQ2TAxdY0LKUbRjF3m5mcG02oMGx8Q=;
        b=MdSvxWWm9Y22r+S4jvRyDlEkwQCyT2gRbBntug6fJfwEVAtP7idt6tethPBkpVHasF
         ilFqf6jjSAUaYP3rsF5yyh5jSF6OtwBmxVT07c9+cCGD5jXS/OUh2XTFwCTYS3Fb0120
         4AOt2GHMWIn1/CB1BYZ04W/102tjDs39OmTKdAT0gLHyUzEPhrVX18ZP8+xZs2tFitnW
         vAxA99fFjZEQUjyUIl4khjhKW/OlGusMdgiupAfo8dLuOcxGL+Icuv6IZ0CqWreXKfHa
         yqf82K8cJWwnbItfnZD3s9EyE/S9+stkbyOUYbEZYtnvtz/PKhwKHpT+X2UW5cVS/JAJ
         uxZQ==
X-Gm-Message-State: ACrzQf1wgc0nslQjGCEd3PR+JhB32lKYy+B+/EwjLQcqKXia9ZtOBvcK
	TqsPhRhOxLehDOrnZ0DpHtASvA==
X-Google-Smtp-Source: AMsMyM5S7b7nFZ2PlRcs8UPcZE5oWqjrYPqMzqX/eLf5/1gT4eLBzzOdYfUXPmu8eE/ZrDy9n/VKEg==
X-Received: by 2002:a5d:46c1:0:b0:236:6a2f:9e53 with SMTP id g1-20020a5d46c1000000b002366a2f9e53mr12098440wrs.256.1666770096085;
        Wed, 26 Oct 2022 00:41:36 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id bd14-20020a05600c1f0e00b003b492753826sm1054980wmb.43.2022.10.26.00.41.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Oct 2022 00:41:35 -0700 (PDT)
Date: Wed, 26 Oct 2022 09:41:30 +0200
From: Corentin LABBE <clabbe@baylibre.com>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	herbert@gondor.apana.org.au
Cc: ardb@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v10 00/33] crypto: rockchip: permit to pass self-tests
Message-ID: <Y1jkqiYjXT30/hk5@Red>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
 <Y1KctXMZ1+c5uQqd@Red>
 <4780296.31r3eYUQgx@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4780296.31r3eYUQgx@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_004140_762416_E8EAD13D 
X-CRM114-Status: GOOD (  13.84  )
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

Le Fri, Oct 21, 2022 at 07:09:53PM +0200, Heiko St=FCbner a =E9crit :
> Am Freitag, 21. Oktober 2022, 15:20:53 CEST schrieb Corentin LABBE:
> > Le Tue, Sep 27, 2022 at 07:54:38AM +0000, Corentin Labbe a =E9crit :
> > > Hello
> > > =

> > > The rockchip crypto driver is broken and do not pass self-tests.
> > > This serie's goal is to permit to become usable and pass self-tests.
> > > =

> > > This whole serie is tested on a rk3328-rock64, rk3288-miqi and
> > > rk3399-khadas-edge-v with selftests (with CONFIG_CRYPTO_MANAGER_EXTRA=
_TESTS=3Dy)
> > > =

> > > Regards
> > > =

> > =

> > Hello
> > =

> > Gentle ping since it is a month since this serie was sent and no commen=
t was made (except some reviewed-by).
> > So I think it is ready to be merged, probably thought the crypto tree.
> =

> ideally everything _except_ patches
>  26 +27+28
> would go through the crypto tree.
> =

> So if possible I'd like to pick up those (clock + arm64-dts patches)
> after the crypto people are satisfied with the driver changes.
> =


Hello

I agree with this way.

Herbert any thought ?

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
