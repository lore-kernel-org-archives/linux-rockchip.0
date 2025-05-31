Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E783C5AE59
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 May 2025 21:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PFt0GxGRdj81HHNb5b/zTIFx3rC1FDFo+xq2jLzoss=; b=umE0AIOz7uuZH6
	UH6bl1ijXcozK/53nfZmxsA52SCBaS1gItoMR7n7369giG/MOlN2PJfEea64ALHsCuIFr86QROVFf
	FwOZjc3Olcso1elsJio60OUhj0L3owLrNyeyn8tUQBckkskoeHjhdwYK5w+vdWBiC5qeLqtEqYofE
	MSwqHobq6JzHmlV0fXWtz9n3Q45lo3HRy3iivNs6eOcqRMucnkt66vqhBLJ1MqtV1/oo9NgZt5cPj
	F1hJAJTOrxN1yZ4MFsnqXwvn/TFXOPO2lvra1TlfvZb8RqAorZjJtVSKKs1HnbHMf+X+S8CA6u7jB
	r8NYyyTJT9YHUKrrvmLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLU8Z-00000004ZMm-1dQG;
	Sat, 31 May 2025 21:53:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLU6Q-00000004Ynd-2HNz;
	Sat, 31 May 2025 21:50:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=7u2qauzFTP/rcfL2a+zDfaRZel9Pi3gl/2pshUKS3Yk=; b=kymPPlJBkcnmuucB8OXSCyEip0
	aad1ClhYKqwnzUFW62h8LMRUauI/0nUjuSO7vt6CFO4BBVWh246MjR/nHmcJptBrA0y/Eait7AF3M
	SnUB7zFpIJqDKhjEkBp+je3wN9doOer9cGnwdB302NURH2n9ru6Hwt2xD4skQ5hrOSOQjXhj3Amq3
	KlOOHlbpPWffBPj6GspiIN5JskZPUz/HfHT8LZ/kGLpgtmNQAPuV0jgO2NCWCiglfUjZiu7BDH1ep
	QUpJ1wDCCW9MrR0vd8x4nxwPUUqDohT9qxufH3RBYn31GlfwcNohbldBfap/HNP6wTN1K537vKO2V
	uhbw6GNQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLU6N-00000000PF1-2TUl;
	Sat, 31 May 2025 21:50:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=7u2qauzFTP/rcfL2a+zDfaRZel9Pi3gl/2pshUKS3Yk=; b=S/veJHBk4K4AhMATBTSQloGQ/s
	SExGYxn3vLkx2Q5mkmsp0Kv0K+HTFKscAq30eVlszyNmHjpIMlxe/wFsDhlRhxi/yl2bItdRpd/c3
	YP4DoEl8pZojG29DsB8iQbYu6yCJ0Id9+IuvCdPqOIV/cAMqalAKqDw6vmBtKD/L0UKJVIeHaLKg1
	S1cNU9BLdN+/Nw1QA81Z2eyTzfCHis7/U5yc1Vh/VPMWkmL45r+AKeIdy/7b3dTX39inxEWjBsoMT
	9Ij0k2rb6NW1oewrgOJadOIq1GjyOWNqT9uiD5ORDZ/YR9vh5FDP+HssP53zQGw5j8slLg9mO45xs
	RNYOc6kg==;
Received: from i53875a3e.versanet.de ([83.135.90.62] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uLU46-0001IH-Ji; Sat, 31 May 2025 23:48:30 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <ukleinek@kernel.org>,
 William Breathitt Gray <wbg@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH 4/7] soc: rockchip: add mfpwm driver
Date: Sat, 31 May 2025 23:48:29 +0200
Message-ID: <2188729.OBFZWjSADL@diego>
In-Reply-To: <20250408-rk3576-pwm-v1-4-a49286c2ca8e@collabora.com>
References: <20250408-rk3576-pwm-v1-0-a49286c2ca8e@collabora.com>
 <20250408-rk3576-pwm-v1-4-a49286c2ca8e@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250531_225051_727311_85415378 
X-CRM114-Status: GOOD (  25.45  )
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
Cc: linux-pwm@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-iio@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, Detlev Casanova <detlev.casanova@collabora.com>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRGllbnN0YWcsIDguIEFwcmlsIDIwMjUsIDE0OjMyOjE2IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFdpdGggdGhlIFJvY2tjaGlw
IFJLMzU3NiwgdGhlIFBXTSBJUCB1c2VkIGJ5IFJvY2tjaGlwIGhhcyBjaGFuZ2VkCj4gc3Vic3Rh
bnRpYWxseS4gTG9va2luZyBhdCBib3RoIHRoZSBkb3duc3RyZWFtIHB3bS1yb2NrY2hpcCBkcml2
ZXIgYXMKPiB3ZWxsIGFzIHRoZSBtYWlubGluZSBwd20tcm9ja2NoaXAgZHJpdmVyIG1hZGUgaXQg
Y2xlYXIgdGhhdCB3aXRoIGFsbCBpdHMKPiBhZGRpdGlvbmFsIGZlYXR1cmVzIGFuZCBpdHMgZGlm
ZmVyZW5jZXMgZnJvbSBwcmV2aW91cyBJUCByZXZpc2lvbnMsIGl0Cj4gaXMgYmVzdCBzdXBwb3J0
ZWQgaW4gYSBuZXcgZHJpdmVyLgo+IAo+IFRoaXMgYnJpbmdzIHVzIHRvIHRoZSBxdWVzdGlvbiBh
cyB0byB3aGF0IHN1Y2ggYSBuZXcgZHJpdmVyIHNob3VsZCBiZS4KPiBUbyBtZSwgaXQgc29vbiBi
ZWNhbWUgY2xlYXIgdGhhdCBpdCBzaG91bGQgYWN0dWFsbHkgYmUgc2V2ZXJhbCBuZXcKPiBkcml2
ZXJzLCBtb3N0IHByb21pbmVudGx5IHdoZW4gVXdlIEtsZWluZS1Lw7ZuaWcgbGV0IG1lIGtub3cg
dGhhdCBJCj4gc2hvdWxkIG5vdCBpbXBsZW1lbnQgdGhlIHB3bSBzdWJzeXN0ZW0ncyBjYXB0dXJl
IGNhbGxiYWNrLCBidXQgaW5zdGVhZAo+IHdyaXRlIGEgY291bnRlciBkcml2ZXIgZm9yIHRoaXMg
ZnVuY3Rpb25hbGl0eS4KPiAKPiBDb21iaW5lZCB3aXRoIHRoZSBvdGhlciBhcy1vZi15ZXQgdW5p
bXBsZW1lbnRlZCBmdW5jdGlvbmFsaXR5IG9mIHRoaXMKPiBuZXcgSVAsIGl0IGJlY2FtZSBhcHBh
cmVudCB0aGF0IGl0IG5lZWRzIHRvIGJlIHNwcmVhZCBhY3Jvc3Mgc2V2ZXJhbAo+IHN1YnN5c3Rl
bXMuCj4gCj4gRm9yIHRoaXMgcmVhc29uLCB3ZSBhZGQgYSBuZXcgcGxhdGZvcm0gYnVzIGJhc2Vk
IGRyaXZlciwgY2FsbGVkIG1mcHdtCj4gKHNob3J0IGZvciAiTXVsdGktZnVuY3Rpb24gUFdNIiku
IFRoaXMgInBhcmVudCIgZHJpdmVyIG1ha2VzIHN1cmUgdGhhdAo+IG9ubHkgb25lIGRldmljZSBm
dW5jdGlvbiBkcml2ZXIgaXMgdXNpbmcgdGhlIGRldmljZSBhdCBhIHRpbWUsIGFuZCBpcyBpbgo+
IGNoYXJnZSBvZiByZWdpc3RlcmluZyB0aGUgcGxhdGZvcm0gYnVzIGRldmljZXMgZm9yIHRoZSBp
bmRpdmlkdWFsIGRldmljZQo+IGZ1bmN0aW9ucyBvZmZlcmVkIGJ5IHRoZSBkZXZpY2UuCj4gCj4g
QW4gYWNxdWlyZS9yZWxlYXNlIHBhdHRlcm4gaXMgdXNlZCB0byBndWFyYW50ZWUgdGhhdCBkZXZp
Y2UgZnVuY3Rpb24KPiBkcml2ZXJzIGRvbid0IHN0ZXAgb24gZWFjaCBvdGhlcidzIHRvZXMuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlA
Y29sbGFib3JhLmNvbT4KCmFjdHVhbGx5IHRyeWluZyB0byBjb21waWxlIHRoaXMsIGxlZCBtZSB0
bwoKYWFyY2g2NC1saW51eC1nbnUtbGQ6IGRyaXZlcnMvc29jL3JvY2tjaGlwL21mcHdtLm86IGlu
IGZ1bmN0aW9uIGBtZnB3bV9yZWdfcmVhZCc6Ci9ob21lL2RldmVsL2hzdHVlYm5lci8wMF9naXQt
cmVwb3MvbGludXgtcm9ja2NoaXAvX2J1aWxkLWFybTY0Ly4uL2luY2x1ZGUvc29jL3JvY2tjaGlw
L21mcHdtLmg6NDIzOiBtdWx0aXBsZSBkZWZpbml0aW9uIG9mIGBtZnB3bV9yZWdfcmVhZCc7IGRy
aXZlcnMvcHdtL3B3bS1yb2NrY2hpcC12NC5vOi9ob21lL2RldmVsL2hzdHVlYm5lci8wMF9naXQt
cmVwb3MvbGludXgtcm9ja2NoaXAvX2J1aWxkLWFybTY0Ly4uL2luY2x1ZGUvc29jL3JvY2tjaGlw
L21mcHdtLmg6NDIzOiBmaXJzdCBkZWZpbmVkIGhlcmUKYWFyY2g2NC1saW51eC1nbnUtbGQ6IGRy
aXZlcnMvc29jL3JvY2tjaGlwL21mcHdtLm86IGluIGZ1bmN0aW9uIGBtZnB3bV9yZWdfd3JpdGUn
OgovaG9tZS9kZXZlbC9oc3R1ZWJuZXIvMDBfZ2l0LXJlcG9zL2xpbnV4LXJvY2tjaGlwL19idWls
ZC1hcm02NC8uLi9pbmNsdWRlL3NvYy9yb2NrY2hpcC9tZnB3bS5oOjQyODogbXVsdGlwbGUgZGVm
aW5pdGlvbiBvZiBgbWZwd21fcmVnX3dyaXRlJzsgZHJpdmVycy9wd20vcHdtLXJvY2tjaGlwLXY0
Lm86L2hvbWUvZGV2ZWwvaHN0dWVibmVyLzAwX2dpdC1yZXBvcy9saW51eC1yb2NrY2hpcC9fYnVp
bGQtYXJtNjQvLi4vaW5jbHVkZS9zb2Mvcm9ja2NoaXAvbWZwd20uaDo0Mjg6IGZpcnN0IGRlZmlu
ZWQgaGVyZQptYWtlWzNdOiAqKiogWy4uL3NjcmlwdHMvTWFrZWZpbGUudm1saW51eF9vOjcyOiB2
bWxpbnV4Lm9dIEZlaGxlciAxCgoKZHVyaW5nIHRoZSBsaW5raW5nIHN0YWdlIC0gd2l0aCB0aGUg
ZHJpdmVyIGFzIGJ1aWx0aW4KCgo+ICtpbmxpbmUgdTMyIG1mcHdtX3JlZ19yZWFkKHZvaWQgX19p
b21lbSAqYmFzZSwgdTMyIHJlZykKPiArewo+ICsJcmV0dXJuIHJlYWRsKGJhc2UgKyByZWcpOwo+
ICt9Cj4gKwo+ICtpbmxpbmUgdm9pZCBtZnB3bV9yZWdfd3JpdGUodm9pZCBfX2lvbWVtICpiYXNl
LCB1MzIgcmVnLCB1MzIgdmFsKQo+ICt7Cj4gKwl3cml0ZWwodmFsLCBiYXNlICsgcmVnKTsKPiAr
fQoKbWFraW5nIHRoYXQgYSAic3RhdGljIGlubGluZSAuLi4iIHNvbHZlcyB0aGF0LgoKCk9uIGEg
bW9yZSBnZW5lcmFsIG5vdGUsIHdoYXQgaXMgdGhlIGRpZmZlcmVudGlhdGlvbiB0byBhbiBNRkQg
aGVyZT8KCkxpa2UgeW91IGNhbiBhbHJlYWR5IGJpbmQgZHQtbm9kZXMgdG8gTUZEIHN1YmRldmlj
ZXMsIGFuZCBjYW4gaW1wbGVtZW50CnRoZSBleGNsdXNpdml0eSBBUEkgdGhpbmcgb24gdG9wIG9m
IGEgZ2VuZXJhbCBtZmQgZGV2aWNlLCB0byBtYWtlIHN1cmUgb25seQpvbmUgbWZkLWNlbGwgZ2V0
cyBhY3RpdmF0ZWQgYXQgb25lIHRpbWUuCgpPdGhlciB0aGFuIHRoYXQsIHRoaXMgbG9va3MgbGlr
ZSBpdCByZWltcGxlbWVudHMgTUZEcz8KCkFsc28gaGFuZGluZyBhcm91bmQgYSByZWdtYXAgbWln
aHQgYmUgbmljZXIsIGNvbXBhcmVkIHRvIHJlYWRsL3dyaXRlbC4KCgpIZWlrbwoKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
