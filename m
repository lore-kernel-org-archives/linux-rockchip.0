Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A69CBF54ABC
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 14:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lMu+6WxXDqnesUJooeXXtI5AF52eNElcGiMWippsPyc=; b=qjk+RVxxLWJdlR
	bcfucBj9cxFv1SOBZWfimiyjPMmL+sjFpTLzZLh4LXBXemPFc03Gj7i+eV4Tm/VDOUkozSF7pG+td
	GFN+Hocxde5ymGCrmczub5DiVClKunVE29uvqNBECVBXmbF4LcZeYAZY6vjnByQVJd1owyHx1jU75
	vSkidHRBDLEuv7+zrqC7qTa+FCQXayqDjUCoM1iopGOvPS31Jl/CdByqMur++jErMc46jDBiUKtr8
	JY3uFhg5qumF4gX5mZN1gnqtkmHuIUY5OlyM6u6ugVv4PRThwfC7xxbjuDdvdBhJ91hC0VSeLH1B6
	d5K5kiU2PYsX01UWrAoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w52b0-00000001cgA-2NPE;
	Tue, 24 Mar 2026 14:19:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w52ax-00000001cel-02uB;
	Tue, 24 Mar 2026 14:19:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Tj72oMxFPd8BDjOQIhw3pFVHq+x9Q3/gFhunxx6AeaU=; b=M9T0AEfPSQjpFAicz9fDQ/X1bO
	Fdz87jpmyW3A+DWWP4PuV0SmiqTeE8igeNuGGkXWPLsHGzry54rBX9U4aFMqJr7kNnc3MbXep3F0P
	E95WrLW7NwR4wGu0ndWSlnvqIu4WwVhusiJRD3SvFjWgQP+P3dYbj7CsEzKqTlNBYByPcOZg87iNi
	nOEG6iL0erSUfi/DkWxxNn9B1X0of9KxCLRswaxaWJcNfPF1sWy/z0EqWjAfXquEECX6DDAPeaoNS
	w/u7m8go2vKekYRq0S86LarASuVTtLK8bTdedEQKOUfURzLNQqDZQYRcAj0IE1YmXs9/DXqOwricK
	wkQVCvMg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Pedro Alves <pta2002@pta2002.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Pedro Alves <pta2002@pta2002.com>
Subject: Re: [PATCH RESEND v2] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
Date: Tue, 24 Mar 2026 15:18:55 +0100
Message-ID: <3407927.44csPzL39Z@phil>
In-Reply-To: <20260323-radxa-r5-itx-hdmirx-v2-1-c52501909577@pta2002.com>
References: <20260323-radxa-r5-itx-hdmirx-v2-1-c52501909577@pta2002.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_071859_108870_57BF38FE 
X-CRM114-Status: GOOD (  21.80  )
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

QW0gTW9udGFnLCAyMy4gTcOkcnogMjAyNiwgMTA6MjU6MzMgTWl0dGVsZXVyb3DDpGlzY2hlIE5v
cm1hbHplaXQgc2NocmllYiBQZWRybyBBbHZlczoKPiBUaGUgUmFkeGEgUm9jayA1IElUWCBib2Fy
ZCBleHBvc2VzIGFuIEhETUkgaW5wdXQgZXhhY3RseSB0aGUgc2FtZSB3YXkgYXMKPiB0aGUgUm9j
ayA1QiwgYnV0IHRoaXMgd2FzIG5vdCByZWZsZWN0ZWQgaW4gaXRzIERUUy4KPiAKPiBDaGFuZ2Ug
dGhlIHJrMzU4OC1yb2NrLTUtaXR4IHRvIGNvbmZpZ3VyZSBhbmQgZW5hYmxlIHRoZSBoZG1pX3Jl
Y2VpdmVyCj4gYW5kIGhkbWlfcmVjZWl2ZXJfY21hIG5vZGVzLgo+IAo+IFRoZSBob3QtcGx1ZyBk
ZXRlY3Rpb24gKEhQRCkgcGluIGtlZXBzIHRoZSBoZG1pcnhfZGV0IG5hbWUgcmF0aGVyIHRoYW4K
PiB0aGUgaGRtaXJ4X2hwZCBuYW1lIHVzZWQgaW4gb3RoZXIgYm9hcmRzIHNpbmNlIHRoYXQgaXMg
d2hhdCBtYXRjaGVzIHRoZQo+IG9mZmljaWFsIHNjaGVtYXRpY3MgKEhETUlJUlhfREVUX0wpLgo+
IAo+IFRoZSBjb25maWd1cmF0aW9ucyB3ZXJlIGNvbmZpcm1lZCB0byBiZSBpZGVudGljYWwgb24g
dGhlIGRvd25zdHJlYW0KPiBSYWR4YSBrZXJuZWwsIGFuZCB0aGlzIGhhcyBiZWVuIHRlc3RlZCB0
byB3b3JrIG9uIGEgUm9jayA1IElUWCBib2FyZAo+IHJ1bm5pbmcga2VybmVsIDYuMTkuMy4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBQZWRybyBBbHZlcyA8cHRhMjAwMkBwdGEyMDAyLmNvbT4KPiAtLS0K
PiBUZXN0ZWQgd2l0aCB0aGUgZm9sbG93aW5nIGNvbW1hbmRzOgo+IAo+IHY0bDItY3RsIC0tdmVy
Ym9zZSAtZCAvZGV2L3ZpZGVvNCBcCj4gICAtLXNldC1mbXQtdmlkZW89d2lkdGg9Mzg0MCxoZWln
aHQ9MjE2MCxwaXhlbGZvcm1hdD0nQkdSMycgXAo+ICAgLS1zdHJlYW0tbW1hcD00IC0tc3RyZWFt
LXNraXA9MyAtLXN0cmVhbS1jb3VudD0yMCBcCj4gICAtLXN0cmVhbS10bz1oZG1paW4ucmF3IC0t
c3RyZWFtLXBvbGwKPiAKPiBmZm1wZWcgLWYgcmF3dmlkZW8gLXZjb2RlYyByYXd2aWRlbyAtcyAz
ODQweDIxNjAgLXIgMzAgLXBpeF9mbXQgYmdyMjQgXAo+ICAgLWkgaGRtaWluLnJhdyBvdXRwdXQu
bXA0Cj4gLS0tCj4gQ2hhbmdlcyBpbiB2MjoKPiAtIFVwZGF0ZWQgZHRzIHNwYWNpbmcgdG8gbWF0
Y2ggY29kaW5nIHN0eWxlCj4gLSBSZXZlcnRlZCBwaW4gbmFtaW5nIHRvIGhkbWlyeF9kZXQgdG8g
bWF0Y2ggc2NoZW1hdGljcwo+ICAgLSBEaWRuJ3QgZW5kIHVwIGNoYW5naW5nIG90aGVyIGJvYXJk
cyB0byBtYXRjaC4gVGhlcmUgYXJlIHF1aXRlIGEgZmV3Cj4gICAgIG90aGVycywgc28gSSdsbCBw
cm9iYWJseSBzZW5kIGEgc2VwYXJhdGUgcGF0Y2ggZm9yIHRoYXQuCj4gCj4gLSBMaW5rIHRvIHYx
OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjYwMzA0LXJhZHhhLXI1LWl0eC1oZG1pcngt
djEtMS1mNzdiZjFmN2NlMDNAcHRhMjAwMi5jb20KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtcm9jay01LWl0eC5kdHMgfCAxMiArKysrKysrKysrKysKPiAgMSBm
aWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01LWl0eC5kdHMgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTUtaXR4LmR0cwo+IGluZGV4IDE3MmFlYWJiYTcy
YS4uOGUwZWVhZDdkMjIzIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4LXJvY2stNS1pdHguZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1ODgtcm9jay01LWl0eC5kdHMKPiBAQCAtMzQ5LDYgKzM0OSwxOCBAQCAmaGRtaTFf
c291bmQgewo+ICAJc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+ICAKPiArJmhkbWlfcmVjZWl2ZXJf
Y21hIHsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4gKyZoZG1pX3JlY2VpdmVyIHsK
PiArCXBpbmN0cmwtMCA9IDwmaGRtaW0xX3J4X2NlYyAmaGRtaW0xX3J4X2hwZGluICZoZG1pbTFf
cnhfc2NsICZoZG1pbTFfcnhfc2RhICZoZG1pcnhfZGV0PjsKPiArCXBpbmN0cmwtbmFtZXMgPSAi
ZGVmYXVsdCI7Cj4gKwlocGQtZ3Bpb3MgPSA8JmdwaW8xIFJLX1BDNiBHUElPX0FDVElWRV9MT1c+
OwoKYXMgc2FpZCBiZWZvcmUsIHBsZWFzZSBhbHNvIGFkZCBhIHBpbmN0cmwgc2V0dGluZyBmb3Ig
dGhpcyBwaW4uCgpncGlvMV9jNiBpcyBub3QgcGFydCBvZiB0aGUgbWFpbiBoZG1pcnggc2V0IG9m
IHBpbnMsIGhlbmNlIG5lZWRzIGFuCmFkZGl0aW9uYWwgcGluY3RybCBlbnRyeSB0byBjb25maWd1
cmUgaXQgYXMgZ3BpbyBhbmQgcG9zc2libHkgc2V0IGFueQphZGRpdGlvbmFsIHB1bGwgc2V0dGlu
Z3MuCgpBbmQgeWVzIHRoZSBwaW5jdHJsLWRyaXZlciBkb2VzICJpbXBsY2l0bHkiIHNldCB0aGUg
Z3Bpby1tb2RlIHdoZW4KYSBncGlvIGlzIHJlcXVlc3RlZCwgYnV0IG91ciBtb3JlIG1vZGVybiBh
cHByb2FjaCBpcyB0byBhbHdheXMgaGF2ZQphIHJlYWwgcGluY3RybCBlbnRyeSBldmVuIGZvciBn
cGlvcy4KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
