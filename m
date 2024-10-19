Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6BD2D3C905
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Oct 2024 09:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nj+MYoL/VqSWTxaMYhwkcqVHZO9pjTDIshj4ndPbBf0=; b=BB0OqCXWe+OFI8
	lBnm0qPBa5YRdhMJZN8cmYqxmJFIjn9U3VCjnP6b2ATSStLMrTcuNEsZUpufH05f+E7hrZreHxGUO
	d56LeIxk1TUzJOM/RuziQ5Qbnxym3seyqOoFzx6Bq10MHs55XVYNkYhbb2V/bcXuEv6NLtQrJQZ+9
	jZXCHj/MmAJ2HCRidSe2tYZt2RzBOlKj+4EpDm+e4uGjB9miOjuUwyOYVIjYmoy/U9V/2QKWfXo1j
	ojUp11naPpEIraCjOzMEkZMppjvxJWraSFWicb5hRfganZlGNfZnbhPI8R2WHfkORD/WfZ1kqvlmy
	NT4NKoe/ACVKMF2/QOkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t25ku-00000002yw5-3TaP;
	Sat, 19 Oct 2024 09:28:16 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t25jP-00000002yl7-33kA;
	Sat, 19 Oct 2024 09:26:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729330001;
	bh=A12LOSwmWFWHo6OAqeCHBFM788woPfeCycyMJZEpZNE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PE1db8QjIBupkMdNIrG4YsYoZRKa5J9xhd2j6Omop7Dd3oakQwCE1QFjAR06nef/i
	 Kgypx0zlrxxotC9eqe98yc/UBsoIdRdWWGiHg9IZybMYj8ZWvN/m+IIBFRRqnfVbiO
	 8Zu+XAugPRAJpMLLpQmxyQJYNiG0XBOkAUeCDHhQCRL1aj6mfoBQU0HyIAP9mKxgC7
	 2cFMnp6AxO/r3Q3l29Z5aSzxHGVgbCVSjX8WC6sc4cptQ9bkEi8a5rQfg+rnOeyetb
	 TCQs/f7/yB/9T457Y5hh5vZXOQkTlPGyW3MJtKhiOIJnkUr7+dNJ9ULEJNYK8zPTjb
	 +gfPNC7tYOmCg==
Received: from [192.168.1.90] (unknown [188.24.146.62])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7981017E124E;
	Sat, 19 Oct 2024 11:26:41 +0200 (CEST)
Message-ID: <a8a29b83-b76a-42a7-a383-6b82731d13fd@collabora.com>
Date: Sat, 19 Oct 2024 12:26:41 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH UNTESTED 5/5] arm64: dts: rockchip: Enable HDMI0 on
 rock-5a
To: FUKAUMI Naoki <naoki@radxa.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Luis de Arquer <ldearquer@gmail.com>, Alexandre ARNOUD <aarnoud@me.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241019-rk3588-hdmi0-dt-v1-0-bd8f299feacd@collabora.com>
 <20241019-rk3588-hdmi0-dt-v1-5-bd8f299feacd@collabora.com>
 <6FF0CF3856870371+bbebd66b-e19c-40c2-863b-1d6c5c30c461@radxa.com>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <6FF0CF3856870371+bbebd66b-e19c-40c2-863b-1d6c5c30c461@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_022643_937429_5B86D465 
X-CRM114-Status: GOOD (  15.05  )
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

T24gMTAvMTkvMjQgNzo0MiBBTSwgRlVLQVVNSSBOYW9raSB3cm90ZToKPiBIaSwKPiAKPiBPbiAx
MC8xOS8yNCAwNjozOSwgQ3Jpc3RpYW4gQ2lvY2FsdGVhIHdyb3RlOgo+PiBBZGQgdGhlIG5lY2Vz
c2FyeSBEVCBjaGFuZ2VzIHRvIGVuYWJsZSBIRE1JMCBvbiBSb2NrIDVBLgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEu
Y29tPgo+PiAtLS0KPj4gwqAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJv
Y2stNWEuZHRzIHwgNDcgKysrKysrKysrKysrKysKPj4gKysrKysrKysrKwo+PiDCoCAxIGZpbGUg
Y2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNWEuZHRzIGIvYXJjaC8KPj4gYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4cy1yb2NrLTVhLmR0cwo+PiBpbmRleAo+PiA4N2ZjZThkOWE5
NjRjZDUzZDE3OWNlMjE0YWUxYzBmZjUwNWEyZGNlLi4xZmQxMjIyNTBiMGM3MGU3MjliN2EyMjM5
YWI1ZjI4OGE2Mzg3YTcwIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OHMtcm9jay01YS5kdHMKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1ODhzLXJvY2stNWEuZHRzCj4+IEBAIC01LDYgKzUsNyBAQAo+PiDCoCAjaW5jbHVk
ZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+Cj4+IMKgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9s
ZWRzL2NvbW1vbi5oPgo+PiDCoCAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcGluY3RybC9yb2NrY2hp
cC5oPgo+PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3NvYy9yb2NrY2hpcCx2b3AyLmg+Cj4+IMKg
ICNpbmNsdWRlICJyazM1ODhzLmR0c2kiCj4+IMKgIMKgIC8gewo+PiBAQCAtMzUsNiArMzYsMTcg
QEAgY2hvc2VuIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHN0ZG91dC1wYXRoID0gInNlcmlhbDI6
MTUwMDAwMG44IjsKPj4gwqDCoMKgwqDCoCB9Owo+PiDCoCArwqDCoMKgIGhkbWkwLWNvbiB7Cj4+
ICvCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gImhkbWktY29ubmVjdG9yIjsKPj4gK8KgwqDC
oMKgwqDCoMKgIHR5cGUgPSAiYSI7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIHBvcnQgewo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBoZG1pMF9jb25faW46IGVuZHBvaW50IHsKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZW1vdGUtZW5kcG9pbnQgPSA8JmhkbWkwX291dF9j
b24+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+PiArwqDCoMKgwqDCoMKgwqAgfTsK
Pj4gK8KgwqDCoCB9Owo+PiArCj4+IMKgwqDCoMKgwqAgbGVkcyB7Cj4+IMKgwqDCoMKgwqDCoMKg
wqDCoCBjb21wYXRpYmxlID0gImdwaW8tbGVkcyI7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBwaW5j
dHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiBAQCAtMjk2LDYgKzMwOCwyNiBAQCAmZ21hYzFfcmdt
aWlfY2xrCj4+IMKgwqDCoMKgwqAgc3RhdHVzID0gIm9rYXkiOwo+PiDCoCB9Owo+PiDCoCArJmhk
bWkwIHsKPj4gK8KgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4+ICt9Owo+IAo+IG9uIFJPQ0sgNUEs
IEhQRCBwaW4gaXMgZGlmZmVyZW50Lgo+IAo+IGhvdyBhYm91dCB0aGlzPwo+IAo+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01YS5kdHMgYi9h
cmNoLwo+IGFybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01YS5kdHMKPiBpbmRl
eCBmNDI5M2Q2NjYzNjguLjYwMDAyOGZjYWQ4OCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01YS5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01YS5kdHMKPiBAQCAtMzE0LDYgKzMxNCw5IEBA
ICZnbWFjMV9yZ21paV9jbGsKPiDCoH07Cj4gCj4gwqAmaGRtaTAgewo+ICvCoMKgwqAgcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArwqDCoMKgIHBpbmN0cmwtMCA9IDwmaGRtaW0wX3R4MF9j
ZWMgJmhkbWltMV90eDBfaHBkCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmaGRtaW0wX3R4
MF9zY2wgJmhkbWltMF90eDBfc2RhPjsKPiDCoMKgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4gwqB9
Owo+IAoKVGhhbmtzIGZvciBmaWd1cmluZyB0aGlzIG91dCEKClJlZ2FyZHMsCkNyaXN0aWFuCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
