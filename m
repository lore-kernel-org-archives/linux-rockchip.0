Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15512C44532
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lb4bMzWHtQEc+PLDQ37ufmhGROAcqsGxvfncS/iBG/U=; b=jJOam33XMrPrmv
	X9exFHiiRa01bJGC4o56gEzhsN9d6o09J/bwwkluUJERBm292v/vc9NwzC6iaIRMp6pWmE0IKDxrK
	35OBOUbnv37v2FsU/NoVcRhQUSFQo+qZnbjjE40Lq1MzlJr6Kd5hgfznVmm2s2Imr91kjqgKwzw6Y
	El6XhqkSvraoV+pKTnO7+gGkpQgc7qm+18vaEyDsA9EngZ7ErfNltpqs/dE+3hGh7xGUD1/NMMej9
	QUPPxHe/KP4IRveW/6Otm5pW0zlrG4D0Bt8Otob3ocShNphxdYf0vmbr8JA4utDgezSU2nQzWsnKw
	F0hUpOzzyUhk62ipXGpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkQl-00000001Ul5-3SfK;
	Thu, 09 Jul 2026 08:48:27 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfdfB-000000075ZS-1ejh
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Jan 2026 12:38:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0C661443B5
	for <linux-rockchip@lists.infradead.org>; Tue, 13 Jan 2026 12:38:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D870BC19422
	for <linux-rockchip@lists.infradead.org>; Tue, 13 Jan 2026 12:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768307900;
	bh=qXScHYuCzd215t8hnmVMyfAJzYu9LaTDkfUenYtogos=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Pjf7yFwwY3t/CIAitlaGuMeYDIsGZOfzYUkIIm6fOMvgFnEYBGi3Nkbh3hc7mBslg
	 WDQXlxKUZrEA2KmXumXmMjnHDw23mLSCBKshPIb0YJ3syfOViZtzFgJ5/kzCdD+Vss
	 0OZr2fNcAL9tAdg4rjEsVZoMi8XHL8/SKf65/BLD2jeReVOPadg9u8ZC8JN+fjJxEb
	 tpa0g8GD6/9pspmmJMAkn5G5/bQo/3QNiF2r9iE0xOZwwTnuMHLUbc6hFy8QiMn/dT
	 BGWabz5KZ1otvJ8ODvpbYkGzCPvFs2PS9Lh0WiddzGobPE5AL0MdDC7fP5VZVrL2IK
	 eg0x3WuSRBH8Q==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-382fb535b73so59720311fa.0
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Jan 2026 04:38:20 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXDcNrRhPXwHa414GONa1wJxZASQiWGNkj4jFRsaT2+OzTMHJHHQkyayRmJM7EfWpQh9RBO8tBSlxSgmezPDw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxy+W+3ahaPZTnJ6gLgQzvPhg82Ra4yRzmaBdMBNpBTnJDdR7Xg
	lzSNKq0AHaV7YB7x8fNBvQSt7YuYxbyBK1n0rIlc45lmz2o3XQnljswmrPKK8Pb1Mb6nPA6ZJDR
	7aRBUJSdAGcJneIqzBUhI68up7pZFtX4WDgBZAdlq8A==
X-Google-Smtp-Source: AGHT+IHqazDCuLxwH7Iu/G2PkGJgVTJ7/k1UTcZwajhZd9YF9n/CenHYLasZcuGAB0SV4lL43Mgtox5RINYhxwkIRxc=
X-Received: by 2002:a05:651c:30c9:b0:37b:967e:d73 with SMTP id
 38308e7fff4ca-382ff8115efmr73607701fa.29.1768307899461; Tue, 13 Jan 2026
 04:38:19 -0800 (PST)
MIME-Version: 1.0
References: <20260112-qcom-sa8255p-emac-v6-0-86a3d4b2ad83@oss.qualcomm.com>
 <20260112-qcom-sa8255p-emac-v6-7-86a3d4b2ad83@oss.qualcomm.com> <41b9a414-55a0-4602-9be5-54137a691d9f@lunn.ch>
In-Reply-To: <41b9a414-55a0-4602-9be5-54137a691d9f@lunn.ch>
From: Bartosz Golaszewski <brgl@kernel.org>
Date: Tue, 13 Jan 2026 13:38:07 +0100
X-Gmail-Original-Message-ID: <CAMRc=McP7vt2VS=2FpzYcXNG_+beb9O0AAvAJ9E2g8DT2WTfPA@mail.gmail.com>
X-Gm-Features: AZwV_QhJCTDCGsC5t4RHVGQlo_Vyd1Okk9vVsia2jA5DJVHGvVefyoWQdJ752O4
Message-ID: <CAMRc=McP7vt2VS=2FpzYcXNG_+beb9O0AAvAJ9E2g8DT2WTfPA@mail.gmail.com>
Subject: Re: [PATCH RESEND net-next v6 7/7] net: stmmac: qcom-ethqos: add
 support for sa8255p
To: Andrew Lunn <andrew@lunn.ch>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Richard Cochran <richardcochran@gmail.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Vinod Koul <vkoul@kernel.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Jose Abreu <joabreu@synopsys.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Matthew Gerlach <matthew.gerlach@altera.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Keguang Zhang <keguang.zhang@gmail.com>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com, 
	Romain Gantois <romain.gantois@bootlin.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Heiko Stuebner <heiko@sntech.de>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Emil Renner Berthing <kernel@esmil.dk>, Minda Chen <minda.chen@starfivetech.com>, 
	Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Nobuhiro Iwamatsu <nobuhiro.iwamatsu.x90@mail.toshiba>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Maxime Ripard <mripard@kernel.org>, Shuang Liang <liangshuang@eswincomputing.com>, 
	Zhi Li <lizhi2@eswincomputing.com>, Shangjuan Wei <weishangjuan@eswincomputing.com>, 
	"G. Jaya Kumaran" <vineetha.g.jaya.kumaran@intel.com>, Clark Wang <xiaoning.wang@nxp.com>, 
	Linux Team <linux-imx@nxp.com>, Frank Li <Frank.Li@nxp.com>, David Wu <david.wu@rock-chips.com>, 
	Samin Guo <samin.guo@starfivetech.com>, 
	Christophe Roullier <christophe.roullier@foss.st.com>, Swathi K S <swathi.ks@samsung.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, Drew Fustini <dfustini@tenstorrent.com>, 
	linux-sunxi@lists.linux.dev, linux-amlogic@lists.infradead.org, 
	linux-mips@vger.kernel.org, imx@lists.linux.dev, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	sophgo@lists.linux.dev, linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_043821_472233_69C74320 
X-CRM114-Status: GOOD (  14.69  )
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:24 -0700
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

T24gTW9uLCBKYW4gMTIsIDIwMjYgYXQgMjo1NeKAr1BNIEFuZHJldyBMdW5uIDxhbmRyZXdAbHVu
bi5jaD4gd3JvdGU6Cj4KPiBPbiBNb24sIEphbiAxMiwgMjAyNiBhdCAxMToxNTo0NkFNICswMTAw
LCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+ID4gRnJvbTogQmFydG9zeiBHb2xhc3pld3Nr
aSA8YnJnbEBrZXJuZWwub3JnPgo+ID4KPiA+IEV4dGVuZCB0aGUgZHJpdmVyIHRvIHN1cHBvcnQg
YSBuZXcgbW9kZWwgLSBzYTgyNTVwLiBVbmxpa2UgdGhlCj4gPiBwcmV2aW91c2x5IHN1cHBvcnRl
ZCB2YXJpYW50cywgdGhpcyBvbmUncyBwb3dlciBtYW5hZ2VtZW50IGlzIGRvbmUgaW4KPiA+IHRo
ZSBmaXJtd2FyZSB1c2luZyBTQ01JLiBUaGlzIGlzIG1vZGVsZWQgaW4gbGludXggdXNpbmcgcG93
ZXIgZG9tYWlucyBzbwo+ID4gYWRkIHN1cHBvcnQgZm9yIHRoZW0uCj4KPiA+ICBzdGF0aWMgY29u
c3Qgc3RydWN0IG9mX2RldmljZV9pZCBxY29tX2V0aHFvc19tYXRjaFtdID0gewo+ID4gICAgICAg
eyAuY29tcGF0aWJsZSA9ICJxY29tLHFjczQwNC1ldGhxb3MiLCAuZGF0YSA9ICZlbWFjX3FjczQw
NF9kYXRhfSwKPiA+ICsgICAgIHsgLmNvbXBhdGlibGUgPSAicWNvbSxzYTgyNTVwLWV0aHFvcyIs
IC5kYXRhID0gJmVtYWNfc2E4MjU1cF9kYXRhfSwKPgo+IElzIHRoaXMgZGV2aWNlIGJlaW5nIHBy
b2JlZCB2aWEgRFQgb3IgQUNQST8KPgoKT24gdGhlIHNhODI1NXAgaXQncyBwcm9iZWQgdmlhIERU
IGJ1dCBhbGwgaXRzIHJlc291cmNlcyBhcmUgbWFuYWdlZCBpbgpmaXJtd2FyZSBvdmVyIFNDTUku
CgpCYXJ0b3N6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
