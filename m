Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DA61606D805
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2026 16:33:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HqxZ633E
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JeR1RsKpixaweSy+8F68p39R1PalizKI36LXxTA6Vg8=; b=HqxZ633Ew/nl5ALsny+sMVw7i2
	2vc89M537FMYTxXL5Jj3oAjbs1g0Ki8lQFGxOFj9IwqYulCz/hKuy9iSuJ37lpI5zhVTXsdn/+8Jx
	+hIWUGoVHeallm/THADZoEai7QZFk/jLSTXmIu0Rzd8Hs+SVgnQO9ygpJ5xkZYv5bAPgl3p8m6d8A
	h0lJrTjars5kIGx+VosxEqGY6p/pvr+3VTL9OcCOCJm3h9ZmNWuW28jEgPIMt3MXdBxVYUey/yJ51
	3CAzryGlwHuhZasho54wqFCsX+VXZu/NDsnsCGYyJZwKIzHvc7iC0q82nCVrvlqT0e608EoxUPt6L
	ppPPtLMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPjLe-0000000Ezd6-1B3P;
	Sat, 07 Nov 2026 16:32:58 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPjLc-0000000Ezcr-48b0;
	Sat, 07 Nov 2026 16:32:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 764014377C;
	Sat,  7 Nov 2026 16:32:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4345F1F0089F;
	Sat,  7 Nov 2026 16:32:55 +0000 (UTC)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v8 7/9] PCI: dw-rockchip: Add pme_turn_off support
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Jingoo Han <jingoohan1@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 "Yury Norov (NVIDIA)" <yury.norov@gmail.com>, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Alexey Charkov <alchark@flipper.net>, linux-pci@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com
In-Reply-To: <f047dcbe-efa2-4c60-8436-6d001c936467@rock-chips.com>
References: <20261105-rockchip-pcie-system-suspend-v8-0-0434b4f373bc@collabora.com>
 <20261105-rockchip-pcie-system-suspend-v8-7-0434b4f373bc@collabora.com>
 <f047dcbe-efa2-4c60-8436-6d001c936467@rock-chips.com>
Date: Sat, 07 Nov 2026 22:02:49 +0530
Message-Id: <179406916971.65886.13520937092317191699.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4382;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=S1IECqqIrwBd3k3Fr5mAm2lihZFlAHgQLQIBZRJ7QRA=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq71KyRfVqWX3CtO7dsMROvebs50h6vcEg5IdS2
 W1rMFiBT2mJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCau9SsgAKCRBVnxHm/pHO
 9UrwB/4+I1ES4Zd9C/2fFs3eQQeARV9e13XPiWzamhcfg0B8YXrs08INU7QM1wwo2fAwGiM90Yt
 OyWU7QYBHJrwCenz4vxvgYe7Gor3kwPrs88ger4KB29Uu+KzyT+nRIaZqNCTtoCnyUTjHLqNzYQ
 M51/zfs8KLMv7HhcsWImH6auTs9cxZWFgH1ujGtPgWD+KpkzQfeMd8OWE38L/quU1r4mdSMaLcM
 W46aHmHXsGLSXvwHngIPXkmXsPGRUcARMPfguJzNLp48Ro5E6k+LyovvAOv0inS6HT3eMu6FbF/
 upDXISlYDN8EU3NYI+jJ8SRHzhhOWEweNZTXb6RcvyB8c99h
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMjAyNi0xMS0wNSAwODo1MSArMDgwMCwgU2hhd24gTGluIHdyb3RlOgo+IOWcqCAyMDI2LzEx
LzA1IOaYn+acn+WbmyA3OjQ3LCBTZWJhc3RpYW4gUmVpY2hlbCDlhpnpgZM6Cj4gPiBQcmVwYXJl
IFJvY2tjaGlwIFBDSWUgY29udHJvbGxlciBmb3Igc3lzdGVtIHN1c3BlbmQgc3VwcG9ydCBieQo+
ID4gYWRkaW5nIHRoZSBQTUUgdHVybiBvZmYgb3BlcmF0aW9uLgo+ID4gCj4gPiBTaWduZWQtb2Zm
LWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4K
PiA+IC0tLQo+ID4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlw
LmMgfCA0NyArKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICAgMSBmaWxlIGNoYW5nZWQs
IDQ3IGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdj
L3BjaWUtZHctcm9ja2NoaXAuYwo+ID4gaW5kZXggMGUyNmFiYzUwOTIwLi43OTMzYzUwZGYzNDAg
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tj
aGlwLmMKPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2No
aXAuYwo+ID4gQEAgLTQ3LDYgKzQ3LDEwIEBACj4gPiAgICNkZWZpbmUgIFBDSUVfQ0xJRU5UX0VO
QUJMRV9MVFNTTQlGSUVMRF9QUkVQX1dNMTYoQklUKDIpLCAxKQo+ID4gICAjZGVmaW5lICBQQ0lF
X0NMSUVOVF9ESVNBQkxFX0xUU1NNCUZJRUxEX1BSRVBfV00xNihCSVQoMiksIDApCj4gPiAgIAo+
ID4gKy8qIEludGVycnVwdCBTdGF0dXMgUmVnaXN0ZXIgZm9yIFJlY2VpdmVkIE1lc3NhZ2VzICov
Cj4gPiArI2RlZmluZSBQQ0lFX0NMSUVOVF9JTlRSX1NUQVRVU19NU0dfUlgJMHgwNAo+ID4gKyNk
ZWZpbmUgIFBNRV9UT19BQ0sJCQlCSVQoOSkKPiA+ICsKPiA+ICAgLyogSW50ZXJydXB0IFN0YXR1
cyBSZWdpc3RlciBSZWxhdGVkIHRvIExlZ2FjeSBJbnRlcnJ1cHQgKi8KPiA+ICAgI2RlZmluZSBQ
Q0lFX0NMSUVOVF9JTlRSX1NUQVRVU19MRUdBQ1kJMHg4Cj4gPiAgIAo+ID4gQEAgLTcxLDYgKzc1
LDExIEBACj4gPiAgICNkZWZpbmUgIFBDSUVfQ0xLUkVRX1JFQURZCQlGSUVMRF9QUkVQX1dNMTYo
QklUKDApLCAxKQo+ID4gICAjZGVmaW5lICBQQ0lFX0NMS1JFUV9OT1RfUkVBRFkJCUZJRUxEX1BS
RVBfV00xNihCSVQoMCksIDApCj4gPiAgICNkZWZpbmUgIFBDSUVfQ0xLUkVRX1BVTExfRE9XTgkJ
RklFTERfUFJFUF9XTTE2KEdFTk1BU0soMTMsIDEyKSwgMSkKPiA+ICsjZGVmaW5lICBQTUVfUkVB
RFlfRU5URVJfTDIzCQlCSVQoMykKPiA+ICsKPiA+ICsvKiBNZXNzYWdlIFJlcXVlc3QgUmVnaXN0
ZXIgKi8KPiA+ICsjZGVmaW5lIFBDSUVfQ0xJRU5UX01TR19HRU4JCTB4MzQKPiA+ICsjZGVmaW5l
ICBQTUVfVFVSTl9PRkYJCQlGSUVMRF9QUkVQX1dNMTYoQklUKDQpLCAxKQo+ID4gICAKPiA+ICAg
LyogUkFTREVTIFRCQSBpbmZvcm1hdGlvbiAqLwo+ID4gICAjZGVmaW5lIFBDSUVfQ0xJRU5UX0NE
TV9SQVNERVNfVEJBX0lORk9fQ01OCTB4MTU0Cj4gPiBAQCAtNDM5LDggKzQ0OCw0NiBAQCBzdGF0
aWMgaW50IHJvY2tjaGlwX3BjaWVfaG9zdF9pbml0KHN0cnVjdCBkd19wY2llX3JwICpwcCkKPiA+
ICAgCXJldHVybiAwOwo+ID4gICB9Cj4gPiAgIAo+ID4gK3N0YXRpYyB2b2lkIHJvY2tjaGlwX3Bj
aWVfcG1lX3R1cm5fb2ZmKHN0cnVjdCBkd19wY2llX3JwICpwcCkKPiA+ICt7Cj4gPiArCXN0cnVj
dCBkd19wY2llICpwY2kgPSB0b19kd19wY2llX2Zyb21fcHAocHApOwo+ID4gKwlzdHJ1Y3Qgcm9j
a2NoaXBfcGNpZSAqcm9ja2NoaXAgPSB0b19yb2NrY2hpcF9wY2llKHBjaSk7Cj4gPiArCXN0cnVj
dCBkZXZpY2UgKmRldiA9IHJvY2tjaGlwLT5wY2kuZGV2Owo+ID4gKwl1MzIgc3RhdHVzOwo+ID4g
KwlpbnQgcmV0Owo+ID4gKwo+ID4gKwkvKiAxLiBCcm9hZGNhc3QgUE1FX1R1cm5fT2ZmIE1lc3Nh
Z2UsIGJpdCA0IHNlbGYtY2xlYXIgb25jZSBkb25lICovCj4gPiArCXJvY2tjaGlwX3BjaWVfd3Jp
dGVsX2FwYihyb2NrY2hpcCwgUE1FX1RVUk5fT0ZGLCBQQ0lFX0NMSUVOVF9NU0dfR0VOKTsKPiA+
ICsJcmV0ID0gcmVhZGxfcG9sbF90aW1lb3V0KHJvY2tjaGlwLT5hcGJfYmFzZSArIFBDSUVfQ0xJ
RU5UX01TR19HRU4sCj4gPiArCQkJCSBzdGF0dXMsICEoc3RhdHVzICYgQklUKDQpKSwgUENJRV9Q
TUVfVE9fTDJfVElNRU9VVF9VUyAvIDEwLAo+ID4gKwkJCQkgUENJRV9QTUVfVE9fTDJfVElNRU9V
VF9VUyk7Cj4gPiArCWlmIChyZXQpIHsKPiA+ICsJCWRldl93YXJuKGRldiwgIkZhaWxlZCB0byBz
ZW5kIFBNRV9UdXJuX09mZlxuIik7Cj4gPiArCQlyZXR1cm47Cj4gPiArCX0KPiA+ICsKPiA+ICsJ
LyogMi4gV2FpdCBmb3IgUE1FX1RPX0FjaywgYml0IDkgd2lsbCBiZSBzZXQgb25jZSByZWNlaXZl
ZCAqLwo+ID4gKwlyZXQgPSByZWFkbF9wb2xsX3RpbWVvdXQocm9ja2NoaXAtPmFwYl9iYXNlICsg
UENJRV9DTElFTlRfSU5UUl9TVEFUVVNfTVNHX1JYLAo+ID4gKwkJCQkgc3RhdHVzLCBzdGF0dXMg
JiBCSVQoOSksIFBDSUVfUE1FX1RPX0wyX1RJTUVPVVRfVVMgLyAxMCwKPiA+ICsJCQkJIFBDSUVf
UE1FX1RPX0wyX1RJTUVPVVRfVVMpOwo+ID4gKwlpZiAocmV0KSB7Cj4gPiArCQlkZXZfd2Fybihk
ZXYsICJGYWlsZWQgdG8gcmVjZWl2ZSBQTUVfVE9fQWNrXG4iKTsKPiA+ICsJCXJldHVybjsKPiA+
ICsJfQo+ID4gKwo+ID4gKwkvKiAzLiBDbGVhciBQTUVfVE9fQWNrIGFuZCBXYWl0IGZvciByZWFk
eSB0byBlbnRlciBMMjMgbWVzc2FnZSAqLwo+ID4gKwlyb2NrY2hpcF9wY2llX3dyaXRlbF9hcGIo
cm9ja2NoaXAsIFBNRV9UT19BQ0ssIFBDSUVfQ0xJRU5UX0lOVFJfU1RBVFVTX01TR19SWCk7Cj4g
PiArCXJldCA9IHJlYWRsX3BvbGxfdGltZW91dChyb2NrY2hpcC0+YXBiX2Jhc2UgKyBQQ0lFX0NM
SUVOVF9QT1dFUl9DT04sCj4gPiArCQkJCSBzdGF0dXMsIHN0YXR1cyAmIFBNRV9SRUFEWV9FTlRF
Ul9MMjMsCj4gPiArCQkJCSBQQ0lFX1BNRV9UT19MMl9USU1FT1VUX1VTIC8gMTAsCj4gPiArCQkJ
CSBQQ0lFX1BNRV9UT19MMl9USU1FT1VUX1VTKTsKPiA+ICsJaWYgKHJldCkKPiA+ICsJCWRldl9l
cnIoZGV2LCAiRmFpbGVkIHRvIGdldCByZWFkeSB0byBlbnRlciBMMjMgbWVzc2FnZVxuIik7Cj4g
PiArfQo+IAo+IAo+IFRoaXMgaXMgYSBxdWVzdGlvbiBmb3IgdGhlIERXQyBjb3JlOiBzaG91bGQg
d2UgY2hhbmdlCj4gZHdfcGNpZV9ob3N0X29wczo6cG1lX3R1cm5fb2ZmKCkgdG8gcmV0dXJuIGEg
dmFsdWUgaW5zdGVhZCBvZiBzaWxlbnRseQo+IGlnbm9yaW5nIGEgZmFpbHVyZT8KPiAKPiBMb29r
aW5nIGF0IHBjaWUtZGVzaWdud2FyZS1ob3N0LmMsIHdlIGhhdmU6Cj4gCj4gaWYgKHBjaS0+cHAu
b3BzLT5wbWVfdHVybl9vZmYpIHsKPiAgICAgIHBjaS0+cHAub3BzLT5wbWVfdHVybl9vZmYoJnBj
aS0+cHApOwo+IH0gZWxzZSB7Cj4gICAgICByZXQgPSBkd19wY2llX3BtZV90dXJuX29mZihwY2kp
Owo+ICAgICAgaWYgKHJldCkKPiAgICAgICAgICByZXR1cm4gcmV0Owo+IH0KPiAKPiBUaGUgaGFu
ZGxpbmcgZmVlbHMgYXN5bW1ldHJpYy4gSWYgLT5wbWVfdHVybl9vZmYgZmFpbHMsIHNob3VsZG4n
dCB3ZSAKPiBhYm9ydCBkd19wY2llX3N1c3BlbmRfbm9pcnEgYXMgd2VsbD8KPiAKClN1cmUuIFRo
ZSBpbml0aWFsIGNhbGxiYWNrIGltcGxlbWVudGF0aW9ucyB3ZXJlIGp1c3QgYnJvYWRjYXNpbmcg
UE1FX1R1cm5fb2ZmCm1lc3NhZ2UgYW5kIGRpZG4ndCBjaGVjayBmb3IgUE1FX1RvX0Fjay4gU28g
dGhleSBlbmRlZCB1cCBiZWluZyB2b2lkLiBCdXQgZm9yClBNRV9Ub19BY2sgYW5kIEwyL0wzIFJl
YWR5IHRpbWVvdXRzLCB3ZSBzaG91bGQgZGVmaW5pdGVseSByZXR1cm4gZmFpbHVyZSBhbmQKYWJv
cnQgc3VzcGVuZCBhcyB0aGUgbGluayBtYXkgbm90IGVudGVyIEwyL0wzLgoKPiBPdGhlciB0aGFu
IHRoYXQsIHRoaXMgcGF0Y2ggbG9va3MgZ29vZCB0byBtZSBpbiBjdXJyZW50IHNoYXBlLAo+IFJl
dmlld2VkLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPiAKPiBXZSBj
YW4gZnVydGhlciBkaXNjdXNzIHRoZSBjYWxsYmFjaydzIHJldHVybiB2YWx1ZSBpc3N1ZSBvbiB0
b3AuCj4gCgpJdCBjYW4gYmUgZG9uZSBhcyBhIHNlcGFyYXRlIHNlcmllcy4KCi0gTWFuaQoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
