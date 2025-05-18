Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EAF4C3ABD8
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 May 2025 13:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQxnA37h7560d9xp61qtZH3lpT7fMTfvU9i4ZlSAV2o=; b=jzrrxSEiWOqTf4
	oqJ2jvcfaUyxHZxFbvJLTu+M3py2ca3ybQxPoXqL142IyfOEmNOBSnig13h/qU/ainPgr2fXtJyPB
	Ru7TKVDrZyf11kI7ILWyNljxqJPA7FPtYr+/a6jybVJkC+cz/OPlflJM3L5buyB5K2skohQWcObpj
	0kGXnGg3k+odTqvae6GqWmLB4ucLwh+7j9d78kujQ/bw5jUoOwuNDevtVB4/cNmCWr1QqdgWf+Mws
	PtvWm9NNBV6vtzrXDdcS9aiuCNDGrOuAvK5LVmjsqm0K3nBa5LAsO4ZS8xASlmH4smPCevDPxYH2K
	N0Ig4PEEpl92c0SW5ikQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGeWE-00000007AWK-0iuV;
	Sun, 18 May 2025 13:57:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGeWB-00000007AVx-2Wa7
	for linux-rockchip@lists.infradead.org;
	Sun, 18 May 2025 13:57:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=8n1qhNBG9aKCngN6y44GHqsGUf3hTGo9f/XMCdBaqNI=; b=u+xNnM8bAVkEi+EEoXbSBB1F71
	gbFybuoAdhIft85qDzxeeXz9yvHCGMQtFecDkPXIURmMZEG/iyCVaiRkCK/qXv0G579Vfto6m1m+X
	oRsFBhclFcwyZmW5NU3Zh9MGlAWwUi4rc9xEY7p+c2+Hgf84R2uP4Y0C8yfpUmfaCYuBOLoEDVu/k
	eqgtXrfUbX6ndPiItrv4c+fc0hzbo0oiYRGbQndAhgkUAABfa5Wmv6kPwl4shs1D1TKpx0M2oqjKD
	QXgKwzZ1qTdtx60wwQ5IOV0VT5bXSU3xs8kj1Nrw3c4KwIp+c2eMZbDmTTV3tXMlZDQ6Cfd8YdzN+
	osABZZ5w==;
Received: from i53875a50.versanet.de ([83.135.90.80] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uGeW2-0003lu-JI; Sun, 18 May 2025 15:57:22 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Finley Xiao <finley.xiao@rock-chips.com>,
 kernel test robot <lkp@intel.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [linux-next:master 9473/11093]
 arch/arm64/boot/dts/rockchip/rk3562.dtsi:624.26-675.5: Warning
 (simple_bus_reg): /soc/pcie@ff500000: simple-bus unit address format error,
 expected "fe000000"
Date: Sun, 18 May 2025 15:57:21 +0200
Message-ID: <2410023.BjyWNHgNrj@diego>
In-Reply-To: <3c3d0020-1dce-4364-a0a1-7c35b21e93de@kernel.org>
References: <202505150745.PQT9TLYX-lkp@intel.com> <3983362.fW5hKsROvD@diego>
 <3c3d0020-1dce-4364-a0a1-7c35b21e93de@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_065731_662122_4A8F9209 
X-CRM114-Status: GOOD (  21.10  )
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

QW0gU29ubnRhZywgMTguIE1haSAyMDI1LCAxMjozNjo1MCBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIEtyenlzenRvZiBLb3psb3dza2k6Cj4gT24gMTYvMDUvMjAyNSAyMjox
MCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gPiBBbSBEb25uZXJzdGFnLCAxNS4gTWFpIDIwMjUs
IDE2OjA0OjIwIE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIga2VybmVsIHRl
c3Qgcm9ib3Q6Cj4gPj4gdHJlZTogICBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGlu
dXgva2VybmVsL2dpdC9uZXh0L2xpbnV4LW5leHQuZ2l0IG1hc3Rlcgo+ID4+IGhlYWQ6ICAgYmRk
NjA5NjU2ZmY1NTczZGI5YmExZDI2NDk2YTUyOGJkZDI5N2NmMgo+ID4+IGNvbW1pdDogY2ViNmVm
MWVhOTAwMjY2OWFmYzBlMWVmMjU4ZTUzMGQzYzA1ZDkxYSBbOTQ3My8xMTA5M10gYXJtNjQ6IGR0
czogcm9ja2NoaXA6IEFkZCBSSzM1NjIgZXZiMiBkZXZpY2V0cmVlCj4gPj4gY29uZmlnOiBhcm02
NC1yYW5kY29uZmlnLTIwNTItMjAyNTA1MTMgKGh0dHBzOi8vZG93bmxvYWQuMDEub3JnLzBkYXkt
Y2kvYXJjaGl2ZS8yMDI1MDUxNS8yMDI1MDUxNTA3NDUuUFFUOVRMWVgtbGtwQGludGVsLmNvbS9j
b25maWcpCj4gPj4gY29tcGlsZXI6IGNsYW5nIHZlcnNpb24gMjEuMC4wZ2l0IChodHRwczovL2dp
dGh1Yi5jb20vbGx2bS9sbHZtLXByb2plY3QgZjgxOWY0NjI4NGYyYTc5NzkwMDM4ZTFmNjY0OTE3
Mjc4OTczNGFlOCkKPiA+PiBkdHNjaGVtYSB2ZXJzaW9uOiAyMDI1LjMuZGV2MjcrZzMyNzQ5YjMK
PiA+PiByZXByb2R1Y2UgKHRoaXMgaXMgYSBXPTEgYnVpbGQpOiAoaHR0cHM6Ly9kb3dubG9hZC4w
MS5vcmcvMGRheS1jaS9hcmNoaXZlLzIwMjUwNTE1LzIwMjUwNTE1MDc0NS5QUVQ5VExZWC1sa3BA
aW50ZWwuY29tL3JlcHJvZHVjZSkKPiA+Pgo+ID4+IElmIHlvdSBmaXggdGhlIGlzc3VlIGluIGEg
c2VwYXJhdGUgcGF0Y2gvY29tbWl0IChpLmUuIG5vdCBqdXN0IGEgbmV3IHZlcnNpb24gb2YKPiA+
PiB0aGUgc2FtZSBwYXRjaC9jb21taXQpLCBraW5kbHkgYWRkIGZvbGxvd2luZyB0YWdzCj4gPj4g
fCBSZXBvcnRlZC1ieToga2VybmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4gPj4gfCBD
bG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL29lLWtidWlsZC1hbGwvMjAyNTA1MTUwNzQ1
LlBRVDlUTFlYLWxrcEBpbnRlbC5jb20vCj4gPj4KPiA+PiBkdGNoZWNrIHdhcm5pbmdzOiAobmV3
IG9uZXMgcHJlZml4ZWQgYnkgPj4pCj4gPj4+PiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU2Mi5kdHNpOjYyNC4yNi02NzUuNTogV2FybmluZyAoc2ltcGxlX2J1c19yZWcpOiAvc29j
L3BjaWVAZmY1MDAwMDA6IHNpbXBsZS1idXMgdW5pdCBhZGRyZXNzIGZvcm1hdCBlcnJvciwgZXhw
ZWN0ZWQgImZlMDAwMDAwIgo+ID4+Pj4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
NjIuZHRzaToxMTE1LjIwLTExODEuNTogV2FybmluZyAoc2ltcGxlX2J1c19yZWcpOiAvc29jL3Bp
bmN0cmw6IG1pc3Npbmcgb3IgZW1wdHkgcmVnL3JhbmdlcyBwcm9wZXJ0eQo+ID4gCj4gPiBobW0s
IEkgZG9uJ3QgcmVhbGx5IHVuZGVyc3RhbmQgdGhpcyBlcnJvciBtZXNzYWdlLgo+ID4gCj4gPiBG
cm9tIGEgcHJhY3RpY2FsIHBvaW50LCB0aGUgZHRzY2hlbWEtdmVyc2lvbiBJIGhhdmUgaW5zdGFs
bGVkIGlzCj4gPiAyMDI1LjMuZGV2MjcrZzMyNzQ5YjMsIHdoaWNoIGlzIHRoZSB0b3Btb3N0IGNv
bW1pdCBmcm9tCj4gPiBtYXktMTN0aC4KPiA+IAo+ID4gUnVubmluZyB0aGUgZHRic2NoZWNrIG9u
IHRoZSByazM1NjItZXZiLXYxMC5kdGIgb24gdGhlIGZ1bGwKPiA+IGxpbnV4LW5leHQgZnJvbSB0
b2RheSwgeWllbGRzIG5vIGVycm9ycy4KPiAKPiBUaGVzZSBhcmUgc3RhbmRhcmQgZHRjIHdhcm5p
bmdzLgo+IAo+ID4gCj4gPiBDaGVja2luZyBvdXQgdGhlIHNwZWNpZmljIGNvbW1pdCBjZWI2ZWYx
ZWE5MDAyNiBicmluZ3MgdXAgdGhlCj4gPiBlcnJvcnMgZnJvbSBiZWxvdyBbMV0sIGJlY2F1c2Ug
dGhleSBjb21lIGZyb20gZGlmZmVyZW50IHRyZWVzLgo+ID4gCj4gPiAKPiA+IEJ1dCBpbiBubyBj
YXNlcyBkb2VzIGR0YnNjaGVjayBjb21wbGFpbiBhYm91dCB0aGUgUENJIG1lbW9yeSByZWdpb25z
Lgo+ID4gCj4gPiAKPiA+IFRoZSBQQ0llIGNvbnRyb2xsZXIgaW4gcXVlc3Rpb24gb2YgY291cnNl
IGhhcyAzIG1lbW9yeSByZWdpb25zCj4gPiAJcmVnID0gPDB4MCAweGZlMDAwMDAwIDB4MCAweDQw
MDAwMD4sCj4gPiAJICAgICAgPDB4MCAweGZmNTAwMDAwIDB4MCAweDEwMDAwPiwKPiA+IAkgICAg
ICA8MHgwIDB4ZmMwMDAwMDAgMHgwIDB4MTAwMDAwPjsKPiA+IAlyZWctbmFtZXMgPSAiZGJpIiwg
ImFwYiIsICJjb25maWciOwo+ID4gCj4gPiBhbmQgY3VycmVudGx5IHRoZSBub2RlLW5hbWUgbWlt
aWNzIHRoZSAiYXBiIiBtZW1vcnkgcmVnaW9uLgo+ID4gU2hvdWxkIGl0IGFsd2F5cyB1c2UgdGhl
IGZpcnN0IG9uZT8KPiAKPiBJIGRvbid0IHVuZGVyc3RhbmQgd2hlcmUgaXMgdGhlIHByb2JsZW0u
IFRoZSB3YXJuaW5nIHRlbGxzIHlvdTogdW5pdAo+IGFkZHJlc3MgaXMgbm90IGNvcnJlY3QuIEZp
eCB0aGUgdW5pdCBhZGRyZXNzIHRvIG1hdGNoIHJlZy4KClRoZSBwcm9ibGVtIHdhcyBtb3JlIG9u
ICJpcyBteSB0b29sY2hhaW4gb3V0ZGF0ZWQgb3Igd2h5IGFtIEkgbm90IHNlZWluZwp0aGVzZSBy
ZXBvcnRzIi4gV2hpY2ggSSBub3cgbWFuYWdlZCB0byByZXNvbHZlLCBiZWNhdXNlIEkgZmluYWxs
eSBzYXcgdGhlCiIodGhpcyBpcyBhIFc9MSBidWlsZCkiIGluIHRoZSBoZWFkZXIgb2YgdGhlIHJl
cG9ydGluZyBtYWlsIDstKQoKClNvIHllcywgd2l0aCB0aGUgZHRzY2hlbWEgd2FybmluZyBhYm91
dCB0aGUgcG93ZXItY29udHJvbGxlciBJIGdvdCBteSBtaW5kCnN0dWNrIGluIHRoZSAiaXMgbXkg
ZHRzY2hlbWEiIG91dGRhdGVkLCBub3QgcmVhbGl6aW5nIHRoYXQgdGhlIGZpcnN0IG9uZQpjb21l
cyBmcm9tIGR0YyBpdHNlbGYgYW5kIHRoZW4gYWxzbyBtaXNzaW5nIHRoZSAiKHRoaXMgaXMgYSBX
PTEgYnVpbGQpIgptZW50aW9uLgoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
