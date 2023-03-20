Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 212C6C7618A
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Mar 2023 10:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9EH/UdsLamIrbEJl0Aa/z8z1EobykjdFRyRPkRk/ZWA=; b=04fkgeFgD5iygX
	JBe714ee2UkgCxBWBjY1ltj/5wv6r5F73gAnUKXrEQCwh4qFF9WZQVCoPOr7FhIznOhigImglWx/b
	27bEGGkkelGhMFduGHF+6drse/b9uzRAuiGtCG1uqzm/E/4L8aKxBC0KwujVFBLkUF5vhu2L20447
	Tbhb10h5wn8jlb/rZfSGacnT/4IC4TlNDZ1IGKYcgjo6M88Rsk+KGHGohQ00lQ6LWHkEYxI8s2NTf
	lzK3PXcqnOP/ciuRwS1ArBgZYcjxra4Ra8zEgHDU006rEkLNwMkeg90/2AwAmCRJB7MKpGediItyC
	5QL+wGncfIw2BohSsYFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peCpg-008dTb-1f;
	Mon, 20 Mar 2023 10:33:40 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peCpa-008dRI-1P;
	Mon, 20 Mar 2023 10:33:38 +0000
Received: from [192.168.0.192] (unknown [194.146.248.75])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 51416660308E;
	Mon, 20 Mar 2023 10:33:30 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1679308410;
	bh=L+CGbnJ6J7Ytj/Wx4PJF44kzKsWq/OYxHHuaz5SrlXI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TVlzEZvcAk6GmtCCb2KGTNGd7hwd99mCTK6vkNfxaVviyyf5RXCHkHJ+PpdeYqI/X
	 1RG5lEb83dujIUNTbJX31aBnQgPJeFEafIIxeJ/KWinCga2VTiE0ieDSCghJxn270Q
	 5LQqaA4LIsxw8AyNw250fdauYFWXl9ov0CAIG5Gode9EwpRYWNGt1wf9WHM8RyTHsh
	 T33Dt2S7aaN/8X71lB6Y7FMpsC0DrXitabzecw8+WyDWErssf/XKkYEOwQczQ4qbLN
	 VzdS18dPjiLxokhq5ghh8Y9mSz1XyJJ6cxBTT0IpoS72+OAFKWVOtDRgIMmaz2K2+o
	 VUWEI+HjxpYjA==
Message-ID: <defe43a2-0521-a8f4-9575-4aa0a370a29e@collabora.com>
Date: Mon, 20 Mar 2023 11:33:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RFC 2/2] media: rkvdec: Add VP8 encoder
Content-Language: en-US
To: Daniel Almeida <daniel.almeida@collabora.com>, linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 kernel@collabora.com
References: <20230309125651.23911-1-andrzej.p@collabora.com>
 <20230309125651.23911-3-andrzej.p@collabora.com>
 <a142c30ab49a8ff65c59bdc9bc0e4552c48bac68.camel@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <a142c30ab49a8ff65c59bdc9bc0e4552c48bac68.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_033334_685582_EABE2CF9 
X-CRM114-Status: GOOD (  10.18  )
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

SGkgRGFuaWVsLAoKVyBkbml1IDE5LjAzLjIwMjMgb8KgMDA6MjMsIERhbmllbCBBbG1laWRhIHBp
c3plOgo+IEhpIEFuZHJ6ZWosIG9uZSB0aGluZyBJIG5vdGljZWQgd2hpbGUgbG9va2luZyBhdCB0
aGlzOgoKVGhhbmtzIGZvciBsb29raW5nIQoKPiAKPj4gK3N0cnVjdCBoYW50cm9fdnA4X2VudHJv
cHkgewo+PiArCS8qIFRPRE86IGludDMyX3Q/ICovCj4+ICsJaW50MzJfdCBjb2VmZl9wcm9iWzRd
WzhdWzNdWzExXTsKPj4gKwlpbnQzMl90IGNvZWZmX3Byb2Jfb2xkWzRdWzhdWzNdWzExXTsKPj4g
KwlpbnQzMl90IG12X3Byb2JbMl1bMTldOwo+PiArCWludDMyX3QgbXZfcHJvYl9vbGRbMl1bMTld
Owo+PiArCWludDMyX3QgeV9tb2RlX3Byb2JbNF07Cj4+ICsJaW50MzJfdCB1dl9tb2RlX3Byb2Jb
M107Cj4+ICt9Owo+PiA+Cj4gCj4gSW4gVlA5LCBwcm9iYWJpbGl0aWVzIGFyZSBjb2RlZCBpbiB0
aGUgMC4uMjU1IHJhbmdlLCBzbyBpZiB5b3Ugd2FudCB0bwo+IHNhdmUgc3BhY2UgaGVyZSwgeW91
IGNhbiBnbyB3aXRoIHVpbnQ4X3QuCgpQbGVhc2Ugbm90ZSB0aGF0IHRoaXMgaXMgYSBoYXJkd2Fy
ZS1zcGVjaWZpYy9kcml2ZXItc3BlY2lmaWMgc3RydWN0dXJlLgpBbmQsIGluIHBhcnRpY3VsYXIs
IHRoaXMgaXMgbm90IGEgdUFQSSBzdHJ1Y3QuIFRoZSByZWZlcmVuY2UgY29kZSB1c2VzCjMyLWJp
dCBxdWFudGl0aWVzIGhlbmNlIGludDMyX3QgaGVyZS4KCkFuZHJ6ZWoKCj4gCj4gLS0gRGFuaWVs
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
