Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1F6DC43334
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Jul 2022 15:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yqcJv5oh3IdE4PZcaglqncx3sPc01BzfcoIPvaBtRUQ=; b=H+lOdAZFKQDIBq
	Xo5C0eQQvC09v9PxJVAmD26TDpRq7QbtQhQEQ9TqhghuTJz//PnNT28lgkZfe40VnKqhNxBE6En9A
	eAi0Bq98zCsb4VKsvgnot9c+eyVR0saR/1l/aCc2xunhy+tfgfacLFiyvXpBZW61BTdvdyPSY4Hfe
	pghPcwK8atz3rmQkE8llkEhzyBm4U5FdHxDjCp5OnUTnRTY30qNManeVdqoPLCfQgr4lVzHoprpXr
	iZO+52NmhVB4Ezw8RyK6PkjEuvS4iaBrugnjTtKLVFUPh/+yVXbiHPzJe0Swnvi9Qr7+LkFZofJ/R
	FoQwqa9dB+asAcXzOKtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8OGj-009n4e-C9; Mon, 04 Jul 2022 15:45:49 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8OFF-009mFD-C3; Mon, 04 Jul 2022 15:44:19 +0000
Received: from nicolas-tpx395.localdomain (mtl.collabora.ca [66.171.169.34])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AC33466015CF;
	Mon,  4 Jul 2022 16:44:09 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656949451;
	bh=T0jdgrAyHCTaLPYprZARiSvG27dAijlSDfp7uHdeNpY=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=f/smC5qK/a7kfrVFv3B/D+docBl4EQbeLo9oSRMcQJkp43qS39AOZW7J81g5d+m6h
	 kmW6CnsaAMC8kAQdOGFEhwUTMQ9I91R3n3uaVqWWin3+KJ6iFI7ItwwFKv9IxRVYMy
	 VmYmcOtlUwvzjYRKopx7WCASUljYlLKieHdFPWSntv2VWIFeMImNtXBT+e1/ZS1S50
	 JU9NweKFQWnSlVCuDJB+PjMzvBD7jDtbCGjcO14HSGWo3z6V6CZLdcBLKvpcyfHV3D
	 hefh5ZRU/mulv6r6O10RdtZ7m5aKjk0sfMk2sfxRJfjnygFLtWFCXgK5liKgJ8t+x4
	 wQW/GDR+42WpQ==
Message-ID: <e7247c9af96be6565b8bc33760f3767e1bf2073f.camel@collabora.com>
Subject: Re: [PATCH 6/7] media: hantro: imx8m: Enable 10bit decoding
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Ezequiel Garcia
	 <ezequiel@vanguardiasur.com.ar>
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, p.zabel@pengutronix.de, 
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com,  wens@csie.org, jernej.skrabec@gmail.com,
 samuel@sholland.org,  andrzej.p@collabora.com, linux-media@vger.kernel.org,
  linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, kernel@collabora.com
Date: Mon, 04 Jul 2022 11:43:59 -0400
In-Reply-To: <16bb6fe6-0d95-d4d1-f7c7-f2ca61f7bdcc@collabora.com>
References: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
	 <20220617115802.396442-7-benjamin.gaignard@collabora.com>
	 <Yr3gDuzOXk58wTnd@eze-laptop>
	 <16bb6fe6-0d95-d4d1-f7c7-f2ca61f7bdcc@collabora.com>
User-Agent: Evolution 3.44.2 (3.44.2-1.fc36) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_084417_701849_B6EA4384 
X-CRM114-Status: GOOD (  19.26  )
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

TGUgdmVuZHJlZGkgMDEganVpbGxldCAyMDIyIMOgIDA5OjAxICswMjAwLCBCZW5qYW1pbiBHYWln
bmFyZCBhIMOpY3JpdMKgOgo+IExlIDMwLzA2LzIwMjIgw6AgMTk6NDAsIEV6ZXF1aWVsIEdhcmNp
YSBhIMOpY3JpdMKgOgo+ID4gSGkgQmVuamFtaW4sCj4gPiAKPiA+IE9uIEZyaSwgSnVuIDE3LCAy
MDIyIGF0IDAxOjU4OjAxUE0gKzAyMDAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+ID4gPiBF
eHBvc2UgMTBiaXQgcGl4ZWwgZm9ybWF0cyB0byBlbmFibGUgMTBiaXQgZGVjb2RpbmcgaW4gSU1Y
OE0gU29Dcy4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxi
ZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+ID4gTG9va3MgZ29vZCB0byBtZS4KPiA+
IAo+ID4gUmV2aWV3ZWQtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAdmFuZ3VhcmRpYXN1
ci5jb20uYXI+Cj4gPiAKPiA+IEhhdmUgeW91IGNoZWNrZWQgRmx1c3RlciB0ZXN0cyBwYXNzZXNz
IHVzaW5nIGJvdGggUDAxMCBhbmQgUDAxMF80TDQ/Cj4gPiBJdCB3b3VsZCBiZSBnb29kIHRvIGRv
dWJsZS1jaGVjay4KPiAKPiBJdCBpc24ndCBwb3NzaWJsZSB0byBjaGVjayBQMDEwXzRMNCB3aXRo
IGZsdXN0ZXIgYmVjYXVzZSBHU3RyZWFtZXIKPiB2aWRlb2NvbnZlcnQgZWxlbWVudCBkb2Vzbid0
IHN1cHBvcnQgdGhpcyBmb3JtYXQuCgpJIGNhbiBvZmZlcnQgdG8gd29yayBvbiB0aGlzLiBJZiB5
b3UgY2FuIHNlbmQgbWUgb2ZmbGluZSBzb21lIHBpY3R1cmUgZHVtcCwgc28gSQpjYW4gdmFsaWRh
dGUsIHRoYXQgd291bGQgaGVscC4KCj4gCj4gUmVnYXJkcywKPiBCZW5qYW1pbgo+IAo+ID4gCj4g
PiBUaGFua3MgYSBsb3QsCj4gPiBFemVxdWllbAo+ID4gCj4gPiA+IC0tLQo+ID4gPiAgIGRyaXZl
cnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaW14OG1fdnB1X2h3LmMgfCAyNyArKysrKysrKysrKysr
KysrKysrKysKPiA+ID4gICAxIGZpbGUgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKQo+ID4gPiAK
PiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaW14OG1fdnB1
X2h3LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2lteDhtX3ZwdV9ody5jCj4gPiA+
IGluZGV4IDc3ZjU3NGZkZmE3Ny4uYjM5MDIyOGZkM2I0IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2lteDhtX3ZwdV9ody5jCj4gPiA+ICsrKyBiL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaW14OG1fdnB1X2h3LmMKPiA+ID4gQEAgLTE2MiwxMiAr
MTYyLDM5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaGFudHJvX2ZtdCBpbXg4bV92cHVfZzJfcG9z
dHByb2NfZm10c1tdID0gewo+ID4gPiAgIAkJCS5zdGVwX2hlaWdodCA9IE1CX0RJTSwKPiA+ID4g
ICAJCX0sCj4gPiA+ICAgCX0sCj4gPiA+ICsJewo+ID4gPiArCQkuZm91cmNjID0gVjRMMl9QSVhf
Rk1UX1AwMTAsCj4gPiA+ICsJCS5jb2RlY19tb2RlID0gSEFOVFJPX01PREVfTk9ORSwKPiA+ID4g
KwkJLnBvc3Rwcm9jZXNzZWQgPSB0cnVlLAo+ID4gPiArCQkuZnJtc2l6ZSA9IHsKPiA+ID4gKwkJ
CS5taW5fd2lkdGggPSBGTVRfTUlOX1dJRFRILAo+ID4gPiArCQkJLm1heF93aWR0aCA9IEZNVF9V
SERfV0lEVEgsCj4gPiA+ICsJCQkuc3RlcF93aWR0aCA9IE1CX0RJTSwKPiA+ID4gKwkJCS5taW5f
aGVpZ2h0ID0gRk1UX01JTl9IRUlHSFQsCj4gPiA+ICsJCQkubWF4X2hlaWdodCA9IEZNVF9VSERf
SEVJR0hULAo+ID4gPiArCQkJLnN0ZXBfaGVpZ2h0ID0gTUJfRElNLAo+ID4gPiArCQl9LAo+ID4g
PiArCX0sCj4gPiA+ICAgfTsKPiA+ID4gICAKPiA+ID4gICBzdGF0aWMgY29uc3Qgc3RydWN0IGhh
bnRyb19mbXQgaW14OG1fdnB1X2cyX2RlY19mbXRzW10gPSB7Cj4gPiA+ICAgCXsKPiA+ID4gICAJ
CS5mb3VyY2MgPSBWNEwyX1BJWF9GTVRfTlYxMl80TDQsCj4gPiA+ICAgCQkuY29kZWNfbW9kZSA9
IEhBTlRST19NT0RFX05PTkUsCj4gPiA+ICsJCS5tYXRjaF9kZXB0aCA9IHRydWUsCj4gPiA+ICsJ
CS5mcm1zaXplID0gewo+ID4gPiArCQkJLm1pbl93aWR0aCA9IEZNVF9NSU5fV0lEVEgsCj4gPiA+
ICsJCQkubWF4X3dpZHRoID0gRk1UX1VIRF9XSURUSCwKPiA+ID4gKwkJCS5zdGVwX3dpZHRoID0g
VElMRV9NQl9ESU0sCj4gPiA+ICsJCQkubWluX2hlaWdodCA9IEZNVF9NSU5fSEVJR0hULAo+ID4g
PiArCQkJLm1heF9oZWlnaHQgPSBGTVRfVUhEX0hFSUdIVCwKPiA+ID4gKwkJCS5zdGVwX2hlaWdo
dCA9IFRJTEVfTUJfRElNLAo+ID4gPiArCQl9LAo+ID4gPiArCX0sCj4gPiA+ICsJewo+ID4gPiAr
CQkuZm91cmNjID0gVjRMMl9QSVhfRk1UX1AwMTBfNEw0LAo+ID4gPiArCQkuY29kZWNfbW9kZSA9
IEhBTlRST19NT0RFX05PTkUsCj4gPiA+ICsJCS5tYXRjaF9kZXB0aCA9IHRydWUsCj4gPiA+ICAg
CQkuZnJtc2l6ZSA9IHsKPiA+ID4gICAJCQkubWluX3dpZHRoID0gRk1UX01JTl9XSURUSCwKPiA+
ID4gICAJCQkubWF4X3dpZHRoID0gRk1UX1VIRF9XSURUSCwKPiA+ID4gLS0gCj4gPiA+IDIuMzIu
MAo+ID4gPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
