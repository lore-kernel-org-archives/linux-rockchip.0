Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1607AC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 20:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mKsGYHn0XgU9/HzrheVO72V+F7z+mYMK+HF0g9zwsmc=; b=wRgRtHZyZ0zsFy
	UdlrfBxvEzBDuDnqNWvmj75tsU5VRMmP5ttJw3aBtOjPnvtOUd5qxXutgqNJKuI4QSODZwTYvtdEy
	biIoqcjfUSl6CntytM79y/nJ/bq7/FVz0JGExmPv36tFKV0Y8VZmenbGXpKHNmtGZZnQ9u7BvQApx
	p5N7rTao3PBVOQdU7pl2F5JH2XhNiBwVtvA9nLFZDDe4vGO7WJykpjS4t2vqkqVU297K2/+XEERc6
	YQwZKbwgeNaBPOgVQ8/7+xp4SqGPRBD1IcirdcYaIC+15feLXpxkC0Rm8u9Mzty8PIiowWVZV7Ypb
	f8M3ti+gBSAsUrCZmUaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ni08g-002HJx-5c; Fri, 22 Apr 2022 20:44:26 +0000
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ni08d-002HJ6-K4
 for linux-rockchip@lists.infradead.org; Fri, 22 Apr 2022 20:44:24 +0000
Received: by mail-yw1-x1133.google.com with SMTP id
 00721157ae682-2ec0bb4b715so97539857b3.5
 for <linux-rockchip@lists.infradead.org>; Fri, 22 Apr 2022 13:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3nksj5w518uht/ItCyi8i36nhvCePscNQgV5FEz9z6Q=;
 b=g8SpyRq0EokUtq2/Ruex3k4GJpsldwiFN7s5Td1NqBB/1sz4PB8PW77PoDjmVO+nIV
 MNQj5/DSO2n1/Wz0+1wehuJuhtgZZtPgCi02BTQ+DzLRVOuxdJXKsrFnimec3440YOCx
 aMWk2YcE0ez7iqYmhzyvdHPEEGnBPTAyOx5MtBGNjLo5yFXy1qBo3Np8+V9Lcmr90Vqu
 3Go3gRPSj/N4C2WNTnoup9V1vLlPLvsNLjgzulBImOdHMHyw4upus4kqIm+keotH/wCa
 fthPpMr4yok3sBlZ0N6p+9P6PlUZYF234f+2TwubO7vilza5bWaaNFNrZePSxKwoP06H
 5Tmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3nksj5w518uht/ItCyi8i36nhvCePscNQgV5FEz9z6Q=;
 b=2XhJN+mg+VwBFWdtMWP/rz8ko2gyuj6DNc0IUNNEPzhyP5Vha7HgR/pAtaeJwHbwIC
 1syLwlDZEKHtTRd/KvmnU10RWhgGs4Ef7C5eKwv+ws/NLSDXRTNcMpvIDf5HVyTYUTmc
 proAaEnavB2Fm4xXp9rPAgZn50CzTaGBJmcYZe850u+RgwP/fA1l5byp4919dl0WJZL0
 6tYB1fPQUEDkU6CjSi564GyPrg52Hj8Gp0M+zNA33XE0gz1enBADr99ObJOsJX/cnpyb
 SDkOZxMVRzuQ082adWJuxeAPdO1I3qzam6RNfMNDyLLKn4RcWfduoTJGGxMxhnCsSDAk
 k86A==
X-Gm-Message-State: AOAM531CCdpazCrfK48J6T/o12CTREmOKerWqV8xW7FzNIjsSitYbeCE
 Am4LCyXCBKMahc999Ibn9DMx7o1d3lX0Nvii+IbSSog3O9lyQg==
X-Google-Smtp-Source: ABdhPJxrjqv5Iz21jqbGZ2f13VLgcMjHToddZ0hzGtc4gakrrg1G6y+n2H78NeXCdSnLQdm+z3HHZa/1M+m0MoBLEAs=
X-Received: by 2002:a81:2108:0:b0:2f5:6938:b2b8 with SMTP id
 h8-20020a812108000000b002f56938b2b8mr5029519ywh.151.1650660262703; Fri, 22
 Apr 2022 13:44:22 -0700 (PDT)
MIME-Version: 1.0
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
In-Reply-To: <20220422170920.401914-1-sebastian.reichel@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Apr 2022 22:44:11 +0200
Message-ID: <CACRpkdZbRbRcFz-SQ0yNf4aAmuwrQKTKjS1QceTCvKE=W0kyqA@mail.gmail.com>
Subject: Re: [PATCHv1 00/19] Basic RK3588 Support
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Adrian Hunter <adrian.hunter@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk, 
 kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_134423_717623_23320A68 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
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

Hi Sebastian,

thanks for the patches,

On Fri, Apr 22, 2022 at 7:09 PM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

>   pinctrl/rockchip: add rk3588 support
>   pinctrl/rockchip: add error handling for pull/drive register getters

I expect I can just apply these two to the pinctrl tree after giving
Heiko some time to look at it? (And he is happy with them)
No dependencies I think?

> Sebastian Reichel (6):
>   dt-bindings: pinctrl: rockchip: add rk3588

I just applied this patch since it is trivial and evidently correct.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
