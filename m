Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B22FC54F2E
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 May 2025 10:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7GK4GuKCqfKKUjh49sH78zq9XhZQSVoNCqLcfLe38a8=; b=Fj7Gl9mbQls934
	61fmpqtxbG5pGBZNJxl+Tv57BY4GcBK4yEq4O671441+iBVr3VqPw3JPAV7cYMTlc8llCGe0AmzC4
	b74ZfrSfdRU8v3eUePtYHTmdE2WXy4Nmaj0gYqSQ3WevoTk4hGP3WBAcCTOUG7tYzAEzSogMlZjYs
	XmNnzr2grTyeR1wagBhkiSU0GM0aKCVP8rduV7JOUAve8W54uqVV9o5XnXdfMHo/J3YWeXV1uLndo
	hA7tQcEfyOWr16/MbuBOXwlCq5QP0zz34NT+bC6FJb12Q1Yjgg79D06lX3lJQv6Dk8XW9ClEMl9yE
	IxioulRIXkD4lWUsGKjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIPe7-00000003bVL-0zAX;
	Fri, 23 May 2025 10:28:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIPbw-00000003bHn-1e5P;
	Fri, 23 May 2025 10:26:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=zI9g/83wQuRlE20xbmtztKEXow3I/W3/zdS8wd9zbR0=; b=cPIOZIXVnZooNycm1nmR+tEub7
	RM7HKAZ1JA9hBl9dxOu2Rbu7Hgj6IC2fc6ubzLf+kBmBOdpmZ1+0JAqeUE8H2ZDbc2NUt5lA7bB81
	ExuIcDfCKNmMaGVKESUdToFJKPddP1PyoRqSoQhEXNS0MfbtniBFZfl4Q9Jy7CE4zvUuMovDu7Tka
	uYbV/lVWBd/drDmB3zE2c6VuufJOOjApaFRv7rQh+vdE1VfpNp58fnUa2pbCHjECrvdYI89ihVQO4
	6unT9SHDFuS3yvN3Q1lU3VYOatDIcIHuxiFw49JDuh67L0dJXu1LYc63JSlXf39az3ssSt8D8WtLY
	WIwiPKcA==;
Received: from i53875b2e.versanet.de ([83.135.91.46] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uIPbb-0007tg-9D; Fri, 23 May 2025 12:26:23 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>, i@chainsx.cn,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: add DTs for Firefly ROC-RK3588S-PC
Date: Fri, 23 May 2025 12:26:22 +0200
Message-ID: <5989180.zQ0Gbyo6oJ@diego>
In-Reply-To: <65f95a57-64cb-4815-8ff2-9021ab7b7ae3@linaro.org>
References: <20250519075432.2239713-3-i@chainsx.cn>
 <20250523070026.50263-1-amadeus@jmu.edu.cn>
 <65f95a57-64cb-4815-8ff2-9021ab7b7ae3@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_032644_447663_2575FD0D 
X-CRM114-Status: GOOD (  12.50  )
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

QW0gRnJlaXRhZywgMjMuIE1haSAyMDI1LCAwOToxMjowOCBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIEtyenlzenRvZiBLb3psb3dza2k6Cj4gT24gMjMvMDUvMjAyNSAwOTow
MCwgQ2h1a3VuIFBhbiB3cm90ZToKPiA+IAo+ID4+ICsmZ21hYzEgewo+ID4+ICsJY2xvY2tfaW5f
b3V0ID0gIm91dHB1dCI7Cj4gPj4gKwlwaHktaGFuZGxlID0gPCZyZ21paV9waHkxPjsKPiA+PiAr
CXBoeS1tb2RlID0gInJnbWlpLWlkIjsKPiA+PiArCXBpbmN0cmwtMCA9IC4uLgo+ID4+ICsJcGlu
Y3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+IAo+ID4gcGluY3RybC1uYW1lcyBzaG91bGQgYmUg
cGxhY2VkIGJlZm9yZSBwaW5jdHJsLTAKPiAKPiBUaGF0J3MgdW51c3VhbCAtIG5vdCBpbmxpbmUg
d2l0aCBjb21tb24gY29kaW5nIHN0eWxlIGFuZCB3aXRoIG1vc3Qgb2YKPiBTb0NzLiBJcyB0aGlz
IHNvbWUga2luZCBvZiBrbm93biBydWxlIHZhbGlkIGluIFJvY2tjaGlwPwoKbm9wZSBpdCBpc24n
dCBhbnkgc29ydCBvZiBydWxlIDotKSAuCgoKSSBfdGhpbmtfIGluIHRoZSBwYXN0IHdlIGdlbmVy
YWxseSBoYWQKcGluY3RybC1uYW1lcyA9ICJkZWZhdWxlIiwgIndoYXRldmVyIgpwaW5jdHJsLTAg
PQpwaW5jdHJsLTEgPQoKYnV0IHRoYXQgd2FzIG1vcmUgYSAibG9va2luZyBzb21ld2hhdCBuaWNl
IiB0aGluZyBmcm9tIGJlZm9yZSB3ZSBoYWQgdGhlCm1vcmUgZ2VuZXJpYyBkdHMgY29kaW5nIHN0
eWxlIC4KCgpTbyBpZiBpbiBkb3VidCBub3dhZGF5cywgcGxlYXNlIGZvbGxvdyB0aGUgZ2VuZXJh
bCBjb2Rpbmcgc3R5bGUgYXMgd3JpdHRlbgpkb3duIGluCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kdHMtY29kaW5nLXN0eWxlLnJzdAoKCkhlaWtvCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
