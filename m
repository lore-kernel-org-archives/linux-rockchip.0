Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47DD3C79FA1
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 00:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xxd6YvpY4ML0AUoFJ8bH0d9USA3hbRWgE/o66O6QeZA=; b=SdXv7QohrEGiIY
	TzgTZjHU8cY31IBJ51Sj/8jufpy0V7Gs57XpPniVDeRnwIPP73Ml5K3u9lMFx0MVpUx1aRN8UW+Wl
	/R3sYmOrumBLPv8/b0FCC05xwRiDfzuKTIqaAq3XWcgfOfT18S4SgwGmMx1WxuP1h96jtdDOeQGrJ
	copTs31umkhRYh+BMK3WLKOiZhKMYmNf0AP6JPOnl+Q6VV638OwYpWwIgFkMxvpmmUvcVF7zBissC
	kWizIUDsbnb0gbzef5cua3TSpbx6joTSNZB/RHl6YXDNt3EJ2kqob5o39RGE7UadyjKIaw0EkpxmO
	Wtvc9j/8ngYVn4bC9Z0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x46eQ-0000000AZQN-0c6y;
	Wed, 09 Sep 2026 00:58:58 +0000
Received: from mail-m9391.xmail.ntesmail.com ([103.126.93.91])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x46eO-0000000AZPf-0Apu;
	Wed, 09 Sep 2026 00:58:57 +0000
Received: from [172.16.12.48] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4d0923156;
	Wed, 9 Sep 2026 08:58:50 +0800 (GMT+08:00)
Message-ID: <30d56a27-febb-48e8-909e-b87cad782514@rock-chips.com>
Date: Wed, 9 Sep 2026 08:58:50 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Alexey Charkov <alchark@flipper.net>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v6 06/10] PCI: dw-rockchip: Add helper function for DDL
 indicator
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
 <20260908-rockchip-pcie-system-suspend-v6-6-fbabcca9921b@collabora.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260908-rockchip-pcie-system-suspend-v6-6-fbabcca9921b@collabora.com>
X-HM-Tid: 0aa083acbac003a4kunmccc4e748440649
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGU1ITFYeGU8YGUkYSR
	0YTEtWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=D5qtsHD+yE9+RhcFUcRNxx9x9OPX0uCGrqLL6K0SPt3qcRxRp/MwneUjdBzakPLQiOqngJQCdQpKLR6zjnHM3bhTLjOHvN8HBQ6ccJ9liFJHTcN3yHA0GeMi2+T5/dKzs0qx3ubQTfQaRd2braoFZ5BnxWJ3vGXHWxkSuHnMBMU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=oy6H8lueAeqMs8djnjAqPYI7ZqjdcUMC2b/zRPRWG8k=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_175856_302682_2B90F3EF 
X-CRM114-Status: GOOD (  17.66  )
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
cm9kdWNpbmcgYSBuZXcKPiBmdW5jdGlvbiB0byBzZXR1cCB0aGUgRExMIGluZGljYXRvci4KPiAK
ClJldmlld2VkLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KCj4gU2ln
bmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9y
YS5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tj
aGlwLmMgfCAxNiArKysrKysrKysrKy0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0
aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29u
dHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9k
d2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gaW5kZXggMjExNzc2YmJjYjk5Li4xZTQ4MDk5ZTM2ZTQg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hp
cC5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5j
Cj4gQEAgLTcxMyw2ICs3MTMsMTYgQEAgc3RhdGljIHZvaWQgcm9ja2NoaXBfcGNpZV9zZXRfY29u
dHJvbGxlcl9tb2RlKHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCwgdTMKPiAgIAlyb2Nr
Y2hpcF9wY2llX3dyaXRlbF9hcGIocm9ja2NoaXAsIFBDSUVfQ0xJRU5UX1NFVF9NT0RFKG1vZGUp
LCBQQ0lFX0NMSUVOVF9HRU5FUkFMX0NPTik7Cj4gICB9Cj4gICAKPiArc3RhdGljIHZvaWQgcm9j
a2NoaXBfcGNpZV91bm1hc2tfZGxsX2luZGljYXRvcihzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9j
a2NoaXApCj4gK3sKPiArCXUzMiB2YWw7Cj4gKwo+ICsJLyogdW5tYXNrIERMTCB1cC9kb3duIGlu
ZGljYXRvciBhbmQgaG90IHJlc2V0L2xpbmstZG93biByZXNldCAqLwo+ICsJdmFsID0gRklFTERf
UFJFUF9XTTE2KFBDSUVfUkRMSF9MSU5LX1VQX0NIR0VELCAwKSB8Cj4gKwkgICAgICBGSUVMRF9Q
UkVQX1dNMTYoUENJRV9MSU5LX1JFUV9SU1RfTk9UX0lOVCwgMCk7Cj4gKwlyb2NrY2hpcF9wY2ll
X3dyaXRlbF9hcGIocm9ja2NoaXAsIHZhbCwgUENJRV9DTElFTlRfSU5UUl9NQVNLX01JU0MpOwo+
ICt9Cj4gKwo+ICAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2NvbmZpZ3VyZV9yYyhzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2LAo+ICAgCQkJCSAgICAgIHN0cnVjdCByb2NrY2hpcF9wY2ll
ICpyb2NrY2hpcCkKPiAgIHsKPiBAQCAtNzYwLDcgKzc3MCw2IEBAIHN0YXRpYyBpbnQgcm9ja2No
aXBfcGNpZV9jb25maWd1cmVfZXAoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwKPiAgIHsK
PiAgIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ICAgCWludCBpcnEsIHJldDsK
PiAtCXUzMiB2YWw7Cj4gICAKPiAgIAlpZiAoIUlTX0VOQUJMRUQoQ09ORklHX1BDSUVfUk9DS0NI
SVBfRFdfRVApKQo+ICAgCQlyZXR1cm4gLUVOT0RFVjsKPiBAQCAtODAwLDEwICs4MDksNyBAQCBz
dGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfY29uZmlndXJlX2VwKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYsCj4gICAKPiAgIAlwY2lfZXBjX2luaXRfbm90aWZ5KHJvY2tjaGlwLT5wY2kuZXAu
ZXBjKTsKPiAgIAo+IC0JLyogdW5tYXNrIERMTCB1cC9kb3duIGluZGljYXRvciBhbmQgaG90IHJl
c2V0L2xpbmstZG93biByZXNldCAqLwo+IC0JdmFsID0gRklFTERfUFJFUF9XTTE2KFBDSUVfUkRM
SF9MSU5LX1VQX0NIR0VELCAwKSB8Cj4gLQkgICAgICBGSUVMRF9QUkVQX1dNMTYoUENJRV9MSU5L
X1JFUV9SU1RfTk9UX0lOVCwgMCk7Cj4gLQlyb2NrY2hpcF9wY2llX3dyaXRlbF9hcGIocm9ja2No
aXAsIHZhbCwgUENJRV9DTElFTlRfSU5UUl9NQVNLX01JU0MpOwo+ICsJcm9ja2NoaXBfcGNpZV91
bm1hc2tfZGxsX2luZGljYXRvcihyb2NrY2hpcCk7Cj4gICAKPiAgIAlyZXR1cm4gcmV0Owo+ICAg
fQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
