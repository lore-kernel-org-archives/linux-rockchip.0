Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60B48CAC592
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Sep 2025 08:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/ti0qOFRmltFMJszYTIIAJH4dvxFiAAux4T84VcaMw=; b=G336ij8CVzGQKd
	vgt54ePoBLop45tkTsAITWPraaL3dpOYfh5d6pxX83RbgJ3Y7eB6q1OBnq3U5DeGE9A7Q986lvK/2
	/H27rGs3P+faPwt4khVS527NRXVLEpVHShfkmRCSqypiF6Va5oN3EvqeCB5SzGkQL1mwJetoXsGbI
	5FBeW+uc80+P/Rzr/9Ys+QAe8/LoAYnem/SwLvekf6/92RtAhaUBCBGQIyla0LOFBoBP79q5F42zO
	x1KF8OdgNdz98iPW5VPD4bhR5T/ucfYOzgwM85gyu36nsckrQjbLtgZpRMvR+ZiH/0XKcgvrw9vu5
	VZzTKFv2AiughBG7TGuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwd41-00000001wJ3-2tCD;
	Thu, 11 Sep 2025 08:53:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwd3y-00000001wHs-40fM;
	Thu, 11 Sep 2025 08:53:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Tl6Jwlc9AxjchgDlRh4CRf/NRIAGYGgRWiI8ZY2gw9o=; b=pv/seA9eRbpdxC7p23L9VRWhdL
	u5DtZgQmzomEuRO/J9hUg/UKrH8+q/wl+qJi7rSu4KnvylqXhb/oNpgg3lfmgT7D5z0GP4RHn0wih
	+Kmbqsem1WNCMVS1dokFZzxMmMCA+svar841ctLhZdqPO7+sgtH3Cu+emU+p4/zffXYHK6Zq3eEbb
	nrG7ehQJWEXCHkg49uSfPq0mKXWIRjKNgoIUnhqldMZICMb7OwyI7tQQ86jdQyiVHF999UWXFBYM6
	r329uLhJkv7JoNB4yGqTPQ0k1ORsTPS8avMCoKB9ElFdz0xuJ2bku1jyhycN+w4dI0szw416Hw/Uc
	3Vf3VL3g==;
Received: from i53875b0e.versanet.de ([83.135.91.14] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uwd3w-0008RY-R8; Thu, 11 Sep 2025 10:53:52 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: robh@kernel.org, WeiHao Li <cn.liweihao@gmail.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 WeiHao Li <cn.liweihao@gmail.com>
Subject: Re: [PATCH v2 1/4] phy: rockchip: inno-usb2: Add usb2 phy support for RK3368
Date: Thu, 11 Sep 2025 10:53:52 +0200
Message-ID: <4407919.mogB4TqSGs@diego>
In-Reply-To: <20250909132958.26423-2-cn.liweihao@gmail.com>
References: <20250909132958.26423-1-cn.liweihao@gmail.com>
 <20250909132958.26423-2-cn.liweihao@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_015354_994000_1A6D6176 
X-CRM114-Status: GOOD (  15.67  )
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

QW0gRGllbnN0YWcsIDkuIFNlcHRlbWJlciAyMDI1LCAxNToyOTo1NSBNaXR0ZWxldXJvcMOkaXNj
aGUgU29tbWVyemVpdCBzY2hyaWViIFdlaUhhbyBMaToKPiBSSzMzNjggaGFzIG9uZSBVU0IyLjAg
UEhZIHdpdGggdHdvIHBvcnRzLiBUaGlzIGFkZHMgZGV2aWNlIHNwZWNpZmljIGRhdGEKPiBmb3Ig
aXQuIERldmljZSBzcGVjaWZpYyBkYXRhIGdldCBmb3JtIHJvY2tjaGlwIGRvd25zdHJlYW0gc291
cmNlIFsxXS4KPiAKPiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL3JvY2tjaGlwLWxpbnV4L2tlcm5l
bC9ibG9iL2RldmVsb3AtNC40L2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5v
LXVzYjIuYyNMMjgwNQo+IAo+IFNpZ25lZC1vZmYtYnk6IFdlaUhhbyBMaSA8Y24ubGl3ZWloYW9A
Z21haWwuY29tPgoKY29tcGFyZWQgdGhlIHJlZ2lzdGVyIHZhbHVlcyB0byB0aGUgVFJNCgpSZXZp
ZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCj4gLS0tCj4gIGRyaXZl
cnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYyB8IDQ4ICsrKysrKysrKysr
KysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDQ4IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jIGIvZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jCj4gaW5kZXggYjBmMjM2
OTBlYy4uZGY1NzQzMzdkNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtaW5uby11c2IyLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtaW5uby11c2IyLmMKPiBAQCAtMTg0Nyw2ICsxODQ3LDUzIEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3Qgcm9ja2NoaXBfdXNiMnBoeV9jZmcgcmszMzY2X3BoeV9jZmdzW10gPSB7Cj4gIAl7IC8q
IHNlbnRpbmVsICovIH0KPiAgfTsKPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBf
dXNiMnBoeV9jZmcgcmszMzY4X3BoeV9jZmdzW10gPSB7Cj4gKwl7Cj4gKwkJLnJlZyA9IDB4NzAw
LAo+ICsJCS5udW1fcG9ydHMJPSAyLAo+ICsJCS5jbGtvdXRfY3RsCT0geyAweDA3MjQsIDE1LCAx
NSwgMSwgMCB9LAo+ICsJCS5wb3J0X2NmZ3MJPSB7Cj4gKwkJCVtVU0IyUEhZX1BPUlRfT1RHXSA9
IHsKPiArCQkJCS5waHlfc3VzCT0geyAweDA3MDAsIDgsIDAsIDAsIDB4MWQxIH0sCj4gKwkJCQku
YnZhbGlkX2RldF9lbgk9IHsgMHgwNjgwLCAzLCAzLCAwLCAxIH0sCj4gKwkJCQkuYnZhbGlkX2Rl
dF9zdAk9IHsgMHgwNjkwLCAzLCAzLCAwLCAxIH0sCj4gKwkJCQkuYnZhbGlkX2RldF9jbHIgPSB7
IDB4MDZhMCwgMywgMywgMCwgMSB9LAo+ICsJCQkJLmlkZmFsbF9kZXRfZW4JPSB7IDB4MDY4MCwg
NiwgNiwgMCwgMSB9LAo+ICsJCQkJLmlkZmFsbF9kZXRfc3QJPSB7IDB4MDY5MCwgNiwgNiwgMCwg
MSB9LAo+ICsJCQkJLmlkZmFsbF9kZXRfY2xyCT0geyAweDA2YTAsIDYsIDYsIDAsIDEgfSwKPiAr
CQkJCS5pZHJpc2VfZGV0X2VuCT0geyAweDA2ODAsIDUsIDUsIDAsIDEgfSwKPiArCQkJCS5pZHJp
c2VfZGV0X3N0CT0geyAweDA2OTAsIDUsIDUsIDAsIDEgfSwKPiArCQkJCS5pZHJpc2VfZGV0X2Ns
cgk9IHsgMHgwNmEwLCA1LCA1LCAwLCAxIH0sCj4gKwkJCQkubHNfZGV0X2VuCT0geyAweDA2ODAs
IDIsIDIsIDAsIDEgfSwKPiArCQkJCS5sc19kZXRfc3QJPSB7IDB4MDY5MCwgMiwgMiwgMCwgMSB9
LAo+ICsJCQkJLmxzX2RldF9jbHIJPSB7IDB4MDZhMCwgMiwgMiwgMCwgMSB9LAo+ICsJCQkJLnV0
bWlfYnZhbGlkCT0geyAweDA0YmMsIDIzLCAyMywgMCwgMSB9LAo+ICsJCQkJLnV0bWlfaWQJPSB7
IDB4MDRiYywgMjYsIDI2LCAwLCAxIH0sCj4gKwkJCQkudXRtaV9scwk9IHsgMHgwNGJjLCAyNSwg
MjQsIDAsIDEgfSwKPiArCQkJfSwKPiArCQkJW1VTQjJQSFlfUE9SVF9IT1NUXSA9IHsKPiArCQkJ
CS5waHlfc3VzCT0geyAweDA3MjgsIDgsIDAsIDAsIDB4MWQxIH0sCj4gKwkJCQkubHNfZGV0X2Vu
CT0geyAweDA2ODAsIDQsIDQsIDAsIDEgfSwKPiArCQkJCS5sc19kZXRfc3QJPSB7IDB4MDY5MCwg
NCwgNCwgMCwgMSB9LAo+ICsJCQkJLmxzX2RldF9jbHIJPSB7IDB4MDZhMCwgNCwgNCwgMCwgMSB9
Cj4gKwkJCX0KPiArCQl9LAo+ICsJCS5jaGdfZGV0ID0gewo+ICsJCQkub3Btb2RlCQk9IHsgMHgw
NzAwLCA4LCAwLCAwLCAweDFkNyB9LAo+ICsJCQkuY3BfZGV0CQk9IHsgMHgwNGI4LCAzMCwgMzAs
IDAsIDEgfSwKPiArCQkJLmRjcF9kZXQJPSB7IDB4MDRiOCwgMjksIDI5LCAwLCAxIH0sCj4gKwkJ
CS5kcF9kZXQJCT0geyAweDA0YjgsIDMxLCAzMSwgMCwgMSB9LAo+ICsJCQkuaWRtX3NpbmtfZW4J
PSB7IDB4MDcxOCwgOCwgOCwgMCwgMSB9LAo+ICsJCQkuaWRwX3NpbmtfZW4JPSB7IDB4MDcxOCwg
NywgNywgMCwgMSB9LAo+ICsJCQkuaWRwX3NyY19lbgk9IHsgMHgwNzE4LCA5LCA5LCAwLCAxIH0s
Cj4gKwkJCS5yZG1fcGR3bl9lbgk9IHsgMHgwNzE4LCAxMCwgMTAsIDAsIDEgfSwKPiArCQkJLnZk
bV9zcmNfZW4JPSB7IDB4MDcxOCwgMTIsIDEyLCAwLCAxIH0sCj4gKwkJCS52ZHBfc3JjX2VuCT0g
eyAweDA3MTgsIDExLCAxMSwgMCwgMSB9LAo+ICsJCX0sCj4gKwl9LAo+ICsJeyAvKiBzZW50aW5l
bCAqLyB9Cj4gK307Cj4gKwo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlwX3VzYjJwaHlf
Y2ZnIHJrMzM5OV9waHlfY2Znc1tdID0gewo+ICAJewo+ICAJCS5yZWcJCT0gMHhlNDUwLAo+IEBA
IC0yMjg5LDYgKzIzMzYsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCByb2Nr
Y2hpcF91c2IycGh5X2R0X21hdGNoW10gPSB7Cj4gIAl7IC5jb21wYXRpYmxlID0gInJvY2tjaGlw
LHJrMzMwOC11c2IycGh5IiwgLmRhdGEgPSAmcmszMzA4X3BoeV9jZmdzIH0sCj4gIAl7IC5jb21w
YXRpYmxlID0gInJvY2tjaGlwLHJrMzMyOC11c2IycGh5IiwgLmRhdGEgPSAmcmszMzI4X3BoeV9j
ZmdzIH0sCj4gIAl7IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM2Ni11c2IycGh5IiwgLmRh
dGEgPSAmcmszMzY2X3BoeV9jZmdzIH0sCj4gKwl7IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJr
MzM2OC11c2IycGh5IiwgLmRhdGEgPSAmcmszMzY4X3BoeV9jZmdzIH0sCj4gIAl7IC5jb21wYXRp
YmxlID0gInJvY2tjaGlwLHJrMzM5OS11c2IycGh5IiwgLmRhdGEgPSAmcmszMzk5X3BoeV9jZmdz
IH0sCj4gIAl7IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2Mi11c2IycGh5IiwgLmRhdGEg
PSAmcmszNTYyX3BoeV9jZmdzIH0sCj4gIAl7IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2
OC11c2IycGh5IiwgLmRhdGEgPSAmcmszNTY4X3BoeV9jZmdzIH0sCj4gCgoKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
