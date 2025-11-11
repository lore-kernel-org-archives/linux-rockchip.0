Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3651CCFA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 13:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3o0z4Or5jL1awTEMa65hIe29MoVgWvgzwDo4dfiV4bI=; b=43hHNnlBSelyuB
	pBuLni4FEtVEdGsknBzAjwH4j2NrlVdLZ5MNwQbal3xfZXc4D+BIjtSgnobuNc0rRd06q0oJBcqYw
	d7G95vMP3cpOBQlIKTCJN7Z2O8UEIh36ym5FUg5ySePywdWaGyruFbCkQxD1joLtAreBGlzbYzQMt
	JCQx5RUVziBhtygpmqaq/oiou2rkaX04aNSbTlXmVsAlXujORslikxWKFQzIIaxh+AjESlYymNNTl
	+u+ZTtaPUvBd+b7BmnNkVmyWLq2azoOF/3KZeKmr695z4D6e2nVk1tpWYRFt+3ufaAfrLyyb65dD0
	yj+eRgh5uHfnxMhOiTpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIoPz-00000007F3z-2vUt;
	Tue, 11 Nov 2025 13:28:19 +0000
Received: from mail-m32110.qiye.163.com ([220.197.32.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIoPw-00000007F37-1Y6o;
	Tue, 11 Nov 2025 13:28:18 +0000
Received: from [192.168.61.151] (unknown [110.83.51.2])
	by smtp.qiye.163.com (Hmail) with ESMTP id 29341817e;
	Tue, 11 Nov 2025 21:28:10 +0800 (GMT+08:00)
Message-ID: <6a2bef88-1fe8-4477-a179-e97e1e0b7178@rock-chips.com>
Date: Tue, 11 Nov 2025 21:28:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>,
 Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>,
 Dragan Simic <dsimic@manjaro.org>, FUKAUMI Naoki <naoki@radxa.com>,
 Diederik de Haas <diederik@cknow-tech.com>, stable@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Manivannan Sadhasivam <mani@kernel.org>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Prevent advertising L1 Substates
 support
To: Niklas Cassel <cassel@kernel.org>
References: <20251017163252.598812-2-cassel@kernel.org>
 <176101411705.9573.17573145190800888773.b4-ty@kernel.org>
 <aRM1VOodnSpaob3P@ryzen>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <aRM1VOodnSpaob3P@ryzen>
X-HM-Tid: 0a9a731a3b6809cckunm78c1b6a21c673
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCQhlLVkoeQh5LGkwZTh1NSVYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKSktVQ0hVTkpVSVlXWRYaDxIVHRRZQVlPS0hVSktJT09PSFVKS0tVSk
	JLS1kG
DKIM-Signature: a=rsa-sha256;
	b=PsPV9sygri8khXx7L0KPcrb4K3lnqIauAzyiSn44IFWT66tYJF8tOt8M8HTkNJYXomdo3DjUu1agtzuyIgN8fNm+66ysjTgdhT1k61W8OrhpBpRjLx0R1BGito43W+sxzWEL8IMTlvryifTLmXWvVTHhSn/2DAymXNfo16aYY0A=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=/u83YnPFnggQ2E/YqF7yyEYzCXsQAILKrvqFHKQdRqo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_052816_897073_B269AB33 
X-CRM114-Status: GOOD (  21.77  )
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

CuWcqCAyMDI1LzExLzExIOaYn+acn+S6jCAyMTowOCwgTmlrbGFzIENhc3NlbCDlhpnpgZM6Cj4g
SGVsbG8gTWFuaSwKPiAKPiBPbiBUdWUsIE9jdCAyMSwgMjAyNSBhdCAwODowNToxN0FNICswNTMw
LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4+Cj4+IE9uIEZyaSwgMTcgT2N0IDIwMjUg
MTg6MzI6NTMgKzAyMDAsIE5pa2xhcyBDYXNzZWwgd3JvdGU6Cj4+PiBUaGUgTDEgc3Vic3RhdGVz
IHN1cHBvcnQgcmVxdWlyZXMgYWRkaXRpb25hbCBzdGVwcyB0byB3b3JrLCBuYW1lbHk6Cj4+PiAt
UHJvcGVyIGhhbmRsaW5nIG9mIHRoZSBDTEtSRVEjIHNpZGViYW5kIHNpZ25hbC4gKEl0IGlzIG1v
c3RseSBoYW5kbGVkIGJ5Cj4+PiAgIGhhcmR3YXJlLCBidXQgc29mdHdhcmUgc3RpbGwgbmVlZHMg
dG8gc2V0IHRoZSBjbGtyZXEgZmllbGRzIGluIHRoZQo+Pj4gICBQQ0lFX0NMSUVOVF9QT1dFUl9D
T04gcmVnaXN0ZXIgdG8gbWF0Y2ggdGhlIGhhcmR3YXJlIGltcGxlbWVudGF0aW9uLikKPj4+IC1Q
cm9ncmFtIHRoZSBmcmVxdWVuY3kgb2YgdGhlIGF1eCBjbG9jayBpbnRvIHRoZQo+Pj4gICBEU1Bf
UENJRV9QTF9BVVhfQ0xLX0ZSRVFfT0ZGIHJlZ2lzdGVyLiAoRHVyaW5nIEwxIHN1YnN0YXRlcyB0
aGUgY29yZV9jbGsKPj4+ICAgaXMgdHVybmVkIG9mZiBhbmQgdGhlIGF1eF9jbGsgaXMgdXNlZCBp
bnN0ZWFkLikKPj4+Cj4+PiBbLi4uXQo+Pgo+PiBBcHBsaWVkLCB0aGFua3MhCj4+Cj4+IFsxLzFd
IFBDSTogZHctcm9ja2NoaXA6IFByZXZlbnQgYWR2ZXJ0aXNpbmcgTDEgU3Vic3RhdGVzIHN1cHBv
cnQKPj4gICAgICAgIGNvbW1pdDogNDAzMzFjNjNlNzkwMWEyY2M3NWNlNmI1ZDI0ZDUwNjAxZWZi
ODMzZAo+IAo+IExhc3QgdXBkYXRlIGluIHRoaXMgdGhyZWFkIHdhcyAiQXBwbGllZCwgdGhhbmtz
ISIKPiAKPiBhbmQgdGhlIHBhdGNoIHdhcyBhcHBsaWVkIHRvIHBjaS9jb250cm9sbGVyL2R3LXJv
Y2tjaGlwCj4gCj4gc2luY2UgdGhlbiBpdCBzZWVtcyB0byBoYXZlIGJlZW4gZGVtb3RlZCB0byBw
Y2kvY29udHJvbGxlci9kdy1yb2NrY2hpcC1wZW5kCj4gCj4gSSdtIHNpbXBseSBjdXJpb3VzLCB3
aGF0IGlzIHRoZSBwbGFuIGZvciB0aGlzIHBhdGNoPwo+IAo+IEkga25vdyB0aGF0IFNoYXduIHdh
cyB3b3JraW5nIG9uIGEgc2VyaWVzIHRoYXQgYWRkcyBzdXBwb3J0IGZvciBMMXNzIGZvcgo+IHRo
aXMgZHJpdmVyLCBidXQgaXQgc2VlbXMgdG8gaGF2ZSBzdGFnbmF0ZWQsIHNvIGl0IHNlZW1zIGZh
ciBmcm9tIGNlcnRhaW4KClllcywgdGhhdCdzIGJlY2F1c2UgQmpvcm4gcHJlZmVycyB0byBkaXNh
YmxlIGl0IGluIGR3YyBjb3JlIGludGlhbGx5IGFuZApzZW50IGEgcGF0Y2ggd2hpY2ggd2UgZGlz
Y3Vzc2VkIGJ1dCBkaWRuJ3QgY29tZSB0byBhIGNvbmNsdXNpb24uIFNvIEkgCnN0aWxsIGJlIHdh
aXRpbmcuLjrvvIkKCj4gdGhhdCBpdCB3aWxsIGJlIHJlYWR5IGluIHRpbWUgdG8gbWFrZSBpdCBm
b3IgdGhlIHY2LjE5IG1lcmdlIHdpbmRvdy4KPiAKPiBSaWdodCBub3csIHBjaS9uZXh0IGJyYW5j
aCBzZWVtcyB0byBtZXJnZSBwY2kvY29udHJvbGxlci9kdy1yb2NrY2hpcCByYXRoZXIKPiB0aGFu
IHBjaS9jb250cm9sbGVyL2R3LXJvY2tjaGlwLXBlbmQuCj4gCj4gSWYgdGhlIEwxc3MgZG9lcyBu
b3QgbWFrZSBpdCBpbiB0aW1lLCB0aGVuIHRoaXMgcGF0Y2ggd2lsbCBub3QgaGF2ZSBoYWQgYW55
Cj4gdGltZSBpbiBsaW51eC1uZXh0LCB3aGljaCBtaWdodCBub3QgbWFrZSBMaW51cyBoYXBweS4K
PiAKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gTmlrbGFzCj4gCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
