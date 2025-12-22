Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 895EFE6749C
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Dec 2025 12:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0g7kZuH8bmz50wDTxbwtXpecG+jZNiyDLujIw5LC6A=; b=Qrljzb5K8hR3Vk
	lLtEImsXOqFOlgp6CtgfacWIcGTLfNuLi0W+k6JG39gWaZ1//AbH/27jyp8wfmVnLeQHx2/hATxJE
	sH2pw0JsUIWFJbPDCgmt9/ojNMrIrx2uQdEsRh4A5CJW/IINFKx32tUJAkmLDfcX3K+Hw1pXSXx2b
	IRm6Cfd3r0EGnogSSWuCSgc5gsufsc56iQgKlEhrRnGmMXY5lFa2tRbi/WY8EmI5Vs6xacDrPgZkI
	AVXngQ5FDGwRaLFMi9ACYj3Aa6k5S2WP6aRQefI91gj4K8/vPNWmv0KBDk5oycNmtHOVdBDKeDQxL
	ezsFPrnHbBv4DitOyHeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXfEW-0000000Dkit-0uZT;
	Mon, 22 Dec 2025 12:41:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXfER-0000000DkiD-49bs;
	Mon, 22 Dec 2025 12:41:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=vIp/UwT1ukgYhBEE+L8xIDZ0mrAdvInVqlAbyQDVXto=; b=Xb9+ukEqRoYiOZV+Jj4NrtRYVi
	cBCR/H+pxxaNLfeXG8gNjtuAwmzFfHi4LpRuWOjVnnE82P48AWzBxEnCZbDjKzj+jx2DDrNSKGmWO
	RvSIBa5ut+fPbnPl5gKPLovH92Zba3MjmSs5YBs7UBxYu0JeeVS3trpvNE5Z30BtbVs4/omnd1ZX4
	0jph7KSv16WfDQuYgMbX/vqPIHcYed6A3avRPtwQgAz7zNkZ/sEOvHdU+U2+oHQ27Go965Msj0S8U
	qOCyytjGdoQ93CFPql0HJrRNi/4OyvcZewXZR2GbfduOXT8BCtVIkr6+gVJUPaHeQCnFzi2fQiyfw
	BP505BBA==;
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vXfEO-0005U6-94; Mon, 22 Dec 2025 13:41:44 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Alexey Charkov <alchark@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable UFS controller on FriendlyElec
 NanoPi M5
Date: Mon, 22 Dec 2025 13:41:43 +0100
Message-ID: <119070978.nniJfEyVGO@phil>
In-Reply-To: <CABjd4Ywc-L0jvXwk253MDZwgN3srY6WQ5EhoKZ6wb+Hae376_A@mail.gmail.com>
References: <20251201-nanopi-m5-ufs-v2-1-ece9c0ee17c4@gmail.com>
 <CABjd4Ywc-L0jvXwk253MDZwgN3srY6WQ5EhoKZ6wb+Hae376_A@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_044148_107922_81677B28 
X-CRM114-Status: GOOD (  19.63  )
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

SGkgQWxleGV5LAoKQW0gRG9ubmVyc3RhZywgMTguIERlemVtYmVyIDIwMjUsIDE1OjA1OjM5IE1p
dHRlbGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgQWxleGV5IENoYXJrb3Y6Cj4gSGkg
SGVpa28sCj4gCj4gT24gTW9uLCBEZWMgMSwgMjAyNSBhdCAzOjM14oCvUE0gQWxleGV5IENoYXJr
b3YgPGFsY2hhcmtAZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBUaGUgTmFub1BpIE01IGJvYXJk
IHN1cHBvcnRzIHBsdWdnYWJsZSBVRlMgbW9kdWxlcyB1c2luZyB0aGUgVUZTSEMKPiA+IGluc2lk
ZSBpdHMgUm9ja2NoaXAgUkszNTc2IFNvQy4KPiA+Cj4gPiBFbmFibGUgdGhlIHJlc3BlY3RpdmUg
ZGV2aWNldHJlZSBub2RlIGFuZCBhZGQgaXRzIHN1cHBseSByZWd1bGF0b3JzLgo+ID4KPiA+IExp
bms6IGh0dHBzOi8vd2lraS5mcmllbmRseWVsZWMuY29tL3dpa2kvaW1hZ2VzLzkvOTcvTmFub1Bp
X001X0xQNV8yNDExX1NDSC5wZGYKPiA+IFNpZ25lZC1vZmYtYnk6IEFsZXhleSBDaGFya292IDxh
bGNoYXJrQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gQ2hhbmdlcyBpbiB2MjoKPiA+IC0gRGVzY3Jp
YmUgVUZTIHN1cHBseSByZWd1bGF0b3JzCj4gPiAtIEFkZCBsaW5rIHRvIHNjaGVtYXRpYwo+ID4g
LSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUxMTI3LW5hbm9waS1t
NS11ZnMtdjEtMS0wZDI4ZDE1NzcxMmNAZ21haWwuY29tCj4gPiAtLS0KPiA+ICBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1uYW5vcGktbTUuZHRzIHwgMjcgKysrKysrKysrKysr
KysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKQo+IAo+IFdv
dWxkIHlvdSBtaW5kIHB1bGxpbmcgdGhpcyBvbmUsIG9yIGRvIHlvdSBoYXZlIGFueSByZXNlcnZh
dGlvbnM/Cj4gVGhlcmUgaGFzbid0IGJlZW4gYW55IGRpc2N1c3Npb24sIGJ1dCBpdCBsb29rcyBs
aWtlIGEgcHJldHR5IHNpbXBsZQo+IGNoYW5nZSwgcnVudGltZSB0ZXN0ZWQgYW5kIHNjaGVtYS10
ZXN0ZWQuCgpZb3VyIHBhdGNoIGZlbGwgZGlyZWN0bHkgaW50byB0aGUgZGVhZC16b25lIGJldHdl
ZW4gLXJjNyBhbmQgLXJjMSA7LSkKCj4gKwl2Y2MxdjJfdWZzX3ZjY3E6IHJlZ3VsYXRvci12Y2Mx
djItdWZzLXZjY3Egewo+ICsJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiArCQly
ZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxMjAwMDAwPjsKPiArCQlyZWd1bGF0b3ItbWF4LW1p
Y3Jvdm9sdCA9IDwxMjAwMDAwPjsKPiArCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2MxdjJfdWZzX3Zj
Y3EiOwo+ICsJCXZpbi1zdXBwbHkgPSA8JnZjYzV2MF9zeXNfczU+Owo+ICsJCWVuLXN1cHBseSA9
IDwmdmNjXzN2M19zMz47Cj4gKwl9Owo+ICsKPiArCXZjYzF2OF91ZnNfdmNjcTI6IHJlZ3VsYXRv
ci12Y2MxdjgtdWZzLXZjY3EyIHsKPiArCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7
Cj4gKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4gKwkJcmVndWxhdG9y
LW1heC1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4gKwkJcmVndWxhdG9yLW5hbWUgPSAidmNjMXY4
X3Vmc192Y2NxMiI7Cj4gKwkJdmluLXN1cHBseSA9IDwmdmNjXzF2OF9zMz47Cj4gKwkJZW4tc3Vw
cGx5ID0gPCZ2ZGRhXzF2Ml9zMD47Cj4gKwl9OwoKCkJ1dCB3aGVyZSBkb2VzIHRoZSAiZW4tc3Vw
cGx5IiBjb21lIGZyb20/IEZvciB0aGUgbGlmZSBvZiBtZSwgSSBjYW4ndCBmaW5kCmFueSByZWZl
cmVuY2UgdG8gaXQgaW4gZWl0aGVyIHRoZSBiaW5kaW5ncyBpbiB0aGUga2VybmVsLCBub3IgdGhl
IGR0LXNjaGVtYS4KCkNhbiB5b3UgcGxlYXNlIHBvaW50IG1lIHRvIHRoZSBwYXJ0IG9mIHRoZSBk
b2N1bWVudGF0aW9uIHdoZXJlIHRoYXQgaXMKZGVzY3JpYmVkPwoKVGhhbmtzCkhlaWtvCgoKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
