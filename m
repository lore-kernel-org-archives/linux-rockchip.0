Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D87BEC79FA1
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 01:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+Ewk+mZDz/UfMttShPCpwWe4FQgUlmzPi509VaKBXk=; b=DvN9Lf0EzRJM1u
	m0+TCIVggeIa9DBM67qBkHeYGBM4Lxab2rn7pjE8j41MbC9Upwjej/by0azxa8v1lw4tmptjgyLEE
	XGhWYRE18fyKK/1VbpzXlPxxcpvnCzgA1u/lTjYqemoCUqsGNtulRot3ecXZBbZIqUMScxxCqW7FQ
	8eKeJFkDW8Yvr7FTG9fHzvValalOXZt9kONt94/49jUbNIWABHDmokY3LKgYKHx8xMggKNBNkGsBE
	ynq1yoQwTZC8Ad3XOFg82x1FSHb2EyZkoKQ60jJletopRxPl1IHBlmmfaqyHeAQx/8r2Rdk9hOSwC
	HrUOJIAELivgukZx3FQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x46qe-0000000Aa8i-05D8;
	Wed, 09 Sep 2026 01:11:36 +0000
Received: from mail-m81110.xmail.ntesmail.com ([156.224.81.110])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x46qa-0000000Aa7t-4BFY;
	Wed, 09 Sep 2026 01:11:34 +0000
Received: from [172.16.12.48] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4d09a7d19;
	Wed, 9 Sep 2026 09:11:28 +0800 (GMT+08:00)
Message-ID: <1255b90b-1388-4ca4-a869-75db37100a2d@rock-chips.com>
Date: Wed, 9 Sep 2026 09:11:27 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Alexey Charkov <alchark@flipper.net>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v6 08/10] PCI: dw-rockchip: Set broken L1SS resume flag
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Jingoo Han <jingoohan1@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 "Yury Norov (NVIDIA)" <yury.norov@gmail.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
References: <20260908-rockchip-pcie-system-suspend-v6-0-fbabcca9921b@collabora.com>
 <20260908-rockchip-pcie-system-suspend-v6-8-fbabcca9921b@collabora.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260908-rockchip-pcie-system-suspend-v6-8-fbabcca9921b@collabora.com>
X-HM-Tid: 0aa083b84b0203a4kunm0f25797c442935
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGUgeH1YfGhhOGkkZTx
	0YSBlWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ASB17gow20NLkS56QPasneUGrbAw71hZaG2hR4uSIADguVNkQym4V5wJ7fVuZH2HvxZKRkqicThjzBM2JW+i4SGaKA0ye4mUUWp1pIRh0eWD5mhzO454Vco7GwOlBG5khWE2m/NXWgdsftFaxXEsqwhsZGZf3iEHBAEd3NEQiGs=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=UbpeY8A/bkmtJlJ/cwp8vEYR3E9oMYSezTRlhuo4liw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_181133_312547_E2F50CE7 
X-CRM114-Status: GOOD (  19.22  )
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

5ZyoIDIwMjYvMDkvMDgg5pif5pyf5LqMIDIyOjUxLCBTZWJhc3RpYW4gUmVpY2hlbCDlhpnpgZM6
Cj4gU2V0dXAgdGhlIGJyb2tlbl9sMXNzX3Jlc3VtZSBmbGFnLCBzbyB0aGF0IHBjaV9zdXNwZW5k
X3JldGFpbnNfY29udGV4dCgpCj4gcmV0dXJucyBmYWxzZSBvbiB0aGUgUm9ja2NoaXAgcGxhdGZv
cm0gYWxsb3dpbmcgUENJZSBwZXJpcGhlcmFsIGRldmljZQo+IGRyaXZlcnMgdG8gYWN0IHVwb24u
Cj4gCj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVs
QGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ll
LWR3LXJvY2tjaGlwLmMgfCAxNiArKysrKysrKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwg
MTYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ll
LWR3LXJvY2tjaGlwLmMKPiBpbmRleCAxNzUzMDUwN2U0MWIuLjQ3ZDljYWI5MDliYyAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiAr
KysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiBAQCAt
NDU4LDYgKzQ1OCwyMSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfaG9zdF9pbml0KHN0cnVj
dCBkd19wY2llX3JwICpwcCkKPiAgIAlyZXR1cm4gMDsKPiAgIH0KPiAgIAo+ICtzdGF0aWMgdm9p
ZCByb2NrY2hpcF9wY2llX2hvc3RfcG9zdF9pbml0KHN0cnVjdCBkd19wY2llX3JwICpwcCkKPiAr
ewo+ICsJLyoKPiArCSAqIER1cmluZyBzeXN0ZW0gc3VzcGVuZCwgdGhlIFJvY2tjaGlwIFJDIGRy
aXZlciBlZmZlY3RpdmVseSBwb3dlcnMgb2ZmCj4gKwkgKiB0aGUgY29udHJvbGxlci4gSWYgdGhl
IGxpbmsgaXMgaW4gTDFTUyBhbmQgdGhlIGVuZHBvaW50IGFzc2VydHMKPiArCSAqIENMS1JFUSMg
dG8gZXhpdCBMMVNTLCB0aGUgdGltZSByZXF1aXJlZCB0byB3YWtlIHRoZSBzeXN0ZW0gYW5kCj4g
KwkgKiByZXN0b3JlIHRoZSBQSFkvUkVGQ0xLIG1heSBleGNlZWQgdGhlIEwxU1MgZXhpdCB0aW1p
bmcKPiArCSAqIChMMTBfUkVGQ0xLX09OICsgVF9DT01NT05NT0RFKSwgcmVzdWx0aW5nIGluIExp
bmsgRG93biAoTERuKSBhbmQgYQo+ICsJICogcmVzZXQgb2YgdGhlIGVuZHBvaW50LiBTZXQgdGhp
cyBmbGFnIHRvIGluZGljYXRlIHRoaXMgbGltaXRhdGlvbiB0bwo+ICsJICogY2xpZW50IGRyaXZl
cnMgc28gdGhhdCB0aGV5IGNhbiBhdm9pZCByZWx5aW5nIG9uIGRldmljZSBzdGF0ZSBiZWluZwo+
ICsJICogcHJlc2VydmVkIGR1cmluZyBzeXN0ZW0gc3VzcGVuZC4KPiArCSAqLwoKWWVzLCB0aGlz
IGlzIHR1cmUgZm9yIFJvY2tjaGlwIHBsYXRmb3JtcyB0aGF0IHBvd2VyaW5nIG9mZiB0aGUKY29u
dHJvbGxlciBhcyB3ZWxsIGFzIFBIWSBpcyBhIGRlZmF1bHQgYWN0aW9uIGR1cmluZyBzeXN0ZW0g
c3VzcGVuZC4KClJldmlld2VkLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNv
bT4KCj4gKwlwcC0+YnJpZGdlLT5icm9rZW5fbDFzc19yZXN1bWUgPSB0cnVlOwo+ICt9Cj4gKwo+
ICAgc3RhdGljIHZvaWQgcm9ja2NoaXBfcGNpZV9wbWVfdHVybl9vZmYoc3RydWN0IGR3X3BjaWVf
cnAgKnBwKQo+ICAgewo+ICAgCXN0cnVjdCBkd19wY2llICpwY2kgPSB0b19kd19wY2llX2Zyb21f
cHAocHApOwo+IEBAIC00OTcsNiArNTEyLDcgQEAgc3RhdGljIHZvaWQgcm9ja2NoaXBfcGNpZV9w
bWVfdHVybl9vZmYoc3RydWN0IGR3X3BjaWVfcnAgKnBwKQo+ICAgCj4gICBzdGF0aWMgY29uc3Qg
c3RydWN0IGR3X3BjaWVfaG9zdF9vcHMgcm9ja2NoaXBfcGNpZV9ob3N0X29wcyA9IHsKPiAgIAku
aW5pdCA9IHJvY2tjaGlwX3BjaWVfaG9zdF9pbml0LAo+ICsJLnBvc3RfaW5pdCA9IHJvY2tjaGlw
X3BjaWVfaG9zdF9wb3N0X2luaXQsCj4gICAJLnBtZV90dXJuX29mZiA9IHJvY2tjaGlwX3BjaWVf
cG1lX3R1cm5fb2ZmLAo+ICAgfTsKPiAgIAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
