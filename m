Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB0B2C25B7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 12:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ChYUzIbSAvaY/OR40V21KVLFpe3h6sEdoFEjr8fsNlg=; b=yf+1qzdwPICDQB
	zeozjsmsnSzljHJSgcOJJXO7/+935px+Vr683Lyg9Q+lTuRSy7wHHZmznnE3PA9O09tkpzG6FqvNd
	0SsecQ/1lbVWG/w2If7DG67qAHd4IUMjMOSE/qZvgDjfGJqMuNKXDm1Yxk0K+hy++va9Gc8PmKHM/
	wChiEIZgwvebaBebF2NoF9ltJOY+pFIbAuXuTZ01WKfAtygcaegKelssPtbWV+0a+okodrRuHFIRV
	rv25H/Xvk325aUaDKkSRlX6pl5lTKjZtsAcOOiJdmllSVYyYf4Ik2rfOADIS7ab8dv+9fbzhvetQ3
	b2foQBPMG3u541eAfLTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBZvn-0000000EyY2-3ZYJ;
	Mon, 27 May 2024 12:58:27 +0000
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBZuU-0000000Exjp-1FRm
	for linux-rockchip@lists.infradead.org;
	Mon, 27 May 2024 12:57:09 +0000
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-627ebbefd85so58781067b3.3
        for <linux-rockchip@lists.infradead.org>; Mon, 27 May 2024 05:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716814624; x=1717419424; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pJJyP+9frURhdd/ZV2qsiiwzKPVnn0nUZRG4Ztdu5Ds=;
        b=yfRENSO/znGBBDXmi16J8La6XDgBnN7pNz5mbDk9M+8a+d1KwC+o+efhnnqO3omdyk
         1XQEe36RPiQUTQ6pPI2u7koVP8baWky11wnOJ2T5qvQBlCpAPWf40l0YS/M+EaF2xCvF
         dCPCR2VRI+GLiJKW198rFaTJGCefBNzqV++W2vO9v9E/3GRwV1Rpt4vLxoPtsw8jFaDx
         YJQM37yVpjuATh3bgKUeLKSEVL7VNGZI3ZXKVBvD4047Ff/pZ1boLUjWq+aufCYjqwgn
         ShZ7tj0UlJ4epN1BpRsZEOB5shB4GvCpmFIterZNu2RHeKQ0ZQ7bXaDx+wEjm++tFM7M
         H8VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716814624; x=1717419424;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pJJyP+9frURhdd/ZV2qsiiwzKPVnn0nUZRG4Ztdu5Ds=;
        b=T6ZsrhmcYXNnmTAegWsPgJpERiDGYQRLgnPTHa71QDuqhrQXvLn0EO7Iy88BAn42+H
         TEOfYWtY8ChpTDz7hgXS3evJLjrI4sPxDZBNMGmQj40Ns0lKNf/0n2xmNaGJujqz2IHJ
         TOGf5IozPVJe4mwDdxtTvOn4A2R+N0KUwsSJclMXL2g6+TbSsc9YS+7khZLL32rD9sTM
         7mDWXiVFbtDy4npgdLDkdOczXGcya526QJeH0xl00JNneXyh7PUWL6rRFkGy1Sj3pZHq
         ufTWXR36HXzGzuXVAB1Pp08SIfYFkPVNybWcVbGfEh+6/aMpl6Hey+pBIOWdLlwntL9e
         Yluw==
X-Forwarded-Encrypted: i=1; AJvYcCW4VvCgJNvoZozgdnPlZHSu5PuPlfk9d8ubPuxgAnjg1wFB12a+wBKaIDq5ayqxAyGq+xKriQMV4jU8+YIb871N7Ix5yFUC/TRvRVuEPdz2m7Nk
X-Gm-Message-State: AOJu0YxA7SjZpTzMe9tBdB8PhZjTAuLC2+RXADScUACUw/Nkx0j1hbQC
	7Scj+H4k7aPRt6/GkYNex1R5xo2+IrgDiRHufiIwshyVbByeOBl15kuyUSdpV0yt+gzuEAGqOtS
	o0buXUWA61sL49AhCr98+i8xqmRiIOn5IPfdobQ==
X-Google-Smtp-Source: AGHT+IHtuitKU1in514NtpJEfJGREAKzOXikcv6xhBvHaqSAyXXF4vYDUv/B437jXNYfH7CNGKFQFe5YOvThvoGTSqk=
X-Received: by 2002:a25:7486:0:b0:dc2:3f75:1f79 with SMTP id
 3f1490d57ef6-df772184c54mr8792593276.23.1716814624064; Mon, 27 May 2024
 05:57:04 -0700 (PDT)
MIME-Version: 1.0
References: <20240504-pinctrl-cleanup-v2-0-26c5f2dc1181@nxp.com> <20240504-pinctrl-cleanup-v2-3-26c5f2dc1181@nxp.com>
In-Reply-To: <20240504-pinctrl-cleanup-v2-3-26c5f2dc1181@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 May 2024 14:56:53 +0200
Message-ID: <CACRpkdZ+YPAXTNU-kaA8ywBLW0RpGJBpXJqPD7aJ+B1V=axPrg@mail.gmail.com>
Subject: Re: [PATCH v2 03/20] pinctrl: stm32: Use scope based of_node_put() cleanups
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
X-CRM114-CacheID: sfid-20240527_055706_392351_5819D33B 
X-CRM114-Status: UNSURE (   8.08  )
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

T24gU2F0LCBNYXkgNCwgMjAyNCBhdCAzOjEz4oCvUE0gUGVuZyBGYW4gKE9TUykgPHBlbmcuZmFu
QG9zcy5ueHAuY29tPiB3cm90ZToKCj4gRnJvbTogUGVuZyBGYW4gPHBlbmcuZmFuQG54cC5jb20+
Cj4KPiBVc2Ugc2NvcGUgYmFzZWQgb2Zfbm9kZV9wdXQoKSBjbGVhbnVwIHRvIHNpbXBsaWZ5IGNv
ZGUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBQZW5nIEZhbiA8cGVuZy5mYW5AbnhwLmNvbT4KClBhdGNo
IGFwcGxpZWQuCgpZb3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
