Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0902DC4452E
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gDeRZgWI9T0KMWWvPagJsfMQlQj445posE2FQ2qMyNo=; b=p4c4pRnFFmRd56
	UCrn9eRa2LIRMYoOCyXHIVdv8cpy0hXNH7SGzNXjrbvML80kYxufjd+3gwx2fA1pK0lT1PmVQHASz
	dI0Z9/gQuXmP0kxr7zn5F/WfRvMd86FNoBavVkQ7VR9zg2mzFUb9NqBFxIPEE8Z0ngMa0/6duL6go
	N7SxMwIyjq0wjv7qdRIKyoNS4stlaK9eeVc829UL79kVTeiE+fF7NpZLMe9A1daNhve2zAgCBUAxr
	WE5KxjVjyZ56aqtkLvL1xXv3adIq5LET53y6u1dRzFIhv03y4Jm5akajEPfDcQCmiykod3nv31X/P
	ex5Rgiiqk3i021eyLm4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkQq-00000001UvK-0Zbf;
	Thu, 09 Jul 2026 08:48:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzsv2-000000090tI-1of9
	for linux-rockchip@bombadil.infradead.org;
	Tue, 10 Mar 2026 08:58:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=M6JPfbr9d5IciKIoqHHW920nfQtcVt9K8aP07ynrnlo=; b=Bbuv3EpSbZxtq/12XbIbsc2PNK
	Y5AQgReJtLSyRKs9bukySWXYHUvZk9sBoSa8LeSpsM5t5C4JGPkMjn8zuLduSzBtME/wd2cLLShd2
	7mPhAjbd5D1T74jqdHp1pRJ39wEqOU70n78wROCSrkQN6hjX1DgpLdiIThoSWnu/piLYc2fg9Na2c
	OPVozeP+85/Nw72OQtgalUfmhCpGMjc3lHK7/9gojV62k1zDklSFZaxr/2aRXFv5veklF4lH/3bgG
	kk3bSYN+qO2+Mblx89lULDTnSFGaT0Xx0Stm98zWtM/nO5+GpN5FdX2vaerJoE/jXwNMON3EIvp6n
	5tOKqznw==;
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzsuy-0000000E2fo-3vcv
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Mar 2026 08:58:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5DBBA43875
	for <linux-rockchip@lists.infradead.org>; Tue, 10 Mar 2026 08:58:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FAECC2BCAF
	for <linux-rockchip@lists.infradead.org>; Tue, 10 Mar 2026 08:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773133097;
	bh=M6JPfbr9d5IciKIoqHHW920nfQtcVt9K8aP07ynrnlo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=vH801KcBRMALqGRmP82z071uPUUI0DIMyC+7pHf59zOuwgsxZBR0ubY48/NDd0Wdw
	 jvAOK9n7oagljyCjRDaV8cQorZVz+MH8htKRNeUtsUXJznRnU4oqdPEdS9d6kBuq5Y
	 C/Qvdn6Q70cCBxVO08ELNHdeS0Dm6Wc3TYg4+t/k+6Gigm2prDysKINAVNi8A8hBGS
	 4txKV/F2qhbmGwS1lZViCOKUrfkj4GWKWGKW+P3pUenNLBFBzDmBNTuRmL5zfk7MNm
	 JRV0QPInjb7wpupWDkwKs27yn0nTNw1PNAbgaQISZPV8hws3IzJJMmTHBq3w/Rikrw
	 lUXheAcQP3pYA==
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-38a42a0d7f7so27318481fa.1
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Mar 2026 01:58:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXMhwNqfojQSt/k8CSN8kLr4Qh3CjsJpIGYvoDIDIQDq/TQ1H5BWwRyc779VsYQfpxZDe58cRxj0UgHZGvnGQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyoC9fOaxtJsVJ0XTK96T7rlQvDuNFw+FNkqL1NxtiZbe04+bK1
	ec4CPnBecfd6jAMlZ+kJcIs/KsoMFU4gxLzbL0rSyuekrcdzT/Oh24tGr1/rhqNP/DrCnFHJXtU
	w9ufE6efKpazU0ORK3yhbZuEtUesmk1UscTCx9en0hw==
X-Received: by 2002:a2e:b012:0:b0:389:e2e8:4f4c with SMTP id
 38308e7fff4ca-38a5d05131dmr6527231fa.21.1773133095795; Tue, 10 Mar 2026
 01:58:15 -0700 (PDT)
MIME-Version: 1.0
References: <20260306-qcom-sa8255p-emac-v7-0-d6a3013094b7@oss.qualcomm.com> <4728554b256f016d9a5f3e019ed831387b0f059b.camel@redhat.com>
In-Reply-To: <4728554b256f016d9a5f3e019ed831387b0f059b.camel@redhat.com>
From: Bartosz Golaszewski <brgl@kernel.org>
Date: Tue, 10 Mar 2026 09:58:03 +0100
X-Gmail-Original-Message-ID: <CAMRc=Me8pw5ROaopJ8bcon_NGR5TEZdkJL-F4H1-8b-U2FU9GQ@mail.gmail.com>
X-Gm-Features: AaiRm50drSEJRzFk2cE1mtMmfBxUomqwHAi_2o4urYZsnhjuUaH2OaO1HdaVg_g
Message-ID: <CAMRc=Me8pw5ROaopJ8bcon_NGR5TEZdkJL-F4H1-8b-U2FU9GQ@mail.gmail.com>
Subject: Re: [PATCH net-next v7 0/7] net: stmmac: qcom-ethqos: add support for
 SCMI power domains
To: Radu Rendec <rrendec@redhat.com>
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
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_085821_546023_3BE4C187 
X-CRM114-Status: GOOD (  21.34  )
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

T24gVHVlLCBNYXIgMTAsIDIwMjYgYXQgMjoxMOKAr0FNIFJhZHUgUmVuZGVjIDxycmVuZGVjQHJl
ZGhhdC5jb20+IHdyb3RlOgo+Cj4gT24gRnJpLCAyMDI2LTAzLTA2IGF0IDE2OjQ2ICswMTAwLCBC
YXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+ID4gQWRkIHN1cHBvcnQgZm9yIHRoZSBmaXJtd2Fy
ZS1tYW5hZ2VkIHZhcmlhbnQgb2YgdGhlIERlc2lnbldhcmUgTUFDIG9uCj4gPiB0aGUgc2E4MjU1
cCBwbGF0Zm9ybS4gVGhpcyBzZXJpZXMgY29udGFpbnMgbmV3IERUIGJpbmRpbmdzIGFuZCBkcml2
ZXIKPiA+IGNoYW5nZXMgcmVxdWlyZWQgdG8gc3VwcG9ydCB0aGUgTUFDIGluIHRoZSBTVE1NQUMg
ZHJpdmVyLgo+ID4KPiA+IEl0IGFsc28gcmVvcmdhbml6ZXMgdGhlIGV0aHFvcyBjb2RlIHF1aXRl
IGEgYml0IHRvIG1ha2UgdGhlIGludHJvZHVjdGlvbgo+ID4gb2YgcG93ZXIgZG9tYWlucyBpbnRv
IHRoZSBkcml2ZXIgYSBiaXQgZWFzaWVyIG9uIHRoZSBleWUuCj4gPgo+ID4gVGhlIERUUyBjaGFu
Z2VzIHdpbGwgZ28gaW4gc2VwYXJhdGVseS4KPgo+IEFzIEpha3ViIHBvaW50ZWQgb3V0LCBpdCBj
b25mbGljdHMgd2l0aCB0aGUgbGF0ZXN0IG5ldC1uZXh0LCBidXQgZG9lcwo+IGFwcGx5IGNsZWFu
bHkgb24gdGhlIGxhdGVzdCBtYWlubGluZSwgc28gSSB0ZXN0ZWQgdGhlcmUgKG9uIGEgU0E4Nzc1
UAo+IGJvYXJkIHJ1bm5pbmcgdGhlIFNDTUkgZmlybXdhcmUpLgo+Cj4gVGhlIHR3byBOSUNzIGNv
bWUgdXAgYXMgZXhwZWN0ZWQuIEJhc2ljIGlwZXJmMyB0aHJvdWdocHV0IGFuZCBqaXR0ZXIKPiB0
ZXN0cyBsb29rIGdvb2QuIEkgd291bGQgb2ZmZXIgYSBUZXN0ZWQtYnkgdGFnIGFuZCBhIHN1bW1h
cnkgb2YgdGhlCj4gdGVzdCByZXN1bHRzLCBidXQgSSB0aGluayBpdCdzIGEgbW9vdCBwb2ludCBi
ZWNhdXNlIHlvdSdsbCBoYXZlIHRvCj4gc3VibWl0IGEgbmV3IHZlcnNpb24gYW55d2F5Lgo+Cj4g
SSB3aWxsIHdhaXQgZm9yIHlvdSB0byByZWJhc2UsIHRoZW4gdGVzdCBhZ2FpbiBhbmQgY29tZSBi
YWNrIHdpdGggdGhlCj4gcmVzdWx0cy4KPgoKVGhhbmsgeW91IGZvciB0aGUgdGVzdHMuIFRoZSBy
ZXdvcmsgYWZ0ZXIgdGhlIGNoYW5nZXMgdHVybmVkIG91dCB0byBiZQpxdWl0ZSBleHRlbnNpdmUu
IEkgc2hvdWxkIGhhdmUgaXQgcmVhZHkgYnkgdGhlIGVuZCBvZiB0aGUgd2Vlay4gSSB3aWxsCmFw
cHJlY2lhdGUgaWYgeW91IGNvdWxkIHJldGVzdCBpdCBhZ2FpbiBieSB0aGVuIGFuZCBsZWF2ZSB5
b3VyIHRhZy4KCkJhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
