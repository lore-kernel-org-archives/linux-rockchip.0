Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF54DC79F82
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 01:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3k4AgY9Bk5qcR7oNExAE83rvXEq6JRMopYzfLgWWjqs=; b=2bIXoU+0dXrcqk
	qHLIy7wocamOcLb5Bnh5DuB/qPbVzTtA33FTmucm+TvIW4z0jYfT9o56q520bpVoI+UZFtrdVtGY1
	xpaIZIL+/MW9zDXJduMeh5NN2yLmIAiljChWyfcMMCxysVBNtA04aCZ2D6Bn3bv+uixPdusQ5Sbpc
	KDwdNqfk4byD8y6nVCsP6Qz6iYXdMjxmX7MKFR4o7zWUa7yAhGh8ITVihB+kNQ0mXBA90LVOzh79i
	V4dafBifOipMMHf3C4olnFwcM1ETmUcN4+Byq78B0K+R55MLZFbjzSljhS8DA4okSteejb+yqrgy1
	Ll5DyCx6DJ9SoplS2hCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x46tI-0000000AaP7-1mmc;
	Wed, 09 Sep 2026 01:14:20 +0000
Received: from mail-m9366.xmail.ntesmail.com ([103.126.93.66])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x46tF-0000000AaOA-1wsS;
	Wed, 09 Sep 2026 01:14:19 +0000
Received: from [172.16.12.48] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4d09c3d85;
	Wed, 9 Sep 2026 09:14:13 +0800 (GMT+08:00)
Message-ID: <8c2dd6a7-d733-4d78-9b92-c7e4c7e6b7d8@rock-chips.com>
Date: Wed, 9 Sep 2026 09:14:12 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Alexey Charkov <alchark@flipper.net>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v6 10/10] PCI: dw-rockchip: Clear debug buffer before
 entering L2
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
 <20260908-rockchip-pcie-system-suspend-v6-10-fbabcca9921b@collabora.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260908-rockchip-pcie-system-suspend-v6-10-fbabcca9921b@collabora.com>
X-HM-Tid: 0aa083bacfc303a4kunm71968669442fc6
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGUNKH1ZMTx0aGkoZSE
	1OQklWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=XLw0Z5PjC40FLlLjEeuPsxjJH3DNpHn6kqQucBi89rQtQ8GMBSnyGCS+lCxIbo2P2qivwbPYZlABvOGQrBf82i3IwcXCABKIgffePviEmryW6oO28rIG3M4VeRzHFsA3wxL/eBxr+z3nGQf3BWcNsbOPpN5p8bCy37YLmRlBboI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=nXrG2bOu/f4zoy6afuZMtxAka40yrLWjvBxcUj894m8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_181417_745184_2DFAFDAD 
X-CRM114-Status: GOOD (  16.01  )
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
Cj4gQ2xlYXIgdGhlIGRlYnVnIGJ1ZmZlciBiZWZvcmUgZW50ZXJpbmcgdGhlIEwyIHN0YXRlIHRv
IGVhc2UgZGVidWdnaW5nCj4gbGluayB0cmFpbmluZyBpc3N1ZXMgb24gcmVzdW1lLgo+IAoKUmV2
aWV3ZWQtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgoKPiBDYzogU2hh
d24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0
aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4gICBk
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgfCAxMyArKysrKysr
KysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgYi9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiBpbmRleCBlNjc1OTE4
YmExODQuLmE1MDhmNGZmZmQyYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiBAQCAtNzcsNiArNzcsOSBAQAo+ICAgI2RlZmluZSAgUENJ
RV9DTEtSRVFfTk9UX1JFQURZCQlGSUVMRF9QUkVQX1dNMTYoQklUKDApLCAwKQo+ICAgI2RlZmlu
ZSAgUENJRV9DTEtSRVFfUFVMTF9ET1dOCQlGSUVMRF9QUkVQX1dNMTYoR0VOTUFTSygxMywgMTIp
LCAxKQo+ICAgCj4gKy8qIEdlbmVyYWwgRGVidWcgUmVnaXN0ZXIgKi8KPiArI2RlZmluZSBQQ0lF
X0NMSUVOVF9HRU5FUkFMX0RFQlVHCTB4MTA0Cj4gKwo+ICAgLyogUkFTREVTIFRCQSBpbmZvcm1h
dGlvbiAqLwo+ICAgI2RlZmluZSBQQ0lFX0NMSUVOVF9DRE1fUkFTREVTX1RCQV9JTkZPX0NNTgkw
eDE1NAo+ICAgI2RlZmluZSAgUENJRV9DTElFTlRfQ0RNX1JBU0RFU19UQkFfTDFfMQlCSVQoNCkK
PiBAQCAtMTA0Myw2ICsxMDQ2LDExIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9yY19yZXNl
dF9yb290X3BvcnQoc3RydWN0IHBjaV9ob3N0X2JyaWRnZSAqYnJpZGdlLAo+ICAgCXJldHVybiBy
ZXQ7Cj4gICB9Cj4gICAKPiArc3RhdGljIGlubGluZSB2b2lkIHJvY2tjaGlwX3BjaWVfbGlua19z
dGF0dXNfY2xlYXIoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKQo+ICt7Cj4gKwlyb2Nr
Y2hpcF9wY2llX3dyaXRlbF9hcGIocm9ja2NoaXAsIFBDSUVfQ0xJRU5UX0dFTkVSQUxfREVCVUcs
IDB4MCk7Cj4gK30KPiArCj4gICBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfc3VzcGVuZChzdHJ1
Y3QgZGV2aWNlICpkZXYpCj4gICB7Cj4gICAJc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlw
ID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gQEAgLTEwNTYsNiArMTA2NCwxMSBAQCBzdGF0aWMg
aW50IHJvY2tjaGlwX3BjaWVfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gICAKPiAgIAly
b2NrY2hpcC0+aW50eCA9IHJvY2tjaGlwX3BjaWVfcmVhZGxfYXBiKHJvY2tjaGlwLCBQQ0lFX0NM
SUVOVF9JTlRSX01BU0tfTEVHQUNZKTsKPiAgIAo+ICsJLyogQWxsIHN1Yi1kZXZpY2VzIGFyZSBp
biBEM2hvdCBieSBQQ0llIHN0YWNrICovCj4gKwlkd19wY2llX2RiaV9yb193cl9kaXMocGNpKTsK
PiArCj4gKwlyb2NrY2hpcF9wY2llX2xpbmtfc3RhdHVzX2NsZWFyKHJvY2tjaGlwKTsKPiArCj4g
ICAJcmV0ID0gZHdfcGNpZV9zdXNwZW5kX25vaXJxKHBjaSk7Cj4gICAJaWYgKHJldCkKPiAgIAkJ
cmV0dXJuIHJldDsKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
