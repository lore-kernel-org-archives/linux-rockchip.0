Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4911ECE8D7A
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 02:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GPs3tkX4gka80ARrkoKukRhkGfoHaFyb1ZnKmvOI3J4=; b=PAhGC7rUuu3153
	3Chlm4xrnWJ/9Ezo9moOatYQ2cdd80juaVo4hcVVtyM9O2BoxxotCPlY4t8HW1idyT/VwxqosRas6
	g9C23mN6uy2+IuiCg8+/1fPgPPvWNmTzEGGjqu6zsisEiSnRP6KVjpY7GTuDGFC1sieLcJVsmCkdR
	O0yhbqz5IjHj3mkVM7VVyMtg5TJirsmCUF/ZX9tb5jeH6uP/Hz8v9PwMHlcXnqCroy+8lkM8gApzR
	y9A9n4EuZuOS89rgYBBdpFUjogHu3HQkzdvIEx8/U/ww5dMp8T6PgX5Zlf6u0L0lj1a//Q/0UUI71
	cn4DLK2y2YzGRlRdDT2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK5v3-0000000DMGO-3hx4;
	Sat, 15 Nov 2025 02:21:41 +0000
Received: from mail-m81152.xmail.ntesmail.com ([156.224.81.152])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK5uy-0000000DMFH-3w3Z;
	Sat, 15 Nov 2025 02:21:39 +0000
Received: from [172.16.12.165] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 29a9f9e79;
	Sat, 15 Nov 2025 10:21:29 +0800 (GMT+08:00)
Message-ID: <ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com>
Date: Sat, 15 Nov 2025 10:21:28 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-pci <linux-pci@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>, krzk+dt <krzk+dt@kernel.org>,
 conor+dt <conor+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@vrull.eu>,
 Kever Yang <kever.yang@rock-chips.com>, Tom Rini <trini@konsulko.com>,
 u-boot@lists.denx.de, =?UTF-8?B?5byg54Oo?= <ye.zhang@rock-chips.com>
Subject: Re: [PATCH] arm64: dts: rockchip: align bindings to PCIe spec
To: Geraldo Nascimento <geraldogabriel@gmail.com>
References: <aQsIXcQzeYop6a0B@geday>
 <67b605b0-7046-448a-bc9b-d3ac56333809@rock-chips.com>
 <aQ1c7ZDycxiOIy8Y@geday>
 <d9e257bd-806c-48b4-bb22-f1342e9fc15a@rock-chips.com>
 <aRLEbfsmXnGwyigS@geday>
 <AGsAmwCFJj0ZQ4vKzrqC84rs.3.1762847224180.Hmail.ye.zhang@rock-chips.com>
 <aRQ_R90S8T82th45@geday> <aRUvr0UggTYkkCZ_@geday> <aRazCssWVdAOmy7D@geday>
 <e8524bf8-a90c-423f-8a58-9ef05a3db1dd@rock-chips.com>
 <aReSPbRxCgdNRI9y@geday>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <aReSPbRxCgdNRI9y@geday>
X-HM-Tid: 0a9a85514c4609cckunm48e2a22b4fe54e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk8aGlZPSxkZGhhDTEoZSExWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=OkVE0Rau8ZcS49W5FkYWVPEVseZOuBmXemzSCxTH3JXT0XCeVR0NHLZhFDDykAl88/Mir5HmZQIkS7SHXHT2nrvk2Wkjnli7GWi+T/yPdtny9sj+CM7uBZvIOaY6Py4ekP45aeOdzGzIKycYnM1cOE10FmPlEbaa5In/e0SQNzk=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=SbuBNQczlLUG9KXdbmoq6UM3KotrjW3EyKj2mpRpQqk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_182138_140511_A297D910 
X-CRM114-Status: GOOD (  20.84  )
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

CuWcqCAyMDI1LzExLzE1IOaYn+acn+WFrSA0OjM0LCBHZXJhbGRvIE5hc2NpbWVudG8g5YaZ6YGT
Ogo+IE9uIEZyaSwgTm92IDE0LCAyMDI1IGF0IDA1OjE2OjIxUE0gKzA4MDAsIFNoYXduIExpbiB3
cm90ZToKPj4gRG9uJ3Qgd29ycnksIGl0J3MgaGVscGZ1bCwgc28gSSB0aGluayBZZSBjb3VsZCBo
YXZlIGEgbG9vay4KPj4gTWF5IEkgYXNrIGlmIHRoZSBmYWlsdXJlIG9ubHkgaGFwcGVuZWQgdG8g
b25lIHNwZWNpZmljIGJvYXJkPwo+IAo+IEhpIFNoYXduLAo+IAo+IFllcywgdGVzdGluZyBpcyBy
ZXN0cmljdGVkIHRvIG15IFJhZHhhIFJvY2sgUGkgTjEwIGJvYXJkLgo+IAo+Pgo+PiBBbm90aGVy
IHRoaW5nIEkgbm90aWNlZCBpcyBhYm91dCBvbmUgY29tbWl0Ogo+PiAxMTRiMDZlZTEwOGMgKCJQ
Q0k6IHJvY2tjaGlwOiBTZXQgVGFyZ2V0IExpbmsgU3BlZWQgdG8gNS4wIEdUL3MgYmVmb3JlCj4+
IHJldHJhaW5pbmciKQo+Pgo+PiBJdCBzYWlkOiAiUm9ja2NoaXAgY29udHJvbGxlcnMgY2FuIHN1
cHBvcnQgdXAgdG8gNS4wIEdUL3MgbGluayBzcGVlZC4iCj4+IEJ1dCB3ZSBpc3N1ZWQgYW4gZXJy
YXRhIGxvbmcgdGltZSBhZ28gdG8gYW5ub3VuY2VkIGl0IGRvZXNuJ3QsIHlvdSBjb3VsZAo+PiBh
bHNvIGNoZWNrIHRoZSBQQ0llIHBhcnQgb2YgUkszMzk5IGRhdGFzaGVldDoKPj4gaHR0cHM6Ly9v
cGVuc291cmNlLnJvY2stY2hpcHMuY29tL2ltYWdlcy9kL2Q3L1JvY2tjaGlwX1JLMzM5OV9EYXRh
c2hlZXRfVjIuMS0yMDIwMDMyMy5wZGYKPiAKPiBPSywgSSdtIHBhcnRseSByZXNwb25zaWJsZSBm
b3IgdGhhdCBhcyBhdXRob3Igb2YgdGhlIGNvbW1pdCBpbiBxdWVzdGlvbi4KPiAKPiBGaXJzdCBv
ZmYgbGV0IG1lIHNheSBJIGRvIG5vdCBpbnRlbmQgdG8gc2VuZCBhbnkgcGF0Y2hlcyBzZXR0aW5n
Cj4gbWF4LWxpbmstc3BlZWQgdG8gVFdPIGZvciB0aGlzIHBsYXRmb3JtLgo+IAo+IEkgdW5kZXJz
dGFuZCB5b3UgaXNzdWVkIGFuIGVycmF0dW0sIGJ1dCBhcmUgeW91IGFic29sdXRlbHkgc3VyZSBh
Ym91dAo+IHRoYXQgZXJyYXR1bT8gQmVjYXVzZSBteSB0ZXN0aW5nIHNob3dzIG90aGVyd2lzZToK
ClN1cmUuCgpUaGUgcmVhc29uIGlzIHRoYXQgR2VuMiBpcyBtZXJlbHkgZnVuY3Rpb25hbCwgYnV0
IHRoaXMgZG9lcyBub3QgbWVhbiBpdCAKaXMgMTAwJSBwcm9kdWN0aW9uLXJlYWR5LiBJdCBoYXMg
c29tZSBpbmhlcmVudCBpc3N1ZXMgdGhhdCBjYW5ub3QgYmUgCnJlc29sdmVkLCB3aGljaCBtYXkg
bGVhZCB0byBmYWlsdXJlcyBiZXlvbmQgaW1hZ2luYXRpb24uIEV2ZW4gaWYgdGhlIApwcm9iYWJp
bGl0eSBvZiBvY2N1cnJlbmNlIGlzIGFzIGxvdyBhcyAxIGluIDEwMCwwMDAuIEkgY2Fubm90IHNo
YXJlIApmdXJ0aGVyIGRldGFpbHMuIFRoZXJlZm9yZSwgdGhlIG9mZmljaWFsIGRvY3VtZW50YXRp
b24gc2hvdWxkIGJlIHlvdXIgCnByaW1hcnkgcmVmZXJlbmNlLCByYXRoZXIgdGhhbiByZWx5aW5n
IHNvbGVseSBvbiBzaW1wbGUgZXZhbHVhdGlvbnMuCgo+IAo+IC0tLQo+IFdpdGggbWF4LWxpbmst
c3BlZWQgPSA8Mj4KPiBwY2kgMDAwMDowMTowMC4wOiAxNi4wMDAgR2IvcyBhdmFpbGFibGUgUENJ
ZSBiYW5kd2lkdGgsIGxpbWl0ZWQgYnkgNS4wIEdUL3MgUENJZSB4NCBsaW5rIGF0IDAwMDA6MDA6
MDAuMCAoY2FwYWJsZSBvZiAzMS41MDQgR2IvcyB3aXRoIDguMCBHVC9zIFBDSWUgeDQgbGluaykK
PiAKPiAvZGV2L252bWUwbjE6Cj4gICBUaW1pbmcgY2FjaGVkIHJlYWRzOiAgIDMwMDIgTUIgaW4g
IDIuMDAgc2Vjb25kcyA9IDE1MDIuMjEgTUIvc2VjCj4gICBUaW1pbmcgYnVmZmVyZWQgZGlzayBy
ZWFkczogMjA0NCBNQiBpbiAgMy4wMCBzZWNvbmRzID0gNjgwLjc5IE1CL3NlYwo+IC0tLQo+IFdp
dGggbWF4LWxpbmstc3BlZWQgPSA8MT4KPiBwY2kgMDAwMDowMTowMC4wOiA4LjAwMCBHYi9zIGF2
YWlsYWJsZSBQQ0llIGJhbmR3aWR0aCwgbGltaXRlZCBieSAyLjUgR1QvcyBQQ0llIHg0IGxpbmsg
YXQgMDAwMDowMDowMC4wIChjYXBhYmxlIG9mIDMxLjUwNCBHYi9zIHdpdGggOC4wIEdUL3MgUENJ
ZSB4NCBsaW5rKQo+IAo+IC9kZXYvbnZtZTBuMToKPiAgIFRpbWluZyBjYWNoZWQgcmVhZHM6ICAg
MjczMCBNQiBpbiAgMi4wMCBzZWNvbmRzID0gMTM2Ni4xNSBNQi9zZWMKPiAgIFRpbWluZyBidWZm
ZXJlZCBkaXNrIHJlYWRzOiAyMDI4IE1CIGluICAzLjAwIHNlY29uZHMgPSA2NzUuNzEgTUIvc2Vj
Cj4gLS0tCj4gCj4gQXMgeW91IGNhbiBzZWUsIG5vdCBvbmx5IHRoZSBrZXJuZWwgUENJIGRyaXZl
ciByZWNvZ25pemVzIDUuMCBHVC9zIFBDSWUKPiBsaW5rIGJ1dCB0aGVyZSdzIGV2ZW4gYSBtYXJn
aW5hbCBpbmNyZWFzZSBpbiBjYWNoZWQgcmVhZHMgYXMgbWVhc3VyZWQgYnkKPiBoZHBhcm0sIHRo
ZSBnYWlucyBhcmUgb2YgY291cnNlIGxpbWl0ZWQgYnkgQ1BVIHBlcmZvcm1hbmNlLgo+IAo+PiBB
bHNvIHdlIHNldCBtYXgtbGluay1zcGVlZCB0byBPTkUgaW4gcmszMzk5LWJhc2UuZHRzaSBidXQg
c2VlbXMgYW5vdGhlcgo+PiBwYXRjaCBzbGlwIGluOiA3NTVmZmY1MjhiMWIgKCJhcm02NDogZHRz
OiByb2NrY2hpcDogYWRkIHZhcmlhYmxlcyBmb3IKPj4gcGNpZSBjb21wbGV0aW9uIHRvIGhlbGlv
czY0IikKPiAKPiBJIGNhbid0IHNwZWFrIGZvciBwYXRjaGVzIEkgaGF2ZW4ndCBhdXRob3JlZCwg
YnV0IEkgYmVsaWV2ZSB5b3UncmUKPiB3ZWxjb21lIHRvIHNlbmQgYSBjb3JyZWN0aW9uLgo+IAo+
IFRoYW5rIHlvdSwKPiBHZXJhbGRvIE5hc2NpbWVudG8KPiAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
