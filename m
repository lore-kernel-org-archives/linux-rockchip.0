Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ACC8CC6B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 02:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AiQRVvhZU4YBUjAmFlsD9vw55I/2lqbzCCZDW3XOpt8=; b=w5nSMUZi6O6A9/
	I3AEuwFj9YaRXuMqs7oCw4s99p+vUmUIWYFFdPX2J76u/hjixYr3u4XlT3v1AhiP5kKTC9Hdfb0SV
	5+agJTsyacN7ldWtI1UtJ69Bm+H8KL1NzmA4bXU+HtG+cS5Dz1Bv9w3P/Ex1Y32KK0WOKBrySyE+Y
	a/l5PtCkpo1TBNd3TTsNDgvU+3d7cNlqIJ9PExzDQ6X4rWM2LUG7cHzIuGLGfu29y8rKZ+oMkSLJ/
	ypJ+6ThH2VQHVBEyzOviPl3fQy8KcQ1hwGWJIgCsi0HnHJgOPuHyE4Lki210BGdUcXszHxB1ddlcP
	NdtXMLSIGn7FvDlLXKGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHBGs-0000000GfuP-0vFz;
	Thu, 15 Oct 2026 02:32:42 +0000
Received: from mail-m6022.netease.com ([210.79.60.22])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHBGp-0000000Gftu-1mVy;
	Thu, 15 Oct 2026 02:32:41 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5119304ec;
	Thu, 15 Oct 2026 10:32:35 +0800 (GMT+08:00)
Message-ID: <d18f064d-ea3f-45f5-bc86-9318b01f2c92@rock-chips.com>
Date: Thu, 15 Oct 2026 10:32:35 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Diederik de Haas <diederik@cknow-tech.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 5/9] arm64: dts: rockchip: rk3588s-nanopi: rename sd power
 pin
To: joachim.eastwood@gmail.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
References: <20261014-nanopi-m6-improvements-v1-0-e713f71eb4d3@gmail.com>
 <20261014-nanopi-m6-improvements-v1-5-e713f71eb4d3@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261014-nanopi-m6-improvements-v1-5-e713f71eb4d3@gmail.com>
X-HM-Tid: 0aa13d67807003a4kunme8fbb20b3a2d11
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZSkMfVhlLQ0IdSkNLS0xKQ1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Kc+EvEOdkG3sp/Iyjk30XHZnUqUXMQ2l8FGE01zFv08pi04kby72Zsf9lhf0w5gQc5lL6ESz7unzSqAsfC+rYC2Aho9VQF6+p5zgKR6zpz5kiwm1gNVUR3dSolVnQ/exu7p/y1rTSm+flZ21jxPA98QG/SwnOyJd+HCBM+zhU1w=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=4Q9/yr+TPrZ6trPCN3xo/GTUlhJ2HoDaO0szPFT8tS0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_193239_718248_7108314D 
X-CRM114-Status: GOOD (  11.61  )
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

5ZyoIDIwMjYvMTAvMTUg5pif5pyf5ZubIDA6MzMsIEpvYWNoaW0gRWFzdHdvb2QgdmlhIEI0IFJl
bGF5IOWGmemBkzoKPiBGcm9tOiBKb2FjaGltIEVhc3R3b29kIDxqb2FjaGltLmVhc3R3b29kQGdt
YWlsLmNvbT4KPiAKPiBzZG1tY19wd3JlbiBtYXRjaGVzIHRoZSBzaWduYWwgbmFtZSBpbiB0aGUg
c2NoZW1hdGljcywgd2hpY2ggc2ltcGxpZmllcwo+IGNyb3NzLXJlZmVyZW5jaW5nLgo+IAoKUmV2
aWV3ZWQtYnk6IFNoYXduIExpbiA8U2hhd24ubGluQHJvY2stY2hpcHMuY29tPgoKPiBTaWduZWQt
b2ZmLWJ5OiBKb2FjaGltIEVhc3R3b29kIDxqb2FjaGltLmVhc3R3b29kQGdtYWlsLmNvbT4KPiAt
LS0KPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1uYW5vcGkuZHRzaSB8
IDQgKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhz
LW5hbm9waS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW5hbm9w
aS5kdHNpCj4gaW5kZXggYTk5ZTJlNjBjNWY3Li4xZDM3ODYyZWRiNWIgMTAwNjQ0Cj4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW5hbm9waS5kdHNpCj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW5hbm9waS5kdHNpCj4gQEAgLTY2
LDcgKzY2LDcgQEAgdmNjXzN2M19zZF9zMDogcmVndWxhdG9yLXZjYy0zdjMtc2QtczAgewo+ICAg
CQllbmFibGUtYWN0aXZlLWhpZ2g7Cj4gICAJCWdwaW9zID0gPCZncGlvNCBSS19QQjQgR1BJT19B
Q1RJVkVfSElHSD47Cj4gICAJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gLQkJcGluY3Ry
bC0wID0gPCZzZF9zMF9wd3I+Owo+ICsJCXBpbmN0cmwtMCA9IDwmc2RtbWNfcHdyZW4+Owo+ICAg
CQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2NfM3YzX3NkX3MwIjsKPiAgIAkJcmVndWxhdG9yLWJvb3Qt
b247Cj4gICAJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+IEBAIC0zMzQs
NyArMzM0LDcgQEAgc2RtbWNfZGV0X3Bpbjogc2RtbWMtZGV0LXBpbiB7Cj4gICAJCQlyb2NrY2hp
cCxwaW5zID0gPDAgUktfUEE0IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwPjsKPiAgIAkJfTsK
PiAgIAo+IC0JCXNkX3MwX3B3cjogc2QtczAtcHdyIHsKPiArCQlzZG1tY19wd3Jlbjogc2RtbWMt
cHdyZW4gewo+ICAgCQkJcm9ja2NoaXAscGlucyA9IDw0IFJLX1BCNCBSS19GVU5DX0dQSU8gJnBj
ZmdfcHVsbF91cD47Cj4gICAJCX07Cj4gICAJfTsKPiAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
