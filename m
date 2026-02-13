Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66539EDF176
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Feb 2026 16:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5haDL0czDaD9nOe24d6v2AWaj2CYGuMcRrxhfHQw1Qw=; b=odBJH97vxDrMeeSwZEqsvYk78a
	sKzzt5w+TJASAFz64lZWEZFaO7mGBPzhMOfYIXzxJAc5mrILvY8NkcgzxglM5Z5F+kGEjnc6wcxYy
	qtzGo4NuXeclLyNQ8SyC96gm58EiB8oQElkUqQGhnAWPSRYdk5/26HA4v6j/U8WRdT/sC9CcpX1uM
	Xkcg/IX9dlw/W6prXjESElaZIW69S5pPA7s7+4pN0RYJDwBuGQGCYtbG4ZkvSYIie8ZeStY+qskSD
	gmjqWtZYbPZFF+d6ayN6M+xcsNuFMUEdB+lyxrF1vwlDcgo/nojrTs+YiNe8R+6bKBou7ND1VGyMV
	gPBmCGDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqvkj-00000003emt-3OPm;
	Fri, 13 Feb 2026 16:10:45 +0000
Received: from mail-m1973181.qiye.163.com ([220.197.31.81])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqvkf-00000003elu-3rXA;
	Fri, 13 Feb 2026 16:10:44 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 341affb18;
	Sat, 14 Feb 2026 00:10:26 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, jonas@kwiboo.se,
 Claude <noreply@anthropic.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rock-3b: Add phy-supply to
 pcie30phy
To: MidG971 <midgy971@gmail.com>, linux-rockchip@lists.infradead.org
References: <20260213151452.535527-1-midgy971@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <fe4c9352-7bf9-70cb-97ed-322fc739f409@rock-chips.com>
Date: Sat, 14 Feb 2026 00:10:24 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20260213151452.535527-1-midgy971@gmail.com>
X-HM-Tid: 0a9c57c491fb09cckunm917520542f2628
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ09PS1ZOT0lLGUsYHRoeQkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=gqR+K2yI1W/oIHIOEw+qH8se7uS+4+70umwQ6eF5WLknBtiKlVGVHdAoCyK0SdV1iSUyCy6YpyryQBbT/G8nuq+up1qxS7bSgKBac7RJbCLZ4K1AlfUXQd2oQLNEPEvYRVeOlxSNAqctiz/JlvMllF/h+eEU1IjNAEdvO9/77JA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=lQCtykSlfRzqEm/DJfyTijSzAL8gm65mvzEpV44+OgM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_081042_525184_B7A166B6 
X-CRM114-Status: GOOD (  20.65  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkKCtTaIDIwMjYvMDIvMTMg0MfG2s7lIDIzOjE0LCBNaWRHOTcxINC0tcA6Cj4gVGhlIFBDSWUg
My4wIFBIWSByZXF1aXJlcyBpdHMgcG93ZXIgc3VwcGx5IHJlZ3VsYXRvciB0byBiZSBlbmFibGVk
Cj4gYmVmb3JlIGluaXRpYWxpemF0aW9uLiBXaXRob3V0IHRoZSBwaHktc3VwcGx5IHByb3BlcnR5
LCB0aGUgUEhZCj4gZHJpdmVyIGRvZXMgbm90IGVuc3VyZSB0aGUgcmVndWxhdG9yIGlzIGVuYWJs
ZWQsIGNhdXNpbmcgU1JBTQo+IGluaXRpYWxpemF0aW9uIHRvIHRpbWVvdXQgd2l0aCAibG9jayBm
YWlsZWQiIGVycm9yczoKPiAKPiAgICBwaHkgcGh5LWZlOGMwMDAwLnBoeS4xOiBwaHkgcG93ZXJv
biBmYWlsZWQgLS0+IC0xMTAKPiAgICByb2NrY2hpcC1zbnBzLXBjaWUzLXBoeSBmZThjMDAwMC5w
aHk6IFBDSWUzUEhZIGxvY2sgZmFpbGVkIDB4Njg5MDAwMAo+ICAgIHJvY2tjaGlwLXBjaWUgZmUy
ODAwMDAucGNpZTogcGh5IGluaXQgZmFpbGVkOiAtMTEwCj4gCj4gVGhpcyByZXN1bHRzIGluIE5W
TWUgZGV2aWNlcyBpbiB0aGUgTS4yIHNsb3Qgbm90IGJlaW5nIGRldGVjdGVkLgo+IAo+IEFkZCBw
aHktc3VwcGx5IHJlZmVyZW5jaW5nIHZjYzN2M19waTZjXzAzIHJlZ3VsYXRvciAod2hpY2ggY29u
dHJvbHMKPiB0aGUgUEk2QyBQQ0llIGNsb2NrIGdlbmVyYXRvciBwb3dlciB2aWEgR1BJTzBfRDQp
IHRvIGVuc3VyZSBwcm9wZXIKPiBwb3dlciBzZXF1ZW5jaW5nIGR1cmluZyBQSFkgaW5pdGlhbGl6
YXRpb24uCj4gCj4gRml4ZXM6IDg0NmVmNzc0OGZhOSAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBB
ZGQgUmFkeGEgUk9DSyAzQiIpCj4gU2lnbmVkLW9mZi1ieTogTWlkRzk3MSA8bWlkZ3k5NzFAZ21h
aWwuY29tPgo+IENvLWRldmVsb3BlZC1ieTogQ2xhdWRlIDxub3JlcGx5QGFudGhyb3BpYy5jb20+
Cj4gU2lnbmVkLW9mZi1ieTogQ2xhdWRlIDxub3JlcGx5QGFudGhyb3BpYy5jb20+CgpTaG91bGQg
cHV0IHlvdXIgU09CIGF0IGxhc3QuCgo+IC0tLQo+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1Njgtcm9jay0zYi5kdHMgfCAxICsKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU2OC1yb2NrLTNiLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJv
Y2stM2IuZHRzCj4gaW5kZXggYzVmNjdkZDZkZmQ5Li5hMWIyYzNkNGU1ZjYgMTAwNjQ0Cj4gLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHMKPiArKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cwo+IEBAIC00
MDQsNiArNDA0LDcgQEAgJnBjaWUyeDEgewo+ICAgfTsKPiAKPiAgICZwY2llMzBwaHkgewo+ICsJ
cGh5LXN1cHBseSA9IDwmdmNjM3YzX3BpNmNfMDM+OwoKQXMgYSBmaXggd2hpY2ggbmVlZCB0byBi
ZSBiYWNrcG9ydGVkLCBpdCBsb29rcyBmaW5lIGZvciBqdXN0IG9uZS1saW5lCmNoYW5nZS4KCkhv
d2V2ZXIsIHRoZSB3aG9sZSBjb21taXQgbWVzc2FnZSBpcyBtaXNsZWFkaW5nLiBwb3dlciBzdXBw
bHkgZm9yCnBjaWUzMHBoeSBpcyBwb3dyZWQgdXAgd2l0aCBhbGwgb3RoZXIgcGh5cycgd2hlbiBi
b290aW5nLCBmb3IgaW5zdGFuY2UsClVTQiwgb3RoZXJ3aXNlIGFsbCBJUCB1c2luZyBQSFkgc2hv
dWxkIG5vdCB3b3JrLCBub3QganVzdCBQQ0llLiBTbyAKYWN0dWFsbHkgaXQncyBub3QgdGhlIHBv
d2VyIGJ1dCB0aGUgaW5wdXQgcmVmY2xrLCBhbmQgYXBwcmVudGx5IHBpNmMKaXMgYSAxMDBNSHog
Y2xvY2sgZ2VuZXJhdG9yIHdoaWNoIHdhcyBkZXNpZ25lZCB0byBiZSBhIHJlZ3VsYXRvciBieQpt
aXN0YWtlIGluIHRoZSBmaXJzdCBwbGFjZS4KCklmIHlvdSB3b3VsZCBsaWtlIHRvIGNsZWFuIGl0
IHVwIGxhdGVyLCB5b3UgY291bGQgdXNlIGEgCmdhdGVkLWZpeGVkLWNsb2NrIGxpa2U6CgpodHRw
czovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8zNWU5N2E0MS1iODhiLWY1MjYtMzUx
Zi1kNGM1ZjcwZWU0ZTlAcm9jay1jaGlwcy5jb20vVC8jdQoKCj4gICAJc3RhdHVzID0gIm9rYXki
Owo+ICAgfTsKPiAKPiAtLQo+IDIuMzkuNQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKPiAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
