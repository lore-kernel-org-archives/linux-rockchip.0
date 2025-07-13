Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22B0AC83F17
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jul 2025 19:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AfvuNb1FEy0Mf7Fy3aUQj1HqXBpYS9nFtdyGgCF4x/E=; b=0JrGh0k1dEYmt7
	qP8tvpYDwj+oO9osWRRCQAgilCKMZPUbiGjzuorYmEqQsudFYNjPHUgwOBywVUKPxd04JOj4bdtqz
	C6dRHhVY4ooR7k6kPdH7Nws5qNtKuAswakJWUGHR3WYd2Kl+mwjl0x4Xl0SCzGWKbbprjfO+aVCk8
	LOORXxJzoiaO6d1CHgvX/I2wxANQGpZJeIbu1Ud72gRmaOgfDgGFNHMJi+y+2S882VzV3akzPHEHQ
	iyY46/miAvZ9ed4gQPtJcdxg2B+exXGnb8skh8OfldjDnjgZDp02oaQ8vLA+H/M3B2ePvi/TqswGF
	93OGS/BjlIH/8y08Nj7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ub1vU-00000000Wb5-2pvR;
	Sun, 13 Jul 2025 18:59:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ub1t5-00000000WVS-32RR;
	Sun, 13 Jul 2025 18:57:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=pyweeKyT9s5/PpwNqIa2ri7jL7PGqvs1hJzN9Csu3F8=; b=ygWEkd0rt530a80fVyY4JBGjfq
	wEg1cfvHUY79TYH8myZs57Zej6WOk0MiOsRI+aCGcgkhg+8qPIumSmyx90TC0ECZTtzA6dxgkdSYq
	d0lPkbn+Fs6iLAr4/jwIq0k7wQMI6Hxa1ZKvvNv2kDUonWA89qhGQUCb+xJ358OZXWaDKLxNoLs93
	J/w8UZAHhSBKGC4BpGPmDuGhsTWaJaK53C3ntHS++lw7aYON25R0rD2zpmW5zuuQYD5WCWjtWjS5P
	NChiv7AAcFHOYpYGPQH6XSlQIN6d68zZjB8c/inMNXkIcUDFd+KYCQms7YaHS7VHDUXB25mEBDeqi
	Cr5bL0Iw==;
Received: from i53875bea.versanet.de ([83.135.91.234] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ub1si-0001Dc-Tj; Sun, 13 Jul 2025 20:57:00 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 quentin.schulz@cherry.de, dsimic@manjaro.org, naoki@radxa.com,
 Jun Yan <jerrysteve1101@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jun Yan <jerrysteve1101@gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Shenzhen OneThing
 Technologies Co., Ltd.
Date: Sun, 13 Jul 2025 20:57:00 +0200
Message-ID: <5772394.qSoW2BAyJ8@diego>
In-Reply-To: <20250713163255.163669-2-jerrysteve1101@gmail.com>
References: <20250713163255.163669-1-jerrysteve1101@gmail.com>
 <20250713163255.163669-2-jerrysteve1101@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250713_115723_787665_4EB380D8 
X-CRM114-Status: GOOD (  12.06  )
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

QW0gU29ubnRhZywgMTMuIEp1bGkgMjAyNSwgMTg6MzI6NTMgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBKdW4gWWFuOgo+IE9uZVRoaW5nIGlzIGEgY29tcGFueSBlbmdhZ2Vk
IGluIGVkZ2UgY29tcHV0aW5nLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEp1biBZYW4gPGplcnJ5c3Rl
dmUxMTAxQGdtYWlsLmNvbT4KPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sIHwgMiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbAo+IGluZGV4IDVkMmE3YThkM2FjNi4uNzdmYmJlMDQw
NzA2IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5k
b3ItcHJlZml4ZXMueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy92ZW5kb3ItcHJlZml4ZXMueWFtbAo+IEBAIC0xMTA4LDYgKzExMDgsOCBAQCBwYXR0ZXJuUHJv
cGVydGllczoKPiAgICAgIGRlc2NyaXB0aW9uOiBPTElNRVggTHRkLgo+ICAgICJeb2xwYywuKiI6
Cj4gICAgICBkZXNjcmlwdGlvbjogT25lIExhcHRvcCBQZXIgQ2hpbGQKPiArICAiXm9uZXRoaW5n
LC4qIjoKPiArICAgIGRlc2NyaW90aW9uOiBTaGVuemhlbiBPbmVUaGluZyBUZWNobm9sb2dpZXMg
Q28uLCBMdGQuCgphcyBSb2IncyBib3QgcG9pbnRlZCBvdXQsIHRoZXJlIGlzIGEgdHlwbyBpbiAi
ZGVzY3JpcHRpb24iLgoKQWxzbyBwbGVhc2UgbWFrZSBzdXJlIHRvIHNvcnQgZW50cmllcyBhbHBo
YWJldGljYWxseSwgIlQiIGNvbWVzIGFmdGVyICJQIgooPSBvbmV0aGluZyBhZnRlciBvbmVwbHVz
KQoKPiAgICAiXm9uZXBsdXMsLioiOgo+ICAgICAgZGVzY3JpcHRpb246IE9uZVBsdXMgVGVjaG5v
bG9neSAoU2hlbnpoZW4pIENvLiwgTHRkLgo+ICAgICJeb25pZSwuKiI6Cj4gCgoKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
