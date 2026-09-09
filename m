Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A3F0C79F82
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 00:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLMT7vl6MPqYH946L7YFf/D1jg28MVxucRF1jnTBn1Y=; b=JNyr7ygM3nZppj
	TWnAjo52KuSXRzA93u/7ScCYIP4pDwGjPBsPpCTH4KLM28lCWkZiMlr39gDUORCKD70wdZlNYUgp0
	G/oQ3Uh9pEVA0Ob1VJ0D8+0K/hHRG0GGTnIgc4jgLC3/6nVz3Kj3k/gCuesesioHscPW2xaToOaMJ
	9bVJSv/KpZYytkZoOs/bjk8Df5Oyi+uwcKCep0E7l5cd1WkWzszerlLiEAS9Rs/odaNdY/4gIjR5O
	so4wQdsdMG/wnw3RvQ15MQS1+icv5ssTuMkjCUDtMurS/80wx/qFI6WWxnYSKzXqoeOVpPzgZ1axB
	JsIyDkXdFvxlvyXFxaYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x46P8-0000000AWlS-3OK0;
	Wed, 09 Sep 2026 00:43:10 +0000
Received: from mail-m49227.qiye.163.com ([45.254.49.227])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x46P6-0000000AWkm-0ucc;
	Wed, 09 Sep 2026 00:43:10 +0000
Received: from [172.16.12.48] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4d089fcf7;
	Wed, 9 Sep 2026 08:37:53 +0800 (GMT+08:00)
Message-ID: <d2f5d998-5d1d-4246-8b01-01382f3cffd2@rock-chips.com>
Date: Wed, 9 Sep 2026 08:37:50 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Alexey Charkov <alchark@flipper.net>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v6 01/10] PCI: dw-rockchip: Fix LTSSM set functions
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
 <20260908-rockchip-pcie-system-suspend-v6-1-fbabcca9921b@collabora.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260908-rockchip-pcie-system-suspend-v6-1-fbabcca9921b@collabora.com>
X-HM-Tid: 0aa083998c7203a4kunm31a3c89943d92d
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQ0wZQlZIHUwaTxhDSx
	lIGRpWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=FGKdjvlACFPFgsNMYwEWJ6Y0jyF+FQ1TkoCbAKv3eLPEGrvVpZi4emplWQEmmUl4oVm0DEYa7F1Ptp4wfYpeE1As8d3px66nQfcCioYZ60nHwL1YzhCRzCyUwvRJPcB1fLuUMjKckLwFRZt4El6BGu7ZvmUnpVxjQy3tgZ7FMa4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=jQ3ATaI2YxqRI0p16u8NNlyCH2fphaDSpOTesBL5qj4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_174308_808895_C46E2325 
X-CRM114-Status: GOOD (  16.15  )
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
Cj4gQmVmb3JlIHRoZSBSb2NrY2hpcCBQQ0llIGRyaXZlciBoYXMgYmVlbiBzd2l0Y2hlZCBvdmVy
IHRvIHRoZQo+IEZJRUxEX1BSRVBfV00xNiBtYWNybywgUENJRV9DTElFTlRfRU5BQkxFX0xUU1NN
IGFuZAo+IFBDSUVfQ0xJRU5UX0RJU0FCTEVfTFRTU00gd2VyZSBzZXR0aW5nIGJpdHMgd2l0aCBh
IG1hc2sgb2YgMHhjID0gMGIxMTAwLAo+IHdoaWNoIG1lYW5zIEJJVCAyIGFuZCBCSVQgMy4gQWZ0
ZXIgdGhlIGNvbnZlcnNpb24gaXQgb25seSBzZXRzIGJpdCAyLAo+IHdpdGggYml0IDMgYmVpbmcg
aGFuZGxlZCBieSBhIHNlcGFyYXRlIGRlZmluZSBuYW1lZAo+IFBDSUVfQ0xJRU5UX0xEX1JRX1JT
VF9HUlQuIEFwcGFyZW50bHkgdGhlIGNvbnZlcnNpb24gbWlzc2VkIHRvIG1ha2UgdXNlCj4gb2Yg
dGhpcyBuZXcgbWFjcm9zIHJlc3VsdGluZyBpbiB0aGUgdGhpcmQgYml0IG5vdCBiZWluZyBzZXQu
Cj4gCgpSZXZpZXdlZC1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cgo+
IEZpeGVzOiAzMGU5MTk1NzA1ODEgKCJQQ0k6IGR3LXJvY2tjaGlwOiBTd2l0Y2ggdG8gRklFTERf
UFJFUF9XTTE2IG1hY3JvIikKPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2Vi
YXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyB8IDEwICsrKysrKy0tLS0KPiAgIDEgZmlsZSBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyBiL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+IGluZGV4IGFmMjZhMDdjMGM5
ZS4uZGM4NTU2NGU1MDAxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdj
L3BjaWUtZHctcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtZHctcm9ja2NoaXAuYwo+IEBAIC0zMjEsMTQgKzMyMSwxNiBAQCBzdGF0aWMgdm9pZCByb2Nr
Y2hpcF9wY2llX2x0c3NtX3RyYWNlKHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCwKPiAg
IAo+ICAgc3RhdGljIHZvaWQgcm9ja2NoaXBfcGNpZV9lbmFibGVfbHRzc20oc3RydWN0IHJvY2tj
aGlwX3BjaWUgKnJvY2tjaGlwKQo+ICAgewo+IC0Jcm9ja2NoaXBfcGNpZV93cml0ZWxfYXBiKHJv
Y2tjaGlwLCBQQ0lFX0NMSUVOVF9FTkFCTEVfTFRTU00sCj4gLQkJCQkgUENJRV9DTElFTlRfR0VO
RVJBTF9DT04pOwo+ICsJdTMyIHZhbCA9IFBDSUVfQ0xJRU5UX0VOQUJMRV9MVFNTTSB8IFBDSUVf
Q0xJRU5UX0xEX1JRX1JTVF9HUlQ7Cj4gKwo+ICsJcm9ja2NoaXBfcGNpZV93cml0ZWxfYXBiKHJv
Y2tjaGlwLCB2YWwsIFBDSUVfQ0xJRU5UX0dFTkVSQUxfQ09OKTsKPiAgIH0KPiAgIAo+ICAgc3Rh
dGljIHZvaWQgcm9ja2NoaXBfcGNpZV9kaXNhYmxlX2x0c3NtKHN0cnVjdCByb2NrY2hpcF9wY2ll
ICpyb2NrY2hpcCkKPiAgIHsKPiAtCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hpcCwg
UENJRV9DTElFTlRfRElTQUJMRV9MVFNTTSwKPiAtCQkJCSBQQ0lFX0NMSUVOVF9HRU5FUkFMX0NP
Tik7Cj4gKwl1MzIgdmFsID0gUENJRV9DTElFTlRfRElTQUJMRV9MVFNTTSB8IFBDSUVfQ0xJRU5U
X0xEX1JRX1JTVF9HUlQ7Cj4gKwo+ICsJcm9ja2NoaXBfcGNpZV93cml0ZWxfYXBiKHJvY2tjaGlw
LCB2YWwsIFBDSUVfQ0xJRU5UX0dFTkVSQUxfQ09OKTsKPiAgIH0KPiAgIAo+ICAgc3RhdGljIGJv
b2wgcm9ja2NoaXBfcGNpZV9saW5rX3VwKHN0cnVjdCBkd19wY2llICpwY2kpCj4gCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
