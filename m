Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CA28C44530
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQmGc8RZUm/NrVlaJj0Q315gkza301roKFCPgQoCYWo=; b=spBXrUm2+wH6nZ
	nGazTBVmsP1j/VTIUFv0LfUI10+5RRR1HUzqrZE2N6A96HkhtGllkYjbQPDQiSFquIXbg3TXTK1Xl
	yzTZT5Q+tEg1H6j4m8pvLi9S1+v4eg0FSFWBtbWC77K8QQM1Kv3thuFjsa4DVezq1x9TIOrX3fnaW
	DfyxhGQxGnV58PMonvLx76G+9+4C1e2ycMaAD06ENbFJI3IVkE5w79Vq6WqNpT92GB2mP4jlubyLm
	C9Yuu/ReKtIa/pKaAYxoLqNXePc6zkR+OmKFALbyCjIzSurI+6F/5YcBZA7lRjuUu+MQZP7/9U3kR
	X+hQ2wpc3hbghZHGL7kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkQp-00000001Utl-35o7;
	Thu, 09 Jul 2026 08:48:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzW98-00000006tMT-1rxi
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Mar 2026 08:39:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3B86B445B5
	for <linux-rockchip@lists.infradead.org>; Mon,  9 Mar 2026 08:39:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13473C2BCB8
	for <linux-rockchip@lists.infradead.org>; Mon,  9 Mar 2026 08:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773045565;
	bh=lmhRRii9BO7pCks+UXBWncpJDHHvOFHDr/1FU5tS2Dc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=WdSRqv1l9cnLKSFLHhILKBputV3GcYJKALfpBY1JSeYsV8M2DTVAhXvGnFdMIUBoZ
	 u1TTqUSFnSchtsJAGRsbe75vRgVGaAhmdhg9HvU74esJIPW2495NanSULupwyeW7PT
	 YaCc04FUEFJ+TnyCI7vwqSgqNgUE6uYG7kXhpWsNzBlH62LL0sdi5KV24INW7HWTMS
	 DaLkZNI+2flGr4fHuiuuvSJz9dW2rJ7bAYkCMV+MUG0PEE3Cta9uzSWVAyA4AxTN5y
	 +F2ndD2lKnvgeVQlJCtt8r0Do8bYMPx5sz1Wz+M9150u6O8SAJpB7oeuzYGd3EgwS/
	 7SEvsU49k0Ckw==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-3870778358aso114489651fa.1
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Mar 2026 01:39:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWKUw7wXjKbioUQOPLCQG38ZE7OPm1fX2rZJblODyccdMd3vtfGlXEYiraDEauKJzITsTNZMPVVLw6otBNKng==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5/LgPgvoDL7IgoszqzjhPtQk2Tc6qtcwvpJ45siLiMEsN0W9G
	6m7kf9R5REKSK7NkSYaCM31PAFUEpS5Tj76sO9CMblPO8R/7uO20EEqbSG4sHQ4FcFecVuG6U1D
	/DZZRFi+V5nJPP44l3VyAvybR+T/3Yf/vksSqutXufw==
X-Received: by 2002:a05:651c:892:b0:38a:b18:f41e with SMTP id
 38308e7fff4ca-38a40b4bca5mr35053151fa.6.1773045562416; Mon, 09 Mar 2026
 01:39:22 -0700 (PDT)
MIME-Version: 1.0
References: <20260306-qcom-sa8255p-emac-v7-0-d6a3013094b7@oss.qualcomm.com>
 <20260306-qcom-sa8255p-emac-v7-1-d6a3013094b7@oss.qualcomm.com> <20260307-boisterous-tuscan-rat-1eb9bb@quoll>
In-Reply-To: <20260307-boisterous-tuscan-rat-1eb9bb@quoll>
From: Bartosz Golaszewski <brgl@kernel.org>
Date: Mon, 9 Mar 2026 09:39:10 +0100
X-Gmail-Original-Message-ID: <CAMRc=MeeHP_ZjhOHu5NNLCU6Cg59EAWQAS0JngEHDQkmcDH3HQ@mail.gmail.com>
X-Gm-Features: AaiRm50wcU1Efh35HOluVCqu3-5afwUUXiIKPiOPr6mPL4PpMSQ1J-X9POGllS8
Message-ID: <CAMRc=MeeHP_ZjhOHu5NNLCU6Cg59EAWQAS0JngEHDQkmcDH3HQ@mail.gmail.com>
Subject: Re: [PATCH net-next v7 1/7] dt-bindings: net: qcom: document the
 ethqos device for SCMI-based systems
To: Krzysztof Kozlowski <krzk@kernel.org>
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
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, Drew Fustini <dfustini@tenstorrent.com>, 
	linux-sunxi@lists.linux.dev, linux-amlogic@lists.infradead.org, 
	linux-mips@vger.kernel.org, imx@lists.linux.dev, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	sophgo@lists.linux.dev, linux-riscv@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_013926_548152_E411BE49 
X-CRM114-Status: GOOD (  18.10  )
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

T24gU2F0LCBNYXIgNywgMjAyNiBhdCAxMToyNeKAr0FNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBGcmksIE1hciAwNiwgMjAyNiBhdCAwNDo0Njoz
OVBNICswMTAwLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+ID4gRnJvbTogQmFydG9zeiBH
b2xhc3pld3NraSA8YmFydG9zei5nb2xhc3pld3NraUBsaW5hcm8ub3JnPgo+ID4KPiA+IERlc2Ny
aWJlIHRoZSBmaXJtd2FyZS1tYW5hZ2VkIHZhcmlhbnQgb2YgdGhlIFFDb20gRGVzaWduV2FyZSBN
QUMuIEFzIHRoZQo+ID4gcHJvcGVydGllcyBoZXJlIGRpZmZlciBhIGxvdCBmcm9tIHRoZSBITE9T
LW1hbmFnZWQgdmFyaWFudCwgbGV0cyBwdXQgaXQKPiA+IGluIGEgc2VwYXJhdGUgZmlsZS4gU2lu
Y2Ugd2UgbmVlZCB0byB1cGRhdGUgdGhlIG1heGltdW0gbnVtYmVyIG9mIHBvd2VyCj4gPiBkb21h
aW5zLCBsZXQncyB1cGRhdGUgZXhpc3RpbmcgYmluZGluZ3MgcmVmZXJlbmNpbmcgdGhlIHRvcC1s
ZXZlbAo+ID4gc25wcyxkd21hYy55YW1sIGFuZCBsaW1pdCB0aGVpciBtYXhJdGVtcyBmb3IgcG93
ZXItZG9tYWlucyB0byAxLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEJhcnRvc3ogR29sYXN6ZXdz
a2kgPGJhcnRvc3ouZ29sYXN6ZXdza2lAbGluYXJvLm9yZz4KPiA+IFJldmlld2VkLWJ5OiBSb21h
aW4gR2FudG9pcyA8cm9tYWluLmdhbnRvaXNAYm9vdGxpbi5jb20+ICMgRm9yIFJaL04xCj4KPiBD
YW4gd2UgZHJvcCBoYWxmLWJha2VkIHJldmlld3M/IFJldmlld2luZyBvbmx5IHRoYXQgcGllY2Ug
aXMgbm90IGV2ZW4KPiBwb3NzaWJsZSwgYmVjYXVzZSBpdCBtYWtlcyBubyBzZW5zZSBvdXRzaWRl
IG9mIG1haW4gY2hhbmdlIGNvbnRleHQuIElPVywKPiBpdCdzIHBvaW50bGVzcyByZXZpZXcgb2Yg
bm90aGluZywgaWYgeW91IGRvIG5vdCBhY3R1YWxseSByZXZpZXcgdGhlIG1haW4KPiBjaGFuZ2Ug
aW1wYWN0aW5nIFJaL04xLgo+CgpUaGlzIGlzIHRoZSBmaXJzdCB0aW1lIEknbSBoZWFyaW5nIHdl
IGNhbid0IHJldmlldyBpbmRpdmlkdWFsIHBhcnRzIG9mCmNoYW5nZXNldHM/IEkgc2VlIHlvdXIg
cG9pbnQgYWJvdXQgdGhpcyBwYXJ0aWN1bGFyIHBhdGNoIGFuZCB0aGUgZmFjdAppdCBvbmx5IG1h
a2VzIHNlbnNlIGFzIGEgd2hvbGUgYnV0IGlzIHRoaXMgdGhlIG9mZmljaWFsIHBvbGljeSBmb3IK
cGFydHMgb2YgbGFyZ2VyIERUUyBwYXRjaGVzPwoKQmFydAoKPiBBbHNvIHN1Ym1pdHRpbmcgcGF0
Y2hlcyBkbyBub3QgcmVhbGx5IGFsbG93IHRvIGFwcGx5IHJldmlld2VyJ3MKPiBzdGF0ZW1lbnQg
b2Ygb3ZlcnNpZ2h0IHRvIGlubHkgcGFydCBvZiB0aGUgcGF0Y2guCj4KPiBJdCdzIGNhbGxlZCBB
Y2sgdGhlbi4gVXNlIHByb3BlciB0YWdzIGlmIG9uZSBkb2VzIG5vdCBhY3R1YWxseSByZXZpZXcK
PiB0aGUgcGF0Y2guCj4KCkkgbmVlZCB0byByZXNlbmQgYW55d2F5IHNvIEknbGwgZHJvcCBpdC4g
SSBtYXkgYWxzbyBkcm9wIHRoZSB0d28KaHVuZHJlZCBhZGRyZXNzZXMgZnJvbSBDYyBiNCBhZGRl
ZC4gOikKCkJhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
