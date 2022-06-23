Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBC7FC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 16:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltHNv45FsqO0ZMyLCo5xiwqQhEqERblMoNceJxb61rw=; b=1zmqk73JBJVpME
	WXdvxIiqX63he88EHSrspgB4uY0r+JlbegmIBMbSftTsSgaGxvkrZitgvEALSZH7wnfCElrvXNf8i
	bH0eiVxZ/anhBUWtput7gSNBcv5D1TgNa82qC1/8q2Uy96NITCy7XxqRThH2DFUoJCUtkXSeXHD7X
	YJ7FeVMbcj3vf7z6A3q4RPW9uX5QgqKjrWm5oINYXR0+eRoaGx8COdEL97c7+C6kyHr/dc4B9Lv9a
	Z/sA9g58QRZwRWHj8u15mjOty+RSLNMg8x35IOEG6JMSgs/meov4C//PcvKgqCF2XnlvS3NeQ+AOl
	xEPPrUrddxDAQqNw/BKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Pkq-00Fun2-52; Thu, 23 Jun 2022 16:32:28 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Pi8-00FtTC-3L; Thu, 23 Jun 2022 16:29:42 +0000
Received: from [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf] (unknown [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AEEC266017E4;
	Thu, 23 Jun 2022 17:29:38 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656001778;
	bh=0fcf2Og5+kAlUKXKZjiLdn0YJRF3DsBLftoZV9IJdiw=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=l+w2abAK8h9HgrwpbWg/B7Xm/ZaYbCCurnXZ5ciUQbyFRDTaxvAMFlniqbO8hgs+S
	 981JtASOd+mligWTmMli1hppeFeGWghNcEEmC4+0/Y5fiTssfNFoMTBmp4jqnSulK2
	 p3GPoLcdzkwTAMDKAJ7NogogOjBqlbHZ8Grr9PtOqIz1Stm9ynrF2g90OPyhvnnKoN
	 PpgFpwZFFBIm6918/vzZHy3hIJJZ0eMY7mB4GTJwpwL79QTmvRjQ5HO7uGbM1nOGnS
	 gCpZhnxZuTUGBOhqTMSx23f4Yjarc3OfE+HPqmMYDyAYDZUutn/IrDq9sMpMQuSFJG
	 1eJdb/IWM8ohg==
Message-ID: <0a302a938736d3d5dc9e158718f2cd0c33b53ea4.camel@collabora.com>
Subject: Re: [PATCH 1/6] dt-bindings: arm: rockchip: add rk3388 compatible
 string to pmu.yaml
From: Christopher Obbard <chris.obbard@collabora.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>, Heiko Stuebner
	 <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,  devicetree@vger.kernel.org,
 kernel@collabora.com
Date: Thu, 23 Jun 2022 17:29:33 +0100
In-Reply-To: <20220623162309.243766-2-sebastian.reichel@collabora.com>
References: <20220623162309.243766-1-sebastian.reichel@collabora.com>
	 <20220623162309.243766-2-sebastian.reichel@collabora.com>
User-Agent: Evolution 3.44.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_092940_378641_0E280F6D 
X-CRM114-Status: GOOD (  10.91  )
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
ZToKPiBBZGQgdGhlIGNvbXBhdGlibGUgZm9yIHRoZSBwbXUgbWZkIG9uIHJrMzM4OC4KCkhleSBT
ZWJhc3RpYW4sCgpBbHNvIGxvb2tzIGxvb2tzIGxpa2UgdGhpcyAoYW5kIHRoZSBwYXRjaCBzdWJq
ZWN0KSBzaG91bGQgaW5zdGVhZCByZWZlcgp0byB0aGUgcmszNTg4ID8KClRoYW5rcyEKQ2hyaXMK
Cgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hl
bEBjb2xsYWJvcmEuY29tPgo+IC0tLQo+IMKgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2FybS9yb2NrY2hpcC9wbXUueWFtbCB8IDIgKysKPiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2FybS9yb2NrY2hpcC9wbXUueWFtbAo+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9yb2NrY2hpcC9wbXUueWFtbAo+IGluZGV4IDVlY2UzODA2NWU1NC4uNGM2
NDUwNDljMTViIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9hcm0vcm9ja2NoaXAvcG11LnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvYXJtL3JvY2tjaGlwL3BtdS55YW1sCj4gQEAgLTI1LDYgKzI1LDcgQEAgc2VsZWN0
Ogo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcm9ja2NoaXAscmszMzY4LXBtdQo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgIC0gcm9ja2NoaXAscmszMzk5LXBtdQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
IC0gcm9ja2NoaXAscmszNTY4LXBtdQo+ICvCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxy
azM1ODgtcG11Cj4gwqAKPiDCoMKgIHJlcXVpcmVkOgo+IMKgwqDCoMKgIC0gY29tcGF0aWJsZQo+
IEBAIC0zOSw2ICs0MCw3IEBAIHByb3BlcnRpZXM6Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBy
b2NrY2hpcCxyazMzNjgtcG11Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxyazMz
OTktcG11Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxyazM1NjgtcG11Cj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoCAtIHJvY2tjaGlwLHJrMzU4OC1wbXUKPiDCoMKgwqDCoMKgwqAgLSBj
b25zdDogc3lzY29uCj4gwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHNpbXBsZS1tZmQKPiDCoAo+IC0t
IAo+IDIuMzUuMQo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
