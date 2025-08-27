Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEBECC8303F
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Aug 2025 07:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aOqyLCwuzGGoSf8dC827mAvaK8PDVaWwlOrHQtPUoIE=; b=mN5MMsWeVGGCHC
	dv7aBmCVFyQhY+2wcskThwOJfngAmCuCK26J2oIQN1gV+T8ScQ0tOFEODTjSmg/27lVNnW2hNo/Jq
	UJb88p7MwzSEsXzPHdZRNNxR6rTpExu7XrBU5vqFigMIN9tMAQCJFWxCI2xPpwF1icazQni3RUW7V
	xEG4C/qyV+N9ilTq6C8TNp5KhLPrb27KTvMs/uCpU6NV0ih4OSQf1Idz4MDItuP4Qiq6SK2DftDKW
	K8mxcPtFHcpL2Ya3cD4pP2VV68bRku47KC1E8dd7jmK+tCr2uwdjuKA40/xuvBkp5wEh9DCKJdsRw
	mha/zUQi/JGQzDCAh6TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAUQ-0000000EOuN-0oY8;
	Wed, 27 Aug 2025 07:22:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAUN-0000000EOs4-0zDg;
	Wed, 27 Aug 2025 07:22:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=G+hmXrHggGQu/DFm2iaN9YOAsgDAVtUlcX4wbDIaTAM=; b=paqG0/btPjpriUue1ZLq40xLBd
	GBgOWrFL05XOmF286hGkQVhrhfZqZimImLzlqfvnvVlVMHo57pYqqanZe5p+RWyExLLfK8pM6Q5Cq
	xdTc0nJjioWVaXjKpM6xHGG33hNdJlVOqRRL+S4OzGg7IrzrmTrdXDfSV/OniMWb8NfMr7hViTPqT
	qh4CArG3EfgYiwDGIxDxzDICg/hr95MIGKc/d2Fy1Rh+nq9Okcnz7bP4oClR/Liyw76jtlNxiWYgk
	upeAZRYX6mfLnf/YA7pnADtT8ZXvkmab4GGfHfUpjyupzxU/QmqBCPG9/xLHsUBttuD7WbfOzPmK7
	upjPzyNA==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urATt-00078I-85; Wed, 27 Aug 2025 09:22:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Jaehoon Chung <jh80.chung@samsung.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v3 07/20] drm/rockchip: dsi: switch to FIELD_PREP_WM16* macros
Date: Wed, 27 Aug 2025 09:22:04 +0200
Message-ID: <4886676.atdPhlSkOF@phil>
In-Reply-To: <20250825-byeword-update-v3-7-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-7-947b841cdb29@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_002235_265585_8B3BAD19 
X-CRM114-Status: GOOD (  18.18  )
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
Cc: linux-pm@vger.kernel.org, netdev@vger.kernel.org, llvm@lists.linux.dev, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gTW9udGFnLCAyNS4gQXVndXN0IDIwMjUsIDEwOjI4OjI3IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFRoZSBlcmEgb2YgaGFuZC1y
b2xsZWQgSElXT1JEX1VQREFURSBtYWNyb3MgaXMgb3ZlciwgYXQgbGVhc3QgZm9yIHRob3NlCj4g
ZHJpdmVycyB0aGF0IHVzZSBjb25zdGFudCBtYXNrcy4KPiAKPiBSZW1vdmUgdGhpcyBkcml2ZXIn
cyBISVdPUkRfVVBEQVRFIG1hY3JvLCBhbmQgcmVwbGFjZSBpbnN0YW5jZXMgb2YgaXQKPiB3aXRo
IGVpdGhlciBGSUVMRF9QUkVQX1dNMTYgb3IgRklFTERfUFJFUF9XTTE2X0NPTlNULCBkZXBlbmRp
bmcgb24KPiB3aGV0aGVyIHRoZXkncmUgaW4gYW4gaW5pdGlhbGl6ZXIuIFRoaXMgZ2l2ZXMgdXMg
YmV0dGVyIGVycm9yIGNoZWNraW5nLAo+IHdoaWNoIGFscmVhZHkgc2F2ZWQgbWUgc29tZSB0cm91
YmxlIGR1cmluZyB0aGlzIHJlZmFjdG9yLgo+IAo+IFRoZSBkcml2ZXIncyBISVdPUkRfVVBEQVRF
IG1hY3JvIGRvZXNuJ3Qgc2hpZnQgdXAgdGhlIHZhbHVlLCBidXQgZXhwZWN0cwo+IGEgcHJlLXNo
aWZ0ZWQgdmFsdWUuIE1lYW53aGlsZSwgRklFTERfUFJFUF9XTTE2IGFuZAo+IEZJRUxEX1BSRVBf
V00xNl9DT05TVCB3aWxsIHNoaWZ0IHRoZSB2YWx1ZSBmb3IgdXMsIGJhc2VkIG9uIHRoZSBnaXZl
bgo+IG1hc2suIFNvIGEgZmV3IHRoaW5ncyB0aGF0IHVzZWQgdG8gYmUgYSBISVdPUkRfVVBEQVRF
KFZFUllfTE9OR19GT08sCj4gVkVSWV9MT05HX0ZPTykgYXJlIG5vdyBhIHNvbWV3aGF0IG1vcmUg
cGxlYXNhbnQKPiBGSUVMRF9QUkVQX1dNMTYoVkVSWV9MT05HX0ZPTywgMSkuCj4gCj4gVGhlcmUg
YXJlIHNvbWUgbm9uLXRyaXZpYWwgcmVmYWN0b3JzIGhlcmUuIEEgZmV3IGxpdGVyYWxzIG5lZWRl
ZCBhIFVMCj4gc3VmZml4IGFkZGVkIHRvIHN0b3AgdGhlbSBmcm9tIHVuaW50ZW50aW9uYWxseSBv
dmVyZmxvd2luZyBhcyBhIHNpZ25lZAo+IGxvbmcuIFRvIG1ha2Ugc3VyZSBhbGwgb2YgdGhlc2Ug
Y2FzZXMgYXJlIGNhdWdodCwgYW5kIG5vdCBqdXN0IHRoZSBvbmVzCj4gd2hlcmUgdGhlIEZJRUxE
X1BSRVBfV00xNiogbWFjcm9zIHVzZSBzdWNoIGEgdmFsdWUgYXMgYSBtYXNrLCBqdXN0IG1hcmsK
PiBldmVyeSBsaXRlcmFsIHRoYXQncyB1c2VkIGFzIGEgbWFzayBhcyB1bnNpZ25lZC4KPiAKPiBO
b24tY29udGlndW91cyBtYXNrcyBhbHNvIGhhdmUgdG8gYmUgc3BsaXQgaW50byBtdWx0aXBsZQo+
IEZJRUxEX1BSRVBfV00xNiogaW5zdGFuY2VzLCBhcyB0aGUgbWFjcm8ncyBjaGVja3MgYW5kIHNo
aWZ0aW5nIGxvZ2ljCj4gcmVseSBvbiBjb250aWd1b3VzIG1hc2tzLgo+IAo+IFRoaXMgaXMgY29t
cGlsZS10ZXN0ZWQgb25seS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkg
PG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0
dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
