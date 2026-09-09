Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA567C79F9E
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 00:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Qm3wmHuKsWlegNirOd6ZXN63qHTOki/SRVdTMgTxr8=; b=aMAyMvB1c2xb8L
	xzFy0S44PrHImCS1zOAD0MzpEGWun+Rx78gkxcbogotK/0QrgIWaHJtNHiaG3hfb8s8wlPMtI0OZ/
	KkywyYzwUcjdH939Y1AQEDc5ZYvko0Iq+h2HB4A8pAsn1NE2MVobIJBQ53FqpwAUEpbB9ROOnzUvz
	c5rfSdz9PWLv7esAuoYbEuiHl7OlreabhDnvRjrA0jxZzmpJkpFUuwxeEAb4ETUz86EPXIABtdWv8
	yuyuZrO90knqvj7apBflK5Fn9t8WTzpdnn8VsvQHjRwRB42Jmt7fWY3IiyllErxTijVK4Bhx3HqeA
	tPHt2Pr51Qg7EkIhqELA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x46Qp-0000000AWvI-0OeE;
	Wed, 09 Sep 2026 00:44:55 +0000
Received: from mail-m160236524.xmail.ntesmail.com ([160.236.52.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x46Qm-0000000AWuV-1hFs;
	Wed, 09 Sep 2026 00:44:54 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4d08c1d9d;
	Wed, 9 Sep 2026 08:44:48 +0800 (GMT+08:00)
Message-ID: <4d441232-6ab5-4865-a70c-f868e8128f7e@rock-chips.com>
Date: Wed, 9 Sep 2026 08:44:45 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Alexey Charkov <alchark@flipper.net>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v6 02/10] PCI: dw-rockchip: Restore vpcie3v3 regulator
 handle
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
 <20260908-rockchip-pcie-system-suspend-v6-2-fbabcca9921b@collabora.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260908-rockchip-pcie-system-suspend-v6-2-fbabcca9921b@collabora.com>
X-HM-Tid: 0aa0839fe00403a4kunm50f3116743e785
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCH0IdVk9MGkseSUJOQ01JTFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=e9NTEEIWqkh7Z68AwWcaKw2n1Tx+hNYucPDaLw/joe2dmc0eusuvJC9uTUS6/osiyrEz/1iXmbi+GcbCQzY84/xyRH5OnH7Tt91mMMAwTo4iuryxRApYrm6MvmZOQZqAOV2qJg2ROIsA16acFLY3yXJ/KzvONULKiDLcOGWCgEw=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=8BHp18JK7JZ2Mrw0ZrUESo0RJu+yED+tqkK5PcwM6KM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_174452_715723_70787559 
X-CRM114-Status: GOOD (  19.95  )
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
Cj4gVGhpcyByZXZlcnRzIGNvbW1pdCBjOTMwYjEwZjE3YzAgKCJQQ0k6IGR3LXJvY2tjaGlwOiBT
aW1wbGlmeSByZWd1bGF0b3IKPiBzZXR1cCB3aXRoIGRldm1fcmVndWxhdG9yX2dldF9lbmFibGVf
b3B0aW9uYWwoKSIpLCB3aGljaCBuaWNlbHkgY2xlYW5lZAo+IHVwIHRoZSBjb2RlLgo+IAo+IFRo
ZSB2cGNpZTN2MyByZWd1bGF0b3IgaGFuZGxlIGlzIG5lZWRlZCB0byBkaXNhYmxlIHRoZSByZWd1
bGF0b3IgZHVyaW5nCj4gc3lzdGVtIHN1c3BlbmQgKHRvIGJlIGFkZGVkIGluIGl0cyBvd24gcGF0
Y2gpLgo+IAoKUmV2aWV3ZWQtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29t
PgoKPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxA
Y29sbGFib3JhLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUt
ZHctcm9ja2NoaXAuYyB8IDIzICsrKysrKysrKysrKysrKysrLS0tLS0tCj4gICAxIGZpbGUgY2hh
bmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gaW5kZXggZGM4NTU2NGU1MDAx
Li5mNjdhZDNjMzFjMzUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1kdy1yb2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kdy1yb2NrY2hpcC5jCj4gQEAgLTExMiw2ICsxMTIsNyBAQCBzdHJ1Y3Qgcm9ja2NoaXBfcGNp
ZSB7Cj4gICAJdW5zaWduZWQgaW50IGNsa19jbnQ7Cj4gICAJc3RydWN0IHJlc2V0X2NvbnRyb2wg
KnJzdDsKPiAgIAlzdHJ1Y3QgZ3Bpb19kZXNjICpyc3RfZ3BpbzsKPiArCXN0cnVjdCByZWd1bGF0
b3IgKnZwY2llM3YzOwo+ICAgCXN0cnVjdCBpcnFfZG9tYWluICppcnFfZG9tYWluOwo+ICAgCWNv
bnN0IHN0cnVjdCByb2NrY2hpcF9wY2llX29mX2RhdGEgKmRhdGE7Cj4gICAJYm9vbCBzdXBwb3J0
c19jbGtyZXE7Cj4gQEAgLTg0NCwxNSArODQ1LDIyIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNp
ZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgCQlyZXR1cm4gcmV0Owo+
ICAgCj4gICAJLyogRE9OJ1QgTU9WRSBNRTogbXVzdCBiZSBlbmFibGUgYmVmb3JlIFBIWSBpbml0
ICovCj4gLQlyZXQgPSBkZXZtX3JlZ3VsYXRvcl9nZXRfZW5hYmxlX29wdGlvbmFsKGRldiwgInZw
Y2llM3YzIik7Cj4gLQlpZiAocmV0IDwgMCAmJiByZXQgIT0gLUVOT0RFVikKPiAtCQlyZXR1cm4g
ZGV2X2Vycl9wcm9iZShkZXYsIHJldCwKPiAtCQkJCSAgICAgImZhaWxlZCB0byBlbmFibGUgdnBj
aWUzdjMgcmVndWxhdG9yXG4iKTsKPiArCXJvY2tjaGlwLT52cGNpZTN2MyA9IGRldm1fcmVndWxh
dG9yX2dldF9vcHRpb25hbChkZXYsICJ2cGNpZTN2MyIpOwo+ICsJaWYgKElTX0VSUihyb2NrY2hp
cC0+dnBjaWUzdjMpKSB7Cj4gKwkJaWYgKFBUUl9FUlIocm9ja2NoaXAtPnZwY2llM3YzKSAhPSAt
RU5PREVWKQo+ICsJCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIFBUUl9FUlIocm9ja2NoaXAt
PnZwY2llM3YzKSwKPiArCQkJCQkiZmFpbGVkIHRvIGdldCB2cGNpZTN2MyByZWd1bGF0b3JcbiIp
Owo+ICsJCXJvY2tjaGlwLT52cGNpZTN2MyA9IE5VTEw7Cj4gKwl9IGVsc2Ugewo+ICsJCXJldCA9
IHJlZ3VsYXRvcl9lbmFibGUocm9ja2NoaXAtPnZwY2llM3YzKTsKPiArCQlpZiAocmV0KQo+ICsJ
CQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIHJldCwKPiArCQkJCQkgICAgICJmYWlsZWQgdG8g
ZW5hYmxlIHZwY2llM3YzIHJlZ3VsYXRvclxuIik7Cj4gKwl9Cj4gICAKPiAgIAlyZXQgPSByb2Nr
Y2hpcF9wY2llX3BoeV9pbml0KHJvY2tjaGlwKTsKPiAgIAlpZiAocmV0KQo+IC0JCXJldHVybiBk
ZXZfZXJyX3Byb2JlKGRldiwgcmV0LAo+IC0JCQkJICAgICAiZmFpbGVkIHRvIGluaXRpYWxpemUg
dGhlIHBoeVxuIik7Cj4gKwkJZ290byBkaXNhYmxlX3JlZ3VsYXRvcjsKPiAgIAo+ICAgCXJldCA9
IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQocm9ja2NoaXAtPnJzdCk7Cj4gICAJaWYgKHJldCkKPiBA
QCAtODg1LDYgKzg5Myw5IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9wcm9iZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgCWNsa19idWxrX2Rpc2FibGVfdW5wcmVwYXJlKHJv
Y2tjaGlwLT5jbGtfY250LCByb2NrY2hpcC0+Y2xrcyk7Cj4gICBkZWluaXRfcGh5Ogo+ICAgCXJv
Y2tjaGlwX3BjaWVfcGh5X2RlaW5pdChyb2NrY2hpcCk7Cj4gK2Rpc2FibGVfcmVndWxhdG9yOgo+
ICsJaWYgKHJvY2tjaGlwLT52cGNpZTN2MykKPiArCQlyZWd1bGF0b3JfZGlzYWJsZShyb2NrY2hp
cC0+dnBjaWUzdjMpOwo+ICAgCj4gICAJcmV0dXJuIHJldDsKPiAgIH0KPiAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
