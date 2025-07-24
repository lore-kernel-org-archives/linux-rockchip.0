Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1DF1C83F26
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jul 2025 05:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=akGnEp04GHbY5TrxgnvDkb2ERxHa5El6K77YvsE0B1w=; b=EuvWJ3l9F76PUb
	QK1gOqnetPxzIGiJBuhNaNtUjZY5Bbj4Yur2cv0Lx8pWDNsHCgfxXiJSvmkiq6ZJoHOD13KrAT7CT
	8O0BJqZL2GxuXEwVxkkre9rTazsKF16a3hyL/UuE4F9qdYU+wcc0ILHGT495eKDGrb4BqoY0oeR5I
	bVscP/0rfA//ml/DirfZbCONhm2qpHyyR7xhOYkAsQPT0Ajdtgc1cmjU+aFbFDHOCVCld+nuwGmo9
	Pt2VFFVm3rUbGv9nTjhCxuiNiP76i6l7/SW4+axNNh6b/Mol5OK8hfDt8YZC3fvf85SgxgDSAwFWJ
	gDeU4zhr2KrgaLs/gYYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueoby-00000006WeV-35tm;
	Thu, 24 Jul 2025 05:35:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueoX3-00000006VkW-2KRO;
	Thu, 24 Jul 2025 05:30:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 908325C557C;
	Thu, 24 Jul 2025 05:30:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3469FC4CEED;
	Thu, 24 Jul 2025 05:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753335016;
	bh=ISXdQZ3kB+W0hUweuwCNwLolV+g7Yo//dJ0hlqxAC0s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sNedDR55x4+Sp5CqV3RRfyuKADcZPDY7YyZPtWIuQOH60C+zNPuSm9viRmif/bLfo
	 NsFm4J4q+ZZcM9ZED/jxSstX2X4Pgyv1k17y8+SM0XQuoBQr6vY3rqk4lEM3fxAa1u
	 ABhBaDpL96ZIPtJTWvkU9dp2YpVIQMGOwH9XuG46TgW7pZtZ4v+HULgkZqpEWmo8kQ
	 Qfev9GG7It4NBGZznP7FJzLkwtD7zgyTAqAcbUtx3SabjvqTYj0qaMOgTij7WJYbYd
	 Vt8/nLOyO6jeeDlbxuedgbMbzDO4Xj9XmOG2BbyxhnqoKrchC9IKqliIAiQd/MY5Xo
	 ct2H4wCgyMG6w==
Date: Thu, 24 Jul 2025 11:00:05 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: manivannan.sadhasivam@oss.qualcomm.com, 
	Bjorn Helgaas <bhelgaas@google.com>, Mahesh J Salgaonkar <mahesh@linux.ibm.com>, 
	Oliver O'Halloran <oohall@gmail.com>, Will Deacon <will@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Wilfred Mallawa <wilfred.mallawa@wdc.com>, Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
	Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH v6 0/4] PCI: Add support for resetting the Root Ports in
 a platform specific way
Message-ID: <tujurux64if24z7w7h6wjxhrnh4owkgiv33u2fftp7zr5ucv2m@2ijo5ok5jhfk>
References: <20250715-pci-port-reset-v6-0-6f9cce94e7bb@oss.qualcomm.com>
 <aHoh1XfhR8EB_5yY@ryzen>
 <aHokdhpJUhSZ5FSp@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aHokdhpJUhSZ5FSp@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_223017_673614_7215E49B 
X-CRM114-Status: GOOD (  15.63  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBKdWwgMTgsIDIwMjUgYXQgMTI6Mzk6NTBQTSBHTVQsIE5pa2xhcyBDYXNzZWwgd3Jv
dGU6Cj4gT24gRnJpLCBKdWwgMTgsIDIwMjUgYXQgMTI6Mjg6NDRQTSArMDIwMCwgTmlrbGFzIENh
c3NlbCB3cm90ZToKPiA+IE9uIFR1ZSwgSnVsIDE1LCAyMDI1IGF0IDA3OjUxOjAzUE0gKzA1MzAs
IE1hbml2YW5uYW4gU2FkaGFzaXZhbSB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4gPiAyKSBUZXN0aW5n
IGxpbmsgZG93biByZXNldDoKPiA+IAo+ID4gc2VsZnRlc3RzIGJlZm9yZSBsaW5rIGRvd24gcmVz
ZXQ6Cj4gPiAjIEZBSUxFRDogMTQgLyAxNiB0ZXN0cyBwYXNzZWQuCj4gPiAKPiA+ICMjIE9uIEVQ
IHNpZGU6Cj4gPiAjIGVjaG8gMCA+IC9zeXMva2VybmVsL2NvbmZpZy9wY2lfZXAvY29udHJvbGxl
cnMvYTQwMDAwMDAwLnBjaWUtZXAvc3RhcnQgJiYgXAo+ID4gICBzbGVlcCAwLjEgJiYgZWNobyAx
ID4gL3N5cy9rZXJuZWwvY29uZmlnL3BjaV9lcC9jb250cm9sbGVycy9hNDAwMDAwMDAucGNpZS1l
cC9zdGFydAo+ID4gCj4gPiAKPiA+IFsgIDExMS4xMzcxNjJdIHJvY2tjaGlwLWR3LXBjaWUgYTQw
MDAwMDAwLnBjaWU6IFBDSUVfQ0xJRU5UX0lOVFJfU1RBVFVTX01JU0M6IDB4NAo+ID4gWyAgMTEx
LjEzNzg4MV0gcm9ja2NoaXAtZHctcGNpZSBhNDAwMDAwMDAucGNpZTogTFRTU01fU1RBVFVTOiAw
eDAKPiA+IFsgIDExMS4xMzg0MzJdIHJvY2tjaGlwLWR3LXBjaWUgYTQwMDAwMDAwLnBjaWU6IGhv
dCByZXNldCBvciBsaW5rLWRvd24gcmVzZXQKPiA+IFsgIDExMS4xMzkwNjddIHBjaWVwb3J0IDAw
MDA6MDA6MDAuMDogUmVjb3ZlcmluZyBSb290IFBvcnQgZHVlIHRvIExpbmsgRG93bgo+ID4gWyAg
MTExLjEzOTY4Nl0gcGNpLWVuZHBvaW50LXRlc3QgMDAwMDowMTowMC4wOiBBRVI6IGNhbid0IHJl
Y292ZXIgKG5vIGVycm9yX2RldGVjdGVkIGNhbGxiYWNrKQo+ID4gWyAgMTExLjI1NTQwN10gcm9j
a2NoaXAtZHctcGNpZSBhNDAwMDAwMDAucGNpZTogUENJZSBHZW4uMyB4NCBsaW5rIHVwCj4gPiBb
ICAxMTEuMjU2MDE5XSByb2NrY2hpcC1kdy1wY2llIGE0MDAwMDAwMC5wY2llOiBSb290IFBvcnQg
cmVzZXQgY29tcGxldGVkCj4gPiBbICAxMTEuMzgzNDAxXSBwY2llcG9ydCAwMDAwOjAwOjAwLjA6
IFJvb3QgUG9ydCBoYXMgYmVlbiByZXNldAo+ID4gWyAgMTExLjM4NDA2MF0gcGNpZXBvcnQgMDAw
MDowMDowMC4wOiBBRVI6IGRldmljZSByZWNvdmVyeSBmYWlsZWQKPiA+IFsgIDExMS4zODQ1ODJd
IHJvY2tjaGlwLWR3LXBjaWUgYTQwMDAwMDAwLnBjaWU6IFBDSUVfQ0xJRU5UX0lOVFJfU1RBVFVT
X01JU0M6IDB4Mwo+ID4gWyAgMTExLjM4NTIxOF0gcm9ja2NoaXAtZHctcGNpZSBhNDAwMDAwMDAu
cGNpZTogTFRTU01fU1RBVFVTOiAweDIzMDAxMQo+ID4gWyAgMTExLjM4NTc3MV0gcm9ja2NoaXAt
ZHctcGNpZSBhNDAwMDAwMDAucGNpZTogUmVjZWl2ZWQgTGluayB1cCBldmVudC4gU3RhcnRpbmcg
ZW51bWVyYXRpb24hCj4gPiBbICAxMTEuMzkwODY2XSBwY2llcG9ydCAwMDAwOjAwOjAwLjA6IGJy
aWRnZSBjb25maWd1cmF0aW9uIGludmFsaWQgKFtidXMgMDAtMDBdKSwgcmVjb25maWd1cmluZwo+
ID4gWyAgMTExLjM5MTY1MF0gcGNpX2J1cyAwMDAwOjAxOiBidXNuX3JlczogW2J1cyAwMS1mZl0g
ZW5kIGlzIHVwZGF0ZWQgdG8gMDEKPiA+IAo+ID4gQmFzaWNhbGx5IGFsbCB0ZXN0cyB0aW1lb3V0
Cj4gPiAjIEZBSUxFRDogMSAvIDE2IHRlc3RzIHBhc3NlZC4KPiA+IAo+ID4gV2hpY2ggaXMgdGhl
IHNhbWUgYXMgYmVmb3JlIHRoaXMgcGF0Y2ggc2VyaWVzLgo+IAo+IFRoZSBhYm92ZSB3YXMgd2l0
aCBDT05GSUdfUENJRUFFUj15Cj4gCgpUaGlzIGlzIGtpbmQgb2YgZXhwZWN0ZWQgc2luY2UgdGhl
IHBjaV9lbmRwb2ludF90ZXN0IGRyaXZlciBkb2Vzbid0IGhhdmUgdGhlIEFFUgplcnJfaGFuZGxl
cnMgZGVmaW5lZC4KCj4gV2lsZnJlZCBzdWdnZXN0ZWQgdGhhdCBJIHRyaWVkIHdpdGhvdXQgdGhp
cyBjb25maWcgc2V0Lgo+IAo+IEhvd2V2ZXIsIGRvaW5nIHNvLCBJIGdvdCB0aGUgZXhhY3Qgc2Ft
ZSByZXN1bHQ6Cj4gIyBGQUlMRUQ6IDEgLyAxNiB0ZXN0cyBwYXNzZWQuCj4gCgpJbnRlcmVzdGlu
Zy4gQ291bGQgeW91IHBsZWFzZSBzaGFyZSB0aGUgZG1lc2cgbG9nIGxpa2UgYWJvdmUuCgotIE1h
bmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u
4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
