Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06A9EC8303F
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Aug 2025 07:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iR3RvYOOTZahzvE+Nf98Kv2j7S8lHs137azWAgYmXAI=; b=v0j5OsHwy+c++J
	jU/rE8gkBfHqXFhzPAjeO8Y/BkbFg/VXK1ka4+VTwVmyNtdDvcUs3bbRJ+Y/bdDKjPXc1e/hdqi35
	VRvy2IOIXepnE+PQCrRXAYEWVZ4hUmvYS8ACoeXC9wsRytoRleCAivhnxPAXMPm+MwviBKq5tqg6a
	IIcTU9JAqYaj5228deD0dscdxBdaPKMHd5pHJAk2TGcXlBSiX5k1gHG0oiLteNRnzntUiWwjxtdqS
	jpjLbgqDltLaao0Qkb/JqVBfnJJuzXIl2EGNMIdr/U8gWLmSN5XE5VSGPpbTymiatTLA93YG/PE3H
	8Q4x3e/VT6/bZA2MfcHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urB3E-0000000EXX7-31eE;
	Wed, 27 Aug 2025 07:58:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urB3B-0000000EXTu-1wdg;
	Wed, 27 Aug 2025 07:58:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=uJQ6mSMA7ygeA5oFmyppBb4E1ANB4bt0CH+tDHmNVhk=; b=wx3V3gZxVatzbagZOgxagDXMFS
	DbqD+upnRWY4VW0FHtPO/Ndv+DXLpODD94PrK/9DLjH8vLBGEQ3OLMT/aUxW6ZqLmjqOwg1fxqwox
	vjq06D2iO4V/KKRRgEVqhUMfuZMhlWKgZwrvAL+8D9VC6XyhW3OxzYtz5kMWvK3+YkiKP17ZKoAN1
	PsU3gG2oT3sat8dFVC5XO7K7upNYFqUzfRPGrWQ5yhelFaccH7Bvp49FQAWHq3CHwUYVgTZkUjkGG
	+Plafk3ayemfPfDEvLfUCRGu5WAwmPASOTC1Yn6OUQirf5YAacGQsQfmRs3mo0NXYTjXfS98Lf962
	+1H2LB/g==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urB2j-0003FB-Nv; Wed, 27 Aug 2025 09:58:05 +0200
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
Subject: Re: [PATCH v3 17/20] PCI: dw-rockchip: Switch to FIELD_PREP_WM16 macro
Date: Wed, 27 Aug 2025 09:58:04 +0200
Message-ID: <5730130.X9hSmTKtgW@phil>
In-Reply-To: <20250825-byeword-update-v3-17-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-17-947b841cdb29@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_005833_500199_7EFD5146 
X-CRM114-Status: GOOD (  30.92  )
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

QW0gTW9udGFnLCAyNS4gQXVndXN0IDIwMjUsIDEwOjI4OjM3IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFRoZSBlcmEgb2YgaGFuZC1y
b2xsZWQgSElXT1JEX1VQREFURSBtYWNyb3MgaXMgb3Zlci4KPiAKPiBMaWtlIG1hbnkgb3RoZXIg
Um9ja2NoaXAgZHJpdmVycywgcGNpZS1kdy1yb2NrY2hpcCBicmluZ3Mgd2l0aCBpdCBpdHMKPiB2
ZXJ5IG93biBmbGF2b3VyIG9mIEhJV09SRF9VUERBVEUuIEl0J3Mgb2NjYXNpb25hbGx5IHVzZWQg
d2l0aG91dCBhCj4gY29uc3RhbnQgbWFzaywgd2hpY2ggY29tcGxpY2F0ZXMgbWF0dGVycy4gSElX
T1JEX1VQREFURV9CSVQgaXMgYQo+IGNvbmZ1c2luZ2x5IG5hbWVkIGFkZGl0aW9uLCBhcyBpdCBk
b2Vzbid0IHVwZGF0ZSB0aGUgYml0LCBpdCBhY3R1YWxseQo+IHNldHMgYWxsIGJpdHMgaW4gdGhl
IHZhbHVlIHRvIDEuIEhJV09SRF9ESVNBQkxFX0JJVCBpcyBzaW1pbGFybHkKPiBjb25mdXNpbmc7
IGl0IGRpc2FibGVzIHNldmVyYWwgYml0cyBhdCBvbmNlIGJ5IHVzaW5nIHRoZSB2YWx1ZSBhcyBh
IG1hc2sKPiBhbmQgdGhlIGludmVyc2Ugb2YgdmFsdWUgYXMgdGhlIHZhbHVlLCBhbmQgdGhlICJk
aXNhYmxpbmcgb25seSB0aGVzZSIKPiBlZmZlY3QgY29tZXMgZnJvbSB0aGUgaGFyZHdhcmUgYWN0
dWFsbHkgdXNpbmcgdGhlIG1hc2suIFRoZSBtb3JlIG9idmlvdXMKPiBhcHByb2FjaCB3b3VsZCd2
ZSBiZWVuIEhJV09SRF9VUERBVEUodmFsLCAwKSBpbiBteSBvcGluaW9uLgo+IAo+IFRoaXMgaXMg
cGFydCBvZiB0aGUgbW90aXZhdGlvbiB3aHkgdGhpcyBwYXRjaCB1c2VzIGh3X2JpdGZpZWxkLmgn
cwo+IEZJRUxEX1BSRVBfV00xNiBpbnN0ZWFkLCB3aGVyZSBwb3NzaWJsZS4gRklFTERfUFJFUF9X
TTE2IHJlcXVpcmVzIGEKPiBjb25zdGFudCBiaXQgbWFzaywgd2hpY2ggaXNuJ3QgcG9zc2libGUg
d2hlcmUgdGhlIGlycSBudW1iZXIgaXMgdXNlZCB0bwo+IGdlbmVyYXRlIGEgYml0IG1hc2suIEZv
ciB0aGF0IHB1cnBvc2UsIHdlIHJlcGxhY2UgaXQgd2l0aCBhIG1vcmUgcm9idXN0Cj4gbWFjcm8g
dGhhbiB3aGF0IHdhcyB0aGVyZSBidXQgdGhhdCBzaG91bGQgYWxzbyBicmluZyBjbG9zZSB0byB6
ZXJvCj4gcnVudGltZSBvdmVyaGVhZDogd2UgYWN0dWFsbHkgbWFzayB0aGUgSVJRIG51bWJlciB0
byBtYWtlIHN1cmUgd2UncmUgbm90Cj4gd3JpdGluZyBnYXJiYWdlLgo+IAo+IEZvciB0aGUgcmVt
YWluaW5nIGJpdHMsIHRoZXJlIGFsc28gYXJlIHNvbWUgY2F2ZWF0cy4gRm9yIHN0YXJ0ZXJzLCB0
aGUKPiBQQ0lFX0NMSUVOVF9FTkFCTEVfTFRTU00gYW5kIFBDSUVfQ0xJRU5UX0RJU0FCTEVfTFRT
U00gd2VyZSBuYW1lZCBpbiBhCj4gbWFubmVyIHRoYXQgaXNuJ3QgcXVpdGUgdHJ1dGhmdWwgdG8g
d2hhdCB0aGV5IGRvLiBUaGVpciBtb2RpZmljYXRpb24KPiBhY3R1YWxseSBzcGFucyBub3QganVz
dCB0aGUgTFRTU00gYml0IGJ1dCBhbHNvIGFub3RoZXIgYml0LCBmbGlwcGluZwo+IG9ubHkgdGhl
IExUU1NNIG9uZSwgYnV0IGtlZXBpbmcgdGhlIG90aGVyICh3aGljaCBhY2NvcmRpbmcgdG8gdGhl
IFRSTQo+IGhhcyBhIHJlc2V0IHZhbHVlIG9mIDApIGFsd2F5cyBlbmFibGVkLiBUaGlzIG90aGVy
IGJpdCBpcyByZXNlcnZlZCBhcyBvZgo+IHRoZSBJUCB2ZXJzaW9uIFJLMzU4OCB1c2VzIGF0IGxl
YXN0LCBhbmQgSSBoYXZlIG15IGRvdWJ0cyBhcyB0byB3aGV0aGVyCj4gaXQgd2FzIG1lYW50IHRv
IGJlIHNldCwgYW5kIHdoZXRoZXIgaXQgd2FzIG1lYW50IHRvIGJlIHNldCBpbiB0aGF0IGNvZGUK
PiBwYXRoLiBFaXRoZXIgd2F5LCBpdCdzIGNvbmZ1c2luZy4KPiAKPiBSZXBsYWNlIGl0IHdpdGgg
anVzdCB3cml0aW5nIGVpdGhlciAxIG9yIDAgdG8gdGhlIExUU1NNIGJpdCwgdXNpbmcgdGhlCj4g
bmV3IEZJRUxEX1BSRVBfV00xNiBtYWNybyBmcm9tIGh3X2JpdGZpZWxkLmgsIHdoaWNoIGdyYW50
cyB1cyB0aGUKPiBiZW5lZml0IG9mIGJldHRlciBjb21waWxlLXRpbWUgZXJyb3IgY2hlY2tpbmcu
Cj4gCj4gVGhlIGNoYW5nZSBvZiBubyBsb25nZXIgc2V0dGluZyB0aGUgcmVzZXJ2ZWQgYml0IGRv
ZXNuJ3QgYXBwZWFyIHRvCj4gY2hhbmdlIHRoZSBiZWhhdmlvdXIgb24gUkszNTY4IGluIFJDIG1v
ZGUsIHdoZXJlIGl0J3Mgbm90IG1hcmtlZCBhcwo+IHJlc2VydmVkLgo+IAo+IFBDSUVfQ0xJRU5U
X1JDX01PREUvUENJRV9DTElFTlRfRVBfTU9ERSB3YXMgYW5vdGhlciBmaWVsZCB0aGF0IHdhc24n
dAo+IHN1cGVyIGNsZWFyIG9uIHdoYXQgdGhlIGJpdCBmaWVsZCBtb2RpZmljYXRpb24gYWN0dWFs
bHkgaXMuIEFzIGZhciBhcyBJCj4gY2FuIHRlbGwsIHN3aXRjaGluZyB0byBSQyBtb2RlIGRvZXNu
J3QgYWN0dWFsbHkgd3JpdGUgdGhlIGNvcnJlY3QgdmFsdWUKPiB0byB0aGUgZmllbGQgaWYgYW55
IG9mIGl0cyBiaXRzIGhhdmUgYmVlbiBzZXQgcHJldmlvdXNseSwgYXMgaXQgb25seQo+IHVwZGF0
ZXMgb25lIGJpdCBvZiBhIDQgYml0IGZpZWxkLgo+IAo+IFJlcGxhY2UgaXQgYnkgYWN0dWFsbHkg
d3JpdGluZyB0aGUgZnVsbCB2YWx1ZXMgdG8gdGhlIGZpZWxkLCB1c2luZyB0aGUKPiBuZXcgRklF
TERfUFJFUF9XTTE2IG1hY3JvLCB3aGljaCBncmFudHMgdXMgdGhlIGJlbmVmaXQgb2YgYmV0dGVy
Cj4gY29tcGlsZS10aW1lIGVycm9yIGNoZWNraW5nLgo+IAo+IFRoaXMgcGF0Y2ggd2FzIHRlc3Rl
ZCBvbiBSSzM1ODggKFBDSWUzIHg0IGNvbnRyb2xsZXIpLCBSSzM1NzYgKFBDSWUyIHgxCj4gY29u
dHJvbGxlcikgYW5kIFJLMzU2OCAoUENJZSB4MiBjb250cm9sbGVyKSwgYWxsIGluIFJDIG1vZGUu
Cj4gCj4gQWNrZWQtYnk6IEJqb3JuIEhlbGdhYXMgPGJoZWxnYWFzQGdvb2dsZS5jb20+Cj4gU2ln
bmVkLW9mZi1ieTogTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFi
b3JhLmNvbT4KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
