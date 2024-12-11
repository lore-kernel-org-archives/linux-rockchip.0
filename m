Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1C90E7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 06:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cz3vk/On6ByeZjPNL4zJYGU205GUpYJ+oAXd0PHs1QU=; b=LOnuWzfojkrHTO
	p2zdEwclI6tbDoN0fDEWawIoSICvPV60Dx4ULgvD1YcViTfOuvJ+UzX7uFsD7ICzP0bp2U/rAznUz
	Te9MhKoaHcdMoDYPsxkNODAP+jPsNkjN4EGUdehoT/rEEXjTdgHVsXUp8p/qMHPJNMDzZRK2ucNvB
	3L3G250gKpE+guW76iO3m0UmPL+JN2705H+ubSwfrjRc9/32edeFO6N40HSvTtTdaGTh3oByQ3+X+
	MEYDBsQf4jtDiLnI52MuKDfRWPmYu8aYc7V3VVqjkZYvEjNRbByyAASWlcGdBNmc08D7XCH07o9d1
	BDtQksWDHRzxjHkBpZCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLGTT-0000000Dxn2-0TRr;
	Wed, 11 Dec 2024 06:45:31 +0000
Received: from smtpbgeu1.qq.com ([52.59.177.22])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLGTM-0000000Dxm4-24tD
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Dec 2024 06:45:29 +0000
X-QQ-mid: bizesmtpip2t1733899481taganfs
X-QQ-Originating-IP: tpkQmNVQxR3dRVrRmzOKQtyi/1JHE+2mRyLL+ZjgCrg=
Received: from [IPV6:240f:10b:7440:1:b238:648b ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 11 Dec 2024 14:44:36 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13522001219215429364
Message-ID: <FE22A7AEB0707DE7+903efcab-b291-4a12-a9a5-ba1cc3658016@radxa.com>
Date: Wed, 11 Dec 2024 15:44:36 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: arm: rockchip: add Radxa ROCK 5C Lite
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, macromorgan@hotmail.com, jonas@kwiboo.se,
 andyshrk@163.com, liujianfeng1994@gmail.com, tim@feathertop.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20241211060936.57452-1-naoki@radxa.com>
 <c6ba70f1681bb635190e9452ecb22d59@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <c6ba70f1681bb635190e9452ecb22d59@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: Mm/Yx8ZY6QnDP4UcM5U5HndmKWWzuZ0GYlWfdvdxKXYrS0RY6tyt4ViT
	FLAZy96jnYJ6iLQHLWM6vCYu2lcAk3GhtxULYnYpkDLJfAwioNSHzdh395o1yFiUWFILsog
	NHrQzheyOllqlw4K7B0PDvl6WrWQtQKoQbEXZLRiZ+y4dphInNhWTS4mvbeHfHYjsBYVHrF
	PQRq8VtYbB4jNq1lQzOWG7sTDVOxVwhxq8sdeOPZK87kc6veacp2LVdZOF+k7tBorVV/7vu
	wGsOJQaCz7pfhd2W4OF1Py26GBzHXYn2KNCOk8qc7h2pHxT/TMN4ljz9ogX04ALGVB5kypD
	xjjJ1e/qpnOlZpT+ex0z4p0CjJksqDnnelDPBtaSS7NG2Oa1N+0GQP31sq8SmHS1asP1UKi
	1FS4MeJXUDrinsQrV5RMklwjvSgSw4v7KBVtFJCQ0xZlL34Kw2Z7Y6/Qf4tEhx28Wai1Wxx
	xR5SdTBuv5M/XDrT+nz6rxSKjuLEMC8px3yQ0lXbHFOPEph/rnCkX9Z9NyiIIGlY4JviyOd
	dAYec/8Jc7sAo5hbN6DmSzig8rn0OYonT91m7fOoxn27vz5oqIYzu5Qg6eXUi5qErvChYuu
	jwkUaEpvlGyRah8BTMSPFHb1nIHrPzutsKO/mB2IwXd/1i12r7cOpQsfru+ivSHFXro4Oi+
	labVc3itfkT685Gm3XCyssZO6Pdt9VgAE/D9IFvzMYS+z6u991UoiBW8JnN7aPPdi9/oHR5
	bt0hbcwYCOJS9rtCv+tHWZrjKMlh278bCdgwi41hd/jCUBuGAT7tE+imqKzaCJsTGgAfcPG
	2pRGZQT+hdK/0i3igC5kE92Op/28OgCKjkjs9sq2v2zHuOdyqnodwhPwhfQ08yNGfggC7xC
	kXOQgRuymD++Xr7XmXkKivAyO0ssle535kKrEbF4SwGBtmgtFxD5vIexFkmdOaTXFrYSP86
	7GE4UPfgRaBzxOFEUC+Wonr+rQQuBmqZ4B+g=
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_224525_025110_E4D68522 
X-CRM114-Status: GOOD (  13.57  )
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

SGkgRHJhZ2FuLAoKT24gMTIvMTEvMjQgMTU6MzYsIERyYWdhbiBTaW1pYyB3cm90ZToKPiBIZWxs
byBGdWthdW1pLAo+IAo+IE9uIDIwMjQtMTItMTEgMDc6MDksIEZVS0FVTUkgTmFva2kgd3JvdGU6
Cj4+IFRoZSBSYWR4YSBST0NLIDVDIExpdGUgdXNlcyBhIGRpZmZlcmVudCBTb0MgKFJLMzU4Mikg
Y29tcGFyZWQgdG8gdGhlCj4+IFJhZHhhIFJPQ0sgNUMgKFJLMzU4OFMyKSwgYnV0IHRoZSB0d28g
YXJlIGNvbXBhdGlibGUgZnJvbSBhIHNvZnR3YXJlCj4+IHBlcnNwZWN0aXZlLgo+Pgo+PiBGaXhl
czogZGY0ZTA4YTVlZWQxICgiZHQtYmluZGluZ3M6IGFybTogcm9ja2NoaXA6IGFkZCBSYWR4YSBS
T0NLIDVDIikKPj4gU2lnbmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29t
Pgo+PiAtLS0KPj4gwqBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tj
aGlwLnlhbWwgfCAyICstCj4+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPj4gaW5kZXggNzUzMTk5YTEyOTIzLi4yMjU0ZWUwNzkw
OTQgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0v
cm9ja2NoaXAueWFtbAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
YXJtL3JvY2tjaGlwLnlhbWwKPj4gQEAgLTg5NSw3ICs4OTUsNyBAQCBwcm9wZXJ0aWVzOgo+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiByYWR4YSxyb2NrLTViCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzU4OAo+Pgo+PiAtwqDCoMKgwqDCoCAtIGRl
c2NyaXB0aW9uOiBSYWR4YSBST0NLIDVDCj4+ICvCoMKgwqDCoMKgIC0gZGVzY3JpcHRpb246IFJh
ZHhhIFJPQ0sgNUMvNUMgTGl0ZQo+PiDCoMKgwqDCoMKgwqDCoMKgIGl0ZW1zOgo+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAtIGNvbnN0OiByYWR4YSxyb2NrLTVjCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzU4OHMKPiAKPiBJIHRoaW5rIGl0IHdvdWxkIGJlIGJl
dHRlciB0byB1c2UgInJvY2tjaGlwLHJrMzU4MiIgaGVyZSwgdG8gYWxsb3cKPiB1cyB0byBwb3Nz
aWJseSB1c2UgdGhhdCBpbmZvcm1hdGlvbiBsYXRlci7CoCBGb3IgZXhhbXBsZSwgd2UgbWlnaHQK
PiB3YW50IHRvIGJlIGFibGUgdG8gcmVjb2duaXplIFJLMzU4Mi1iYXNlZCBib2FyZHMgaW4gVS1C
b290IHdpdGhvdXQKPiB0aGUgbmVlZCB0byBsb29rIGludG8gdGhlIGUtZnVzZXMgYXQgc29tZSBw
b2ludCwgZm9yIHdoaWNoIHB1cnBvc2UKPiBoYXZpbmcgYSBjbGVhciBkZXNpZ25hdG9yIGluIHRo
ZSBEVCB3b3VsZCBmaXQgcGVyZmVjdGx5LgoKSXQgbWF5IGJlIG9rYXkgdG8gaW50cm9kdWNlICJy
b2NrY2hpcCxyazM1ODIiLCBidXQgcmVhZGluZyBlLWZ1c2UgaXMgCnN0aWxsIHJlcXVpcmVkIGlu
IFUtQm9vdCBiZWNhdXNlIHdoaWNoIHVuaXQgKGNwdSBjb3JlWCwgZ3B1LCBldGMpIGlzIApicm9r
ZW4gY2Fubm90IGJlIGRldGVybWluZWQgd2l0aG91dCByZWFkaW5nIGUtZnVzZSBhdCBydW4tdGlt
ZS4KCkJlc3QgcmVnYXJkcywKCi0tCkZVS0FVTUkgTmFva2kKUmFkeGEgQ29tcHV0ZXIgKFNoZW56
aGVuKSBDby4sIEx0ZC4KCj4gQXMgYSByZW1pbmRlciwgdXNpbmcgInJvY2tjaGlwLHJrMzU4MiIg
d291bGQgYWxzbyByZXF1aXJlIGEgc21hbGwKPiBhZGRpdGlvbiB0byBkcml2ZXJzL2lycWNoaXAv
aXJxLWdpYy12My1pdHMuYy4KPiAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
