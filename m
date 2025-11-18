Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AD1CCEBF92
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 00:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bchKbhRqk6RPIulIJqaunnm+XgPIfOqXyQuOUFxqOJs=; b=ozcF5Ys0J3bHKp
	5LQCHsfA8MWkA8iyydRV1B4ITQdmLBRDsTWruY7VbnYlbuiJKR2Y60yIPVLmjf4tslCSVHxMHqm6U
	R89G60UQXe49/C1Um8PHE77JJ1QoEqLsPxCdy9CGavQp4FV1O/Z6GSyuXGwM+gYb1lffhvRCZ7yd6
	rcJtF96fSKjlCcKWrWpMWUeVI1Iauz7OEMwMAcmHU5q0nXWgatjcap6u5kyfWjuEtvrtmdukO5j2a
	xm4/JmtKwaCjtLL/Tha35QY1VWv6ktUsYNLpUnnO+ekqF9uRFeBEZs7MLePg67J1Bv+M6eApvjVEc
	RloHy+OYQ5AetUU7QHwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL9p6-0000000H3Os-17V1;
	Tue, 18 Nov 2025 00:43:56 +0000
Received: from mail-m49220.qiye.163.com ([45.254.49.220])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL9p2-0000000H3OM-2iDn;
	Tue, 18 Nov 2025 00:43:54 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 29e80519c;
	Tue, 18 Nov 2025 08:43:45 +0800 (GMT+08:00)
Message-ID: <7e050003-f4ea-4e89-8140-2159c670182f@rock-chips.com>
Date: Tue, 18 Nov 2025 08:43:41 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 Dragan Simic <dsimic@manjaro.org>
Subject: Re: [PATCH v2 0/4] PCI: rockchip: 5.0 GT/s speed may be dangerous
To: Geraldo Nascimento <geraldogabriel@gmail.com>
References: <cover.1763415705.git.geraldogabriel@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <cover.1763415705.git.geraldogabriel@gmail.com>
X-HM-Tid: 0a9a946ae62e09cckunm57c232373f288
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkoZTlYYSB9CQ09PSBpLQk1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=XlUMvPhbm3JQYF08zp7VfmtLoI5CPW40rJWIiWOOwW22Ofn4z9LH7QdQi8T8myJpAPlIZIntJgPnt1spqSnFcr6eoDbDWvCwxPzUOrQ3kJaJ034g0Zf/jWLilCXnSDKY0tJHyBdOPp2o9qilFekScxRVIefPavvgVb3hbrAi/lI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=FeV+cp/B6o4d554Dl89hs7gOjhWAAS0EpuPZa0xZZIE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_164353_172640_C251AE76 
X-CRM114-Status: GOOD (  13.21  )
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

5ZyoIDIwMjUvMTEvMTgg5pif5pyf5LqMIDU6NDYsIEdlcmFsZG8gTmFzY2ltZW50byDlhpnpgZM6
Cj4gRHJhZ2FuIFNpbWljIGFscmVhZHkgaGFkIHdhcm5lZCBtZSBvZiBwb3RlbnRpYWwgaXNzdWVz
IHdpdGggNS4wIEdUL3MKPiBzcGVlZCBvcGVyYXRpb24gaW4gUm9ja2NoaXAgUENJZS4gSG93ZXZl
ciwgaW4gcmVjZW50IGludGVyYWN0aW9ucwo+IHdpdGggU2hhd24gTGluIGZyb20gUm9ja2NoaXAg
aXQgY2FtZSB0byBteSBhdHRlbnRpb24gdGhlcmUncyBncmF2ZQo+IGRhbmdlciBpbiB0aGUgdW5r
bm93biBlcnJhdGEgcmVnYXJkaW5nIDUuMCBHVC9zIG9wZXJhdGlvbmFsIHNwZWVkCj4gb2YgdGhl
aXIgUENJZSBjb3JlLiBFdmVuIGlmIHRoZSBvZGRzIGFyZSBsb3csIHRvIGNvbnRhaW4gYW55IGRh
bWFnZSwKPiBsZXQncyBjb3ZlciB0aGUgcmVtYWluaW5nIGNvcm5lci1jYXNlcyB3aGVyZSB0aGUg
ZGVmYXVsdCB3b3VsZCBsZWFkCj4gdG8gNS4wIEdUL3Mgb3BlcmF0aW9uIGFzIHdlbGwgYXMgYWRk
IGEgY29tbWVudCB0byBSb290IENvbXBsZXggZHJpdmVyCj4gY29yZSwgZG9jdW1lbnRpbmcgdGhp
cyBkYW5nZXIuIEZ1cnRoZXJtb3JlLCByZW1vdmUgcmVkdW5kYW50Cj4gZGVjbGFyYXRpb24gb2Yg
bWF4LWxpbmstc3BlZWQgZnJvbSByazMzOTktbmFub3BpLXI0cy5kdHNpCj4gCj4gU2lnbmVkLW9m
Zi1ieTogR2VyYWxkbyBOYXNjaW1lbnRvIDxnZXJhbGRvZ2FicmllbEBnbWFpbC5jb20+Cj4gCgpU
aGFua3MgZm9yIGZpeGluZyB0aGVzZS4KCkFja2VkLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkBy
b2NrLWNoaXBzLmNvbT4KCj4gLS0tCj4gCj4gQ2hhbmdlcyBpbiB2MjoKPiAtIGhhcmQgbGltaXQg
dG8gMi41IEdUL3MsIG5vdCBqdXN0IHdhcm4KPiAtIGFkZCBSZXBvcnRlZC1ieTogYW5kIFJldmll
d2VkLWJ5OiBEcmFnYW4gU2ltaWMKPiAtIHJlbW92ZSByZWR1bmRhbnQgZGVjbGFyYXRpb24gb2Yg
bWF4LWxpbmstc3BlZWQgZnJvbSBoZWxpb3M2NCBkdHMKPiAtIGZpeCBMaW5rOiBvZiBoZWxpb3M2
NCBwYXRjaAo+IC0gc2ltcGxpZnkgUkMgbW9kZSBjb21tZW50Cj4gLSBMaW5rIHRvIHYxOiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9hbGwvYVJoUjc5dTVCUHRSUkZ3M0BnZWRheS8KPiAKPiBHZXJh
bGRvIE5hc2NpbWVudG8gKDQpOgo+ICAgIFBDSTogcm9ja2NoaXA6IGxpbWl0IFJLMzM5OSB0byAy
LjUgR1QvcyB0byBwcmV2ZW50IGRhbWFnZQo+ICAgIFBDSTogcm9ja2NoaXAtaG9zdDogY29tbWVu
dCBkYW5nZXIgb2YgNS4wIEdUL3Mgc3BlZWQKPiAgICBhcm02NDogZHRzOiByb2NrY2hpcDogcmVt
b3ZlIGRhbmdlcm91cyBtYXgtbGluay1zcGVlZCBmcm9tIGhlbGlvczY0Cj4gICAgYXJtNjQ6IGR0
czogcm9ja2NoaXA6IHJlbW92ZSByZWR1bmRhbnQgbWF4LWxpbmstc3BlZWQgZnJvbSBuYW5vcGkt
cjRzCj4gCj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1rb2JvbC1oZWxp
b3M2NC5kdHMgfCAgMSAtCj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1u
YW5vcGktcjRzLmR0c2kgICAgfCAgMSAtCj4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUt
cm9ja2NoaXAtaG9zdC5jICAgICAgICAgICAgfCAgMyArKysKPiAgIGRyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvcGNpZS1yb2NrY2hpcC5jICAgICAgICAgICAgICAgICB8IDEwICsrKysrKysrLS0KPiAg
IDQgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
