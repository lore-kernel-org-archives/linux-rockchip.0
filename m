Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34278C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 May 2022 13:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ghb6VEEP6RlXUGduG6YrKN4Ws+SMSzIXE2vlvi8xsOc=; b=wR8riFAUUXNCtA
	ZbjEdYCtaXjIXuDSNvIR6ani4hC3q6PaeFa0MjQNLf4+tVzcHZ/TWwoSah2k7lRQIsScZ5uk4IC/g
	kC610QGWI6Tu8QGFW72YecVlKHTVi9lmZlRXiYo8mjCUJykd/vWS9sZzNzjsuxtv6zEiKmUZrPoBK
	k8FuWIXNCkY3TVFDDOgSmUILKe9KUMGmS1JiVseGz+iNMtHuPQLtA0PpUgAOiIK5qEPuH+qJuy3z3
	MvkFtq2P4BRvNGPgGGZmQQImfW5/+9txcoqrgFDOVAzE7ayvYljRN6DXCMbGKFCmjIxMYJJEwySWd
	8GLGIfu47jKtSmf0oXtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrfsW-006tfo-DY; Thu, 19 May 2022 13:07:44 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrfq3-006skt-OG
 for linux-rockchip@lists.infradead.org; Thu, 19 May 2022 13:05:13 +0000
Received: by mail-yw1-x1132.google.com with SMTP id
 00721157ae682-2ff155c239bso56293107b3.2
 for <linux-rockchip@lists.infradead.org>; Thu, 19 May 2022 06:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FvS6oIYuJD+X/Sl5GyHKX9reZ4E6zgz4WuUSfpo4I1I=;
 b=cuUOVJMltrI7hB/SFs6chT4HOwwy3oA61jegFQS3eMZwuTE+w1145KZDnb8oyR6Tel
 QgauXxUvZ36jV/zTD3D7xyjpzpc8h/ztzct0mhcAnNACKMODQfg7Ymse3S7OsjhJQ3So
 Lsu1g4HGPEk955ldtzo/ZZgcprFUvW/9gsDpeAH7TtYK+0agHPo6Mhmo6IS/p59W6Mqo
 SItSjTv6JmhbnmqXgSbmSi/R9mCOCKAKvo+9lt8V/HzbaSCmmuMX5iXJqR67MluglWjx
 dhgi1CpRcdxgS803lPXtYUALykAzcFfh7ha/NcKJmOXatxLKmrsZmei8JKCv/eK+k0r3
 4O5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FvS6oIYuJD+X/Sl5GyHKX9reZ4E6zgz4WuUSfpo4I1I=;
 b=INljLpkOCHIzpDA9Nc3PSLMfMQLdKuuhHjQ/kM4k5amoevB9+U71GEAWY8xBrWSMNl
 jq/PLxucG4RX4lunouFgL2OIb1ncb+uW5QcZOl+1pSCTapWLnAA9v7Fdu2JmJwE2kxiV
 OPXpW7Ton1MS4T4FoNBQ8h4wBzgPVAkLOMskvSTIkK/QEd9rVkJnxDa9uDkVb0Y7li9/
 SuJ5Go6CS0nisMr5YZSvaecuxt4r+GGmTpbsEMRULZqkmwnlswT4KbvOnOqsRzlAE2Hu
 no1A3YZf3rWR2z9JcFHjW6/yQXNcCr2A7UsUXUCAXQAzbqoAySdAf++NsEmKYPOGjHVQ
 PyFQ==
X-Gm-Message-State: AOAM532vQY8LbrhJxpX+/lL1cQ0EwZ63b2jnfAem49sU+q/kFZr8Pm4j
 6HgsGBuunHUNa/VmCHDiWP1uu5zjHN2trrV1VO4E4A==
X-Google-Smtp-Source: ABdhPJzCqwZlIRlav0EjPiuT+GEqGML2V538fx0hb3/tK+CgfQDqc/5gWM2/UHdZ3ADOOwISs7cS0bmmxHbqgXmtybc=
X-Received: by 2002:a0d:c4c2:0:b0:2f1:6c00:9eb4 with SMTP id
 g185-20020a0dc4c2000000b002f16c009eb4mr4769667ywd.448.1652965508286; Thu, 19
 May 2022 06:05:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
 <20220504213251.264819-19-sebastian.reichel@collabora.com>
In-Reply-To: <20220504213251.264819-19-sebastian.reichel@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 19 May 2022 15:04:57 +0200
Message-ID: <CACRpkdY4Db1jV55HUeLzOjqWs3cfjSCpcKX2Q7Zs-+rB9UkEsg@mail.gmail.com>
Subject: Re: [PATCHv2 18/21] dt-bindings: pinctrl: rockchip: increase max
 amount of device functions
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
X-CRM114-CacheID: sfid-20220519_060511_822944_CAF1FFBC 
X-CRM114-Status: GOOD (  10.20  )
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

On Wed, May 4, 2022 at 11:38 PM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> RK3588 can have 10 different device functions, so increase the maximum
> amount appropriately. Considering rockchip uses auto-generated pinmux
> files, adding a quite complex if construct to increase the limit just
> for rk3588 does not seem to be worth the effort.
>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

This patch applied to the pinctrl tree.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
