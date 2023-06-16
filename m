Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0739EB64DA
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 03:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t03yrjZlIvwH0+vWS0YJcDFXnuf/9e+rgLfwIy9UjJw=; b=laX6tSdm4wSRmN
	D8CCa4Jh0sq0JW4tSp8pSB3sdV/32b0D071mPxqyp024znuGgDPGszgCWSvaa5QRIffvy3CrpkmbG
	UXKdTJksLmLMPaalLpacMy6AsAh/mMMSztl4XtHdFRK9DIf6U377wK7LVAHbH9BhwljY3ABx/B/GL
	0oG1vZtrc992tvIr3tIMQJKWkD39KlxiBb4WrNqKGjlaDS0vkP7+BmoiN4I8BIciaWj7p3cYvqnVH
	1aKf4xTJvLcV6GMk0Bn+r6tKb7FI5cEplxc3WhmnddIo7sNux1HZDyeUUCgED7nNO6MQRhS/2Bops
	TJADFOCBuRajBIKFMFtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9ztp-00Ghlg-0n;
	Fri, 16 Jun 2023 03:13:21 +0000
Received: from mail-m11875.qiye.163.com ([115.236.118.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9ztl-00Ghkn-2j
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jun 2023 03:13:19 +0000
Received: from [192.168.60.56] (unknown [103.29.142.67])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id E01B8280391;
	Fri, 16 Jun 2023 11:13:08 +0800 (CST)
Message-ID: <45886fef-b84a-5704-0a08-100a20296323@rock-chips.com>
Date: Fri, 16 Jun 2023 11:13:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: usb: typec: tcpm: add get max power support
Content-Language: en-US
To: Guenter Roeck <linux@roeck-us.net>, heikki.krogerus@linux.intel.com,
 gregkh@linuxfoundation.org, sebastian.reichel@collabora.com, heiko@sntech.de
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, huangtao@rock-chips.com,
 william.wu@rock-chips.com, jianwei.zheng@rock-chips.com,
 yubing.zhang@rock-chips.com, wmc@rock-chips.com
References: <20230616022157.25877-1-frank.wang@rock-chips.com>
 <f6c9fc11-df51-5ff8-c744-3325c20643b0@roeck-us.net>
From: Frank Wang <frank.wang@rock-chips.com>
In-Reply-To: <f6c9fc11-df51-5ff8-c744-3325c20643b0@roeck-us.net>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaQ0weVh9LGEwdQkJOT04eHlUTARMWGhIXJBQOD1
	lXWRgSC1lBWUpLSFVJQlVKT0lVTUxZV1kWGg8SFR0UWUFZT0tIVUpKS0NISFVKS0tVS1kG
X-HM-Tid: 0a88c23148222eb1kusne01b8280391
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PjY6Mzo5Vj1IURBJMRAUCRQy
	Nk0KCRxVSlVKTUNNQ0NOSkJLSU1IVTMWGhIXVR0JGhUQVQwaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQU9PT0w3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_201318_039840_26F790DD 
X-CRM114-Status: GOOD (  14.71  )
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

SGkgR3VlbnRlciwKCk9uIDIwMjMvNi8xNiAxMDoyNiwgR3VlbnRlciBSb2VjayB3cm90ZToKPiBP
biA2LzE1LzIzIDE5OjIxLCBGcmFuayBXYW5nIHdyb3RlOgo+PiBUcmF2ZXJzZSBmaXhlZCBwZG9z
IHRvIGNhbGN1bGF0ZSB0aGUgbWF4aW11bSBwb3dlciB0aGF0IHRoZSBjaGFyZ2VyCj4+IGNhbiBw
cm92aWRlLCBhbmQgaXQgY2FuIGJlIGdvdCBieSBQT1dFUl9TVVBQTFlfUFJPUF9JTlBVVF9QT1dF
Ul9MSU1JVAo+PiBwcm9wZXJ0eS4KPj4KPgo+IFdhc24ndCB0aGlzIGFscmVhZHkgdjMgYmVmb3Jl
ID8gV2hhdCBoYXBwZW5lZCB0byB0aGUgdmVyc2lvbiwgYW5kIHRoZSAKPiBjaGFuZ2UgbG9nID8K
PiBPciBpcyB0aGlzIGEgY29tcGxldGVseSBkaWZmZXJlbnQvbmV3IHBhdGNoID8KPgoKWWVzLCBp
dCBpcyB0aGUgdjMgcGF0Y2ggYmVmb3JlIHdoaWNoIGhhcyBiZWVuIGhvbGQgZm9yIGEgbG9uZyB0
aW1lLCAKR3JlZ2toIGFza2VkIG1lIHRvIHJlYmFzZSBpdMKgIGFuZCByZXN1Ym1pdCwgc28gc2hv
dWxkIEkgYWxzbyBhZGQgYW4gCiJSRVNFTkQiIHRhZyBpbiBzdWJqZWN0PwoKCkJSLgpGcmFuawoK
Cj4gR3VlbnRlcgo+Cj4+IFNpZ25lZC1vZmYtYnk6IEZyYW5rIFdhbmcgPGZyYW5rLndhbmdAcm9j
ay1jaGlwcy5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL3VzYi90eXBlYy90Y3BtL3RjcG0uYyB8
IDI0ICsrKysrKysrKysrKysrKysrKysrKysrKwo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMjQgaW5z
ZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvdHlwZWMvdGNwbS90Y3Bt
LmMgCj4+IGIvZHJpdmVycy91c2IvdHlwZWMvdGNwbS90Y3BtLmMKPj4gaW5kZXggOWY2YWFhM2U3
MGNhOC4uODI5ZDc1ZWJhYjQyMiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy91c2IvdHlwZWMvdGNw
bS90Y3BtLmMKPj4gKysrIGIvZHJpdmVycy91c2IvdHlwZWMvdGNwbS90Y3BtLmMKPj4gQEAgLTYz
NDAsNiArNjM0MCwyNyBAQCBzdGF0aWMgaW50IHRjcG1fcHN5X2dldF9jdXJyZW50X25vdyhzdHJ1
Y3QgCj4+IHRjcG1fcG9ydCAqcG9ydCwKPj4gwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4gwqAgfQo+
PiDCoCArc3RhdGljIGludCB0Y3BtX3BzeV9nZXRfaW5wdXRfcG93ZXJfbGltaXQoc3RydWN0IHRj
cG1fcG9ydCAqcG9ydCwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB1bmlvbiBwb3dlcl9zdXBwbHlfcHJvcHZhbCAqdmFsKQo+PiArewo+PiArwqDCoMKgIHVu
c2lnbmVkIGludCBzcmNfbXYsIHNyY19tYSwgbWF4X3NyY191dyA9IDA7Cj4+ICvCoMKgwqAgdW5z
aWduZWQgaW50IGksIHRtcDsKPj4gKwo+PiArwqDCoMKgIGZvciAoaSA9IDA7IGkgPCBwb3J0LT5u
cl9zb3VyY2VfY2FwczsgaSsrKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCB1MzIgcGRvID0gcG9ydC0+
c291cmNlX2NhcHNbaV07Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIGlmIChwZG9fdHlwZShwZG8p
ID09IFBET19UWVBFX0ZJWEVEKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNyY19tdiA9
IHBkb19maXhlZF92b2x0YWdlKHBkbyk7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNyY19t
YSA9IHBkb19tYXhfY3VycmVudChwZG8pOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0bXAg
PSBzcmNfbXYgKiBzcmNfbWE7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1heF9zcmNfdXcg
PSB0bXAgPiBtYXhfc3JjX3V3ID8gdG1wIDogbWF4X3NyY191dzsKPj4gK8KgwqDCoMKgwqDCoMKg
IH0KPj4gK8KgwqDCoCB9Cj4+ICsKPj4gK8KgwqDCoCB2YWwtPmludHZhbCA9IG1heF9zcmNfdXc7
Cj4+ICvCoMKgwqAgcmV0dXJuIDA7Cj4+ICt9Cj4+ICsKPj4gwqAgc3RhdGljIGludCB0Y3BtX3Bz
eV9nZXRfcHJvcChzdHJ1Y3QgcG93ZXJfc3VwcGx5ICpwc3ksCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtIHBvd2VyX3N1cHBseV9wcm9wZXJ0eSBwc3AsCj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1bmlvbiBwb3dlcl9zdXBwbHlfcHJv
cHZhbCAqdmFsKQo+PiBAQCAtNjM2OSw2ICs2MzkwLDkgQEAgc3RhdGljIGludCB0Y3BtX3BzeV9n
ZXRfcHJvcChzdHJ1Y3QgCj4+IHBvd2VyX3N1cHBseSAqcHN5LAo+PiDCoMKgwqDCoMKgIGNhc2Ug
UE9XRVJfU1VQUExZX1BST1BfQ1VSUkVOVF9OT1c6Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXQg
PSB0Y3BtX3BzeV9nZXRfY3VycmVudF9ub3cocG9ydCwgdmFsKTsKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgIGJyZWFrOwo+PiArwqDCoMKgIGNhc2UgUE9XRVJfU1VQUExZX1BST1BfSU5QVVRfUE9XRVJf
TElNSVQ6Cj4+ICvCoMKgwqDCoMKgwqDCoCB0Y3BtX3BzeV9nZXRfaW5wdXRfcG93ZXJfbGltaXQo
cG9ydCwgdmFsKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGJyZWFrOwo+PiDCoMKgwqDCoMKgIGRlZmF1
bHQ6Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXQgPSAtRUlOVkFMOwo+PiDCoMKgwqDCoMKgwqDC
oMKgwqAgYnJlYWs7Cj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
