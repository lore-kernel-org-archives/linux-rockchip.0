Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB5F5D0C83B
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 10:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRxFXu9JEsEJhfE53pFHy9L0w0H56x+ZlEfx7UGc7zM=; b=4bm6I6fCbYXdfQ
	gGpcRSfXzARmYUUad0j3C54B7DbrnFFhhHzpZC8qSx1GVsxlfD2c1kyYP2J4Qkfahl5BGb7BwUGLV
	BGcOVzDwiobNUstkJJwuoLmVvg12dBcTxvkb49oI96eizyrH/2Vl388I8P+Jco+bDSw5oOMXiKFqO
	WoLRtn8tNzR0dfN025XJ5ShMqsFGeZAOA4i/UJ5yyhyQ5NHGbz/csHxgti7gOVdd6EIUS3kb1DYT7
	Om3rrEkxdfMzUC2aGvEpkPEnW6VSk432a2A4nw9RhVrqcDoTJr4OufyNi2QSgO1v7ZJw5/M9zwTXY
	4jOK/N2JjdrmNCnPVP+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfbbY-00000006u4h-2964;
	Tue, 13 Jan 2026 10:26:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfbbT-00000006u3Q-3UzK;
	Tue, 13 Jan 2026 10:26:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=5H/hNTgciu6FD3AcTNuZC1um8OdojwIPslmchvUjaNU=; b=f+oe9TAeVNeRg5dxijtlcbewz/
	8NqL4OlUILWM3MaE4inNGMQXs/GqUCwYjwoj6kn5QKowFEPZR5vIjTVEGRLHYS17UyO0KSxRI/y+Y
	mVg0qLOAAUPQL4YuGsCGYUtHx429wavsvYetCsCfZ6khZ0Wk9O8NaDL9SBogjxfPXi0DPI3QVJBbg
	ud+/E4Ebaoik4+Iu4zRvEycPKg3I4XWW02JtvojWYnB5QPBmusI5OZTaoKa4ffwjx+6NT7v6z3yZj
	Q0XqYllxcHVJ05dYNNgsqwbgZ7Mnc/Jrk9m9KOc/0McOMtf5N6geNPuNCFbQVXbKgdrC4ot9JCjt4
	TpaIqXUA==;
Received: from i53875b63.versanet.de ([83.135.91.99] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vfbbR-0025PF-Ey; Tue, 13 Jan 2026 11:26:22 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 guptarud@gmail.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rudraksha Gupta <guptarud@gmail.com>, Ondrej Jirman <megi@xff.cz>,
 Martijn Braam <martijn@brixit.nl>,
 Kamil =?UTF-8?B?VHJ6Y2nFhHNraQ==?= <ayufan@ayufan.eu>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Remove interrupt GPIO for WiFi for the
 Pinephone Pro
Date: Tue, 13 Jan 2026 11:26:21 +0100
Message-ID: <14738774.lVVuGzaMjS@diego>
In-Reply-To: <20260112-ppp_connectivity-v1-3-284d6e83b212@gmail.com>
References: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
 <20260112-ppp_connectivity-v1-3-284d6e83b212@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_022624_136765_42E37921 
X-CRM114-Status: GOOD (  15.90  )
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

QW0gRGllbnN0YWcsIDEzLiBKYW51YXIgMjAyNiwgMDc6NDI6MjYgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBSdWRyYWtzaGEgR3VwdGEgdmlhIEI0IFJlbGF5Ogo+IEZyb206
IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+IAo+IFdpZmkgaXMgY3VycmVudGx5IHVudXNh
YmxlIGlmIGludGVycnVwdHMgYXJlIGRlZmluZWQuIExldCdzIHJlbW92ZSB0aGVtCj4gc28gdGhh
dCBXaWZpIG5ldHdvcmtzIGFyZSBhY3R1YWxseSBkaXNjb3ZlcmFibGUuCgpQbGVhc2UgZG9uJ3Qg
ZGVzY3JpYmUgbm90IHdoYXQgeW91J3JlIGRvaW5nIGJ1dCB3aHkuCgpUaGUgaW50ZXJydXB0IHNl
ZW1zIHRvIHRoZSBvbmUgdGhhdCBpcyBjb25uZWN0ZWQgdG8gd2lmaSwgc28gSSdkIGV4cGVjdAph
IGRlc2NyaXB0aW9uIHdoeSB0aGF0IGNhdXNlcyBwcm9ibGVtcyBmaXJzdCwgaW5zdGVhZCBvZiBn
b2luZwoiZG9lc24ndCB3b3JrIGZvciBtZSIgLSAianVzdCByZW1vdmUgaXQiIC4KCkFzIHRoZSBi
ZWxvdyBqdXN0IGxvb2tzIGxpa2UgYSB0ZW1wb3JhcnkgaGFjayB1bnRpbCB0aGUgcmVhbCBjYXVz
ZSBpcwpmb3VuZC4KCj4gQ28tZGV2ZWxvcGVkLWJ5OiBNYXJ0aWpuIEJyYWFtIDxtYXJ0aWpuQGJy
aXhpdC5ubD4KPiBTaWduZWQtb2ZmLWJ5OiBNYXJ0aWpuIEJyYWFtIDxtYXJ0aWpuQGJyaXhpdC5u
bD4KPiBDby1kZXZlbG9wZWQtYnk6IEthbWlsIFRyemNpxYRza2kgPGF5dWZhbkBheXVmYW4uZXU+
Cj4gU2lnbmVkLW9mZi1ieTogS2FtaWwgVHJ6Y2nFhHNraSA8YXl1ZmFuQGF5dWZhbi5ldT4KPiBT
aWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPiBTaWduZWQtb2ZmLWJ5
OiBSdWRyYWtzaGEgR3VwdGEgPGd1cHRhcnVkQGdtYWlsLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMgfCAzIC0tLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cwo+IGluZGV4IDk3ZDBi
ZjQ1NTI1OC4uNjliYjlkZTRjZTU1IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMKPiBAQCAtODM0LDkgKzgzNCw2
IEBAICZzZGlvMCB7Cj4gIAlicmNtZjogd2lmaUAxIHsKPiAgCQljb21wYXRpYmxlID0gImJyY20s
YmNtNDMyOS1mbWFjIjsKPiAgCQlyZWcgPSA8MT47Cj4gLQkJaW50ZXJydXB0LXBhcmVudCA9IDwm
Z3BpbzQ+Owo+IC0JCWludGVycnVwdHMgPSA8UktfUEQwIElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+
IC0JCWludGVycnVwdC1uYW1lcyA9ICJob3N0LXdha2UiOwo+ICAJCXBpbmN0cmwtbmFtZXMgPSAi
ZGVmYXVsdCI7Cj4gIAkJcGluY3RybC0wID0gPCZ3aWZpX2hvc3Rfd2FrZV9sPjsKPiAgCX07Cj4g
Cj4gCgpUaGFua3MKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
