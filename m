Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1537BC10F09
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Dec 2023 07:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cvYYPsWjWSW8UUNRcWPaakI11rsk51EARk4bgjdOWOs=; b=3Kt7chH2x3np3Y
	D7cCT8drF/83erxjzWim5d0xQyWkIsNu+R+vtQ+1UwUEh+Z27BZmPvGB3b7mO44ulf0LLHKa1fuNs
	rVV4kwpXI6tgQTMsE7JPDMlFSdu+oRsDZaZoY32VJhvgP8boYt2fYIsgt6In/m+314Uy6va5w/qNP
	Bhiq9KBAbecf0bQFzxiyFRCLrJgDnaaWnm3CuQQMiYlI2B0FIY3u2Lz1oRZ/2mYX2FqUJ3APzdNGV
	6jlD49aNtEAeOUBjAFNPcPUrBRaK1Nq8On2/jOhWlfQvlGHYMcFXiZOukOc3iL/mG4LhEAMHAgvxG
	fQJ0atzM50R4Ndl6ts+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCb2D-004HQV-2R;
	Mon, 11 Dec 2023 07:49:01 +0000
Received: from m1345.mail.163.com ([220.181.13.45])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCb2A-004HPp-0u;
	Mon, 11 Dec 2023 07:49:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=3xGAux2eUESAR4VcoWBAruvy8wC4zTo5nWdivW8esro=; b=n
	3kXz7fQ4QMYCO83TzQucwdIYp27tDnT7ljY64uZ4w//UHJlhmZeQpIw+PQjZkYJV
	NwtT9gsqi/jkJze9Mak68rowRbKO5o+XU668yao3rtPjBdQS02GM99lyY/QCJQOa
	Hyhq2y3c/h0XBxVax9echZebfGonQ5EkM9r5hfr944=
Received: from andyshrk$163.com ( [58.22.7.114] ) by ajax-webmail-wmsvr45
 (Coremail) ; Mon, 11 Dec 2023 15:48:46 +0800 (CST)
X-Originating-IP: [58.22.7.114]
Date: Mon, 11 Dec 2023 15:48:46 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
Cc: heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re:Re: [PATCH v2 3/5] arm64: dts: rockchip: Add support for rk3588s
 based board Cool Pi 4B
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2023 www.mailtech.cn 163com
In-Reply-To: <32b6437f-0e56-439d-8ebb-465e5230b18f@linaro.org>
References: <20231210080313.1667013-1-andyshrk@163.com>
 <20231210080547.1667421-1-andyshrk@163.com>
 <32b6437f-0e56-439d-8ebb-465e5230b18f@linaro.org>
X-NTES-SC: AL_Qu2bAP6Tv0Ep4CedYOkXn0kXhec2W8Czvvgg34JRP5k0hynnwAEvc0JFOEPk/d2MNhKrjSWXaid/wONHUYtdeq1GtiWLO/5Xrzrjm5TAIkYZ
MIME-Version: 1.0
Message-ID: <21f982a7.3c52.18c57d99625.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: LcGowAD3X0PfvnZlA3QsAA--.16084W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqAJDXmVOA4n0hgABsl
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231210_234858_699301_6DB9F0C6 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
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

CkhpIEtyenlzenRvZu+8mgoKQXQgMjAyMy0xMi0xMCAxOToxMzoyNiwgIktyenlzenRvZiBLb3ps
b3dza2kiIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+T24gMTAvMTIv
MjAyMyAwOTowNSwgQW5keSBZYW4gd3JvdGU6Cj4+IENvb2xQaSA0QiBpcyBhIHJrMzU4OHMgYmFz
ZWQgU0JDLgo+PiBTcGVjaWZpY2F0aW9uOgo+PiAtIFJvY2tjaGlwIFJLMzU4OFMKPj4gLSBMUERE
UjQgMi80LzgvMTYgR0IKPj4gLSBURiBzY2FyZCBzbG90Cj4KPi4uLgo+Cj4+ICsmaTJjNiB7Cj4+
ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gKwlwaW5jdHJsLTAgPSA8JmkyYzZtM194
ZmVyPjsKPj4gKwlzdGF0dXMgPSAib2theSI7Cj4+ICsKPj4gKwloeW04NTYzOiBydGNANTEgewo+
PiArCQljb21wYXRpYmxlID0gImhhb3l1LGh5bTg1NjMiOwo+PiArCQlyZWcgPSA8MHg1MT47Cj4+
ICsJCSNjbG9jay1jZWxscyA9IDwwPjsKPj4gKwkJY2xvY2stZnJlcXVlbmN5ID0gPDMyNzY4PjsK
Pj4gKwkJY2xvY2stb3V0cHV0LW5hbWVzID0gImh5bTg1NjMiOwo+PiArCQlwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOwo+PiArCQlwaW5jdHJsLTAgPSA8Jmh5bTg1NjNfaW50PjsKPj4gKwkJaW50
ZXJydXB0LXBhcmVudCA9IDwmZ3BpbzA+Owo+PiArCQlpbnRlcnJ1cHRzID0gPFJLX1BCMCBJUlFf
VFlQRV9MRVZFTF9MT1c+Owo+PiArCQlzdGF0dXMgPSAib2theSI7Cj4KPk15IGNvbW1lbnRzIGFi
b3V0IHJlZHVuZGFudCBzdGF0dWVzIGFwcGxpZXMgdG8gYWxsIHBsYWNlcywgbm90IG9ubHkgdG8K
Pm9uZSBzcGVjaWZpYyBwbGFjZS4uLgoKU29ycnkgZm9yIHRoYXTvvIwgSSB3aWxsIGZpeCBpbiBW
MwoKPgo+QmVzdCByZWdhcmRzLAo+S3J6eXN6dG9mCj4KPgo+X19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
Cj5saW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
