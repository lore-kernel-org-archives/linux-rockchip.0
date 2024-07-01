Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F9C2C2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jul 2024 13:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ljxM0FMgMcE6YjIAWy7fCdgI69lQ9Cz7sXiIQ7tyyX0=; b=GLoQp5KpA96S0G
	su1WjkwzN+86a19vvwU6YJbh1FN4VUNgrQYPjkMkrPUqkYzrnwVx4kfzGpy42LqfTdwWPpT2t8RiV
	ZTaBiuuiqi7mNhM7R9c6M6jaPlnlXWtOtYA85a9B5jjWlQ1wqUo2KBhCQen+T6lxpMbYaIBWjbMyU
	oOHTzxLELNEAKFHfa1nZzjeRqGW3oHwSCKZn0zh7yOr/fjYaLInmS3QfeA24HGnM1J7WHB5a1x5zj
	0ZEv4vPovG5w0Lidw70mlmfMGGYQFvQoaxy7TWaowm/uagD9y119aS4vqsCplyKAJ8igTdprCf21d
	dobNioCPshDrD9C37jNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGhp-00000003OVl-0C4l;
	Mon, 01 Jul 2024 13:04:29 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGhd-00000003OSn-3z7I;
	Mon, 01 Jul 2024 13:04:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2C182611A1;
	Mon,  1 Jul 2024 13:04:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5FB7C116B1;
	Mon,  1 Jul 2024 13:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719839056;
	bh=nGaz0Qgvfx/NnXXbZBvI/HXcjEab7DuIrRSLlgXO9kA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=MgZvX+q7aP22ABWyd+hd6fhORW6TkphIHkjNia/S66cQIGEmZEu6QvrqUZA9UnR5X
	 5t6jbKw/Phl3VYQ4dmy5EBs+QoIH4VD8ieAYeWjWJFPEuczCwZl4Rv1oDD4HtqlKNA
	 nHFQOMtUJG3mNXCuYKj6e9PyAQkyASIylKTAwLfkr1T6pGeBQapfhVGPK3AvhfZduA
	 EnvnF9PYFNNKe4muIb2eeEzZAVX5A2Dzal3fOJfSOBqw/V/nrMod3PGBBsKBitofAa
	 OeXXOfsDUjr8+nsUoFZwoVi89TUCr45eYisCj3Gl6KzpBbm6k+mIsoB40Yuzrd/Egf
	 3++llx7cirlow==
Message-ID: <90bed6e2-472a-4882-b1e0-64b50d5c5a47@kernel.org>
Date: Mon, 1 Jul 2024 15:04:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] arm64: dts: rockchip: Add AP6275P wireless support
 to Khadas Edge 2
To: Jacobe Zang <jacobe.zang@wesion.com>, "robh@kernel.org"
 <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "heiko@sntech.de" <heiko@sntech.de>, "kvalo@kernel.org" <kvalo@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>
Cc: "efectn@protonmail.com" <efectn@protonmail.com>,
 "dsimic@manjaro.org" <dsimic@manjaro.org>,
 "jagan@edgeble.ai" <jagan@edgeble.ai>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "arend@broadcom.com" <arend@broadcom.com>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "megi@xff.cz"
 <megi@xff.cz>, "duoming@zju.edu.cn" <duoming@zju.edu.cn>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "minipli@grsecurity.net" <minipli@grsecurity.net>,
 "brcm80211@lists.linux.dev" <brcm80211@lists.linux.dev>,
 "brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>,
 Nick Xie <nick@khadas.com>
References: <20240630073605.2164346-1-jacobe.zang@wesion.com>
 <20240630073605.2164346-4-jacobe.zang@wesion.com>
 <eeeb3f1f-5c77-4ca5-b996-17b968b7c2f0@kernel.org>
 <TYZPR03MB7001FFD5180C6248F14EE48E80D32@TYZPR03MB7001.apcprd03.prod.outlook.com>
 <c2febca9-59e4-4505-bbec-6e61f7d8b944@kernel.org>
 <TYZPR03MB7001C414251A2A844D121A0E80D32@TYZPR03MB7001.apcprd03.prod.outlook.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <TYZPR03MB7001C414251A2A844D121A0E80D32@TYZPR03MB7001.apcprd03.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_060418_101095_12E1BEE7 
X-CRM114-Status: GOOD (  12.68  )
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

T24gMDEvMDcvMjAyNCAxMzozMSwgSmFjb2JlIFphbmcgd3JvdGU6Cj4+Pj4gK8KgwqDCoMKgIHBj
aWVAMCwwIHsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwweDQwMDAwMCAw
IDAgMCAwPjsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNhZGRyZXNzLWNlbGxzID0g
PDM+Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI3NpemUtY2VsbHMgPSA8Mj47Cj4+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByYW5nZXM7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBkZXZpY2VfdHlwZSA9ICJwY2kiOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgYnVzLXJhbmdlID0gPDB4NDAgMHg0Zj47Cj4+Pj4gKwo+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgd2lmaTogd2lmaUAwLDAgewo+Pj4gV2hlcmUgaXMgdGhlIGNvbXBhdGlibGUg
KGFnYWluISk/IFRlc3QgeW91ciBjb2RlIC0geW91IHdpbGwgc2VlIHlvdXIKPj4+IGJpbmRpbmcg
aXMgYSBuby1vcC4KPj4KPj4gSSB0cmllZCB0byBidWlsZCBrZXJuZWwgd2l0aCBDSEVDS19EVEJT
PTEuIEFuZCBkaWRuJ3QgZ2V0IGFueSBtZXNzYWdlCj4+IGxpa2UgJ2NvbXBhdGlibGUnIGlzIGEg
cmVxdWlyZWQgcHJvcGVydHkgaW4gd2lmaSBub2RlLiBCdXQgd2hlbiBJIGNoZWNrCj4+IHRoZSBi
aW5kaW5ncyB0aGF0IGRvIHJlcXVpcmVkIHRoZSBjb21wYXRpYmxlLi4uIFNvIEkgd2lsbCBhZGQg
aXQgbmV4dCB0aW1lLgo+IAo+PiBZZXAsIHVzZSBkaWZmZXJlbnQgY2xvY2sgbmFtZSBhbmQgdGhl
biB0ZXN0LiBZb3Ugc2hvdWxkIHNlZSBlcnJvcnMsCj4+IHJpZ2h0PyBCdXQgdGhlcmUgYXJlIG5v
dCwgYmVjYXVzZSBzY2hlbWEgaXMgbm90IGFwcGxpZWQgdG8gdGhpcyBub2RlIGF0IGFsbC4KPj4K
Pj4gTG9vayBob3cgQXBwbGUgaXMgZG9pbmcgdGhpcy4KPj4KPj4gSSBoYXZlIGRvdWJ0cyB0aGF0
IHlvdXIgY29kZSB3b3JrcyBhdCBhbGwgaW4gdGhlIGZpcnN0IHBsYWNlLiBJZiB0aGVyZQo+PiBp
cyBubyBjb21wYXRpYmxlLCBob3cgeW91ciBwbGF0Zm9ybSBkZXZpY2UgZ2V0cyBvZl9ub2RlPwo+
IAo+IEluIGZpbGUgYnJjbV9od19pZHMuaCBhbmQgcGNpZS5jIGhhcyBhZGRlZCBEZXZpY2UgSUQg
YW5kIFZlbmRvciBJRAo+IGZvciBidXMgdG8gZW51bWVyYXRlIHRoZSBkZXZpY2Ugd2hlbiBib2Fy
ZCBib290dXAsIHNvIEkgZGlkbid0IGFkZAo+IHNwZWNpZmljIGNvbXBhdGlibGUgaW4gRFRTLiBB
bmQgYnkgZG9pbmcgc28sIGl0IGNhbiBwcm9iZSBzdWNjZXNzZnVsbHkuCgpJIGRpZCBub3QgYXNr
IGFib3V0IHByb2JlKCkuLi4gdGhhdCdzIHF1aXRlIG9idmlvdXMuIEhvdyB0aGUgZGV2aWNlJ3MK
b2Zfbm9kZSBpcyBhc3NpZ25lZD8KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
