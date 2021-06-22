Return-Path: <SRS0=+Xhu=LQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 197C6C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 12:23:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CF30161351
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 12:23:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CF30161351
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ewZduLojN29XE5X5HhmPMS0LwUSHcIQi5303l5T4Qes=; b=rw9z8Nhfzv/CP1X/bYTM2QJjzp
	SMDm33cDIcbA9UrzK2L1znHZ9OcEc9aMuRLOr7NpcQSrVp8hzzRT62J/voqsVlKfi02WQTi94cg6g
	mA7Vvxba+Qc1h8gAs9MXje57vvfPFAfvbJ0XBuUDUDWqro6IxbEV/EVNj8NKgdcZJrvXiynk+hj27
	cdSd6mZeV5P+OHlzpJ9fqxWut2otTzJ7+UHylBO/LgHrvlQ/cf+6kJfHHX2WDGxmmtm32URMJP+L3
	jHyXMbWS9PykY4hvRLTws6xyh8rdaT3p2OeQ8qAfMK+MKOKP5cPP6I0DfHf/9tyNssmj6aQIcUkE4
	9C5iMzrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvfRP-0077q8-FV; Tue, 22 Jun 2021 12:23:43 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvfRC-0077ld-7L; Tue, 22 Jun 2021 12:23:31 +0000
Received: from [IPv6:2a01:e0a:4cb:a870:92ca:2af7:fb1:928] (unknown
 [IPv6:2a01:e0a:4cb:a870:92ca:2af7:fb1:928])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 63C7F1F4109B;
 Tue, 22 Jun 2021 13:23:18 +0100 (BST)
Subject: Re: [PATCH v3 1/8] media: hantro: Trace hevc hw cycles performance
 register
To: Ezequiel Garcia <ezequiel@collabora.com>, hverkuil@xs4all.nl,
 p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, festevam@gmail.com, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, emil.l.velikov@gmail.com, andrzej.p@collabora.com,
 jc@kynesim.co.uk, jernej.skrabec@gmail.com, nicolas@ndufresne.ca
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210618131526.566762-1-benjamin.gaignard@collabora.com>
 <20210618131526.566762-2-benjamin.gaignard@collabora.com>
 <418311dac48d3a29b4fe9e363f7d4e82c360f586.camel@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <41682f40-3b5e-e21c-d75e-f57f8f3310da@collabora.com>
Date: Tue, 22 Jun 2021 14:23:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <418311dac48d3a29b4fe9e363f7d4e82c360f586.camel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_052330_413525_6DC4A6F6 
X-CRM114-Status: GOOD (  23.55  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

CkxlIDE4LzA2LzIwMjEgw6AgMjA6NTgsIEV6ZXF1aWVsIEdhcmNpYSBhIMOpY3JpdMKgOgo+IEhp
IEJlbmphbWluLAo+Cj4gT24gRnJpLCAyMDIxLTA2LTE4IGF0IDE1OjE1ICswMjAwLCBCZW5qYW1p
biBHYWlnbmFyZCB3cm90ZToKPj4gQWZ0ZXIgZWFjaCBoZXZjIGRlY29kZWQgZnJhbWUgdHJhY2Ug
dGhlIGhhcmR3YXJlIHBlcmZvcm1hbmNlLgo+PiBJdCBwcm92aWRlcyB0aGUgbnVtYmVyIG9mIGh3
IGN5Y2xlcyBzcGVuZCBwZXIgZGVjb2RlZCBtYWNyb2Jsb2NrLgo+Pgo+IFBsZWFzZSBhZGQgc29t
ZSBkb2N1bWVudGF0aW9uIGFib3V0IGhvdyB0aGVzZSBhcmUgc3VwcG9zZWQKPiB0byBiZSB1c2Vk
LiBJdCB3aWxsIGJlIGVhc2llciB0byBkaXNjdXNzIGFmdGVyIHNlZWluZwo+IHRoaW5ncyBpbiBh
Y3RpaW9uLgo+Cj4gQSBnb29kIHBsYWNlIGZvciB0aGUgZG9jdW1lbnRhdGlvbiB3b3VsZCBiZToK
Pgo+IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L2FkbWluLWd1aWRlL21l
ZGlhL3Y0bC1kcml2ZXJzLmh0bWwKCk9rIHRoYXQgd2lsbCBiZSBpbiB2NAoKPgo+IFsuLl0KPj4g
QEAgLTIyLDYgKzIzLDIxIEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBoYW50cm9fd3JpdGVfYWRkcihz
dHJ1Y3QgaGFudHJvX2RldiAqdnB1LAo+PiAgwqDCoMKgwqDCoMKgwqDCoHZkcHVfd3JpdGUodnB1
LCBhZGRyICYgMHhmZmZmZmZmZiwgb2Zmc2V0KTsKPj4gIMKgfQo+PiAgIAo+PiArdm9pZCBoYW50
cm9fZzJfaGV2Y19kZWNfZG9uZShzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4KQo+IEknbSB3b3JyaWVk
IGFib3V0IHRoZSBydW50aW1lIGNvc3QgdGhpcyB3b3VsZCBoYXZlLgo+Cj4gSSBzZWUgb3RoZXIg
ZHJpdmVycyAoaTkxNSwgcGFuZnJvc3QpIHNlZW0gdG8gaGF2ZSBhbiBpb2N0bAo+IHRvIGVuYWJs
ZSB0aGUgcGVyZiBjb3VudGVycy4KPgo+IFBlcmhhcHMgd2UgZG9uJ3QgbmVlZCBhbiBpb2N0bCwg
YnV0IGEgbW9kdWxlIHBhcmFtIHdvdWxkIGJlIGVub3VnaAo+IGZvciBub3cuCgpZb3UgY2FuIGJl
IHJlYXNzdXJlZCB0aGUgb3ZlcmhlYWQgb2YgdHJhY2VzIHBvaW50cyBpcyB2ZXJ5IGxvdyBoYXMg
ZXhwbGFpbmVkCmluIHRoaXMgYXJ0aWNsZTogaHR0cHM6Ly9sd24ubmV0L0FydGljbGVzLzMzMDQw
Mi8KCj4KPj4gK3sKPj4gK8KgwqDCoMKgwqDCoMKgY29uc3Qgc3RydWN0IGhhbnRyb19oZXZjX2Rl
Y19jdHJscyAqY3RybHMgPSAmY3R4LT5oZXZjX2RlYy5jdHJsczsKPj4gK8KgwqDCoMKgwqDCoMKg
Y29uc3Qgc3RydWN0IHY0bDJfY3RybF9oZXZjX3NwcyAqc3BzID0gY3RybHMtPnNwczsKPj4gK8Kg
wqDCoMKgwqDCoMKgc3RydWN0IGhhbnRyb19kZXYgKnZwdSA9IGN0eC0+ZGV2Owo+PiArwqDCoMKg
wqDCoMKgwqB1MzIgaHdfY3ljbGVzID0gMDsKPj4gK8KgwqDCoMKgwqDCoMKgdTMyIG1icyA9IChz
cHMtPnBpY193aWR0aF9pbl9sdW1hX3NhbXBsZXMgKgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBzcHMtPnBpY19oZWlnaHRfaW5fbHVtYV9zYW1wbGVzKSA+PiA4Owo+PiAr
Cj4+ICvCoMKgwqDCoMKgwqDCoGlmIChtYnMpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBod19jeWNsZXMgPSB2ZHB1X3JlYWQodnB1LCBHMl9IV19QRVJGT1JNQU5DRSkgLyBtYnM7
Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgdHJhY2VfaGFudHJvX2hldmNfcGVyZihjdHgsIGh3X2N5
Y2xlcyk7Cj4+ICt9Cj4+ICsKPj4KPiBbLi5dCj4+ICsKPj4gK1RSQUNFX0VWRU5UKGhhbnRyb19o
ZXZjX3BlcmYsCj4+ICvCoMKgwqDCoMKgwqDCoFRQX1BST1RPKHN0cnVjdCBoYW50cm9fY3R4ICpj
dHgsIHUzMiBod19jeWNsZXMpLAo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoFRQX0FSR1MoY3R4LCBo
d19jeWNsZXMpLAo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoFRQX1NUUlVDVF9fZW50cnkoCj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBfX2ZpZWxkKGludCwgbWlub3IpCj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBfX2ZpZWxkKHUzMiwgaHdfY3ljbGVzKQo+PiArwqDC
oMKgwqDCoMKgwqApLAo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoFRQX2Zhc3RfYXNzaWduKAo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgX19lbnRyeS0+bWlub3IgPSBjdHgtPmZoLnZk
ZXYtPm1pbm9yOwo+IFRyYWNraW5nIHBlcmZvcm1hbmNlIHBlciBtaW5vciBkb2Vzbid0IHNlZW0g
dXNlZnVsLAo+IHdlJ2QgbGlrZSB0byB0cmFjayBwZXItZmQgKGkuZS4gcGVyIGNvbnRleHQpLgoK
VGhpcyBwYXJ0IG9mIHRoZSBkcml2ZXIgZG9lc24ndCBrbm93IGZvciB3aGljaCBmZCB0aGUgZGVj
b2Rpbmcgam9iIGlzIGRvbmUKc28gaW1wb3NzaWJsZSB0byBhZGQgaXQgdGhlcmUuCgpSZWdhcmRz
LApCZW5qYW1pbgoKPgo+IFRoYW5rcywKPiBFemVxdWllbAo+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
