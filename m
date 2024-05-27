Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3529FC25B74
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 12:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbyORtW/uJJyAYKTsybUXB3cJeoWIvIvu+W3VC3ViKU=; b=kSEgY+dRnhe9N+
	0MDsRfu9TUjv35x2XbxTzmRK2W8SBduBz5iDsvT5+QimkiNnkN6ZbZOW9mgs7s5b+wEUaPVRTTvFy
	29n2QiEc9addtPdMZSxugYYrnzS2ft2abgVjjFS2WvU5n7SNhQIE4yJnACncYtq+7HUhCdflPe3VE
	IEx9/uDPFtDffNEJ9m6hCjAkgeiM/ORgy5dO7vJG7lgUrCsBZd54xbDL+Xc7cjW9Cb2K2tN4sLLKG
	LzkIcOj2JIPn577HDu+U0irmNV0oohl3rAMHCx5xYGq09XUbJ9rhTSSGg7VKsRgdFssviz42Lzvq6
	lRrXvR515pS+vZEL6PdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBZw1-0000000EykC-1qcp;
	Mon, 27 May 2024 12:58:41 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBZv9-0000000EyAa-2XSF
	for linux-rockchip@lists.infradead.org;
	Mon, 27 May 2024 12:57:53 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-df771b6cc9cso3529292276.3
        for <linux-rockchip@lists.infradead.org>; Mon, 27 May 2024 05:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716814666; x=1717419466; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rNZ98tycbIm8gHCECF6fFAUqvVWA7Py4cjGRVlBtUzM=;
        b=YAfXQ9P7Kdh1v4FJD9mBzGlX/+pKjiki1nC+WVeajx0aVnQi0ZCTEuclKTwEozGogx
         /JIPiOoFARKOzltzJG9f9IKh4jCL2DqwZGbwuX3rruAb7Bo1SeoiPyqe3hPCXIYzTGwx
         pxW2pBczrs9PDFAjAmSCLHRSVMySIN9z8gdZI/U6q+xEyHFiXbv3X+NBjG6RyPBcNMum
         hhou0/P2MGrsDGj/zs9ciai9UaZkD4pVykN6DtXppN/Pu6wD7Wvjf3Gm2ElcB6TwWOMi
         z5i+yrCcMAThDLJk8fEFyk9OAkCYJ/TrpfoO83XJbf52XKPigtyfcrg8Lle/oiTMRbWz
         g2ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716814666; x=1717419466;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rNZ98tycbIm8gHCECF6fFAUqvVWA7Py4cjGRVlBtUzM=;
        b=U5ntf+cJKafLLoQ5IdSvWP5pHZHzsnz+S/x6aaBWUgTlkJWdT6zUGUHaVmam1mzd5f
         Lh3nrwJ8h6SBqeser4W7l9tAT8j64dCJihFSmqZ1lvQ89J13+L3BLnWVq8D93Y9iTgwG
         O0t6elCyA/bmlBeTiGfq8WBSRjZY3yeNog/UDgZ/QSvxOuOkGtBZCA/A1tM4WzrGXELh
         /u8Vafirh6o4RRaWvp1IiNyx7fc0a+MM5Oal1VvcnqCzptLsWPDPb0DPblaIo5RVWNck
         iRdLzVnFi5Q7hWw/Ju3PqZe6NO29nh8p7mawLum6v8wJKbtc4oAEcJh7c9K3/Hh6D9Uq
         zCPg==
X-Forwarded-Encrypted: i=1; AJvYcCUYf3Fv17Z2M+uuQlaMuJrzwyfYLyyHgBaTkjPRFrW+LIPFB3w9lvaNM5fAdPUv5lrmHRohM2ZKYIZqy/iMxjzMfEy/MEBRTslrb6lT/X+N/XBL
X-Gm-Message-State: AOJu0YyCcp2pnT3GvgM6b3LQso0dj+djEYLcvmemmRyshRiv1TYdDY5e
	voFf2K8ouQ2V6JpVCinpoL/n5KEmAtNkd85+moRTr0EHVyB68x2zaa/JlrP4RfnCB5uzAnTVspG
	IcffmuyyaacwFvRQIVjYjywGHm53oB9wR9Id0LQ==
X-Google-Smtp-Source: AGHT+IGPHGbdeDgQwNEq4mWXFwTqV0k8iDBOK2TyTZ4utk5viKokv4dr91DnLp+C01zzJZrl1Jzg3NthvUqaC/NhrDk=
X-Received: by 2002:a05:6902:70a:b0:df7:9946:b32c with SMTP id
 3f1490d57ef6-df79946bc95mr6983978276.29.1716814666366; Mon, 27 May 2024
 05:57:46 -0700 (PDT)
MIME-Version: 1.0
References: <20240504-pinctrl-cleanup-v2-0-26c5f2dc1181@nxp.com> <20240504-pinctrl-cleanup-v2-8-26c5f2dc1181@nxp.com>
In-Reply-To: <20240504-pinctrl-cleanup-v2-8-26c5f2dc1181@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 May 2024 14:57:35 +0200
Message-ID: <CACRpkdbt0kE6VP3O+63U1rmJ_JKRvWENCnETT4f+mvNMMphLeA@mail.gmail.com>
Subject: Re: [PATCH v2 08/20] pinctrl: st: Use scope based of_node_put() cleanups
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Dvorkin Dmitry <dvorkin@tibbo.com>, Wells Lu <wellslutw@gmail.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Emil Renner Berthing <kernel@esmil.dk>, Jianlong Huang <jianlong.huang@starfivetech.com>, 
	Hal Feng <hal.feng@starfivetech.com>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Viresh Kumar <vireshk@kernel.org>, Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Patrice Chotard <patrice.chotard@foss.st.com>, Heiko Stuebner <heiko@sntech.de>, 
	Damien Le Moal <dlemoal@kernel.org>, Ludovic Desroches <ludovic.desroches@microchip.com>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Jacky Bai <ping.bai@nxp.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Chester Lin <chester62515@gmail.com>, 
	Matthias Brugger <mbrugger@suse.com>, Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>, 
	Sean Wang <sean.wang@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Dan Carpenter <dan.carpenter@linaro.org>, 
	Tony Lindgren <tony@atomide.com>, Stephen Warren <swarren@wwwdotorg.org>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-samsung-soc@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	imx@lists.linux.dev, linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org, 
	Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_055747_735242_BB937694 
X-CRM114-Status: UNSURE (   7.98  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU2F0LCBNYXkgNCwgMjAyNCBhdCAzOjE04oCvUE0gUGVuZyBGYW4gKE9TUykgPHBlbmcuZmFu
QG9zcy5ueHAuY29tPiB3cm90ZToKCj4gRnJvbTogUGVuZyBGYW4gPHBlbmcuZmFuQG54cC5jb20+
Cj4KPiBVc2Ugc2NvcGUgYmFzZWQgb2Zfbm9kZV9wdXQoKSBjbGVhbnVwIHRvIHNpbXBsaWZ5IGNv
ZGUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBQZW5nIEZhbiA8cGVuZy5mYW5AbnhwLmNvbT4KClBhdGNo
IGFwcGxpZWQuCgpZb3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
