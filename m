Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3678CC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 08:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUH55uDm2HpD7HdbxM+APCDoWkg6+x2yMIRf0D1wveY=; b=VJSOkbD8FhMfcX
	LjoI2UzcZNItlVjOSA5vLjEnCGRytryaMZLfvvovWaaF/DMsSz6HVlLk9hqyZ9Pr+kGghZLtEFJZF
	arfqk4ErlE29k13tgnMWEKw1B00Q+GVlpy+7L7ZTTGGQSFgqFnYa62qWP6OSnhtO/CSXtP3MjKJm8
	59ZsToqiNnWblubiD8Vrtjdzh7rg/iFIBpA6TSbU0mlX5Cxch4Ech5X9ep+6+lj7eIgeXSvTZXl4K
	4m3yOJ+alWzI+bdGobQl0qFii4zTwKCQEmajRCNDQF483zQ0aqQSU+ckN99Y8nu8+9Bpiq3gj/9bi
	dshNIIjOYPuiOw1jtjYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjcUY-000cHo-2t;
	Tue, 04 Apr 2023 08:58:14 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjcSd-000bt0-2K;
	Tue, 04 Apr 2023 08:56:19 +0000
Received: from [IPv6:2a00:23c7:6883:e501:e15b:407b:49da:d40e] (unknown [IPv6:2a00:23c7:6883:e501:e15b:407b:49da:d40e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id F0656660312E;
	Tue,  4 Apr 2023 09:56:10 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680598571;
	bh=dmw4agSXfIQ/8qZuFX76Gw++1/H8qwLlzVcoLQiWdL4=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=JE4UxCzKD8diQjGDlsfvZVUHT0kV7ba5z7Y/jk/4Sn4fHYkPqFxHq1jFrBp6CC6JS
	 238j9b53QjJVJFDiqc9cx9N9r9fq6v0EUGXeNrvTbpUf9IWXcxuHBQpCUM8weWUyyK
	 0HQ4gWh1PUwXRzpTOAPLGzNJWxXlSg8cSn0vNV+uTcDEjvKpxSI0aLhmcgEeacql8H
	 2R0N607E8H79Y9kFOqoFf+UeZK7+Jnb6bXYU42OVhkORjmvttlM9S2EPmGsvnZEnUz
	 45LuVMxI0fog0dWudHGQ1jP6QMeulFVb4EUt8jhbJLeH/sNX02dwj5eqmUPx+q/Cyg
	 BH3rvkqpNZexA==
Message-ID: <47ef157dfcceaaa2c9487cfe51400029a04ade94.camel@collabora.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3588-rock-5b: Add pwm-fan
From: Christopher Obbard <chris.obbard@collabora.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Jean Delvare
 <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,  Heiko Stuebner <heiko@sntech.de>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Date: Tue, 04 Apr 2023 09:56:08 +0100
In-Reply-To: <20230403105052.426135-3-cristian.ciocaltea@collabora.com>
References: <20230403105052.426135-1-cristian.ciocaltea@collabora.com>
	 <20230403105052.426135-3-cristian.ciocaltea@collabora.com>
User-Agent: Evolution 3.46.4-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_015616_528891_E9969E77 
X-CRM114-Status: GOOD (  13.73  )
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

SGkgQ3Jpc3RpYW4sCgpPbiBNb24sIDIwMjMtMDQtMDMgYXQgMTM6NTAgKzAzMDAsIENyaXN0aWFu
IENpb2NhbHRlYSB3cm90ZToKPiBBZGQgdGhlIG5lY2Vzc2FyeSBEVCBjaGFuZ2VzIGZvciB0aGUg
Um9jayA1QiBib2FyZCB0byBlbmFibGUgc3VwcG9ydCBmb3IKPiB0aGUgUFdNIGNvbnRyb2xsZWQg
aGVhdCBzaW5rIGZhbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNy
aXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IENocmlzdG9waGVy
IE9iYmFyZCA8Y2hyaXMub2JiYXJkQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+IMKgYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgfCAxMiArKysrKysrKysrKysK
PiDCoDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPiBpbmRleCA5NTgwNWNiMGFk
ZmEuLmJkNzRkOWRhMmMxNyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4LXJvY2stNWIuZHRzCj4gQEAgLTE3LDYgKzE3LDE0IEBAIGNob3NlbiB7Cj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdGRvdXQtcGF0aCA9ICJzZXJpYWwyOjE1MDAw
MDBuOCI7Cj4gwqDCoMKgwqDCoMKgwqDCoH07Cj4gwqAKPiArwqDCoMKgwqDCoMKgwqBmYW46IHB3
bS1mYW4gewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb21wYXRpYmxlID0gInB3
bS1mYW4iOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb29saW5nLWxldmVscyA9
IDwwIDk1IDE0NSAxOTUgMjU1PjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZmFu
LXN1cHBseSA9IDwmdmNjNXYwX3N5cz47Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHB3bXMgPSA8JnB3bTEgMCA1MDAwMCAwPjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgI2Nvb2xpbmctY2VsbHMgPSA8Mj47Cj4gK8KgwqDCoMKgwqDCoMKgfTsKPiArCj4gwqDCoMKg
wqDCoMKgwqDCoHZjYzV2MF9zeXM6IHZjYzV2MC1zeXMtcmVndWxhdG9yIHsKPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJlZ3VsYXRvci1uYW1lID0gInZjYzV2MF9z
eXMiOwo+IEBAIC0yNyw2ICszNSwxMCBAQCB2Y2M1djBfc3lzOiB2Y2M1djAtc3lzLXJlZ3VsYXRv
ciB7Cj4gwqDCoMKgwqDCoMKgwqDCoH07Cj4gwqB9Owo+IMKgCj4gKyZwd20xIHsKPiArwqDCoMKg
wqDCoMKgwqBzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwo+IMKgJnNkaGNpIHsKPiDCoMKgwqDC
oMKgwqDCoMKgYnVzLXdpZHRoID0gPDg+Owo+IMKgwqDCoMKgwqDCoMKgwqBuby1zZGlvOwo+IC0t
IAo+IDIuNDAuMAo+IAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
