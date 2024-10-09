Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D4ECCED618
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 07:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NyP/Bfkvb1+zPlbxbshzg70fV6wHswDVdN13tOC+JJw=; b=0BczT3IbaW4W+0auTuKhucuF6E
	ovCZxFQqe5TFbVZ1lhLpGNKmSX4D0RXkfl2LN7LOSwIXgsjLEJXxmSgDqjFGaZ/jISfe9y3775Dzs
	a2LO3Ziu0NoqfjA7ufjDNzaxhgc+lRY/fXV5M4ZVZ/TJE9Oc4qP1O+yF28Opt5ZBnmni46ZVBbMrz
	0zNm9wg4KLlVriPrPPUn/9W4UWQzZP/oGCwhlaU20RjQ2KhFvoexdIXkS9zz/ssoURqVkNwJmNxPz
	8Mbg3HmhtP8kWg05mWG2qy7xpI7/wrgEDVLwS8AvPjf2K8Crrf9OnnEFjHn32HcuU+OW9wUEKNAsn
	a7iLwO8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syQx8-00000008Ca8-1n68;
	Wed, 09 Oct 2024 07:17:46 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syQvl-00000008CLu-2Ea3;
	Wed, 09 Oct 2024 07:16:23 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728458178;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=R7KGjuUSCJsHNN8JQGwjEMcvel1ygg4tsB6vaxnkEpY=;
	b=yW6LlVoVN7EsUlcqxn4hk/M4TK1G1Cc6pSZlwQGtduJ8gLvdPvOBfq5aOXL/+eoGDdnKaS
	A8qWI20qkzrgzN96YFd1XxanLQ3Vj0aGBH5yp947DDfJ+7i597OjkRiRlUn08GtYcnG6Hz
	KgPx8E8t0pALB2wZ1vqEX7AZCgwVtj72rsIEoPS5idTkkDHkTWT1oacHuaQUhhm2e1ulQx
	fxgkYzod9hYF0a1aE2N7RLhJ2Rs5y+IKPsNwOsK70oEbiR5hOZMrOyAQVwBCJp5ZZ7HBJM
	JPq8cQ/dbUvuHkF2O3Kx2yufcBN2+pFVFcExjOoQERRSs1yQ6X45tKIq1ASpvw==
Date: Wed, 09 Oct 2024 09:16:18 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Quentin
 Schulz <quentin.schulz@theobroma-systems.com>, Klaus Goger
 <klaus.goger@theobroma-systems.com>, Quentin Schulz
 <quentin.schulz@cherry.de>
Subject: Re: [PATCH v2 06/14] arm64: dts: rockchip: Remove #cooling-cells from
 fan on Theobroma boards
In-Reply-To: <20241008203940.2573684-7-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-7-heiko@sntech.de>
Message-ID: <3fe3561f1839ed17dfa74ba0a408482d@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_001622_217905_1FAC307D 
X-CRM114-Status: GOOD (  19.08  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gSGVpa28sCgpPbiAyMDI0LTEwLTA4IDIyOjM5LCBIZWlrbyBTdHVlYm5lciB3cm90ZToK
PiBBbGwgVGhlb2Jyb21hIGJvYXJkcyB1c2UgYSB0aSxhbWM2ODIxIGFzIGZhbiBjb250cm9sbGVy
Lgo+IEl0IG5vcm1hbGx5IHJ1bnMgaW4gYW4gYXV0b21hdGljYWxseSBjb250cm9sbGVkIHdheSBh
bmQgd2hpbGUgaXQgbWF5IGJlCj4gcG9zc2libGUgdG8gdXNlIGl0IGFzIHBhcnQgb2YgYSBkdC1i
YXNlZCB0aGVybWFsIG1hbmFnZW1lbnQsIHRoaXMgaXMKPiBub3QgeWV0IHNwZWNpZmllZCBpbiB0
aGUgYmluZGluZywgbm9yIGltcGxlbWVudGVkIGluIGFueSBrZXJuZWwuCj4gCj4gTmV3ZXIgYm9h
cmRzIGFscmVhZHkgZG9uJ3QgY29udGFpbiB0aGF0ICNjb29saW5nLWNlbGxzIHByb3BlcnR5LCBi
dXQKPiBvbGRlciBvbmVzIGRvLiBTbyByZW1vdmUgdGhlbSBmb3Igbm93LCB0aGV5IGNhbiBiZSBy
ZS1hZGRlZCBpZiB0aGVybWFsCj4gaW50ZWdyYXRpb24gZ2V0cyBpbXBsZW1lbnRlZCBpbiB0aGUg
ZnV0dXJlLgo+IAo+IEZpeGVzOiBjNDg0Y2Y5M2Y2MWIgKCJhcm02NDogZHRzOiByb2NrY2hpcDog
YWRkIFBYMzAtwrVRNyAoUmluZ25lY2spCj4gU29NIHdpdGggSGFpa291IGJhc2Vib2FyZCIpCj4g
Rml4ZXM6IGQ5OWEwMmJjZmE4MSAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgUkszMzY4LXVR
NyAoTGlvbikgU29NIikKPiBGaXhlczogMmM2NmZjMzRlOTQ1ICgiYXJtNjQ6IGR0czogcm9ja2No
aXA6IGFkZCBSSzMzOTktUTcgKFB1bWEpIFNvTSIpCj4gQ2M6IFF1ZW50aW4gU2NodWx6IDxxdWVu
dGluLnNjaHVsekB0aGVvYnJvbWEtc3lzdGVtcy5jb20+Cj4gQ2M6IEtsYXVzIEdvZ2VyIDxrbGF1
cy5nb2dlckB0aGVvYnJvbWEtc3lzdGVtcy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1
ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiBSZXZpZXdlZC1ieTogUXVlbnRpbiBTY2h1bHogPHF1
ZW50aW4uc2NodWx6QGNoZXJyeS5kZT4KCkxvb2tpbmcgZ29vZCB0byBtZSwgdGhhbmtzIGZvciB0
aGUgcGF0Y2guICBJbiBhZGRpdGlvbiB0byB0aGUgYW1jNjgyMQpkcml2ZXIgY3VycmVudGx5IG5v
dCBzdXBwb3J0aW5nIGZ1bGwgaW50ZWdyYXRpb24gaW50byB0aGUgdGhlcm1hbApmcmFtZXdvcmss
IHRoZSAiZmFuIiBEVCBub2RlIGFsc28gaXNuJ3QgcmVmZXJlbmNlZCBpbiBhbnkgY29vbGluZyBt
YXAsCnNvIGhhdmluZyBpdCBkZWZpbmUgdGhlICJjb29saW5nLWNlbGxzIiBwcm9wZXJ0eSBpcyBv
ZiBubyB1c2UuCgpCeSB0aGUgd2F5LCBpdCB3b3VsZCBiZSBuaWNlIHRvIHNlZSB0aGUgYW1jNjgy
MSBkcml2ZXIgc3VwcG9ydGluZyBmYW4Kc3BlZWQgcmVndWxhdGlvbiwgYW5kIHRlc3QgaXQgdG8g
Y2hlY2sgd2hvIGRvZXMgYSBiZXR0ZXIgam9iIHdoZW4gaXQKY29tZXMgdG8gY29vbGluZyBhbmQg
ZmFuIHNwZWVkIHJlZ3VsYXRpb24sIHRoZSB0aGVybWFsIGZyYW1ld29yayBvcgp0aGUgY2hpcCdz
IGJ1aWx0LWluIGxvZ2ljLiA6KQoKUmV2aWV3ZWQtYnk6IERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPgoKPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLXJp
bmduZWNrLmR0c2kgfCAxIC0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzNjgt
bGlvbi5kdHNpICAgfCAxIC0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
cHVtYS5kdHNpICAgfCAxIC0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtcmluZ25lY2su
ZHRzaQo+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLmR0c2kK
PiBpbmRleCBiNzE2M2VkNzQyMzIuLmE2ZWE5ZDhjNzg1YyAxMDA2NDQKPiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtcmluZ25lY2suZHRzaQo+ICsrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay5kdHNpCj4gQEAgLTI5Myw3ICsyOTMs
NiBAQCAmaTJjMSB7Cj4gIAlmYW46IGZhbkAxOCB7Cj4gIAkJY29tcGF0aWJsZSA9ICJ0aSxhbWM2
ODIxIjsKPiAgCQlyZWcgPSA8MHgxOD47Cj4gLQkJI2Nvb2xpbmctY2VsbHMgPSA8Mj47Cj4gIAl9
Owo+IAo+ICAJcnRjX3R3aTogcnRjQDZmIHsKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzNjgtbGlvbi5kdHNpCj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM2OC1saW9uLmR0c2kKPiBpbmRleCA4YWM4YWNmNDA4MmQuLmFiM2ZkYTY5YTFm
YiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM2OC1saW9u
LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM2OC1saW9uLmR0
c2kKPiBAQCAtNjEsNyArNjEsNiBAQCBpMmNfbHZkc19ibGM6IGkyY0AwIHsKPiAgCQkJZmFuOiBm
YW5AMTggewo+ICAJCQkJY29tcGF0aWJsZSA9ICJ0aSxhbWM2ODIxIjsKPiAgCQkJCXJlZyA9IDww
eDE4PjsKPiAtCQkJCSNjb29saW5nLWNlbGxzID0gPDI+Owo+ICAJCQl9Owo+IAo+ICAJCQlydGNf
dHdpOiBydGNANmYgewo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1wdW1hLmR0c2kKPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5
LXB1bWEuZHRzaQo+IGluZGV4IDY1MGIxYmE5YzE5Mi4uNmRlMzEyODU1NmI3IDEwMDY0NAo+IC0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXB1bWEuZHRzaQo+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXB1bWEuZHRzaQo+IEBAIC0zOTUs
NyArMzk1LDYgQEAgJmkyYzcgewo+ICAJZmFuOiBmYW5AMTggewo+ICAJCWNvbXBhdGlibGUgPSAi
dGksYW1jNjgyMSI7Cj4gIAkJcmVnID0gPDB4MTg+Owo+IC0JCSNjb29saW5nLWNlbGxzID0gPDI+
Owo+ICAJfTsKPiAKPiAgCXJ0Y190d2k6IHJ0Y0A2ZiB7CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
