Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A13FC00140
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Aug 2022 12:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJTbDLipGbnHabeUD/fKV1Ef0cDxArY3kcF+Mb7PBzc=; b=41MfabGNSIdAFh
	4XEu3lSy8wogl7aJeZDC/dlYpbGGpjXTR+vto5SBUeG6kURlU35d6/mgOF2+oLdFI1j9UPkzevy9k
	qEHmWiEQ3c+bmeq7geq+cu6A9IdqRxEJSiADL31aUGE1qN9vf4fw4eph7prm1P7/pfiv8B8hUuenS
	6hmiOTDhcKdaE0UzlgA6fS1PKok9Z05alyk+Fs3ZfKez08eWzTDl+06X+CXnkjk6K6EA8h94TjygB
	QdWNmuARSqwsO33SPSVUKJUytjv6zROI8jq8Uxn1CG5jAqrabYrPFP4QfzhKRjhEFMlwJb6KF4DcF
	SaQ14cb+6HZuxBlTDGrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQpWX-00Cp97-6v; Wed, 24 Aug 2022 12:30:21 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQpWI-00Cp44-Qf
	for linux-rockchip@lists.infradead.org; Wed, 24 Aug 2022 12:30:08 +0000
Received: by mail-ej1-x632.google.com with SMTP id u9so4239965ejy.5
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Aug 2022 05:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=A4ebziFGIGKWedk4/E9Y9YHWqlnnQT7eJEB+itOg6jY=;
        b=JV4NxLJrrSRlvhdBCQR0BmBXWvBPD2WWY57yL9lQtZiNURXqJpW+V5TxKtgglU8sfr
         8h0saIQScUeus/RY4HdeNiEsA6CqBZsV5Z9pDrACaY0tZcAxGuVb7q083EomrLNDC40e
         odwPYLn28lzNGxZNRAjiuAPURDYf9lpPS9WKBAGU5Ly214gBijHGAUB5XOWefa2WXJTh
         I4V+h/62ngM8TNNQUcvs4g16JwsYe9ZtdRvwBVyGQqgULED08G3uMVf1nyDa14i+tesK
         7IHifg30XF+EjhDYcPgPLX+unpTE3yx0aumKCsZoelIzFF3+cnpPGECjoTxRKYH5Khuq
         e3Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=A4ebziFGIGKWedk4/E9Y9YHWqlnnQT7eJEB+itOg6jY=;
        b=AArd10n6Lnj6QEUTfcNPOrohYpOydkmChTnUi1p8Ax6+KodagMUTD0FlwlzpgXuzmP
         XqwelnHf0xXrf8F+Nll1gsNEgdnVB+gqYv+Gz4ewCcvTmC7HThJ8GK3/hSGjnajPeWbX
         qODDLlYYcLNgb90bgtpG+AiROg7OPO7616r4dHS0/WztU4hrAgq1ChSPlSXRgsT9pwzq
         r/SP0s9tuDcjLbRDjjdXIQrOBce0AG1QysN00BkK980qM+CnpgCOjNpCnmjTV4Ua/bOa
         fbImDXa1NXEPns8D7Etzy5QHuU8op9bFOcY08Qfe25bQuEoZ8lWGIduC8GOU1oFx6T+6
         0pnQ==
X-Gm-Message-State: ACgBeo17dm1mP48rQeehCAUoJz0W5miF7QDuGlSKyhcAcsnQqMc5+Njm
	kxCo1xgQmmIxNR6zQCUma1tSOrsIIOwiEloA42PIag==
X-Google-Smtp-Source: AA6agR4y8IkROVTTFYuvJGLyuFpJlX7rUg/lBd9WKIqzPf1600ZmKhkQ1tKmij2PmJr9CSFfVIP2c0YYAvxPH8SXo4Y=
X-Received: by 2002:a17:907:6293:b0:73d:b27b:e594 with SMTP id
 nd19-20020a170907629300b0073db27be594mr2746905ejc.526.1661344204322; Wed, 24
 Aug 2022 05:30:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220823145649.3118479-4-robh@kernel.org>
In-Reply-To: <20220823145649.3118479-4-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 24 Aug 2022 14:29:52 +0200
Message-ID: <CACRpkdb28sHn3XOEJD_rqYRWU1GxWGX1udMpk8Cdu3Qn-rxS0g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mfd: Add missing (unevaluated|additional)Properties
 on child nodes
To: Rob Herring <robh@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Charles Keepax <ckeepax@opensource.cirrus.com>, 
	Richard Fitzgerald <rf@opensource.cirrus.com>, Tim Harvey <tharvey@gateworks.com>, 
	Robert Jones <rjones@gateworks.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, Heiko Stuebner <heiko@sntech.de>, 
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Maxime Ripard <mripard@kernel.org>, 
	- <patches@opensource.cirrus.com>, Steve Twiss <stwiss.opensource@diasemi.com>, 
	Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>, 
	Alistair Francis <alistair@alistair23.me>, Amelie Delaunay <amelie.delaunay@foss.st.com>, 
	Renner Berthing <kernel@esmil.dk>, Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220824_053006_934455_7096561B 
X-CRM114-Status: UNSURE (   8.78  )
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

On Tue, Aug 23, 2022 at 4:57 PM Rob Herring <robh@kernel.org> wrote:

> In order to ensure only documented properties are present, node schemas
> must have unevaluatedProperties or additionalProperties set to false
> (typically).
>
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
