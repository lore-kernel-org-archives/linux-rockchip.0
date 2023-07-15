Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4B8BEB64DC
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jul 2023 09:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HD+3l4G5tQ8tBzIdsdl1qFTo/tOhtSeFBYTjWOr61Q8=; b=vxll4AcaDoYGza
	Fba2exe93Pl/Z1qORu7Z2+RTDV+tyfLzxRzwZGF7Dk1fpa9OGtKBbbdRGr2eMNsLevQRYihN9RpXH
	gVSv9vG54Tmca9Gb1dPFZAm4ymptAfwjppKqbrjWR7t5k8BSIxbLcCtEjpYtVbz5iNnEfUYnQ4EYZ
	4TeWbxV5hf42X5waB05m8T/7EifYhNX+HsdkO9PBiDECxiwqacDSF7CCG/ZIdhF0WgwQbienOd+HM
	Awkjm2IwMOPyoAYNUgZ22poX5Nj1iKLMZQ7NLwKk2EjGztZi1t2QldgSoUjNXw6PktwUntUZm8UGm
	1EAt1Y01HV9uXvFofFiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKbYH-008IFC-1u;
	Sat, 15 Jul 2023 09:26:57 +0000
Received: from mail-oa1-x2f.google.com ([2001:4860:4864:20::2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKbYB-008IDN-27;
	Sat, 15 Jul 2023 09:26:53 +0000
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-1b056276889so2090123fac.2;
        Sat, 15 Jul 2023 02:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689413210; x=1692005210;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wHphB4LnIXM8B5KTzxaE1knTLhvmv4UUsDUmEXJtUjc=;
        b=KNtkg40Donc1RJ+Y/N6bMmujMSl9cywEa6fXVSQYqV4W4lT8G1IFlO5DKCTqezy9NY
         lefwY54PRhNWProidCgY7SJny7AEfavu3g+BjFgAL5dZzNMIElbAwgo4QZnm4OLwjy+V
         CVJWSo1L7gWOhYkpGKP0r9oukax6+UlfkfofBx8xxPcLUf3ek7zbTjABn/JHDdvTWXCu
         WWDX31kpkxyfmd7Q/WE+0i7y3grMAoIl2p8ABV+V0g6ZwAueUBzPNbjvXwLF4/1Voo58
         THpoQ4ecU8W2lHElPdLC420Acx2PDSK/3KkrYlQGhj1Cbwmy3bV4wSFCbbKfSoIqtJyV
         8cKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689413210; x=1692005210;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wHphB4LnIXM8B5KTzxaE1knTLhvmv4UUsDUmEXJtUjc=;
        b=kHlIYqvXhlsHYo7ETWKyY5WUchr2JpdUgo4u8S+UiI1MKkG7LywgmdzuJJnBnXK+iY
         vfZ3ci4rXDc3RKFt0fV9ok1yyK1rWeCqPEbweCmhHVaN5/L47YDr6a4O3ZCLS2pQh+yM
         HybHB3KklwvslNtiB+nGiDsHTJt4lIgz3mcdfbSXPedg+bU0rLmsPMFmqaAI0/4QLIM3
         Wt2wUSJpqnINYnNvVlye43qPstAu6NibOvRwzSEZzIpcOuUPG/gffGpV/z3W95jm8was
         n2AzeXXv18/IVpHOotSTsoClgVFIeiCjhaP76qsQKAl+/QVhIoeEAkihIRBvptLkZHJb
         u4fA==
X-Gm-Message-State: ABy/qLaOE6Ocf30kVG+iwC4gRs6uO3FyqCQX41ZY+TxOUg2aFld+7LRR
	q1Nqs/TeEtV8wnw11wdE9whgOBT3LY7uMWiigrw=
X-Google-Smtp-Source: APBJJlGwdJmxyzGjSGIAgoqFi7CGlWiMJBmcsPBzo9lxW5BLyYxxPOYfHlixbBaupkZxkAV8b0mEWpZJ8j8VMX6oWRI=
X-Received: by 2002:a05:6870:328d:b0:177:a158:9ef6 with SMTP id
 q13-20020a056870328d00b00177a1589ef6mr6679986oac.52.1689413209848; Sat, 15
 Jul 2023 02:26:49 -0700 (PDT)
MIME-Version: 1.0
References: <20230714174841.4061919-1-robh@kernel.org>
In-Reply-To: <20230714174841.4061919-1-robh@kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sat, 15 Jul 2023 11:26:38 +0200
Message-ID: <CAMhs-H-6tAV-+U-4zZDKs47eKCJr+kZ-Op8vR4SyJyE5LK_2aw@mail.gmail.com>
Subject: Re: [PATCH] phy: Explicitly include correct DT includes
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Justin Chen <justin.chen@broadcom.com>, 
	Al Cooper <alcooperx@gmail.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
	Ioana Ciornei <ioana.ciornei@nxp.com>, Yu Chen <chenyu56@huawei.com>, 
	Binghui Wang <wangbinghui@hisilicon.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Wolfgang Grandegger <wg@grandegger.com>, Marc Kleine-Budde <mkl@pengutronix.de>, Alban Bedel <albeu@free.fr>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Robert Marko <robert.marko@sartura.hr>, 
	Luka Perkov <luka.perkov@sartura.hr>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Heiko Stuebner <heiko@sntech.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Sylwester Nawrocki <s.nawrocki@samsung.com>, Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Vincent Shih <vincent.sunplus@gmail.com>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	JC Kuo <jckuo@nvidia.com>, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-amlogic@lists.infradead.org, netdev@vger.kernel.org, 
	linux-usb@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, linux-can@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230715_022651_698638_D5D4F033 
X-CRM114-Status: GOOD (  11.35  )
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

T24gRnJpLCBKdWwgMTQsIDIwMjMgYXQgNzo0OeKAr1BNIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gVGhlIERUIG9mX2RldmljZS5oIGFuZCBvZl9wbGF0Zm9ybS5oIGRh
dGUgYmFjayB0byB0aGUgc2VwYXJhdGUKPiBvZl9wbGF0Zm9ybV9idXNfdHlwZSBiZWZvcmUgaXQg
YXMgbWVyZ2VkIGludG8gdGhlIHJlZ3VsYXIgcGxhdGZvcm0gYnVzLgo+IEFzIHBhcnQgb2YgdGhh
dCBtZXJnZSBwcmVwcGluZyBBcm0gRFQgc3VwcG9ydCAxMyB5ZWFycyBhZ28sIHRoZXkKPiAidGVt
cG9yYXJpbHkiIGluY2x1ZGUgZWFjaCBvdGhlci4gVGhleSBhbHNvIGluY2x1ZGUgcGxhdGZvcm1f
ZGV2aWNlLmgKPiBhbmQgb2YuaC4gQXMgYSByZXN1bHQsIHRoZXJlJ3MgYSBwcmV0dHkgbXVjaCBy
YW5kb20gbWl4IG9mIHRob3NlIGluY2x1ZGUKPiBmaWxlcyB1c2VkIHRocm91Z2hvdXQgdGhlIHRy
ZWUuIEluIG9yZGVyIHRvIGRldGFuZ2xlIHRoZXNlIGhlYWRlcnMgYW5kCj4gcmVwbGFjZSB0aGUg
aW1wbGljaXQgaW5jbHVkZXMgd2l0aCBzdHJ1Y3QgZGVjbGFyYXRpb25zLCB1c2VycyBuZWVkIHRv
Cj4gZXhwbGljaXRseSBpbmNsdWRlIHRoZSBjb3JyZWN0IGluY2x1ZGVzLgo+Cj4gU2lnbmVkLW9m
Zi1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9waHkv
cmFsaW5rL3BoeS1tdDc2MjEtcGNpLmMgICAgICAgICAgICAgICAgICAgfCAzICstLQoKQWNrZWQt
Ynk6IFNlcmdpbyBQYXJhY3VlbGxvcyA8c2VyZ2lvLnBhcmFjdWVsbG9zQGdtYWlsLmNvbT4KClRo
YW5rcywKICAgIFNlcmdpbyBQYXJhY3VlbGxvcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
