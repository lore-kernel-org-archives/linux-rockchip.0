Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31232C8303F
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Aug 2025 07:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vw9POq96u2X1f0SnnlCV4/hSPT/EaXw7OimrdgMlmuk=; b=Aa7PazTpI8/mFT
	0TTS/NVgitvQffTKx5pk+nOwISEsMkaHgwJJ1YjEq9AUMggu6RtOvnaaBYHMSbvgVgRWUI3rWnwWJ
	nVwffvJ0znZayK+h0MSer2Pc6FpZozejB5bnEUvLJfc+hF8yclrBymVai7c5Vu0UTa6LKjz3zsJUE
	3DI1yzr9v+nAqS6Jkm9VAiCZEKXScaKdje87myz3JmgmkqK2lpJStr8GLK2pR3UtSp+EFeRfF3qcW
	F4WI7NHSRTK2rHdTfBT5zraIDC61h5mo3cB8y4T7AWHlcq5g1HDkntmcch3SV4vyeXG4LxWK+QnZd
	8R401IV4ZHX60ubTAEKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAjW-0000000ESCl-05WU;
	Wed, 27 Aug 2025 07:38:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAjU-0000000ESBc-0F0E;
	Wed, 27 Aug 2025 07:38:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=A0g4115fIgBE403Cl3EfktmE7DlY2fExfjJG9NOynE8=; b=NgwkOveExdqgBhbSxlOV5r3hY0
	OQzrVMXv4uhE0+d627cFtABDvwEDpF0qg9sQH2Xnk6lZNzWRyinc88x/6lygeQRzW9oG072CJZDsN
	4zMjzSkhdvyxB8ZjaOuo9zFIxiKN4M7cBKa43pL+XTwBIyGtTCCxLdvehxTFK0odbPaE4GrFeVLL4
	KxDBDnxNXTI6JcZ2XQjw0TjFhb1RtCLKngPHv+slhSpyYzrn+/dkCdY5AZcZvSf8lMNAs7VnZn48l
	NYyw4VPesp442FUN1Wek0xc+VqIRLU77O0FPdVOvPqocX1dYSslF0enV+OCkfIj6al78hGfu0FYI1
	yjj3HSfg==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAjQ-00000002NIE-33WY;
	Wed, 27 Aug 2025 07:38:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=A0g4115fIgBE403Cl3EfktmE7DlY2fExfjJG9NOynE8=; b=RHfVaqBiuWv5qA9rEDSV76B74j
	/VRQEQEMJq+nrAYoEUfkbgqWaVFcKadDL23pvoNbN9HYno5c4fVFKKfHkm22CaOkniiuJytlbHD4H
	7K/s0kBWZ2gDHfzNqBy15zPAWfeIvhakAsL7tyUP4aCcAMp4Yn0l/l8ZevpodPz8FWhwZsoGGwVSb
	Z5HU/Cr/JFL/2E6StotztE4Bn9Fz07uO+kKVaugdC58pSD1jdkeB9Rpu6Mjm+PA/A5gNKITUdtDmd
	bazV4H7WtQdO5d1VmNDBiBkWutZ6vOrDBqE7JVQExXP7kAkhWocTvSvaKBVGHGuRUNaEos8Aep0E6
	n6v0sEgQ==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urAj0-0007uF-FN; Wed, 27 Aug 2025 09:37:42 +0200
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
Subject: Re: [PATCH v3 13/20] drm/rockchip: dw_hdmi: switch to FIELD_PREP_WM16* macros
Date: Wed, 27 Aug 2025 09:37:41 +0200
Message-ID: <18528244.tv2OnDr8pf@phil>
In-Reply-To: <20250825-byeword-update-v3-13-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-13-947b841cdb29@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_083809_487845_701FD842 
X-CRM114-Status: GOOD (  13.88  )
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

QW0gTW9udGFnLCAyNS4gQXVndXN0IDIwMjUsIDEwOjI4OjMzIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFRoZSBlcmEgb2YgaGFuZC1y
b2xsZWQgSElXT1JEX1VQREFURSBtYWNyb3MgaXMgb3ZlciwgYXQgbGVhc3QgZm9yIHRob3NlCj4g
ZHJpdmVycyB0aGF0IHVzZSBjb25zdGFudCBtYXNrcy4KPiAKPiBSZW1vdmUgdGhpcyBkcml2ZXIn
cyB2ZXJ5IG93biBISVdPUkRfVVBEQVRFIG1hY3JvLCBhbmQgcmVwbGFjZSBhbGwKPiBpbnN0YW5j
ZXMgb2YgaXQgd2l0aCBlcXVpdmFsZW50IGluc3RhbnRpYXRpb25zIG9mIEZJRUxEX1BSRVBfV00x
NiBvcgo+IEZJRUxEX1BSRVBfV00xNl9DT05TVCwgZGVwZW5kaW5nIG9uIHdoZXRoZXIgaXQncyBp
biBhbiBpbml0aWFsaXplci4KPiAKPiBUaGlzIGdpdmVzIHVzIGJldHRlciBlcnJvciBjaGVja2lu
ZywgYW5kIGEgY2VudHJhbGx5IGFncmVlZCB1cG9uCj4gc2lnbmF0dXJlIGZvciB0aGlzIG1hY3Jv
LCB0byBlYXNlIGluIGNvZGUgY29tcHJlaGVuc2lvbi4KPiAKPiBCZWNhdXNlIEZJRUxEX1BSRVBf
V00xNi9GSUVMRF9QUkVQX1dNMTZfQ09OU1Qgc2hpZnRzIHRoZSB2YWx1ZSB0byB0aGUKPiBtYXNr
IChsaWtlIEZJRUxEX1BSRVAgZXQgYWwgZG8pLCBhIGxvdCBvZiBtYWNybyBpbnN0YW50aWF0aW9u
cyBnZXQKPiBlYXNpZXIgdG8gcmVhZC4KPiAKPiBUaGlzIHdhcyB0ZXN0ZWQgb24gYW4gUkszNTY4
IE9EUk9JRCBNMSwgYXMgd2VsbCBhcyBhbiBSSzMzOTkgUk9DS1BybzY0Lgo+IAo+IFJldmlld2Vk
LWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29t
Pgo+IFRlc3RlZC1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29s
bGFib3JhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMu
ZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxo
ZWlrb0BzbnRlY2guZGU+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
