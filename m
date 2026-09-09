Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92C7CC79FB5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 00:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQO2UAlMyNNxcWYe4tY3y+HLXb+AM7mSCit1cy7LhIM=; b=wbBH9diPGWTVFb
	2jTyfZCYdbTExvu4DE94WOzn8Imdr9mnyt9kVPNera8GPjsFNqeWE4di1jZLSpHyTkzfaCB+ros6G
	Jfm9om6lBP91zU/QkC0WQ+mmGa0dh2GFH7WIkXeBfaODaMfHU0q9VtDj6JfuEca2LdFAs7W//2Z+3
	JwM5mCQt39Xa/6XhTRp0jO/MHcKNGVOOCdUe1WsUzZC6mL9xK0KtrM/YYM/jOJSg3iMX35CP7S8It
	OatBEm+3LWZe8eMfe1cP3lDYX75PG87bizWNJD+ieVr2p2KrL+DqmRocizHwD78MvqGNWY7kiP1kg
	0kVfrheOjwdR8NjrcdGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x46cR-0000000AZ10-0GJ1;
	Wed, 09 Sep 2026 00:56:55 +0000
Received: from mail-m81153.xmail.ntesmail.com ([156.224.81.153])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x46cM-0000000AZ05-0EUg;
	Wed, 09 Sep 2026 00:56:54 +0000
Received: from [172.16.12.48] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4d0922f42;
	Wed, 9 Sep 2026 08:56:45 +0800 (GMT+08:00)
Message-ID: <f26552c9-0950-4206-8d39-b615e3737651@rock-chips.com>
Date: Wed, 9 Sep 2026 08:56:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Alexey Charkov <alchark@flipper.net>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v6 04/10] PCI: dw-rockchip: Add helper function for
 enhanced LTSSM control mode
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
 <20260908-rockchip-pcie-system-suspend-v6-4-fbabcca9921b@collabora.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260908-rockchip-pcie-system-suspend-v6-4-fbabcca9921b@collabora.com>
X-HM-Tid: 0aa083aad1c203a4kunm88587246440179
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGkhJGlYfHh4aTk9KHR
	pJQk1WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=M85xuT2JXX3DURsJ++iD9e9zee9YmU6/UQ/FVBMxz6V/w1u5rksNrh9mykBTETEjSIMOoPHrMaRbvXqsDmjzKzaYQeIXyCT9Nv/6OvTBPVkWib9HHNbW/eRMhpG//5nsZt2obyb/gGPfRX8AFyEG4JdqlOqZIV+QCTDB/TdGEBc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=7MYZRtAVw85vCznj5/QFIWvq8+/sZ52tn4n6V859Sc4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_175650_378621_8C3B8A7F 
X-CRM114-Status: GOOD (  17.39  )
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
Cj4gUmVtb3ZlIGNvZGUgZHVwbGljYXRpb24gYW5kIGltcHJvdmUgcmVhZGFiaWxpdHkgYnkgaW50
cm9kdWNpbmcgYSBuZXcKPiBmdW5jdGlvbiB0byBzZXR1cCB0aGUgZW5oYW5jZWQgTFRTU00gbW9k
ZS4KPiAKClJldmlld2VkLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4K
Cj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNv
bGxhYm9yYS5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3
LXJvY2tjaGlwLmMgfCAyNCArKysrKysrKysrKysrKy0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFu
Z2VkLCAxNCBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gaW5kZXggNzQ3MmVjNzhiNDcz
Li42Zjg0YjA3NDA2ZDQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1kdy1yb2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kdy1yb2NrY2hpcC5jCj4gQEAgLTY5Niw2ICs2OTYsMTggQEAgc3RhdGljIGlycXJldHVybl90
IHJvY2tjaGlwX3BjaWVfZXBfc3lzX2lycV90aHJlYWQoaW50IGlycSwgdm9pZCAqYXJnKQo+ICAg
CXJldHVybiBJUlFfSEFORExFRDsKPiAgIH0KPiAgIAo+ICtzdGF0aWMgdm9pZCByb2NrY2hpcF9w
Y2llX2VuYWJsZV9lbmhhbmNlZF9sdHNzbV9jb250cm9sX21vZGUoc3RydWN0IHJvY2tjaGlwX3Bj
aWUgKnJvY2tjaGlwLAo+ICsJCQkJCQkJICAgICB1MzIgZmxhZ3MpCj4gK3sKPiArCXUzMiB2YWw7
Cj4gKwo+ICsJLyogRW5hYmxlIHRoZSBlbmhhbmNlZCBjb250cm9sIG1vZGUgb2Ygc2lnbmFsIGFw
cF9sdHNzbV9lbmFibGUgKi8KPiArCXZhbCA9IEZJRUxEX1BSRVBfV00xNihQQ0lFX0xUU1NNX0VO
QUJMRV9FTkhBTkNFLCAxKTsKPiArCWlmIChmbGFncykKPiArCQl2YWwgfD0gRklFTERfUFJFUF9X
TTE2KGZsYWdzLCAxKTsKPiArCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hpcCwgdmFs
LCBQQ0lFX0NMSUVOVF9IT1RfUkVTRVRfQ1RSTCk7Cj4gK30KPiArCj4gICBzdGF0aWMgaW50IHJv
Y2tjaGlwX3BjaWVfY29uZmlndXJlX3JjKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsCj4g
ICAJCQkJICAgICAgc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKQo+ICAgewo+IEBAIC03
MTksOSArNzMxLDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2NvbmZpZ3VyZV9yYyhzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LAo+ICAgCQlyZXR1cm4gcmV0Owo+ICAgCX0KPiAgIAo+
IC0JLyogTFRTU00gZW5hYmxlIGNvbnRyb2wgbW9kZSAqLwo+IC0JdmFsID0gRklFTERfUFJFUF9X
TTE2KFBDSUVfTFRTU01fRU5BQkxFX0VOSEFOQ0UsIDEpOwo+IC0Jcm9ja2NoaXBfcGNpZV93cml0
ZWxfYXBiKHJvY2tjaGlwLCB2YWwsIFBDSUVfQ0xJRU5UX0hPVF9SRVNFVF9DVFJMKTsKPiArCXJv
Y2tjaGlwX3BjaWVfZW5hYmxlX2VuaGFuY2VkX2x0c3NtX2NvbnRyb2xfbW9kZShyb2NrY2hpcCwg
MCk7Cj4gICAKPiAgIAlyb2NrY2hpcF9wY2llX3dyaXRlbF9hcGIocm9ja2NoaXAsCj4gICAJCQkJ
IFBDSUVfQ0xJRU5UX1NFVF9NT0RFKFBDSUVfQ0xJRU5UX01PREVfUkMpLAo+IEBAIC03NjUsMTMg
Kzc3NSw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9jb25maWd1cmVfZXAoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldiwKPiAgIAkJcmV0dXJuIHJldDsKPiAgIAl9Cj4gICAKPiAtCS8q
Cj4gLQkgKiBMVFNTTSBlbmFibGUgY29udHJvbCBtb2RlLCBhbmQgYXV0b21hdGljYWxseSBkZWxh
eSBsaW5rIHRyYWluaW5nIG9uCj4gLQkgKiBob3QgcmVzZXQvbGluay1kb3duIHJlc2V0Lgo+IC0J
ICovCj4gLQl2YWwgPSBGSUVMRF9QUkVQX1dNMTYoUENJRV9MVFNTTV9FTkFCTEVfRU5IQU5DRSwg
MSkgfAo+IC0JICAgICAgRklFTERfUFJFUF9XTTE2KFBDSUVfTFRTU01fQVBQX0RMWTJfRU4sIDEp
Owo+IC0Jcm9ja2NoaXBfcGNpZV93cml0ZWxfYXBiKHJvY2tjaGlwLCB2YWwsIFBDSUVfQ0xJRU5U
X0hPVF9SRVNFVF9DVFJMKTsKPiArCXJvY2tjaGlwX3BjaWVfZW5hYmxlX2VuaGFuY2VkX2x0c3Nt
X2NvbnRyb2xfbW9kZShyb2NrY2hpcCwgUENJRV9MVFNTTV9BUFBfRExZMl9FTik7Cj4gICAKPiAg
IAlyb2NrY2hpcF9wY2llX3dyaXRlbF9hcGIocm9ja2NoaXAsCj4gICAJCQkJIFBDSUVfQ0xJRU5U
X1NFVF9NT0RFKFBDSUVfQ0xJRU5UX01PREVfRVApLAo+IAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
