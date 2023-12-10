Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAA3CC4167B
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Dec 2023 00:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RmXtW8hCmg5KJb6LmS1xmu1d4ua5CUW62en14mK195w=; b=Ec09mOtFWQCt2Ss2UBCQRoDaPN
	A/4G2fq7nU5nFMnGcIj1c42N64lzuSyIG77vZnxGQboZ4HJvclQZMHJPcPa1IAmzv9AAfqgEZthsy
	NpQXVz6kzgBA6XMAJ9lkKSRqLAkX6a4A4QxM6WZ2V4NJBg3ILYux/M7jYZOuFJyQWl4qCzvBXqte1
	jau1LttLdXj9tKMF6JR8CrsHK7hE5igAlFXsmCyjSPnx4YrgIerQ5WIHW+ZbV5ii5jzWqHzfWhKyB
	+eAvnauHnj9RW5Ijzrs45F0eipNzucfte8nyvrOa/bVPdwJLZwQa+OnAhe3alKIC0toADLPJqzb3J
	l7t1aBnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rC7NC-000ku6-1l;
	Sun, 10 Dec 2023 00:08:42 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rC7N8-000ktl-2y
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Dec 2023 00:08:40 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702166916;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=F4h651fYGXTf5wTx9MX0AlOhkuDhIxXL3dZrzDHtCKI=;
	b=Sfw7Xb7l2DgJE7PMC2rvLxmD+08/g83VFwuT3PlUQ9A3X79y46B6cCrByIwQd4D+ibEMO1
	38ejZZ4tnfdkCV2bjj+Lb9f4moU/c0qz8Ml6krP+Y8DlcxQhEb4YLvdEzTbMqHFtH+b++r
	RkLN6BtF4M8c7opNcDqBRQyDFS/VLVdckH2nJ1fEXrF6KZ+vD8f3HIO0yOKMDMfmZgLpwy
	gM52Ui3MOJde1qtVQsc7DKg8x9QR9o4i5Meo+qsEtcHiPjimdR6SjE0OrKL+5+S6eOWxc6
	qoC4AfSGvLZIwlKQPc74199zBNsScpUis74eR7DCeN+v47CX/kWXFzz+yPqwWA==
Date: Sun, 10 Dec 2023 01:08:36 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Shantur Rathore <i@shantur.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v1] dts: rockpro64: Remove usb regulator-always-on
In-Reply-To: <CABEcMwU8bOxUZV8i-Wig14GG-+NEEw+sbDBznTLNvgRg6Co3Jg@mail.gmail.com>
References: <20231209232109.348999-1-i@shantur.com>
 <20231209233536.350876-1-i@shantur.com>
 <43339adb6f98a0b4e59db78f932df0d4@manjaro.org>
 <CABEcMwU8bOxUZV8i-Wig14GG-+NEEw+sbDBznTLNvgRg6Co3Jg@mail.gmail.com>
Message-ID: <acbadb7f1d2c14b7003103c10d663d38@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231209_160839_594501_425C95E8 
X-CRM114-Status: GOOD (  22.34  )
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

T24gMjAyMy0xMi0xMCAwMTowMywgU2hhbnR1ciBSYXRob3JlIHdyb3RlOgo+IE9uIFNhdCwgRGVj
IDksIDIwMjMgYXQgMTE6NDPigK9QTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4g
Cj4gd3JvdGU6Cj4+IE9uIDIwMjMtMTItMTAgMDA6MzUsIFNoYW50dXIgUmF0aG9yZSB3cm90ZToK
Pj4gPiBVU0IgcG9ydCByZWd1bGF0b3JzIHNob3VsZCBiZSBjb250cm9sbGVkIGJ5IFBIWXMKPj4g
PiBzbyB3ZSByZW1vdmUgYWx3YXlzLW9uIHByb3BlcnR5IGFuZCBsZXQgUEhZcyBtYW5hZ2UgdGhl
Cj4+ID4gcmVndWxhdG9yLgo+PiA+Cj4+ID4gVHlwZWMgcG9ydCBoYXMgbWlzY29uZnVncmVkIHBo
eS1zdXBwbHkgYW5kIG5vdyB0aGF0IHdlIGFyZQo+PiA+IHJlbW92aW5nIHJlZ3VsYXRvci1hbHdh
eXMtb24sIHdlIG5lZWQgdG8gZml4IHRoZSBwaHktc3VwcGx5Cj4+ID4gc28gdGhlIFBIWXMgYXJl
IGFibGUgdG8gdHVybiBwb3dlciB0byB0eXBlLWMgcG9ydC4KPj4gPgo+PiA+IFNpZ25lZC1vZmYt
Ynk6IFNoYW50dXIgUmF0aG9yZSA8aUBzaGFudHVyLmNvbT4KPj4gPiAtLS0KPj4gPiArIGRldmlj
ZXRyZWUKPj4gPgo+PiA+IEFmdGVyIHRoaXMgcGF0Y2ggdGhlIHBvcnRzIHdlcmUgY29uZmlybWVk
IHRvIHBvd2VyIHVwIGFuZCBkb3duCj4+ID4gaW4gdS1ib290IHdoZW4gZG9pbmcgdXNiIHN0YXJ0
IGFuZCB1c2Igc3RvcC4KPj4gPiBBdCBib290IHRoZSByZWd1bGF0b3JzIHdlcmUgb2ZmLCB0aGUg
ZGV2aWNlcyBjb25uZWN0ZWQgd2VyZW4ndAo+PiA+IHBvd2VyZWQgdXAsIG9uIHVzYiBzdGFydCB0
aGUgUEhZcyBhcmUgYWJsZSB0byBwb3dlciBvbiB0aGUgcG9ydHMKPj4gPiBhbmQgb24gdXNiIHN0
b3AgdGhleSB3ZXJlIHBvd2VyZWQgZG93bi4KPj4gPgo+PiA+IEF0IHRoZSBib290LCB0aGUgcG9y
dHMgd2VyZSBwb3dlcmVkIGRvd24gd2hpY2ggd2FzIGFnYWluIHBvd2VyZWQKPj4gPiB1cCBieSBM
aW51eCBrZXJuZWwgd2hlbiBib290aW5nIHVwLgo+PiA+Cj4+ID4KPj4gPiAgYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kgfCA0ICstLS0KPj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRlbGV0aW9ucygtKQo+PiA+Cj4+ID4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5k
dHNpCj4+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQu
ZHRzaQo+PiA+IGluZGV4IGJjYTJiNTBlMGEuLmJkMjgyNGFhNDggMTAwNjQ0Cj4+ID4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPj4gPiAr
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzaQo+
PiA+IEBAIC0xOTIsNyArMTkyLDYgQEAgdmNjNXYwX2hvc3Q6IHZjYzV2MC1ob3N0LXJlZ3VsYXRv
ciB7Cj4+ID4gICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiA+ICAg
ICAgICAgICAgICAgcGluY3RybC0wID0gPCZ2Y2M1djBfaG9zdF9lbj47Cj4+ID4gICAgICAgICAg
ICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2M1djBfaG9zdCI7Cj4+ID4gLSAgICAgICAgICAgICBy
ZWd1bGF0b3ItYWx3YXlzLW9uOwo+PiA+ICAgICAgICAgICAgICAgdmluLXN1cHBseSA9IDwmdmNj
NXYwX3VzYj47Cj4+ID4gICAgICAgfTsKPj4gPgo+PiA+IEBAIC0yMDMsNyArMjAyLDYgQEAgdmNj
NXYwX3R5cGVjOiB2Y2M1djAtdHlwZWMtcmVndWxhdG9yIHsKPj4gPiAgICAgICAgICAgICAgIHBp
bmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+ID4gICAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8
JnZjYzV2MF90eXBlY19lbj47Cj4+ID4gICAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2
Y2M1djBfdHlwZWMiOwo+PiA+IC0gICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPj4g
PiAgICAgICAgICAgICAgIHZpbi1zdXBwbHkgPSA8JnZjYzV2MF91c2I+Owo+PiA+ICAgICAgIH07
Cj4+ID4KPj4gPiBAQCAtODYzLDcgKzg2MSw3IEBAIHUycGh5MF9vdGc6IG90Zy1wb3J0IHsKPj4g
PiAgICAgICB9Owo+PiA+Cj4+ID4gICAgICAgdTJwaHkwX2hvc3Q6IGhvc3QtcG9ydCB7Cj4+ID4g
LSAgICAgICAgICAgICBwaHktc3VwcGx5ID0gPCZ2Y2M1djBfaG9zdD47Cj4+ID4gKyAgICAgICAg
ICAgICBwaHktc3VwcGx5ID0gPCZ2Y2M1djBfdHlwZWM+Owo+PiA+ICAgICAgICAgICAgICAgc3Rh
dHVzID0gIm9rYXkiOwo+PiA+ICAgICAgIH07Cj4+ID4gIH07Cj4+IAo+PiBRdWl0ZSBmcmFua2x5
LCBzb21ldGhpbmcgZG9lc24ndCBmZWVsIHJpZ2h0IHRoZXJlLiAgV291bGQgeW91IG1pbmQsCj4+
IHBsZWFzZSwgdG8gcGxhY2UgdGhpcyBwYXRjaCBvbiBob2xkIHVudGlsIG5leHQgd2VlayBvciBz
bywgYXQgd2hpY2gKPj4gcG9pbnQgSSBzaG91bGQgaGF2ZSBlbm91Z2ggdGltZSB0byBnbyB0aHJv
dWdoIHRoZSBSb2NrUHJvNjQgc2NoZW1hdGljCj4+IHRob3JvdWdobHkgb25jZSBhZ2FpbiwgYW5k
IHRlc3QgdGhlIHBhdGNoIGluIGRldGFpbD8KPiAKPiBTdXJlLCBubyB3b3JyaWVzLgoKR3JlYXQs
IHRoYW5rcy4KCj4gV291bGQgeW91IG1pbmQgbGV0dGluZyBtZSBrbm93IHdoaWNoIHBhcnQgZG9l
c24ndCBmZWVsIHJpZ2h0IHRvIHlvdT8KClN1cmUsIGl0IHdhcyBhYm91dCB0aGUgbGFzdCBjaGFu
Z2UgaW4gdGhlIHBhdGNoLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
