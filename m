Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8944BC25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 May 2024 20:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=WqQGMuxYtPFWLcqwGhXmBoY43U9EjUhyRSKe1JTpmPc=; b=U1JusXWN6hfc+c
	TDIFz5LZDJQgfm4h6DxCqki5CL5vsVvmO5xA9jTZ5ekuBMGeNWJkpfa24Oaav413TJaKN2QL4jSAQ
	UszY14mtjdbl1f66eyMdb2/IVawUggEhFyU+RX7evAYTqVhzCkKfpQ4ksWn1aTNjgBYzDsBzgdwaq
	sU6kXFaPHvXi/012kumHBQqq+IXulyDNQsHIbH6cH1kleYcyw4Cn3pZ85XLEomBIyupALm8Ytm0Wm
	4P4moBjstZtK5BJiSR0HHNNDFAxOzAZkdi/LIJQxyyG8KrolaEQ99k44vUutLnvwVVhSl0B2F+wmH
	RlGHakvg+lxwrzydfQHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Lh1-00000002rDo-1B3d;
	Wed, 15 May 2024 20:57:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Lgw-00000002rCU-1TVa;
	Wed, 15 May 2024 20:57:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 89E57615D9;
	Wed, 15 May 2024 20:57:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED56FC32781;
	Wed, 15 May 2024 20:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715806657;
	bh=iD1gc3+Wt14qW5hJ3ZyQXWD9Xptwr3gLAOqU2wZvQiE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=ZFibrt+WUXeF0xAks7MbCyZQTXKQhpkVvrCHmz6l/T1UFIsdkXrOMbw96g3/35xhE
	 yQftSpa7lT6HUOxRVK83TB53MKaRmXH8tVYdyvjTUXmGKFCQ2NMarVOl8yLnoDUwfP
	 blLqAhmx5aOlJ4nBHBzJDS6J6hdZ2LwcbEs+66tRU4wcAEsysaaDxWpEQE01WLvh1d
	 uBIIpsSJm0sWG4E5H3/oJVDYzJEGChgYIbuZVL8PNNuR6lGuxwYhV7h9DlvKV/JVjE
	 dKehZ/wmC7vNyXu2rHMDvdNTj1WUh+YI52Htf0gd70X2rmVfWAvwVACSX6qMh9jRPX
	 0Q1Rv9MJ/DDJA==
Date: Wed, 15 May 2024 15:57:35 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@debian.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Lei Chuanhua <lchuanhua@maxlinear.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>, Rob Herring <robh@kernel.org>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Add error messages in .probe()s
 error paths
Message-ID: <20240515205735.GA2137771@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240227141256.413055-2-ukleinek@debian.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_135738_507662_6103E4A0 
X-CRM114-Status: GOOD (  25.30  )
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

T24gVHVlLCBGZWIgMjcsIDIwMjQgYXQgMDM6MTI6NTRQTSArMDEwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gRHJpdmVycyB0aGF0IHNpbGVudGx5IGZhaWwgdG8gcHJvYmUgcHJvdmlkZSBh
IGJhZCB1c2VyIGV4cGVyaWVuY2UgYW5kCj4gbWFrZSBpdCB1bm5lY2Vzc2FyaWx5IGhhcmQgdG8g
ZGVidWcgc3VjaCBhIGZhaWx1cmUuIEZpeCBpdCBieSB1c2luZwo+IGRldl9lcnJfcHJvYmUoKSBp
bnN0ZWFkIG9mIGEgcGxhaW4gcmV0dXJuLgo+IAo+IFJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5l
ciA8aGVpa29Ac250ZWNoLmRlPgo+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1
a2xlaW5la0BkZWJpYW4ub3JnPgoKS3J6eXN6dG9mIGFwcGxpZWQgdGhpcyB0byBwY2kvY29udHJv
bGxlci9yb2NrY2hpcCB3aXRoIFJldmlld2VkLWJ5CmZyb20gSmVzcGVyIGFuZCBNYW5pLCBidXQg
aGlzIG91dGdvaW5nIG1haWwgcXVldWUgZ290IHN0dWNrLiAgVHJ5aW5nCnRvIHNxdWVlemUgaW50
byB2Ni45LgoKPiAtLS0KPiBIZWxsbywKPiAKPiBjaGFuZ2VzIHNpbmNlIChpbXBsaWNpdCkgdjEs
IHNlbnQgd2l0aCBNZXNzYWdlLUlkOgo+IDIwMjQwMjI3MTExODM3LjM5NTQyMi0yLXVrbGVpbmVr
QGRlYmlhbi5vcmc6Cj4gCj4gIC0gdXNlIGRldiBpbnN0ZWFkIG9mIHJvY2tjaGlwLT5wY2kuZGV2
IGFzIG5vdGljZWQgYnkgU2VyZ2UgU2VtaW4uCj4gIC0gYWRkZWQgUmV2aWV3ZWQtYnk6IHRhZyBm
b3IgSGVpa28uIEkgYXNzdW1lIGhlIGFncmVlcyB0byBhYm92ZQo+ICAgIGltcHJvdmVtZW50IGFu
ZCBhZGRpbmcgdGhlIHRhZyBkZXNwaXRlIHRoZSBjaGFuZ2UgaXMgZmluZS4KPiAKPiBCZXN0IHJl
Z2FyZHMKPiBVd2UKPiAKPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2Nr
Y2hpcC5jIHwgMjEgKysrKysrKysrKysrLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5z
ZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gaW5kZXggZDY4NDIxNDFkMzg0Li5hMTNjYTgzY2Uy
NjAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2Nr
Y2hpcC5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hp
cC5jCj4gQEAgLTIyNSwxMSArMjI1LDE1IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9jbGtf
aW5pdChzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXApCj4gIAo+ICAJcmV0ID0gZGV2bV9j
bGtfYnVsa19nZXRfYWxsKGRldiwgJnJvY2tjaGlwLT5jbGtzKTsKPiAgCWlmIChyZXQgPCAwKQo+
IC0JCXJldHVybiByZXQ7Cj4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCByZXQsICJmYWls
ZWQgdG8gZ2V0IGNsb2Nrc1xuIik7Cj4gIAo+ICAJcm9ja2NoaXAtPmNsa19jbnQgPSByZXQ7Cj4g
IAo+IC0JcmV0dXJuIGNsa19idWxrX3ByZXBhcmVfZW5hYmxlKHJvY2tjaGlwLT5jbGtfY250LCBy
b2NrY2hpcC0+Y2xrcyk7Cj4gKwlyZXQgPSBjbGtfYnVsa19wcmVwYXJlX2VuYWJsZShyb2NrY2hp
cC0+Y2xrX2NudCwgcm9ja2NoaXAtPmNsa3MpOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gZGV2
X2Vycl9wcm9iZShkZXYsIHJldCwgImZhaWxlZCB0byBlbmFibGUgY2xvY2tzXG4iKTsKPiArCj4g
KwlyZXR1cm4gMDsKPiAgfQo+ICAKPiAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX3Jlc291cmNl
X2dldChzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LAo+IEBAIC0yMzcsMTIgKzI0MSwxNCBA
QCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcmVzb3VyY2VfZ2V0KHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYsCj4gIHsKPiAgCXJvY2tjaGlwLT5hcGJfYmFzZSA9IGRldm1fcGxhdGZvcm1f
aW9yZW1hcF9yZXNvdXJjZV9ieW5hbWUocGRldiwgImFwYiIpOwo+ICAJaWYgKElTX0VSUihyb2Nr
Y2hpcC0+YXBiX2Jhc2UpKQo+IC0JCXJldHVybiBQVFJfRVJSKHJvY2tjaGlwLT5hcGJfYmFzZSk7
Cj4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgUFRSX0VSUihyb2NrY2hpcC0+
YXBiX2Jhc2UpLAo+ICsJCQkJICAgICAiZmFpbGVkIHRvIG1hcCBhcGIgcmVnaXN0ZXJzXG4iKTsK
PiAgCj4gIAlyb2NrY2hpcC0+cnN0X2dwaW8gPSBkZXZtX2dwaW9kX2dldF9vcHRpb25hbCgmcGRl
di0+ZGV2LCAicmVzZXQiLAo+ICAJCQkJCQkgICAgIEdQSU9EX09VVF9ISUdIKTsKPiAgCWlmIChJ
U19FUlIocm9ja2NoaXAtPnJzdF9ncGlvKSkKPiAtCQlyZXR1cm4gUFRSX0VSUihyb2NrY2hpcC0+
cnN0X2dwaW8pOwo+ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYsIFBUUl9FUlIo
cm9ja2NoaXAtPnJzdF9ncGlvKSwKPiArCQkJCSAgICAgImZhaWxlZCB0byBnZXQgcmVzZXQgZ3Bp
b1xuIik7Cj4gIAo+ICAJcm9ja2NoaXAtPnJzdCA9IGRldm1fcmVzZXRfY29udHJvbF9hcnJheV9n
ZXRfZXhjbHVzaXZlKCZwZGV2LT5kZXYpOwo+ICAJaWYgKElTX0VSUihyb2NrY2hpcC0+cnN0KSkK
PiBAQCAtMzIwLDEwICszMjYsOSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCQlyb2NrY2hpcC0+dnBjaWUzdjMgPSBOVUxM
Owo+ICAJfSBlbHNlIHsKPiAgCQlyZXQgPSByZWd1bGF0b3JfZW5hYmxlKHJvY2tjaGlwLT52cGNp
ZTN2Myk7Cj4gLQkJaWYgKHJldCkgewo+IC0JCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBlbmFi
bGUgdnBjaWUzdjMgcmVndWxhdG9yXG4iKTsKPiAtCQkJcmV0dXJuIHJldDsKPiAtCQl9Cj4gKwkJ
aWYgKHJldCkKPiArCQkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCByZXQsCj4gKwkJCQkJICAg
ICAiZmFpbGVkIHRvIGVuYWJsZSB2cGNpZTN2MyByZWd1bGF0b3JcbiIpOwo+ICAJfQo+ICAKPiAg
CXJldCA9IHJvY2tjaGlwX3BjaWVfcGh5X2luaXQocm9ja2NoaXApOwo+IAo+IGJhc2UtY29tbWl0
OiA2NjEzNDc2ZTIyNWUwOTBjYzlhYWQ0OWJlN2ZhNTA0ZTI5MGRkMzNkCj4gLS0gCj4gMi40My4w
Cj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
