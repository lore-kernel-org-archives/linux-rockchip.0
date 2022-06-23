Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D797C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 16:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5OtzziHTC3TF4/VkbOOwzVtRYHbt+K/1gUPoCrxWBA=; b=1MPHoIVi/nHwRG
	MWbxxsgZcgPTAvCerHEZL4nd+GejrIOnbZj3/AzU0Qi7pVgGy6iuvtODwL8HoByXKBOIGLw3ZhexK
	6jMV57vay1YfC5YympcCcEyat5mi75a9h1nGxXIAQh/kW3I3fIg2w8+9tc/oBf7V4ub2UeEb9J1bF
	RII8NriMZraA64T5Sjhyx+oHTt8ur13QBOHALv8uqY0jWU4EjwQMvzBsKb/zXRCDc+fggOntaRNnj
	1yWQrda16JWBgbpGrplZ5Jt/jJ6ueSHfwcG2VYqfbQR3OobocvKf/vpVu416fWUPHFBlilAH/xAVZ
	0SQu9TlZ8y6fyteO5stA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Phb-00FtHW-IO; Thu, 23 Jun 2022 16:29:07 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4PhD-00Ft7J-5q; Thu, 23 Jun 2022 16:28:44 +0000
Received: from [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf] (unknown [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A52CB66017E2;
	Thu, 23 Jun 2022 17:28:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656001721;
	bh=/dvQ4hO+tMgO+9JzQDZDVxJLXKm1MciSa7XN3QrkxhI=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=BmGq7Voh9YYwekuoGw55h3W01wIp4YKgxMmiZIO1uwY6ViaUFr4GxJIIbgafM0b0g
	 LcgxV58/gcXi3qIKnAoJbvbjXfc728NVrFEeADhtBv9ct/ZQ0n+n4hhsR3U9BZR2z0
	 2fAxyjCMkkHVZ8Ln+rDOzewruY3JxAyDB6YRc4qDrj1DJrzZKkYmrTdF7njwtf8tnE
	 N+CRTdMLZOrazFOg3MCIjbT+8LqRhFjMztmIqM8V1O36LX8z2NW45pM+net1N3MTGL
	 PTMkAz3/ZTQQ84U4KI3OJl5JzauOlo+fyQl1wNKASMZo3HNgwHznUziRDhJ+TFCtaG
	 oAsU4cmvGO6PA==
Message-ID: <a3381d50f4c07f480ade2426620ee785952d3be2.camel@collabora.com>
Subject: Re: [PATCH 4/6] dt-bindings: mfd: syscon: Add rk3388 QoS register
 compatible
From: Christopher Obbard <chris.obbard@collabora.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>, Heiko Stuebner
	 <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,  devicetree@vger.kernel.org,
 kernel@collabora.com
Date: Thu, 23 Jun 2022 17:28:36 +0100
In-Reply-To: <20220623162309.243766-5-sebastian.reichel@collabora.com>
References: <20220623162309.243766-1-sebastian.reichel@collabora.com>
	 <20220623162309.243766-5-sebastian.reichel@collabora.com>
User-Agent: Evolution 3.44.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_092843_396332_9019DEA1 
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

T24gVGh1LCAyMDIyLTA2LTIzIGF0IDE4OjIzICswMjAwLCBTZWJhc3RpYW4gUmVpY2hlbCB3cm90
ZToKPiBEb2N1bWVudCByazMzNjggY29tcGF0aWJsZSBmb3IgUW9TIHJlZ2lzdGVycy4KCkhleSBT
ZWJhc3RpYW4sCgpBbHNvIGxvb2tzIGxvb2tzIGxpa2UgdGhpcyAoYW5kIHRoZSBwYXRjaCBzdWJq
ZWN0KSBzaG91bGQgaW5zdGVhZCByZWZlcgp0byB0aGUgcmszNTg4ID8KClRoYW5rcyEKQ2hyaXMK
Cj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNv
bGxhYm9yYS5jb20+Cj4gLS0tCj4gwqBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bWZkL3N5c2Nvbi55YW1sIHwgMSArCj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykK
PiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9z
eXNjb24ueWFtbAo+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zeXNj
b24ueWFtbAo+IGluZGV4IGZiNzg0MDQ1MDEzZi4uZmYxYTdhYWUzM2YyIDEwMDY0NAo+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3lzY29uLnlhbWwKPiArKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3N5c2Nvbi55YW1sCj4gQEAg
LTU5LDYgKzU5LDcgQEAgcHJvcGVydGllczoKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IC0gcm9ja2NoaXAscmszMzY4LXFvcwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBy
b2NrY2hpcCxyazMzOTktcW9zCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHJvY2tj
aGlwLHJrMzU2OC1xb3MKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxy
azM1ODgtcW9zCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHNhbXN1bmcsZXh5bm9z
My1zeXNyZWcKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gc2Ftc3VuZyxleHlub3M0
LXN5c3JlZwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBzYW1zdW5nLGV4eW5vczUt
c3lzcmVnCj4gLS0gCj4gMi4zNS4xCj4gCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
