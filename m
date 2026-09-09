Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46C35C79F82
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 00:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0qeouEksmc1WuS7FGcIKRfmVS7oyjyVx4qWaBL6rcZw=; b=Xa08lCta+JilXd
	OiFIKaJgGM1ws/7SRqphL+zGrDI9Aa2cxA2jomCK+DYMyjooTS3cdmgPKpSXw2EIqsmjo5kloFxQF
	So+vhkDC7NcUJgJfV8kL6CHhFU+a9x8VwDib8Gd9nQwgrrQcptgC25/7qfe2bJ7hlggv5b9VwIRPH
	7G6DL/UkLPR9T5Wk3I4OKRjZw6uBTwlzd2a2ppmJk62rLJPAWEmWFe5VDtoG9KB+hMPZEW8zhC/8W
	mSSdP59WMrQyBcZyM5Rlf3ZQB7BfxU/lWOvlJ9465RZ5of9FeIpznUF2mOmdMVRHxJ9AmGOQKNgQI
	T7ypLHmt+H7vAa5q+YPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x46dc-0000000AZF9-3Zg4;
	Wed, 09 Sep 2026 00:58:08 +0000
Received: from mail-m17223.xmail.ntesmail.com ([45.195.17.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x46da-0000000AZEf-0jfo;
	Wed, 09 Sep 2026 00:58:07 +0000
Received: from [172.16.12.48] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4d0923065;
	Wed, 9 Sep 2026 08:58:02 +0800 (GMT+08:00)
Message-ID: <d3a665e6-e9f6-41c7-9684-9db1cb811039@rock-chips.com>
Date: Wed, 9 Sep 2026 08:58:01 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Alexey Charkov <alchark@flipper.net>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v6 05/10] PCI: dw-rockchip: Add helper function for
 controller mode
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
 <20260908-rockchip-pcie-system-suspend-v6-5-fbabcca9921b@collabora.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260908-rockchip-pcie-system-suspend-v6-5-fbabcca9921b@collabora.com>
X-HM-Tid: 0aa083abfd6103a4kunm2a53221b44044d
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGUsaQ1ZOHkkaHRpKTx
	lDTUpWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=XP6iTy/dSQmg7/bZJLR97rvOuhsfxw6x8i0uhjmb2gdTTOdgfWlxIeApYFv0KpIJqWYYHez9/FNcaTS292GFeo4cwZc6yAYNx07JiqMAmK/Yat8cqoPIhoBX7W+sDWd7FW/mrLb31KcbQoQJJiWxyLlSQl/jTlGJoGRG/PQJK8g=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=bsT5whRXIWPhoZ883AZa0XgzOkBvLWYJ556g8quXo00=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_175806_433935_6008980A 
X-CRM114-Status: GOOD (  15.01  )
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
cm9kdWNpbmcgYSBuZXcKPiBmdW5jdGlvbiB0byBzZXR1cCB0aGUgY29udHJvbGxlciBtb2RlLgo+
IAoKUmV2aWV3ZWQtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgoKPiBT
aWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFi
b3JhLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9j
a2NoaXAuYyB8IDE1ICsrKysrKystLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0
aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29u
dHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9k
d2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gaW5kZXggNmY4NGIwNzQwNmQ0Li4yMTE3NzZiYmNiOTkg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hp
cC5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5j
Cj4gQEAgLTcwOCw2ICs3MDgsMTEgQEAgc3RhdGljIHZvaWQgcm9ja2NoaXBfcGNpZV9lbmFibGVf
ZW5oYW5jZWRfbHRzc21fY29udHJvbF9tb2RlKHN0cnVjdCByb2NrY2hpcF9wY2kKPiAgIAlyb2Nr
Y2hpcF9wY2llX3dyaXRlbF9hcGIocm9ja2NoaXAsIHZhbCwgUENJRV9DTElFTlRfSE9UX1JFU0VU
X0NUUkwpOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfc2V0X2NvbnRy
b2xsZXJfbW9kZShzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAsIHUzMiBtb2RlKQo+ICt7
Cj4gKwlyb2NrY2hpcF9wY2llX3dyaXRlbF9hcGIocm9ja2NoaXAsIFBDSUVfQ0xJRU5UX1NFVF9N
T0RFKG1vZGUpLCBQQ0lFX0NMSUVOVF9HRU5FUkFMX0NPTik7Cj4gK30KPiArCj4gICBzdGF0aWMg
aW50IHJvY2tjaGlwX3BjaWVfY29uZmlndXJlX3JjKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYsCj4gICAJCQkJICAgICAgc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKQo+ICAgewo+
IEBAIC03MzIsMTAgKzczNyw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9jb25maWd1cmVf
cmMoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwKPiAgIAl9Cj4gICAKPiAgIAlyb2NrY2hp
cF9wY2llX2VuYWJsZV9lbmhhbmNlZF9sdHNzbV9jb250cm9sX21vZGUocm9ja2NoaXAsIDApOwo+
IC0KPiAtCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hpcCwKPiAtCQkJCSBQQ0lFX0NM
SUVOVF9TRVRfTU9ERShQQ0lFX0NMSUVOVF9NT0RFX1JDKSwKPiAtCQkJCSBQQ0lFX0NMSUVOVF9H
RU5FUkFMX0NPTik7Cj4gKwlyb2NrY2hpcF9wY2llX3NldF9jb250cm9sbGVyX21vZGUocm9ja2No
aXAsIFBDSUVfQ0xJRU5UX01PREVfUkMpOwo+ICAgCj4gICAJcHAgPSAmcm9ja2NoaXAtPnBjaS5w
cDsKPiAgIAlwcC0+b3BzID0gJnJvY2tjaGlwX3BjaWVfaG9zdF9vcHM7Cj4gQEAgLTc3NiwxMCAr
Nzc4LDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2NvbmZpZ3VyZV9lcChzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2LAo+ICAgCX0KPiAgIAo+ICAgCXJvY2tjaGlwX3BjaWVfZW5hYmxl
X2VuaGFuY2VkX2x0c3NtX2NvbnRyb2xfbW9kZShyb2NrY2hpcCwgUENJRV9MVFNTTV9BUFBfRExZ
Ml9FTik7Cj4gLQo+IC0Jcm9ja2NoaXBfcGNpZV93cml0ZWxfYXBiKHJvY2tjaGlwLAo+IC0JCQkJ
IFBDSUVfQ0xJRU5UX1NFVF9NT0RFKFBDSUVfQ0xJRU5UX01PREVfRVApLAo+IC0JCQkJIFBDSUVf
Q0xJRU5UX0dFTkVSQUxfQ09OKTsKPiArCXJvY2tjaGlwX3BjaWVfc2V0X2NvbnRyb2xsZXJfbW9k
ZShyb2NrY2hpcCwgUENJRV9DTElFTlRfTU9ERV9FUCk7Cj4gICAKPiAgIAlyb2NrY2hpcC0+cGNp
LmVwLm9wcyA9ICZyb2NrY2hpcF9wY2llX2VwX29wczsKPiAgIAlyb2NrY2hpcC0+cGNpLmVwLnBh
Z2Vfc2l6ZSA9IFNaXzY0SzsKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
