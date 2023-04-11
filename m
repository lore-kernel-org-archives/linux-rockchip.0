Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DA6BC77B6F
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Apr 2023 13:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BIVCZc7bdqACBuVu3BAI1uTE0TDZ4lSwfCaoRRAUZaA=; b=JWtIOsce4sM5nj
	SMuyLJDt2AAs9Dad0qZNdvluReRlY0/qrOBn7v1fb56KzwciuM90nOa/1OU0TRCeGqvE6mDbsmtft
	BxHOlKDpJoMfv6e5OjUmGD7cSPG6gNZpoC+MPm7yH7mv/Znkhuhu/4wrC3BvhggeTGLFIbBhlfLCZ
	yQviN6uK5gA/zG+5+ZLhVBvnCNV5JCiH41pk4mPqXxDODXqLEEbtewXCVTqevUYmG6NS9Z6hkTRXZ
	guKgnYf/TaN1qFVbCJFbAjIhqubGON/vWE8qWd3MW4ojmFr+7yDgEpXWKUMJJrlg+ES3HmCl31PTG
	SJ2YgsKuND6mIED6HKFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmEDO-0008PO-05;
	Tue, 11 Apr 2023 13:39:18 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmEDJ-0008O1-1a;
	Tue, 11 Apr 2023 13:39:15 +0000
Received: from [IPV6:2a01:e0a:120:3210:5d75:6627:8ce:212b] (unknown [IPv6:2a01:e0a:120:3210:5d75:6627:8ce:212b])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 33FFA66031EA;
	Tue, 11 Apr 2023 14:39:09 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681220349;
	bh=IvXOXcWl9k7MjrKoovzSZQqL1dSbRoMytuSG9bvfh8c=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=l0T16ZHa0JeqG1V9OEuyOkkJP++qoO3kbPXzWu47vcwguWCo0L2qyY3vteAant7ij
	 SAw+Oc1Nv2QRnFRZYLLvL2TcyIt/n0Xk9AoVOLC5hQ1fs09dkr6mBenxxO2vPYVTTg
	 ekLVlobRUgAMvLWc4NOpXg4++Ds+HxIAzg1QTubkWRfC5ff/VT8NUU5TOgT3UyOiAx
	 kSkgEM9HpUr6dlQ++KUhJPupDgh7wK+3Vrg5aUatOEwdQGtIIAOTboPZ8HyimXpqWE
	 pyK+Qd0slLFQTGNNyrkHowpXte+xqmhpNfnojVPqtIFVrO1w+dtS2D6YmjOSJPuZ08
	 j3kGPLa1cHauQ==
Message-ID: <27722665-a7b9-0d49-443d-3da2a20405de@collabora.com>
Date: Tue, 11 Apr 2023 15:39:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v5 09/13] media: verisilicon: Add Rockchip AV1 decoder
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230330154043.1250736-1-benjamin.gaignard@collabora.com>
 <20230330154043.1250736-10-benjamin.gaignard@collabora.com>
 <42eefb17-6121-9cd0-4616-4af3045ec087@xs4all.nl>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <42eefb17-6121-9cd0-4616-4af3045ec087@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_063913_893475_394330C7 
X-CRM114-Status: GOOD (  21.14  )
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

CkxlIDExLzA0LzIwMjMgw6AgMTQ6MzMsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IEhpIEJl
bmphbWluLAo+Cj4gT24gMzAvMDMvMjAyMyAxNzo0MCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6
Cj4+IEltcGxlbWVudCBBVjEgc3RhdGVsZXNzIGRlY29kZXIgZm9yIHJvY2tjaGlwIFZQVTk4MS4K
Pj4gSXQgZGVjb2RlIDggYW5kIDEwIGJpdHMgQVYxIGJpdHN0cmVhbXMuCj4+IEFWMSBzY2FsaW5n
IGZlYXR1cmUgaXMgZG9uZSBieSB0aGUgcG9zdHByb2Nlc3Nvci4KPj4KPj4gU2lnbmVkLW9mZi1i
eTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+
IC0tLQo+PiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vTWFrZWZpbGUgICB8
ICAgIDEgKwo+PiAgIC4uLi9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faHcuaCAg
ICB8ICAgNjQgKy0KPj4gICAuLi4vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9k
ZWMuYyAgfCAyMDI0ICsrKysrKysrKysrKysrKysrCj4+ICAgLi4uL3ZlcmlzaWxpY29uL3JvY2tj
aGlwX3ZwdTk4MV9yZWdzLmggICAgICAgIHwgIDQ3NyArKysrCj4+ICAgNCBmaWxlcyBjaGFuZ2Vk
LCAyNTY0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+ICAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3
X2F2MV9kZWMuYwo+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9yZWdzLmgKPj4KPiA8c25pcD4KPgo+PiArc3Rh
dGljIHZvaWQgcm9ja2NoaXBfdnB1OTgxX2F2MV9kZWNfc2V0X3RpbGVfaW5mbyhzdHJ1Y3QgaGFu
dHJvX2N0eCAqY3R4KQo+PiArewo+PiArCXN0cnVjdCBoYW50cm9fYXYxX2RlY19od19jdHggKmF2
MV9kZWMgPSAmY3R4LT5hdjFfZGVjOwo+PiArCXN0cnVjdCBoYW50cm9fYXYxX2RlY19jdHJscyAq
Y3RybHMgPSAmYXYxX2RlYy0+Y3RybHM7Cj4+ICsJc3RydWN0IHY0bDJfYXYxX3RpbGVfaW5mbyB0
aWxlX2luZm8gPSBjdHJscy0+ZnJhbWUtPnRpbGVfaW5mbzsKPiBJIGdldCB0aGlzIHdhcm5pbmc6
Cj4KPiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9o
d19hdjFfZGVjLmM6IEluIGZ1bmN0aW9uICdyb2NrY2hpcF92cHU5ODFfYXYxX2RlY19zZXRfdGls
ZV9pbmZvJzoKPiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3Zw
dTk4MV9od19hdjFfZGVjLmM6NjM1OjE6IHdhcm5pbmc6IHRoZSBmcmFtZSBzaXplIG9mIDEwODAg
Ynl0ZXMgaXMgbGFyZ2VyIHRoYW4gMTAyNCBieXRlcyBbLVdmcmFtZS1sYXJnZXItdGhhbj1dCj4g
ICAgNjM1IHwgfQo+ICAgICAgICB8IF4KPgo+IFRoZSBjYXVzZSBpcyB0aGlzIHRpbGVfaW5mbyBz
dHJ1Y3QgdGhhdCBpcyBvbiB0aGUgc3RhY2suCj4KPiBEb2VzIHRoaXMgaGF2ZSB0byBiZSBhIGNv
cHk/IE9yIGNhbiBpdCBiZSBhIHBvaW50ZXIgdG8gY3RybHMtPmZyYW1lLT50aWxlX2luZm8/CgpV
c2luZyBhIHBvaW50ZXIgaXMgYSBnb29kIHNvbHV0aW9uLgpUaGFua3MgZm9yIHRoZSBmaW5kaW5n
LgoKSSB3aWxsIGluY2x1ZGUgdGhhdCBpbiB2Ni4KClJlZ2FyZHMsCkJlbmphbWluCgo+Cj4+ICsJ
Y29uc3Qgc3RydWN0IHY0bDJfY3RybF9hdjFfdGlsZV9ncm91cF9lbnRyeSAqZ3JvdXBfZW50cnkg
PQo+PiArCSAgICBjdHJscy0+dGlsZV9ncm91cF9lbnRyeTsKPj4gKwlpbnQgY29udGV4dF91cGRh
dGVfeSA9Cj4+ICsJICAgIHRpbGVfaW5mby5jb250ZXh0X3VwZGF0ZV90aWxlX2lkIC8gdGlsZV9p
bmZvLnRpbGVfY29sczsKPj4gKwlpbnQgY29udGV4dF91cGRhdGVfeCA9Cj4+ICsJICAgIHRpbGVf
aW5mby5jb250ZXh0X3VwZGF0ZV90aWxlX2lkICUgdGlsZV9pbmZvLnRpbGVfY29sczsKPj4gKwlp
bnQgY29udGV4dF91cGRhdGVfdGlsZV9pZCA9Cj4+ICsJICAgIGNvbnRleHRfdXBkYXRlX3ggKiB0
aWxlX2luZm8udGlsZV9yb3dzICsgY29udGV4dF91cGRhdGVfeTsKPj4gKwl1OCAqZHN0ID0gYXYx
X2RlYy0+dGlsZV9pbmZvLmNwdTsKPj4gKwlzdHJ1Y3QgaGFudHJvX2RldiAqdnB1ID0gY3R4LT5k
ZXY7Cj4+ICsJaW50IHRpbGUwLCB0aWxlMTsKPj4gKwo+PiArCW1lbXNldChkc3QsIDAsIGF2MV9k
ZWMtPnRpbGVfaW5mby5zaXplKTsKPj4gKwo+PiArCWZvciAodGlsZTAgPSAwOyB0aWxlMCA8IHRp
bGVfaW5mby50aWxlX2NvbHM7IHRpbGUwKyspIHsKPj4gKwkJZm9yICh0aWxlMSA9IDA7IHRpbGUx
IDwgdGlsZV9pbmZvLnRpbGVfcm93czsgdGlsZTErKykgewo+PiArCQkJaW50IHRpbGVfaWQgPSB0
aWxlMSAqIHRpbGVfaW5mby50aWxlX2NvbHMgKyB0aWxlMDsKPj4gKwkJCXUzMiBzdGFydCwgZW5k
Owo+PiArCQkJdTMyIHkwID0KPj4gKwkJCSAgICB0aWxlX2luZm8uaGVpZ2h0X2luX3Nic19taW51
c18xW3RpbGUxXSArIDE7Cj4+ICsJCQl1MzIgeDAgPSB0aWxlX2luZm8ud2lkdGhfaW5fc2JzX21p
bnVzXzFbdGlsZTBdICsgMTsKPj4gKwo+PiArCQkJLy8gdGlsZSBzaXplIGluIFNCIHVuaXRzICh3
aWR0aCxoZWlnaHQpCj4+ICsJCQkqZHN0KysgPSB4MDsKPj4gKwkJCSpkc3QrKyA9IDA7Cj4+ICsJ
CQkqZHN0KysgPSAwOwo+PiArCQkJKmRzdCsrID0gMDsKPj4gKwkJCSpkc3QrKyA9IHkwOwo+PiAr
CQkJKmRzdCsrID0gMDsKPj4gKwkJCSpkc3QrKyA9IDA7Cj4+ICsJCQkqZHN0KysgPSAwOwo+PiAr
Cj4+ICsJCQkvLyB0aWxlIHN0YXJ0IHBvc2l0aW9uCj4+ICsJCQlzdGFydCA9IGdyb3VwX2VudHJ5
W3RpbGVfaWRdLnRpbGVfb2Zmc2V0IC0gZ3JvdXBfZW50cnlbMF0udGlsZV9vZmZzZXQ7Cj4+ICsJ
CQkqZHN0KysgPSBzdGFydCAmIDI1NTsKPj4gKwkJCSpkc3QrKyA9IChzdGFydCA+PiA4KSAmIDI1
NTsKPj4gKwkJCSpkc3QrKyA9IChzdGFydCA+PiAxNikgJiAyNTU7Cj4+ICsJCQkqZHN0KysgPSAo
c3RhcnQgPj4gMjQpICYgMjU1Owo+PiArCj4+ICsJCQkvLyAjIG9mIGJ5dGVzIGluIHRpbGUgZGF0
YQo+PiArCQkJZW5kID0gc3RhcnQgKyBncm91cF9lbnRyeVt0aWxlX2lkXS50aWxlX3NpemU7Cj4+
ICsJCQkqZHN0KysgPSBlbmQgJiAyNTU7Cj4+ICsJCQkqZHN0KysgPSAoZW5kID4+IDgpICYgMjU1
Owo+PiArCQkJKmRzdCsrID0gKGVuZCA+PiAxNikgJiAyNTU7Cj4+ICsJCQkqZHN0KysgPSAoZW5k
ID4+IDI0KSAmIDI1NTsKPj4gKwkJfQo+PiArCX0KPj4gKwo+PiArCWhhbnRyb19yZWdfd3JpdGUo
dnB1LCAmYXYxX211bHRpY29yZV9leHBlY3RfY29udGV4dF91cGRhdGUsCj4+ICsJCQkgISEoY29u
dGV4dF91cGRhdGVfeCA9PSAwKSk7Cj4+ICsJaGFudHJvX3JlZ193cml0ZSh2cHUsICZhdjFfdGls
ZV9lbmFibGUsCj4+ICsJCQkgISEoKHRpbGVfaW5mby50aWxlX2NvbHMgPiAxKSB8fCAodGlsZV9p
bmZvLnRpbGVfcm93cyA+IDEpKSk7Cj4+ICsJaGFudHJvX3JlZ193cml0ZSh2cHUsICZhdjFfbnVt
X3RpbGVfY29sc184aywgdGlsZV9pbmZvLnRpbGVfY29scyk7Cj4+ICsJaGFudHJvX3JlZ193cml0
ZSh2cHUsICZhdjFfbnVtX3RpbGVfcm93c184aywgdGlsZV9pbmZvLnRpbGVfcm93cyk7Cj4+ICsJ
aGFudHJvX3JlZ193cml0ZSh2cHUsICZhdjFfY29udGV4dF91cGRhdGVfdGlsZV9pZCwKPj4gKwkJ
CSBjb250ZXh0X3VwZGF0ZV90aWxlX2lkKTsKPj4gKwloYW50cm9fcmVnX3dyaXRlKHZwdSwgJmF2
MV90aWxlX3RyYW5zcG9zZSwgMSk7Cj4+ICsJaWYgKHJvY2tjaGlwX3ZwdTk4MV9hdjFfdGlsZV9s
b2cyKHRpbGVfaW5mby50aWxlX2NvbHMpIHx8Cj4+ICsJICAgIHJvY2tjaGlwX3ZwdTk4MV9hdjFf
dGlsZV9sb2cyKHRpbGVfaW5mby50aWxlX3Jvd3MpKQo+PiArCQloYW50cm9fcmVnX3dyaXRlKHZw
dSwgJmF2MV9kZWNfdGlsZV9zaXplX21hZywgdGlsZV9pbmZvLnRpbGVfc2l6ZV9ieXRlcyAtIDEp
Owo+PiArCWVsc2UKPj4gKwkJaGFudHJvX3JlZ193cml0ZSh2cHUsICZhdjFfZGVjX3RpbGVfc2l6
ZV9tYWcsIDMpOwo+PiArCj4+ICsJaGFudHJvX3dyaXRlX2FkZHIodnB1LCBBVjFfVElMRV9CQVNF
LCBhdjFfZGVjLT50aWxlX2luZm8uZG1hKTsKPj4gK30KPiBSZWdhcmRzLAo+Cj4gCUhhbnMKPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
