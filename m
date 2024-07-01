Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13C0BC30653
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jul 2024 11:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rcU8ji7BBk7IySHVFws4SGo6+FIUhJWSi1edWRVqGs=; b=kkDBdirxeN/P8K
	Gt6lseizZrVG0aV9v2sb6Q+mJG/HUPbmLQBEVj5TxrN/iA0PeDWpA/JZ/osDQlhkYWURcqNGJBklT
	9QnsQsZXWAB0OwJB5NcYwNykEY2s71FywLeSN5hu5WJqLjKfpF42Z31vv99h4qGEW0F7K4v19EG4n
	c4QiAkakLyJqZfXk68/nfS4ssk3rAjzldXrYJIV071kKSmV/6U+sI/u8wG3hmEKGBALzrzREmpm3s
	fwJM6/lEdIaR4TWKuWKJy9F8Y3B9OiPkz7Ry8ffsIzPR76Dqayk2mIy7HNa+0ThVP/1PAZnOeASiP
	NBNdxK5nG54JBNghM1Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOF1f-00000002rqm-1Jzi;
	Mon, 01 Jul 2024 11:16:51 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOF1T-00000002rnD-2ceg;
	Mon, 01 Jul 2024 11:16:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9F265CE10E7;
	Mon,  1 Jul 2024 11:16:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74A3AC4AF0A;
	Mon,  1 Jul 2024 11:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719832597;
	bh=TTdQIF5P3tI3CzxxZIg5F8A+9LlsQLoGgl0++LtrM5Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=knR4r2R/ZjrqYSETXcj+DyF7JPiSC4O/Idwwdk6g96Sw5f1zYn+rz96mUUqpLxsNh
	 zDrZuvlSWJdQFAiEeFy40tr36IJWtkQjBS95nT9umS/+tsTVtGC+ocVcI2E2ltv4qv
	 utRZaTr91FCxi/01CWWnrHJJG5/PtbbmsFtaeLg29TfU7U5bSpMf4PUDRpROO9NzGC
	 wC7jYipJq3kR18B2vRlRs8DuZyK2XgeMp2GGR0W/gG40EDzUMfxpuaGgIyMFDQGdB3
	 4ELvFS5TkTls9F6Y/Zy0kqXmOnPMTlqnNKH2pOfOxmU15v7N+XW+uqkmuCj7O9OBK1
	 x4ueF/eAQnSFQ==
Message-ID: <c2febca9-59e4-4505-bbec-6e61f7d8b944@kernel.org>
Date: Mon, 1 Jul 2024 13:16:26 +0200
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
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <TYZPR03MB7001FFD5180C6248F14EE48E80D32@TYZPR03MB7001.apcprd03.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_041640_040451_95A6B582 
X-CRM114-Status: GOOD (  11.22  )
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

T24gMDEvMDcvMjAyNCAxMjozOCwgSmFjb2JlIFphbmcgd3JvdGU6Cj4+PiArwqDCoMKgwqAgcGNp
ZUAwLDAgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHg0MDAwMDAgMCAw
IDAgMD47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNhZGRyZXNzLWNlbGxzID0gPDM+
Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjc2l6ZS1jZWxscyA9IDwyPjsKPj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmFuZ2VzOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBkZXZpY2VfdHlwZSA9ICJwY2kiOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBi
dXMtcmFuZ2UgPSA8MHg0MCAweDRmPjsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgd2lmaTogd2lmaUAwLDAgewo+PiBXaGVyZSBpcyB0aGUgY29tcGF0aWJsZSAoYWdhaW4hKT8g
VGVzdCB5b3VyIGNvZGUgLSB5b3Ugd2lsbCBzZWUgeW91cgo+PiBiaW5kaW5nIGlzIGEgbm8tb3Au
Cj4gCj4gSSB0cmllZCB0byBidWlsZCBrZXJuZWwgd2l0aCBDSEVDS19EVEJTPTEuIEFuZCBkaWRu
J3QgZ2V0IGFueSBtZXNzYWdlCj4gbGlrZSAnY29tcGF0aWJsZScgaXMgYSByZXF1aXJlZCBwcm9w
ZXJ0eSBpbiB3aWZpIG5vZGUuIEJ1dCB3aGVuIEkgY2hlY2sKPiB0aGUgYmluZGluZ3MgdGhhdCBk
byByZXF1aXJlZCB0aGUgY29tcGF0aWJsZS4uLiBTbyBJIHdpbGwgYWRkIGl0IG5leHQgdGltZS4K
ClllcCwgdXNlIGRpZmZlcmVudCBjbG9jayBuYW1lIGFuZCB0aGVuIHRlc3QuIFlvdSBzaG91bGQg
c2VlIGVycm9ycywKcmlnaHQ/IEJ1dCB0aGVyZSBhcmUgbm90LCBiZWNhdXNlIHNjaGVtYSBpcyBu
b3QgYXBwbGllZCB0byB0aGlzIG5vZGUgYXQgYWxsLgoKTG9vayBob3cgQXBwbGUgaXMgZG9pbmcg
dGhpcy4KCkkgaGF2ZSBkb3VidHMgdGhhdCB5b3VyIGNvZGUgd29ya3MgYXQgYWxsIGluIHRoZSBm
aXJzdCBwbGFjZS4gSWYgdGhlcmUKaXMgbm8gY29tcGF0aWJsZSwgaG93IHlvdXIgcGxhdGZvcm0g
ZGV2aWNlIGdldHMgb2Zfbm9kZT8KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
