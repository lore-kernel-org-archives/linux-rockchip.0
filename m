Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3654C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Apr 2022 07:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lTcZsri5XfRy83EUPjTQdSp3NXiJwBiT7+DYxCWjfdw=; b=2DXbNatUN3V4rP
	59RHqqvRPyzukYCYFOpT0mwNXBRH2UloR+MVIYsc6qAJNP6SlwP7s44PKNGRohaAtg/9HqGXs24ZQ
	ZdjqyBsjcamSK/J9BToYQQ2O171pZRsdINH7Pt7mv4kcDtsdBFro3W0h20opFx264uOEeqz+bqZa5
	re5liEQp51QsV8ckrCP2adD5tgmg/GnEZ9yaJ6bEdcVZIziQE8wY2kB+Mhp4N7MgJjcofQhM//7A9
	GkeFHn0l060xD9WzuhGG0jfYCvbPO8/6pgjoCWbNmQNNWTehMXwWvNLy+YAZhtGBlCNSfgRHrsmic
	bH/VNr6t8tONAuxb/9NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndof2-007KDD-7I; Mon, 11 Apr 2022 07:40:32 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndoev-007K7R-8p
 for linux-rockchip@lists.infradead.org; Mon, 11 Apr 2022 07:40:29 +0000
Received: by mail-wm1-x336.google.com with SMTP id
 123-20020a1c1981000000b0038b3616a71aso9423418wmz.4
 for <linux-rockchip@lists.infradead.org>; Mon, 11 Apr 2022 00:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=3oyYPOVpIkmBff/7EiYsTw/AJNyS2XGBHLuSoNlzrgc=;
 b=d2HH6ugGb0vTvfwTwMnns8hVdf/MUzdBfmAd2yVAKdDr2qmC2I4QGziGamzcNN/+9f
 YOdBw38xMBcFMdWpAcm47rjnaQ5BtsqtpHPBFM5y+HRbuzodRgolmmh8G/7t79sE61Ag
 E0wavwZcosleiwSBQ/FEJkd0Tj/jS3tQ8hiLcIBKfyWki2f3j3MPx5brenieHJUtOPYj
 rLIyDl/FbFINnAhhgL5v6xZzsAsgpa2QCbvGShcAl9DyBcB8jsro+CW4Hp9LEWhmq69X
 /AK3KdaoYoOaw72iDO6Noqe0rQGpksMvP+9cPpoE1ESrXmaDlxYBi2JEGsjgaSjVnNbf
 Nx4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=3oyYPOVpIkmBff/7EiYsTw/AJNyS2XGBHLuSoNlzrgc=;
 b=G9nmNuaeyWkUqCyim9vYz//1Hth8zq9b26A4rB2qbR+nYCDZviCvUyKsW028+5D8Ds
 h8TsPbF9WdzEyWUEfhAgDSiRdGl9srakGEyM1/mbHuJVtWw1A8V1aUfj/+ko3TYcylB9
 7EEdP0QzMfCch612dZkIJwzMdmfGri6cLvW7hSaxB82GhrzwKDKbcebVrm6+5i74TDkb
 r+E5GDR5gDhFQtOGLYJDb9KMwtHJSsdwpqKENx8JeRgOq/CG1ReNRmvN/EkwMfXxHeHH
 f9IfDFEIHjCNIfsk9P7JzKL0j78MXBHnt6wHIrHgsyZrEOaHp4RW2JSst4oJGUdSNylO
 oWeQ==
X-Gm-Message-State: AOAM53035pSTcdv0dYcKAFrm6ldgBlEdRjHzAL9X6V5YQTy/uw3OwQau
 f5wUu4BtqBX8Xn9BZPvdJJFMOQ==
X-Google-Smtp-Source: ABdhPJx62ggZUG3BXe7S+CQUxyEq/166nIQzx3Hblm5hVassqt37mQgy9+cc9KMTOtKbn3qxxPImrw==
X-Received: by 2002:a7b:c057:0:b0:37b:ebad:c9c8 with SMTP id
 u23-20020a7bc057000000b0037bebadc9c8mr27467966wmc.61.1649662822962; 
 Mon, 11 Apr 2022 00:40:22 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 v13-20020adfe28d000000b0020375f27a5asm26909964wri.4.2022.04.11.00.40.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 00:40:22 -0700 (PDT)
Date: Mon, 11 Apr 2022 09:40:20 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: John Keeping <john@metanate.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 18/33] crypto: rockchip: fix style issue
Message-ID: <YlPbZGt3mVk25CWi@Red>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
 <20220401201804.2867154-19-clabbe@baylibre.com>
 <YkrY/9xE702mqKR/@donbot>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YkrY/9xE702mqKR/@donbot>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_004025_433192_4C78BE78 
X-CRM114-Status: GOOD (  13.21  )
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

Le Mon, Apr 04, 2022 at 12:39:43PM +0100, John Keeping a =E9crit :
> On Fri, Apr 01, 2022 at 08:17:49PM +0000, Corentin Labbe wrote:
> > This patch fixes some warning reported by checkpatch
> > =

> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  drivers/crypto/rockchip/rk3288_crypto_ahash.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> =

> There's also a badly indented comment in rk_hash_run() which could be
> fixed in this patch.

Hello

Thanks, I will fix it.

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
