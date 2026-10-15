Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9445CC6B2D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 02:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a4XoIqJJkqgM18e/Ih7tJdEFkn4+8zzHFtdCLqx7L+I=; b=Hg6VdNjvMkBqtg
	dO3P6UHY590MD/8EdiKJzQT9DRhEdqwY25CNle7HscL5dUUfb1Y6RpRgUeJlkPYzdHlnUi9j+dyf9
	5dlUQOKexl1ywYXj6kZPpfkmyhy5b/RMXO9fCQI3UILf+SyHB1Jgf37p3Ft6Gnbi1XlpEWiDNOGLW
	MaFz2ii2f+JHDBzFsFfLuCgyctAUsOnBl+FaJKkK5r6tEKzVOpGpk//d1mGBJ+rY/zt0XWyairMru
	jaZ5lYWf2/GVmQQTHRPAAt6u++Y4ZV6udGVPaWQc9chnlLXc9Ghx9HvpA8XzdZLkVH3fJgAEMtJBq
	bFDaBLMjuC4a/ObvE2Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHBHm-0000000Gg2z-2FaA;
	Thu, 15 Oct 2026 02:33:38 +0000
Received: from mail-m93192.xmail.ntesmail.com ([103.126.93.192])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHBHj-0000000Gg2H-15o6;
	Thu, 15 Oct 2026 02:33:36 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 511930650;
	Thu, 15 Oct 2026 10:33:31 +0800 (GMT+08:00)
Message-ID: <b7cf5fc5-e833-4406-a136-21836e79301d@rock-chips.com>
Date: Thu, 15 Oct 2026 10:33:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Diederik de Haas <diederik@cknow-tech.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 8/9] arm64: dts: rockchip: rk3588s-nanopi-m6: rename pcie2
 power pin
To: joachim.eastwood@gmail.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
References: <20261014-nanopi-m6-improvements-v1-0-e713f71eb4d3@gmail.com>
 <20261014-nanopi-m6-improvements-v1-8-e713f71eb4d3@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261014-nanopi-m6-improvements-v1-8-e713f71eb4d3@gmail.com>
X-HM-Tid: 0aa13d685b2d03a4kunm431f7c103a2f98
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCTUxDVh4dTUoaGkNKGEkZQ1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=SaqgKGYDVN50o1hg8KF/ko+9spE20AMp7Rt6WxJh96wvnb1LYTm1SaPdxrvqDrKG4q9OjFQUR1NulSUdv2BOnVI/DMhiY37Df/DKhp8lMCbMn8MVNVw+XcEXAuHnaMeHxDAnIivE7eabEAbf7XNRSf8TG6eobEKSAhHrC0Wrys8=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=nHAMUEDGItR7vD8mHcnvtF5InhaMhwN9oMDqx6Yu23Q=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_193335_509263_0DAC91F2 
X-CRM114-Status: GOOD (  11.49  )
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
YWlsLmNvbT4KPiAKPiBwY2llMjB4MV8yX2Nvbl9wd3JlbiBtYXRjaGVzIHRoZSBzaWduYWwgbmFt
ZSBpbiB0aGUgc2NoZW1hdGljcywgd2hpY2gKPiBzaW1wbGlmaWVzIGNyb3NzLXJlZmVyZW5jaW5n
Lgo+IAoKUmV2aWV3ZWQtYnk6IFNoYXduIExpbiA8U2hhd24ubGluQHJvY2stY2hpcHMuY29tPgoK
PiBTaWduZWQtb2ZmLWJ5OiBKb2FjaGltIEVhc3R3b29kIDxqb2FjaGltLmVhc3R3b29kQGdtYWls
LmNvbT4KPiAtLS0KPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1uYW5v
cGktbTYuZHRzaSB8IDQgKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1ODhzLW5hbm9waS1tNi5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODhzLW5hbm9waS1tNi5kdHNpCj4gaW5kZXggNjIwNWE1NDJjZDFhLi5jYTExNWQ4ZTEw
OGEgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW5h
bm9waS1tNi5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhz
LW5hbm9waS1tNi5kdHNpCj4gQEAgLTQxLDcgKzQxLDcgQEAgdmNjXzN2M19wY2llOiByZWd1bGF0
b3ItdmNjLTN2My1wY2llIHsKPiAgIAkJZW5hYmxlLWFjdGl2ZS1oaWdoOwo+ICAgCQlncGlvcyA9
IDwmZ3BpbzMgUktfUEM2IEdQSU9fQUNUSVZFX0hJR0g+Owo+ICAgCQlwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiOwo+IC0JCXBpbmN0cmwtMCA9IDwmcGNpZTJfMl9wd3Jlbj47Cj4gKwkJcGluY3Ry
bC0wID0gPCZwY2llMjB4MV8yX2Nvbl9wd3Jlbj47Cj4gICAJCXJlZ3VsYXRvci1uYW1lID0gInZj
Y18zdjNfcGNpZSI7Cj4gICAJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+
ICAgCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiBAQCAtMTE2LDcgKzEx
Niw3IEBAIGhwX2RldDogaHAtZGV0IHsKPiAgIAl9Owo+ICAgCj4gICAJcGNpZSB7Cj4gLQkJcGNp
ZTJfMl9wd3JlbjogcGNpZTItMi1wd3JlbiB7Cj4gKwkJcGNpZTIweDFfMl9jb25fcHdyZW46IHBj
aWUyMHgxLTItY29uLXB3cmVuIHsKPiAgIAkJCXJvY2tjaGlwLHBpbnMgPSA8MyBSS19QQzYgUktf
RlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4gICAJCX07Cj4gICAJfTsKPiAKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
