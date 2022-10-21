Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B812C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Oct 2022 13:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xi/ie0yKBtzq2nInmOZVGznblEAlZGEJYo7qJj3ILT8=; b=ERgitsLRjaguAC
	KNbTrrHfWVnslgQrf1ytbinUqc09YexIaZaWAEuikExMYsVrjmFe6rNVfmP7YwnkM2gGkbNBzKWcY
	gNc7JwKKv65mh9n7FTp2PyxcuxVolbT+mhoqDnvscC7xgj3Zgr52SNHd+STdLiZtQSgPxl7SYbfZT
	+1PWb0ysBzDGYAsvk1L+k+7hiH+f1hQPnT7AfnK1Y7s/hqTtt7W6IvNvv1HR8gXm4w5OgN+nrcsIO
	lrj9hT730HciH/5lImbMlB1JtLL9ZNlUI+pjAonlm5WoEVI/DmT7d43Ofn93Bf8sQ5Z8x0SI9pWT9
	NTetRrPAxWCppbM6eJHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olrxl-007tOE-5Z; Fri, 21 Oct 2022 13:21:25 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olrxN-007t7n-DG
	for linux-rockchip@lists.infradead.org; Fri, 21 Oct 2022 13:21:04 +0000
Received: by mail-wm1-x32c.google.com with SMTP id c7-20020a05600c0ac700b003c6cad86f38so4831992wmr.2
        for <linux-rockchip@lists.infradead.org>; Fri, 21 Oct 2022 06:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=i4JniJFO6Hdg6kNwzrb/PJxlNwEXD1oSoB9sUXNG4AA=;
        b=KRlIyg/u0tYE5oXblsqDn0dKMd0L7zGHX6PBqE0FCsXsswAwYwco4EFIifQX1ONRW7
         7SaxqLXoSX6mu1Nh7ZFBbvmyXI2zg460zs6nvIAzibw99XZD5uOSyJeIKhOB72YFyDgg
         3T83bJoFOthQsg53QXGuHLHDoMzER0ebn5zLuxpbZDeCHq+H0KPoig72NBZrimtkxYpq
         b5eafxr1uEdcRgvlELg8MnV1TgbO4LZTQEqMQuZttox39NTLfsx8LcDBrDYfCjafaAWe
         Bdv3Yorx+J/XB99YCmhkDaU/qsOy3bnicMiZjV6mqZbIe2KUqJ4/1QLDu3qhTOvNf2fv
         TYHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i4JniJFO6Hdg6kNwzrb/PJxlNwEXD1oSoB9sUXNG4AA=;
        b=oel01NWUEh5K7R/oE9CbAND6KGzjJW816XUIfNqrHChSnRF7O49GFGU5DExejxU0CO
         cUlbr7TvBmSpEonxZH5Z4Z7mqchkOiB/hqBoK72PPXACZ4N7OCo845NFEdRr3eu5wN+3
         duUl6tU+AYnwVVudGnZQTcSsiu44d2VlfzX5KdQ96OCIBlEEe1h8E41249Gz8meu/STq
         Vwa/FaRDc2GAd78oHK026NF2IZkXGvlxSCTaDa/uzlyh1bwWUEY/eTfSABmLCR+7Orqg
         H6Z0HCzvRglAm1W48Hkuh+hXLeB1wW+mPBX3q01i+iWhodluNQssQk5DiLIh+6okt5/1
         h6Xw==
X-Gm-Message-State: ACrzQf0eg+zGcJ7iBqjI8UnBSprm6dl3shjNL8/zKaL8NbRBpEfx990q
	4U1qP3bMUZsEkcQpl5Jw2T+02w==
X-Google-Smtp-Source: AMsMyM5J4fLco6qzthaoFkH7ErTin58+NxkdGFINMqMFdhJr2i4VdFMQGgMTPWCWXWc+HK19vznoiQ==
X-Received: by 2002:a05:600c:354d:b0:3c8:4b2d:f3fb with SMTP id i13-20020a05600c354d00b003c84b2df3fbmr310079wmq.188.1666358457786;
        Fri, 21 Oct 2022 06:20:57 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id g5-20020a5d4885000000b0022e55f40bc7sm18738768wrq.82.2022.10.21.06.20.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Oct 2022 06:20:57 -0700 (PDT)
Date: Fri, 21 Oct 2022 15:20:53 +0200
From: Corentin LABBE <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, davem@davemloft.net,
	herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v10 00/33] crypto: rockchip: permit to pass self-tests
Message-ID: <Y1KctXMZ1+c5uQqd@Red>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_062101_497986_602F021D 
X-CRM114-Status: UNSURE (   9.20  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Tue, Sep 27, 2022 at 07:54:38AM +0000, Corentin Labbe a =E9crit :
> Hello
> =

> The rockchip crypto driver is broken and do not pass self-tests.
> This serie's goal is to permit to become usable and pass self-tests.
> =

> This whole serie is tested on a rk3328-rock64, rk3288-miqi and
> rk3399-khadas-edge-v with selftests (with CONFIG_CRYPTO_MANAGER_EXTRA_TES=
TS=3Dy)
> =

> Regards
> =


Hello

Gentle ping since it is a month since this serie was sent and no comment wa=
s made (except some reviewed-by).
So I think it is ready to be merged, probably thought the crypto tree.

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
