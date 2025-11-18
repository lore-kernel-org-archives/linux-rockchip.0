Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 904C7CEBF61
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 00:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=my0nf2bpY93+JeCQVlAaTH2ov/nR4MHH0X0jRGrhixU=; b=jBa9iGE/pFNeMT
	LoU2btMGkyRijcr1zsj5IT1b8Sx8Fq+cnqL8TwEl0gRJjcw3cxwj/cvGS7qw6DCrKvNvyjIyH96Vh
	SJRXBeYwb8TIcxOU0oo391+XcP4dxmNJnBKlJukSKUGE4KMYLdzqJIBB5DMrnpXm38rf9nFL0BoMY
	GESvRtSliId7zlwLERaQYKe69NT1YgLVUC274YVuTKiOLFyRrnUg/OMIUqsrK4gkXSYzr2XrShKQi
	mbZVzmU1Nhboss6hR1Tbw1Yz4d2PsTzqHq+R0vqi+2dR2dDCHHzT5EaEQxL2aa5Gg9gyvOva45Okd
	sxdwEaVlA2znTzBjVp5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL9zT-0000000H6La-0x9n;
	Tue, 18 Nov 2025 00:54:39 +0000
Received: from mail-m155115.qiye.163.com ([101.71.155.115])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL9zP-0000000H6JP-3QWy;
	Tue, 18 Nov 2025 00:54:37 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 29e843e9e;
	Tue, 18 Nov 2025 08:54:29 +0800 (GMT+08:00)
Message-ID: <20d86c90-9066-4a44-8fff-f4e3edef256e@rock-chips.com>
Date: Tue, 18 Nov 2025 08:54:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 "open list:PCIE DRIVER FOR ROCKCHIP" <linux-pci@vger.kernel.org>,
 "open list:PCIE DRIVER FOR ROCKCHIP" <linux-rockchip@lists.infradead.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [RFC v1 0/5] Fix some register offset as per RK3399 TRM part 2
To: Anand Moon <linux.amoon@gmail.com>
References: <20251117181023.482138-1-linux.amoon@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20251117181023.482138-1-linux.amoon@gmail.com>
X-HM-Tid: 0a9a9474bc4909cckunma9a3e37740cfc
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUNDSFZKH01OGEwZSBkdHx5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ZDj8c+t0H/ppLW12rpDdGxE+CcklsaHR0Rd2uwBf1hZX8AIYU+Oa5dYiiaT1g2ToLEpfU5V59tWZRVlanl/OJBzfZkMFaOEpjT4uJvMsV6lAexk7ovOhquNARon8M/qSR4rDyRx/lsPaPQUsIFq+WQ2EVUmikYiWUhfZK3LOPEc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=9PXroKdeKungPKSuFMqQVLZ09bF3qbvunSo1wZ/xkxk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_165436_349452_497C032A 
X-CRM114-Status: GOOD (  11.20  )
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

SGkgQW5hbmQsCgrlnKggMjAyNS8xMS8xOCDmmJ/mnJ/kuowgMjoxMCwgQW5hbmQgTW9vbiDlhpnp
gZM6Cj4gSW4gb3JkZXIgdG8gZW5hYmxlIEFTUE0gd2UgbmVlZCB0byBmaXggdGhlIHJlZ2lzdGVy
IG9mZnNldCBhcwo+IFJLMzM5OSBUUk0gcGFydCAyIC0gUENJZSBDb250cm9sbGVyLgo+IAo+IFRl
c3RlZCBvbiBSYWR4YSBSb2NrIFBpIDRiLgo+IAoKSSBjaGVja2VkIHlvdXIgcGF0Y2gsIGFuZCBp
dCBsb29rcyBsaWtlIGluZGVlZCB3ZSBtYWRlIHNvbWUgbWlzdGFrZXMKaGVyZS4gQ291bGQgeW91
IGFkZCBmaXhlcyB0YWcgZm9yIGVhY2g/CgpCVFcsIHJlZ2FyZGluZyB0byBwYXRjaCAxLCBJIHRo
aW5rIHlvdSBzaG91bGQgbGVhdmUgb3V0IEFTUE0gcGFydCwgdGhhdApzaG91bGQgYmUgYW5vdGhl
ciB0b3BpYyBhZnRlciB0aGVzZSBmaXhlcy4KCj4gVGhhbmtzCj4gLUFuYW5kCj4gCj4gQW5hbmQg
TW9vbiAoNSk6Cj4gICAgUENJOiByb2NrY2hpcDogRml4IExpbmsgQ29udHJvbCByZWdpc3RlciBv
ZmZzZXQgYW5kIGVuYWJsZSBBU1BNL0NMS1JFUQo+ICAgIFBDSTogcm9ja2NoaXA6IEZpeCBEZXZp
Y2UgQ29udHJvbCByZWdpc3RlciBvZmZzZXQgZm9yIE1heCBwYXlsb2FkIHNpemUKPiAgICBQQ0k6
IHJvY2tjaGlwOiBGaXggU2xvdCBDYXBhYmlsaXR5IFJlZ2lzdGVyIG9mZnNldCBmb3Igc2xvdCBw
b3dlcgo+ICAgICAgbGltaXQKPiAgICBQQ0k6IHJvY2tjaGlwOiBGaXggTGluayBDb250cm9sIGFu
ZCBTdGF0dXMgUmVnaXN0ZXIgMiBmb3IgdGFyZ2V0IGxpbmsKPiAgICAgIHNwZWVkCj4gICAgUENJ
OiByb2NrY2hpcDogRml4IExpbmt3aWR0aCBDb250cm9sIFJlZ2lzdGVyIG9mZnNldCBmb3IgUmV0
cmFpbiBMaW5rCj4gCj4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9z
dC5jIHwgMzEgKysrKysrKysrKystLS0tLS0tLS0tCj4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVy
L3BjaWUtcm9ja2NoaXAuaCAgICAgIHwgIDUgKysrKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyMSBp
bnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKPiAKPiAKPiBiYXNlLWNvbW1pdDogZTdjMzc1
YjE4MTYwMGNhZjEzNWNmZDAzZWFkYmM0NWViNTMwZjJjYgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
