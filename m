Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DAD3C28B20
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Apr 2025 08:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e3FBjiMpU3DG6oxA4/pdfmfSdpc2PbxGdDxwAKnyo9g=; b=nchoLd6e1b11zW
	n2tA9mtEe9aeQ4vQ8LlGJBjZvwFX8jgbQAW3knnCyxroDBgkK0mZrcuBGgBb95BLqFu2RilPK8XTJ
	OtB6Gb510Lnpzp2PKpH+Kd5y9Hb3PoA7bDwLMMB8tc7s8BVXSxCgaGZf2c0IOSKXDBKdU15eenRin
	3HDO0j9PU56V7a2tVtlU070LDipDMsiDCd+TznV0lD7B9g3778bBV9cIS4A0VRhHxCPzqAcI+3+98
	JeVin5bU1XWh2170cUu1mi7ovW7Pb2vBmbo9eCGuIif/ytwnXOZz6p0UIkE3ZgmTv9iQKPvQQb1ze
	EPmjmkWv3+DfRBqq8kBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzt83-00000005U8w-43K5;
	Wed, 02 Apr 2025 08:07:19 +0000
Received: from mail-m32116.qiye.163.com ([220.197.32.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzt80-00000005U78-38VN;
	Wed, 02 Apr 2025 08:07:18 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 10721275b;
	Wed, 2 Apr 2025 16:06:59 +0800 (GMT+08:00)
Message-ID: <e340a408-2e21-1bca-7267-46b84690f66f@rock-chips.com>
Date: Wed, 2 Apr 2025 16:06:55 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Cc: shawn.lin@rock-chips.com, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
 <kwilczynski@kernel.org>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] PCI: rockchip: Fix order of rockchip_pci_core_rsts
To: Jensen Huang <jensenhuang@friendlyarm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Anand Moon <linux.amoon@gmail.com>
References: <20250328105822.3946767-1-jensenhuang@friendlyarm.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20250328105822.3946767-1-jensenhuang@friendlyarm.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh0aQ1YdTE4aSB1IGhhPQkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a95f58a0bdb09cckunm10721275b
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NT46SDo*HTIBCw49PC8JDjEi
	PQsaFE1VSlVKTE9ITkNKSUlKTkxKVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlMSkk3Bg++
DKIM-Signature: a=rsa-sha256;
	b=ezHqbO70EDBQxmzrLCl8NxYSVUIU6/oSSOrrNjkXlFPkG0MhWO2zqfrPwMD+crfahb9VQ1m3kShzgfpQbI8wgdNEnAHGAtsDOuLtpEIdG+1QMvlGT+S5LhC/FOXk1qrMY7NsgRhBCxRrvsvg0BnAuJl1ih/3WP2Qg3lLjEQY2yE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=tNpsgBqjJ9UNRLTVKNe5wOYMfZoRUBD/vq55ueB1bPY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_010717_262575_9099B82B 
X-CRM114-Status: GOOD (  16.25  )
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

5ZyoIDIwMjUvMDMvMjgg5pif5pyf5LqUIDE4OjU4LCBKZW5zZW4gSHVhbmcg5YaZ6YGTOgo+IFRo
ZSBvcmRlciBvZiByb2NrY2hpcF9wY2lfY29yZV9yc3RzIGZvbGxvd3MgdGhlIHByZXZpb3VzIGNv
bW1lbnRzIHN1Z2dlc3RpbmcKPiB0byBhdm9pZCByZW9yZGVyaW5nLiBIb3dldmVyLCByZXNldF9j
b250cm9sX2J1bGtfZGVhc3NlcnQoKSBhcHBsaWVzIHJlc2V0cyBpbgo+IHJldmVyc2UsIHdoaWNo
IG1heSBsZWFkIHRvIHRoZSBsaW5rIGRvd25ncmFkaW5nIHRvIDIuNSBHVC9zLgo+IAo+IFRoaXMg
cGF0Y2ggcmVzdG9yZXMgdGhlIGRlYXNzZXJ0IG9yZGVyIGFuZCBjb21tZW50cyBmb3IgY29yZV9y
c3RzLCBpbnRyb2R1Y2VkIGluCj4gY29tbWl0IDU4YzY5OTBjNWVlNyAoIlBDSTogcm9ja2NoaXA6
IEltcHJvdmUgdGhlIGRlYXNzZXJ0IHNlcXVlbmNlIG9mIGZvdXIgcmVzZXQgcGlucyIpLgo+IAo+
IFRlc3RlZCBvbiBOYW5vUEMtVDQgd2l0aCBTYW1zdW5nIDk3MCBQcm8uCgpBY2tlZC1ieTogIFNo
YXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgoKPiAKPiBGaXhlczogMTg3MTU5MzFh
NWMwICgiUENJOiByb2NrY2hpcDogU2ltcGxpZnkgcmVzZXQgY29udHJvbCBoYW5kbGluZyBieSB1
c2luZyByZXNldF9jb250cm9sX2J1bGsqKCkgZnVuY3Rpb24iKQo+IFNpZ25lZC1vZmYtYnk6IEpl
bnNlbiBIdWFuZyA8amVuc2VuaHVhbmdAZnJpZW5kbHlhcm0uY29tPgo+IC0tLQo+ICAgZHJpdmVy
cy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmggfCAxMCArKysrKysrLS0tCj4gICAxIGZp
bGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuaCBiL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oCj4gaW5kZXggMTFkZWY1OTg1MzRiLi40ZjYzYTAz
ZDUzNWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlw
LmgKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuaAo+IEBAIC0z
MjAsMTEgKzMyMCwxNSBAQCBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IHJvY2tjaGlwX3BjaV9w
bV9yc3RzW10gPSB7Cj4gICAJImFjbGsiLAo+ICAgfTsKPiAgIAo+ICsvKgo+ICsgKiBQbGVhc2Ug
ZG9uJ3QgcmVvcmRlciB0aGUgZGVhc3NlcnQgc2VxdWVuY2Ugb2YgdGhlIGZvbGxvd2luZwo+ICsg
KiBmb3VyIHJlc2V0IHBpbnMuCj4gKyAqLwo+ICAgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBy
b2NrY2hpcF9wY2lfY29yZV9yc3RzW10gPSB7Cj4gLQkibWdtdC1zdGlja3kiLAo+IC0JImNvcmUi
LAo+IC0JIm1nbXQiLAo+ICAgCSJwaXBlIiwKPiArCSJtZ210IiwKPiArCSJjb3JlIiwKPiArCSJt
Z210LXN0aWNreSIsCj4gICB9Owo+ICAgCj4gICBzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSB7CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
