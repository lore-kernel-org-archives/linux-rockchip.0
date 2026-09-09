Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38CEAC79F82
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 01:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MsJHS4MPJaPnlNdzjapaKcm/OhJQta64NMRG3SnGyp0=; b=eodOA8EfzB1sW3
	oysqTKRcr3DCAW6IdcYscLHteMOqZ7eFUGN+D8qDnqD/JZTA1Q99xW8+8UANqz7hFa3mtRggOnCkm
	mGILWczP7uSWL1kJpLvKgvS5k0zqi1JsDThBMqzrlTD7VM8Ul2YPMR09lud5pU9h7DDAjJtqk0N3l
	pZ+u8d4eQIeHHcsWBeP87HJ6ftvJYosU34F9l4ehb+/mjR/k+NRP4F2oVsYsjmzjAnf9+H/lXLElq
	OkRHXmDlPZb1tvGX7C7w+4y/Hw3ccIN9Er2n7lSbWeBiycOO1ONFrxUB56EwAOIHZG6pufPEwBpy1
	zdmg16shQHQosj6G2KHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x46mW-0000000AZnh-1pxz;
	Wed, 09 Sep 2026 01:07:20 +0000
Received: from mail-m16023653212.xmail.ntesmail.com ([160.236.53.212])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x46mS-0000000AZnB-0Zj2;
	Wed, 09 Sep 2026 01:07:18 +0000
Received: from [172.16.12.48] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4d098a741;
	Wed, 9 Sep 2026 09:07:11 +0800 (GMT+08:00)
Message-ID: <5e4f9b07-f11b-4d52-b1d4-3b680b457eb3@rock-chips.com>
Date: Wed, 9 Sep 2026 09:07:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Alexey Charkov <alchark@flipper.net>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v6 07/10] PCI: dw-rockchip: Add pme_turn_off support
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
 <20260908-rockchip-pcie-system-suspend-v6-7-fbabcca9921b@collabora.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260908-rockchip-pcie-system-suspend-v6-7-fbabcca9921b@collabora.com>
X-HM-Tid: 0aa083b45eab03a4kunma4967f8f441eaa
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQh9LSVZJTE5LHxgaTk
	5DQkxWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=BPSKVn6h6LN29eN2GrvbN/1+zF4JRqE/CggubnWskTRYkjICKOsaiYGhd489E3P5YTXfIGIdIFXhk0ak0Pzfs+tVgHPiVJVCqwo6hIP5KE7e/rA4Cj5arkRjcoz4e+MM0s1H1MwPxVBp9b3zolVMrF7Q/27lgrCu4HTuAS1rFjI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=8O3sEMbdttlkjB7YR4EWG8ZoEn7yeFuuCH+g88V++TQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_180716_754459_FC27BAC4 
X-CRM114-Status: GOOD (  19.83  )
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
Cj4gUHJlcGFyZSBSb2NrY2hpcCBQQ0llIGNvbnRyb2xsZXIgZm9yIHN5c3RlbSBzdXNwZW5kIHN1
cHBvcnQgYnkKPiBhZGRpbmcgdGhlIFBNRSB0dXJuIG9mZiBvcGVyYXRpb24uCj4gCgpSZXZpZXdl
ZC1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cgo+IFNpZ25lZC1vZmYt
Ynk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+
IC0tLQo+ICAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIHwg
NDQgKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgNDQgaW5z
ZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9w
Y2llLWR3LXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJv
Y2tjaGlwLmMKPiBpbmRleCAxZTQ4MDk5ZTM2ZTQuLjE3NTMwNTA3ZTQxYiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiArKysgYi9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiBAQCAtNDUsNiAr
NDUsNyBAQAo+ICAgI2RlZmluZSAgUENJRV9DTElFTlRfTERfUlFfUlNUX0dSVAlGSUVMRF9QUkVQ
X1dNMTYoQklUKDMpLCAxKQo+ICAgI2RlZmluZSAgUENJRV9DTElFTlRfRU5BQkxFX0xUU1NNCUZJ
RUxEX1BSRVBfV00xNihCSVQoMiksIDEpCj4gICAjZGVmaW5lICBQQ0lFX0NMSUVOVF9ESVNBQkxF
X0xUU1NNCUZJRUxEX1BSRVBfV00xNihCSVQoMiksIDApCj4gKyNkZWZpbmUgUENJRV9DTElFTlRf
SU5UUl9TVEFUVVNfTVNHX1JYCTB4MDQKPiAgIAo+ICAgLyogSW50ZXJydXB0IFN0YXR1cyBSZWdp
c3RlciBSZWxhdGVkIHRvIExlZ2FjeSBJbnRlcnJ1cHQgKi8KPiAgICNkZWZpbmUgUENJRV9DTElF
TlRfSU5UUl9TVEFUVVNfTEVHQUNZCTB4OAo+IEBAIC02NCw2ICs2NSwxMSBAQAo+ICAgCj4gICAv
KiBJbnRlcnJ1cHQgTWFzayBSZWdpc3RlciBSZWxhdGVkIHRvIE1pc2NlbGxhbmVvdXMgT3BlcmF0
aW9uICovCj4gICAjZGVmaW5lIFBDSUVfQ0xJRU5UX0lOVFJfTUFTS19NSVNDCTB4MjQKPiArI2Rl
ZmluZSBQQ0lFX0NMSUVOVF9QT1dFUgkJMHgyYwo+ICsjZGVmaW5lIFBDSUVfQ0xJRU5UX01TR19H
RU4JCTB4MzQKPiArI2RlZmluZSBQTUVfUkVBRFlfRU5URVJfTDIzCQlCSVQoMykKPiArI2RlZmlu
ZSBQTUVfVFVSTl9PRkYJCQlGSUVMRF9QUkVQX1dNMTYoQklUKDQpLCAxKQo+ICsjZGVmaW5lIFBN
RV9UT19BQ0sJCQlGSUVMRF9QUkVQX1dNMTYoQklUKDkpLCAxKQo+ICAgCj4gICAvKiBQb3dlciBN
YW5hZ2VtZW50IENvbnRyb2wgUmVnaXN0ZXIgKi8KPiAgICNkZWZpbmUgUENJRV9DTElFTlRfUE9X
RVJfQ09OCQkweDJjCj4gQEAgLTQ1Miw4ICs0NTgsNDYgQEAgc3RhdGljIGludCByb2NrY2hpcF9w
Y2llX2hvc3RfaW5pdChzdHJ1Y3QgZHdfcGNpZV9ycCAqcHApCj4gICAJcmV0dXJuIDA7Cj4gICB9
Cj4gICAKPiArc3RhdGljIHZvaWQgcm9ja2NoaXBfcGNpZV9wbWVfdHVybl9vZmYoc3RydWN0IGR3
X3BjaWVfcnAgKnBwKQo+ICt7Cj4gKwlzdHJ1Y3QgZHdfcGNpZSAqcGNpID0gdG9fZHdfcGNpZV9m
cm9tX3BwKHBwKTsKPiArCXN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCA9IHRvX3JvY2tj
aGlwX3BjaWUocGNpKTsKPiArCXN0cnVjdCBkZXZpY2UgKmRldiA9IHJvY2tjaGlwLT5wY2kuZGV2
Owo+ICsJdTMyIHN0YXR1czsKPiArCWludCByZXQ7Cj4gKwo+ICsJLyogMS4gQnJvYWRjYXN0IFBN
RV9UdXJuX09mZiBNZXNzYWdlLCBiaXQgNCBzZWxmLWNsZWFyIG9uY2UgZG9uZSAqLwo+ICsJcm9j
a2NoaXBfcGNpZV93cml0ZWxfYXBiKHJvY2tjaGlwLCBQTUVfVFVSTl9PRkYsIFBDSUVfQ0xJRU5U
X01TR19HRU4pOwo+ICsJcmV0ID0gcmVhZGxfcG9sbF90aW1lb3V0KHJvY2tjaGlwLT5hcGJfYmFz
ZSArIFBDSUVfQ0xJRU5UX01TR19HRU4sCj4gKwkJCQkgc3RhdHVzLCAhKHN0YXR1cyAmIEJJVCg0
KSksIFBDSUVfUE1FX1RPX0wyX1RJTUVPVVRfVVMgLyAxMCwKPiArCQkJCSBQQ0lFX1BNRV9UT19M
Ml9USU1FT1VUX1VTKTsKPiArCWlmIChyZXQpIHsKPiArCQlkZXZfd2FybihkZXYsICJGYWlsZWQg
dG8gc2VuZCBQTUVfVHVybl9PZmZcbiIpOwo+ICsJCXJldHVybjsKPiArCX0KPiArCj4gKwkvKiAy
LiBXYWl0IGZvciBQTUVfVE9fQWNrLCBiaXQgOSB3aWxsIGJlIHNldCBvbmNlIHJlY2VpdmVkICov
Cj4gKwlyZXQgPSByZWFkbF9wb2xsX3RpbWVvdXQocm9ja2NoaXAtPmFwYl9iYXNlICsgUENJRV9D
TElFTlRfSU5UUl9TVEFUVVNfTVNHX1JYLAo+ICsJCQkJIHN0YXR1cywgc3RhdHVzICYgQklUKDkp
LCBQQ0lFX1BNRV9UT19MMl9USU1FT1VUX1VTIC8gMTAsCj4gKwkJCQkgUENJRV9QTUVfVE9fTDJf
VElNRU9VVF9VUyk7Cj4gKwlpZiAocmV0KSB7Cj4gKwkJZGV2X3dhcm4oZGV2LCAiRmFpbGVkIHRv
IHJlY2VpdmUgUE1FX1RPX0Fja1xuIik7Cj4gKwkJcmV0dXJuOwo+ICsJfQo+ICsKPiArCS8qIDMu
IENsZWFyIFBNRV9UT19BY2sgYW5kIFdhaXQgZm9yIHJlYWR5IHRvIGVudGVyIEwyMyBtZXNzYWdl
ICovCj4gKwlyb2NrY2hpcF9wY2llX3dyaXRlbF9hcGIocm9ja2NoaXAsIFBNRV9UT19BQ0ssIFBD
SUVfQ0xJRU5UX0lOVFJfU1RBVFVTX01TR19SWCk7Cj4gKwlyZXQgPSByZWFkbF9wb2xsX3RpbWVv
dXQocm9ja2NoaXAtPmFwYl9iYXNlICsgUENJRV9DTElFTlRfUE9XRVIsCj4gKwkJCQkgc3RhdHVz
LCBzdGF0dXMgJiBQTUVfUkVBRFlfRU5URVJfTDIzLAo+ICsJCQkJIFBDSUVfUE1FX1RPX0wyX1RJ
TUVPVVRfVVMgLyAxMCwKPiArCQkJCSBQQ0lFX1BNRV9UT19MMl9USU1FT1VUX1VTKTsKPiArCWlm
IChyZXQpCj4gKwkJZGV2X2VycihkZXYsICJGYWlsZWQgdG8gZ2V0IHJlYWR5IHRvIGVudGVyIEwy
MyBtZXNzYWdlXG4iKTsKPiArfQo+ICsKPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHdfcGNpZV9o
b3N0X29wcyByb2NrY2hpcF9wY2llX2hvc3Rfb3BzID0gewo+ICAgCS5pbml0ID0gcm9ja2NoaXBf
cGNpZV9ob3N0X2luaXQsCj4gKwkucG1lX3R1cm5fb2ZmID0gcm9ja2NoaXBfcGNpZV9wbWVfdHVy
bl9vZmYsCj4gICB9Owo+ICAgCj4gICAvKgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
