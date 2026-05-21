Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D14B9CD5BB1
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 12:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/eYl9zS6u/7eyhymUW1Wgnr21g1o7C9pa3Bq6at3Gw=; b=SJexOPTxNhmD+F
	znpPB8wukUpzUrb4ad1vSmGLET/fe7HOuTRoDyM/qz6jT+DFdSelqnsU6dddbk8lrCgH3cKy4km6H
	6RYYadE6odrPJYbKMgcEnVe/25ButKdYqdH25npQNEh0C+UzoDaVZvxui8r0flAG/ltuamAGJ/zHV
	o8PdX4/RTlZzNYydp6pjCQlG6kHGywduVE0VpLhw6BelLMiZ77+r3jRJW1ITWLpoRXcCBwfKzF4eO
	B5MSYxWNwkFMOYL/W/A+Q4p2gN2Lyet57ShWpZ7AjmqKEImaGS1qWpyNUHfNAfZjq/3t2Sf0IkPbo
	OiTw8L23BJnWz74DXahg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2pk-00000007lq3-2DV2;
	Thu, 21 May 2026 12:49:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2ph-00000007lpF-3Cdr
	for linux-rockchip@lists.infradead.org;
	Thu, 21 May 2026 12:49:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ2pZ-0001I8-Dh; Thu, 21 May 2026 14:48:53 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ2pY-0016dZ-1K;
	Thu, 21 May 2026 14:48:52 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ2pY-00000004ViT-3Xge;
	Thu, 21 May 2026 14:48:52 +0200
Date: Thu, 21 May 2026 14:48:52 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Sven =?utf-8?Q?P=C3=BCschel?= <s.pueschel@pengutronix.de>
Cc: Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hans Verkuil <hverkuil@kernel.org>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, kernel@pengutronix.de,
	nicolas@ndufresne.ca, sebastian.reichel@collabora.com,
	p.zabel@pengutronix.de,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
Subject: Re: [PATCH v7 07/28] media: rockchip: rga: use clk_bulk api
Message-ID: <ag7_NEcMObnGz-ml@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
	Sven =?utf-8?Q?P=C3=BCschel?= <s.pueschel@pengutronix.de>,
	Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hans Verkuil <hverkuil@kernel.org>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, kernel@pengutronix.de,
	nicolas@ndufresne.ca, sebastian.reichel@collabora.com,
	p.zabel@pengutronix.de,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
References: <20260521-spu-rga3-v7-0-3f33e8c7145f@pengutronix.de>
 <20260521-spu-rga3-v7-7-3f33e8c7145f@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260521-spu-rga3-v7-7-3f33e8c7145f@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_054902_045146_86BE1D08 
X-CRM114-Status: GOOD (  22.14  )
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

T24gVGh1LCAyMSBNYXkgMjAyNiAwMDo0NDoxMiArMDIwMCwgU3ZlbiBQw7xzY2hlbCB3cm90ZToK
PiBVc2UgdGhlIGNsa19idWxrIEFQSSB0byBhdm9pZCBjb2RlIGR1cGxpY2F0aW9uIGZvciBlYWNo
IG9mIHRoZSB0aHJlZQo+IGNsb2Nrcy4KPiAKPiBSZXZpZXdlZC1ieTogTmljb2xhcyBEdWZyZXNu
ZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFN2ZW4g
UMO8c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCj4gIGRyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIHwgNjUgKysrKy0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaCB8
ICA2ICstLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDYwIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3Jn
YS9yZ2EuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCj4gaW5k
ZXggZmVhNjNiOTRjNWYzZC4uNGU3MTBhMDUwY2I3YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCj4gQEAgLTY5OCw0OCArNjk4LDEwIEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgdmlkZW9fZGV2aWNlIHJnYV92aWRlb2RldiA9IHsKPiAgCS5kZXZpY2VfY2Fw
cyA9IFY0TDJfQ0FQX1ZJREVPX00yTV9NUExBTkUgfCBWNEwyX0NBUF9TVFJFQU1JTkcsCj4gIH07
Cj4gIAo+IC1zdGF0aWMgaW50IHJnYV9lbmFibGVfY2xvY2tzKHN0cnVjdCByb2NrY2hpcF9yZ2Eg
KnJnYSkKPiAtewo+IC0JaW50IHJldDsKPiAtCj4gLQlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUo
cmdhLT5zY2xrKTsKPiAtCWlmIChyZXQpIHsKPiAtCQlkZXZfZXJyKHJnYS0+ZGV2LCAiQ2Fubm90
IGVuYWJsZSByZ2Egc2NsazogJWRcbiIsIHJldCk7Cj4gLQkJcmV0dXJuIHJldDsKPiAtCX0KPiAt
Cj4gLQlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUocmdhLT5hY2xrKTsKPiAtCWlmIChyZXQpIHsK
PiAtCQlkZXZfZXJyKHJnYS0+ZGV2LCAiQ2Fubm90IGVuYWJsZSByZ2EgYWNsazogJWRcbiIsIHJl
dCk7Cj4gLQkJZ290byBlcnJfZGlzYWJsZV9zY2xrOwo+IC0JfQo+IC0KPiAtCXJldCA9IGNsa19w
cmVwYXJlX2VuYWJsZShyZ2EtPmhjbGspOwo+IC0JaWYgKHJldCkgewo+IC0JCWRldl9lcnIocmdh
LT5kZXYsICJDYW5ub3QgZW5hYmxlIHJnYSBoY2xrOiAlZFxuIiwgcmV0KTsKPiAtCQlnb3RvIGVy
cl9kaXNhYmxlX2FjbGs7Cj4gLQl9Cj4gLQo+IC0JcmV0dXJuIDA7Cj4gLQo+IC1lcnJfZGlzYWJs
ZV9hY2xrOgo+IC0JY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHJnYS0+YWNsayk7Cj4gLWVycl9kaXNh
YmxlX3NjbGs6Cj4gLQljbGtfZGlzYWJsZV91bnByZXBhcmUocmdhLT5zY2xrKTsKPiAtCj4gLQly
ZXR1cm4gcmV0Owo+IC19Cj4gLQo+IC1zdGF0aWMgdm9pZCByZ2FfZGlzYWJsZV9jbG9ja3Moc3Ry
dWN0IHJvY2tjaGlwX3JnYSAqcmdhKQo+IC17Cj4gLQljbGtfZGlzYWJsZV91bnByZXBhcmUocmdh
LT5zY2xrKTsKPiAtCWNsa19kaXNhYmxlX3VucHJlcGFyZShyZ2EtPmhjbGspOwo+IC0JY2xrX2Rp
c2FibGVfdW5wcmVwYXJlKHJnYS0+YWNsayk7Cj4gLX0KPiAtCj4gIHN0YXRpYyBpbnQgcmdhX3Bh
cnNlX2R0KHN0cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSkKPiAgewo+ICAJc3RydWN0IHJlc2V0X2Nv
bnRyb2wgKmNvcmVfcnN0LCAqYXhpX3JzdCwgKmFoYl9yc3Q7Cj4gKwlpbnQgcmV0Owo+ICAKPiAg
CWNvcmVfcnN0ID0gZGV2bV9yZXNldF9jb250cm9sX2dldChyZ2EtPmRldiwgImNvcmUiKTsKPiAg
CWlmIChJU19FUlIoY29yZV9yc3QpKSB7Cj4gQEAgLTc3MSwyMyArNzMzLDEyIEBAIHN0YXRpYyBp
bnQgcmdhX3BhcnNlX2R0KHN0cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSkKPiAgCXVkZWxheSgxKTsK
PiAgCXJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoYWhiX3JzdCk7Cj4gIAo+IC0JcmdhLT5zY2xrID0g
ZGV2bV9jbGtfZ2V0KHJnYS0+ZGV2LCAic2NsayIpOwo+IC0JaWYgKElTX0VSUihyZ2EtPnNjbGsp
KSB7Cj4gLQkJZGV2X2VycihyZ2EtPmRldiwgImZhaWxlZCB0byBnZXQgc2NsayBjbG9ja1xuIik7
Cj4gLQkJcmV0dXJuIFBUUl9FUlIocmdhLT5zY2xrKTsKPiAtCX0KPiAtCj4gLQlyZ2EtPmFjbGsg
PSBkZXZtX2Nsa19nZXQocmdhLT5kZXYsICJhY2xrIik7Cj4gLQlpZiAoSVNfRVJSKHJnYS0+YWNs
aykpIHsKPiAtCQlkZXZfZXJyKHJnYS0+ZGV2LCAiZmFpbGVkIHRvIGdldCBhY2xrIGNsb2NrXG4i
KTsKPiAtCQlyZXR1cm4gUFRSX0VSUihyZ2EtPmFjbGspOwo+IC0JfQo+IC0KPiAtCXJnYS0+aGNs
ayA9IGRldm1fY2xrX2dldChyZ2EtPmRldiwgImhjbGsiKTsKPiAtCWlmIChJU19FUlIocmdhLT5o
Y2xrKSkgewo+IC0JCWRldl9lcnIocmdhLT5kZXYsICJmYWlsZWQgdG8gZ2V0IGhjbGsgY2xvY2tc
biIpOwo+IC0JCXJldHVybiBQVFJfRVJSKHJnYS0+aGNsayk7Cj4gKwlyZXQgPSBkZXZtX2Nsa19i
dWxrX2dldF9hbGwocmdhLT5kZXYsICZyZ2EtPmNsa3MpOwo+ICsJaWYgKHJldCA8IDApIHsKClRo
aXMgY2hhbmdlcyB0aGUgYmVoYXZpb3Igc2luY2UgdGhlIGNhbGwgaXMgbm93IHN1Y2Nlc3NmdWwg
aWYgdGhlcmUgYXJlCm5vIGNsb2NrcyBzcGVjaWZpZWQgaW4gdGhlIGRldmljZSB0cmVlLiBJcyB0
aGlzIGFuIGludGVuZGVkIGNoYW5nZT8KCk1pY2hhZWwKCj4gKwkJZGV2X2VycihyZ2EtPmRldiwg
ImZhaWxlZCB0byBnZXQgY2xvY2tzXG4iKTsKPiArCQlyZXR1cm4gcmV0Owo+ICAJfQo+ICsJcmdh
LT5udW1fY2xrcyA9IHJldDsKPiAgCj4gIAlyZXR1cm4gMDsKPiAgfQo+IEBAIC05MzUsNyArODg2
LDcgQEAgc3RhdGljIGludCBfX21heWJlX3VudXNlZCByZ2FfcnVudGltZV9zdXNwZW5kKHN0cnVj
dCBkZXZpY2UgKmRldikKPiAgewo+ICAJc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhID0gZGV2X2dl
dF9kcnZkYXRhKGRldik7Cj4gIAo+IC0JcmdhX2Rpc2FibGVfY2xvY2tzKHJnYSk7Cj4gKwljbGtf
YnVsa19kaXNhYmxlX3VucHJlcGFyZShyZ2EtPm51bV9jbGtzLCByZ2EtPmNsa3MpOwo+ICAKPiAg
CXJldHVybiAwOwo+ICB9Cj4gQEAgLTk0NCw3ICs4OTUsNyBAQCBzdGF0aWMgaW50IF9fbWF5YmVf
dW51c2VkIHJnYV9ydW50aW1lX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gIHsKPiAgCXN0
cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+ICAKPiAtCXJl
dHVybiByZ2FfZW5hYmxlX2Nsb2NrcyhyZ2EpOwo+ICsJcmV0dXJuIGNsa19idWxrX3ByZXBhcmVf
ZW5hYmxlKHJnYS0+bnVtX2Nsa3MsIHJnYS0+Y2xrcyk7Cj4gIH0KPiAgCj4gIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZGV2X3BtX29wcyByZ2FfcG0gPSB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLmgKPiBpbmRleCA3MmEyOGIxMjBmYWJmLi4yZGIxMGFjZWNiNDA1IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCj4g
KysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKPiBAQCAtNiw2
ICs2LDcgQEAKPiAgI2lmbmRlZiBfX1JHQV9IX18KPiAgI2RlZmluZSBfX1JHQV9IX18KPiAgCj4g
KyNpbmNsdWRlIDxsaW51eC9jbGsuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2Rldmlj
ZS5oPgo+ICAjaW5jbHVkZSA8bWVkaWEvdmlkZW9idWYyLXY0bDIuaD4KPiAgI2luY2x1ZGUgPG1l
ZGlhL3Y0bDItY3RybHMuaD4KPiBAQCAtODEsOSArODIsOCBAQCBzdHJ1Y3Qgcm9ja2NoaXBfcmdh
IHsKPiAgCXN0cnVjdCBkZXZpY2UgKmRldjsKPiAgCXN0cnVjdCByZWdtYXAgKmdyZjsKPiAgCXZv
aWQgX19pb21lbSAqcmVnczsKPiAtCXN0cnVjdCBjbGsgKnNjbGs7Cj4gLQlzdHJ1Y3QgY2xrICph
Y2xrOwo+IC0Jc3RydWN0IGNsayAqaGNsazsKPiArCXN0cnVjdCBjbGtfYnVsa19kYXRhICpjbGtz
Owo+ICsJaW50IG51bV9jbGtzOwo+ICAJc3RydWN0IHJvY2tjaGlwX3JnYV92ZXJzaW9uIHZlcnNp
b247Cj4gIAo+ICAJLyogdmZkIGxvY2sgKi8KPiAKPiAtLSAKPiAyLjU0LjAKPiAKPiAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
