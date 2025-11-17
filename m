Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3C17CE8D6B
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 03:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tXa9V6KG47upJvHxvMRtzde7Kd0nOFENZo9MSlpKYg=; b=xvVbVsVhDlMEFw
	BeB30z7gQr9womcE0PmUxhoxRVBA2x+DdWjGmhvlsd8c1xmZGt0zprWq/CCUrSQA71vfZ6a7A22jp
	6jVFJbe3C45J5Uhj+HBFg4Ajxzjv3WWTrGK8wYpiITyxv55GKXB+vA+4Q4TiVMSX5PZgfmqCIkIpi
	mdFOSaFB3PvGYkYesR7MW69mBzaj1dsI7srOeeFsLUIDbTT/HOIZfR12EvEwre93QtBdqiYaItg1Q
	Z8JBsDASSCOwL0TE7yqDA9/VijpO73+9FB8WZVgbLAJZTPlJKxMqzgA9zhBfZPYWlCUW1/GU8ssA0
	IJTPdW98LH7EC+UGIqvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKq94-0000000FO8R-1Su8;
	Mon, 17 Nov 2025 03:43:14 +0000
Received: from mail-m3269.qiye.163.com ([220.197.32.69])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKq91-0000000FO7F-2HOp;
	Mon, 17 Nov 2025 03:43:13 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 29c9004d4;
	Mon, 17 Nov 2025 11:42:59 +0800 (GMT+08:00)
Message-ID: <8f3cc1c1-7bf7-4610-b7ce-79ebd6f05a6e@rock-chips.com>
Date: Mon, 17 Nov 2025 11:42:59 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/3] PCI: rockchip: 5.0 GT/s speed may be dangerous
To: Geraldo Nascimento <geraldogabriel@gmail.com>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <cover.1763197368.git.geraldogabriel@gmail.com>
X-HM-Tid: 0a9a8fe8a40409cckunm2225600d70b383
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk9ISFZDHx8aThpIQxkdTU1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=iqz49SGWasZFgXzvmpgvrAR/MiWOraupVXaPEaboWVYCcb/RkncHqs1bDxk236bb5xLnrZpa/O9g9zIVR3QitzVvwYdmqnu25XhHXnG5UGEq/cJdWiS4vzlPE29CJQ8C9imQcmwuPVBFSZsuTZaZ61zjdE1XET97PRp2eNCjBec=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=L/mOHkyVCGlpZGPK0VdOwC9RDdilpu9JCgLw5m5Dy4Y=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251116_194312_071591_CAFB7BC8 
X-CRM114-Status: GOOD (  12.22  )
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

SGkgR2VyYWxkbywKCuWcqCAyMDI1LzExLzE1IOaYn+acn+WFrSAxNzoxMCwgR2VyYWxkbyBOYXNj
aW1lbnRvIOWGmemBkzoKPiBJbiByZWNlbnQgaW50ZXJhY3Rpb25zIHdpdGggU2hhd24gTGluIGZy
b20gUm9ja2NoaXAgaXQgY2FtZSB0byBteQo+IGF0dGVudGlvbiB0aGVyZSdzIGFuIHVua25vd24g
ZXJyYXRhIHJlZ2FyZGluZyA1LjAgR1QvcyBvcGVyYXRpb25hbAo+IHNwZWVkIG9mIHRoZWlyIFBD
SWUgY29yZS4gQWNjb3JkaW5nIHRvIFNoYXduIHRoZXJlJ3MgZ3JhdmUgZGFuZ2VyCj4gZXZlbiBp
ZiB0aGUgb2RkcyBhcmUgbG93LiBUbyBjb250YWluIGFueSBkYW1hZ2UsIGxldCdzIGNvdmVyIHRo
ZQo+IHJlbWFpbmluZyBjb3JuZXItY2FzZXMgd2hlcmUgdGhlIGRlZmF1bHQgd291bGQgbGVhZCB0
byA1LjAgR1Qvcwo+IG9wZXJhdGlvbiBhcyB3ZWxsIGFzIGFkZCBhIGNvbW1lbnQgdG8gUm9vdCBD
b21wbGV4IGRyaXZlciBjb3JlLAo+IGRvY3VtZW50aW5nIHRoaXMgZGFuZ2VyLgo+IAoKSSdtIG5v
dCBzdXJlIGp1c3QgYWRkaW5nIGEgd2FybiB3b3VsZCBiZSBhIGdvb2QgY2hvaWNlLiBDb3VsZCB3
ZSB0b3RhbGx5CmZvcmNlIHRvIHVzZSBnZW4xIGFuZCBhZGQgYSB3YXJuIGlmIHRyeWluZyB0byB1
c2UgR2VuMi4KCk1lYW53aGlsZSBhbWVuZCB0aGUgY29tbWl0IG1lc3NhZ2UgdG8gYWRkIGEgcmVm
ZXJlbmNlCm9mIFJLMzM5OSBvZmZpY2lhbCBkYXRlc2hlZXRbMV0gd2hpY2ggc2F5cyBQQ0llIG9u
IFJLMzM5OSBzaG91bGQgb25seQpzdXBwb3J0IDIuNUdUL3M/CgoKWzFdaHR0cHM6Ly9vcGVuc291
cmNlLnJvY2stY2hpcHMuY29tL2ltYWdlcy9kL2Q3L1JvY2tjaGlwX1JLMzM5OV9EYXRhc2hlZXRf
VjIuMS0yMDIwMDMyMy5wZGYKCj4gR2VyYWxkbyBOYXNjaW1lbnRvICgzKToKPiAgICBQQ0k6IHJv
Y2tjaGlwOiB3YXJuIG9mIGRhbmdlciBvZiA1LjAgR1QvcyBzcGVlZHMKPiAgICBQQ0k6IHJvY2tj
aGlwLWhvc3Q6IGNvbW1lbnQgZGFuZ2VyIG9mIDUuMCBHVC9zIHNwZWVkCj4gICAgYXJtNjQ6IGR0
czogcm9ja2NoaXA6IGRyb3AgbWF4LWxpbmstc3BlZWQgPSA8Mj4gaW4gaGVsaW9zNjQgUENJZQo+
IAo+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkta29ib2wtaGVsaW9zNjQu
ZHRzIHwgMSAtCj4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5j
ICAgICAgICAgICAgfCA1ICsrKysrCj4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9j
a2NoaXAuYyAgICAgICAgICAgICAgICAgfCA4ICsrKysrKy0tCj4gICAzIGZpbGVzIGNoYW5nZWQs
IDExIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
