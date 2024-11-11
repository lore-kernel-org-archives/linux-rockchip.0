Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3EC1D3ABF3
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Nov 2024 19:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Cc:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29uYuJMMAmb50h0ZpTgUO/a0v2wBzKvpmpMIN6LLNBI=; b=h3O0RyKv8ZOzj6
	jc9dA2PMv5PflCNeqh9Nwy6pk1TlOxWArWe56Wk4Vxts6xAr9Dpm4Hebx3Ym+DHXrMJz2zlEgiXrv
	ue15GBDtT/1GE0wxSMV1TZaWfgM38Lq6uGZdH6fRnUuci+ZnOQgEVQzA+BjS6CBW1EOIbO/gsZYUm
	cCGZhxMizXgdVwJsHm5OqsJPdDVIKId9Sp0xhjmAzdWvrwI6lqSPklPYaHAKjWmRkg61mII/RsUgs
	TNJVkphMhbe9pBj6+rg/eUFfaNaiAm8jf0jpwF2J+alMA/iHW5eGFfYVZ1/jbqlcjdCiS00ATkTAQ
	gyfyBCT4b0w0CB3bqKUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAZs9-000000011Q1-2XEU;
	Mon, 11 Nov 2024 19:14:49 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAZqN-000000011C5-3JMj
	for linux-rockchip@lists.infradead.org;
	Mon, 11 Nov 2024 19:13:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: Cc:
 References: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1731352364;
 bh=VoOvd60Z5sJEGwTfTCFOEcWAXUKH/B7ofE6eDnjYJDw=;
 b=ES5D7iaJBf3vI/JUt0lYxAsqV+V9Ppes5SXnaMMg76LS3frlUD+nJG5OQNLbT768lEwZoYDNl
 SFwkFnNX4TnGCBDIl5i7QVEJBrdbBTtsjGRAvpVhPDq5MnYD2RbsJTl7ZAlPrIMEIq7uiYYSqed
 CAYHUkDtRlTTj55mbTa0CWPjdCjKta+jVTjFZ8Omlef04wvPu8Mcg4PTcGUEwmk2VqFyXo7fkCH
 6OHfNsirVg1jYHgmbpnwuLFDagyYGgs5vDodOJZhGYhOyoKaTi5cRWnx7B+9IcWvOnpsMvvNJil
 PrMcTb8NVNMswWj5XRHuGZroubsRys+ILm9g9ATaorsQ==
Message-ID: <4ba81dfa-f276-4e05-b46b-92f50dbcfcc4@kwiboo.se>
Date: Mon, 11 Nov 2024 20:12:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Enable UART8 on rock-3b
To: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>
References: <20241111181807.13211-1-tszucs@linux.com>
 <20241111181807.13211-4-tszucs@linux.com>
Content-Language: en-US
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 Chukun Pan <amadeus@jmu.edu.cn>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20241111181807.13211-4-tszucs@linux.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 673257291b4710f318d5f54d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_111259_975537_2B801A40 
X-CRM114-Status: GOOD (  13.12  )
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

SGkgVGFtw6FzLAoKT24gMjAyNC0xMS0xMSAxOToxNywgVGFtw6FzIFN6xbFjcyB3cm90ZToKPiBF
bmFibGUgVUFSVCBsaW5lcyBvbiBSYWR4YSBST0NLIDMgTW9kZWwgQiBNLjIgS2V5IEUuCj4gCj4g
U2lnbmVkLW9mZi1ieTogVGFtw6FzIFN6xbFjcyA8dHN6dWNzQGxpbnV4LmNvbT4KPiAtLS0KPiAg
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHMgfCAyICstCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzCj4gaW5kZXgg
Yjc1MjdiYTQxOGY3Li42MWQ0YmEyZDMxMmEgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cwo+IEBAIC03MzIsNyArNzMyLDcgQEAgJnVh
cnQ4IHsKPiAgCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gIAlwaW5jdHJsLTAgPSA8JnVh
cnQ4bTBfeGZlciAmdWFydDhtMF9jdHNuICZ1YXJ0OG0wX3J0c24+Owo+ICAJdWFydC1oYXMtcnRz
Y3RzOwo+IC0Jc3RhdHVzID0gImRpc2FibGVkIjsKPiArCXN0YXR1cyA9ICJva2F5IjsKClRoaXMg
c2hvdWxkIHByb2JhYmx5IGJlIGVuYWJsZWQgdXNpbmcgYW4gZHQtb3ZlcmxheSwgdGhlcmUgaXMg
bm8gVUFSVApkZXZpY2UgZW1iZWRkZWQgb24gdGhlIGJvYXJkIGFuZCB0aGUgcmVhc29uIEkgbGVm
dCBpdCBkaXNhYmxlZCBpbgpvcmlnaW5hbCBib2FyZCBEVCBzdWJtaXNzaW9uLgoKT24gc2Vjb25k
IHRob3VnaHQgbWF5YmUgdGhleSBzaG91bGQgYmUgZW5hYmxlZCwgdGhpbmsgUENJZSBhbmQgVVNC
IGxpbmVzCm9uIHRoZSBNLjIgS2V5IEUgaXMgYWxyZWFkeSBlbmFibGVkIGJ5IGRlZmF1bHQuIEkg
cHJvYmFibHkgb25seSB0ZXN0ZWQKd2l0aCBhIHBjaWUvdXNiIHdpZmkvYnQgY2FyZCBhbmQgbm90
IGEgc2lkby91YXJ0IHdpZmkvYnQgY2FyZC4KClJlZ2FyZHMsCkpvbmFzCgo+ICB9Owo+ICAKPiAg
JnVzYl9ob3N0MF9laGNpIHsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
