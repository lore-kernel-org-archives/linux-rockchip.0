Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2352C3ABC3
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 May 2025 10:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wRQOr6BK+X0xVQpdpa9NV5npmp1Yk3RrlAG/1nOZ0yg=; b=eVXTi9WY7U4YHl
	XabuxUh78h4MC0wHDu1+h6nfm6oXav96JCDpJuLytwrf6UBs/35B6iUO+BAGnxtDqGdjf40IgOedW
	aJpqrFfh9531EO9XYXCWqntmwKNrYu96r8yF6Dtm5wmIBY7auFNFX6kET33pFfAJniVdKKIL11Dfp
	7HguN1Lzb/df0ac1fkvwhP8owpzFyAZKS/GQmB9wv8ExbtKwt8PXQwSSWw3WSs31tBIRydHHDT5Ca
	VJWZiBoYU0ahrfzI6Y7DhYw8GAKg4tEEwafSoJ+tP+moxMnhihUNzSHCuIGjBhJpLojS+LO/guzYu
	rEUdUU/cGUdFPScAzwhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uE3W5-000000073nK-1rSs;
	Sun, 11 May 2025 10:02:41 +0000
Received: from mail-m83149.xmail.ntesmail.com ([156.224.83.149])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uE3UA-000000073b0-3kUT;
	Sun, 11 May 2025 10:00:45 +0000
Received: from localhost.localdomain (unknown [119.122.215.106])
	by smtp.qiye.163.com (Hmail) with ESMTP id 14a0dc43a;
	Sun, 11 May 2025 18:00:27 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: ziyao@disroot.org
Cc: andyshrk@163.com,
	conor+dt@kernel.org,
	damon.ding@rock-chips.com,
	devicetree@vger.kernel.org,
	didi.debian@cknow.org,
	dsimic@manjaro.org,
	heiko@sntech.de,
	jbx6244@gmail.com,
	jing@jing.rocks,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	sebastian.reichel@collabora.com,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH v7 4/5] arm64: dts: rockchip: add core dtsi for RK3562 SoC
Date: Sun, 11 May 2025 18:00:22 +0800
Message-Id: <20250511100022.31465-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250310140916.14384-2-ziyao@disroot.org>
References: <20250310140916.14384-2-ziyao@disroot.org>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDSBhDVklDGU5PH0xMSUweSFYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVKS01ZV1kWGg8SFR0UWUFZT0tIVUpLSUJNS0pVSktLVU
	tZBg++
X-HM-Tid: 0a96bec9f05303a2kunm14a0dc43a
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PjI6UQw*DjJON0oCUTUxEzJN
	FE0aFApVSlVKTE9NQk5MTUlDTUtDVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	QlVKSUlVSUpOVUpLTVlXWQgBWUFPT0hMNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250511_030043_213691_23C77226 
X-CRM114-Status: GOOD (  14.44  )
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

SGksCgo+IDxzbmlwPgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2Mi5kdHNpCj4gQEAgLTAsMCArMSwxMTg3IEBACj4gPHNuaXA+Cj4gKyNp
bmNsdWRlIDxkdC1iaW5kaW5ncy9waHkvcGh5Lmg+Cj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9w
b3dlci9yb2NrY2hpcCxyazM1NjItcG93ZXIuaD4KPiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Bp
bmN0cmwvcm9ja2NoaXAuaD4KCkRvZXMgdGhpcyBuZWVkIHRvIGJlIHNvcnRlZCBhbHBoYWJldGlj
YWxseT8KCj4gPHNuaXA+Cj4gKwkJaWRsZS1zdGF0ZXMgewo+ICsJCQllbnRyeS1tZXRob2QgPSAi
cHNjaSI7CgpJdCB3b3VsZCBiZSBiZXR0ZXIgdG8gbGVhdmUgYSBibGFuayBsaW5lIGhlcmUuCgo+
ICsJCQlDUFVfU0xFRVA6IGNwdS1zbGVlcCB7Cgo+IDxzbmlwPgo+ICsJCXB3bTA6IHB3bUBmZjIz
MDAwMCB7Cj4gKwkJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTYyLXB3bSIsICJyb2NrY2hp
cCxyazMzMjgtcHdtIjsKPiArCQkJcmVnID0gPDB4MCAweGZmMjMwMDAwIDB4MCAweDEwPjsKPiAr
CQkJI3B3bS1jZWxscyA9IDwzPjsKPiArCQkJcGluY3RybC1uYW1lcyA9ICJhY3RpdmUiOwoKSXQg
c2hvdWxkIGJlIGBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiO2AgZm9yIHB3bSwgc2VlIGFsc28g
WzFdCgo+ICsJCQlwaW5jdHJsLTAgPSA8JnB3bTBtMF9waW5zPjsKPiArCQkJY2xvY2tzID0gPCZj
cnUgQ0xLX1BNVTFfUFdNMD4sIDwmY3J1IFBDTEtfUE1VMV9QV00wPjsKPiArCQkJY2xvY2stbmFt
ZXMgPSAicHdtIiwgInBjbGsiOwo+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICsJCX07CgpU
aGUgcGluY3RybCBzaG91bGQgYmUgcGxhY2VkIGJlbG93IHRoZSBjbG9jay4KCj4gPHNuaXA+Cj4g
KwkJCXBvd2VyOiBwb3dlci1jb250cm9sbGVyIHsKPiArCQkJCWNvbXBhdGlibGUgPSAicm9ja2No
aXAscmszNTYyLXBvd2VyLWNvbnRyb2xsZXIiOwo+ICsJCQkJI3Bvd2VyLWRvbWFpbi1jZWxscyA9
IDwxPjsKPiArCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsJCQkJI3NpemUtY2VsbHMgPSA8
MD47Cj4gKwkJCQlzdGF0dXMgPSAib2theSI7Cj4gKwoKYHN0YXR1cyA9ICJva2F5ImAgaXMgbm90
IG5lZWRlZCBoZXJlLgpBbHNvIHJlbW92ZSBleHRyYSBibGFuayBsaW5lcy4KCj4gKwo+ICsJCQkJ
cG93ZXItZG9tYWluQFJLMzU2Ml9QRF9HUFUgewo+IDxzbmlwPgo+ICsJCQkJcG93ZXItZG9tYWlu
QFJLMzU2Ml9QRF9WSSB7Cj4gKwkJCQkJcmVnID0gPFJLMzU2Ml9QRF9WST47Cj4gKwkJCQkJI3Bv
d2VyLWRvbWFpbi1jZWxscyA9IDwxPjsKPiArCQkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiAr
CQkJCQkjc2l6ZS1jZWxscyA9IDwwPjsKPiArCQkJCQlwbV9xb3MgPSA8JnFvc19pc3A+LAo+ICsJ
CQkJCQkgPCZxb3NfdmljYXA+Owo+ICsKPiArCQkJCQlwb3dlci1kb21haW5AUkszNTYyX1BEX1ZF
UFUgewo+ICsJCQkJCQlyZWcgPSA8UkszNTYyX1BEX1ZFUFU+Owo+ICsJCQkJCQlwbV9xb3MgPSA8
JnFvc192ZXB1PjsKPiArCQkJCQkjcG93ZXItZG9tYWluLWNlbGxzID0gPDA+OwoKVGhpcyBsaW5l
IGlzIG1pc3NpbmcgYSB0YWIsIHJlc3VsdGluZyBpbiBhbiBpbmRlbnRhdGlvbiBlcnJvci4KCj4g
KwkJCQkJfTsKPiArCQkJCX07Cj4gPHNuaXA+Cgo+ICsJCXBjaWUyeDE6IHBjaWVAZmY1MDAwMDAg
ewo+ICsJCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2Mi1wY2llIiwgInJvY2tjaGlwLHJr
MzU2OC1wY2llIjsKPiArCQkJI2FkZHJlc3MtY2VsbHMgPSA8Mz47Cj4gKwkJCSNzaXplLWNlbGxz
ID0gPDI+OwoKI2FkZHJlc3MtY2VsbHMvI3NpemUtY2VsbHMgc2hvdWxkIGJlIHBsYWNlZCBhYm92
ZSBgc3RhdHVzID0gImRpc2FibGVkIjtgCkkgdGhpbmsgb3RoZXIgbm9kZXMgYWxzbyBuZWVkIHRv
IGNoYW5nZSB0aGlzLiAoU29tZSBmb3IgI3B3bS1jZWxscykKCj4gKwkJCWludGVycnVwdC1uYW1l
cyA9ICJzeXMiLCAicG1jIiwgIm1zZyIsICJsZWdhY3kiLCAiZXJyIiwgIm1zaSI7CgpJIG5vdGlj
ZWQgdGhhdCB0aGUgYnNwIDUuMTAga2VybmVsIHNhaWQgdGhhdCBwY2llIG9ubHkgaGFzIDggTVNJ
IHZlY3RvcnMsClsyXVszXSBidXQgaW4gdGhlIGJzcCA2LjEga2VybmVsIGl0IGNoYW5nZWQgdG8g
MzIgTVNJIHZlY3RvcnMgWzRdLgoKVGhlIHJvY2tjaGlwIGRvY3VtZW50YXRpb24gYWxzbyBzYXlz
IHRoZXJlIGFyZSBvbmx5IDggTVNJIHZlY3RvcnM6CgpbNV0gUGFnZTM3IDguOCAiUkszNTI4L1JL
MzU2Mi9SSzM1Nzblj6/liIbphY3nmoRNU0nmiJbogIVNU0ktWOaAu+aVsOaYrzjkuKoiClRyYW5z
bGF0ZSBpbnRvIEVuZ2xpc2g6ICJUaGUgdG90YWwgbnVtYmVyIG9mIE1TSSBvciBNU0ktWCB0aGF0
CmNhbiBiZSBhbGxvY2F0ZWQgYnkgUkszNTI4L1JLMzU2Mi9SSzM1NzYgaXMgOCIKCldlIG5vdGlj
ZWQgdGhpcyB3aGVuIHN1cHBvcnRpbmcgcmszNTI4LCBzbyB3aGljaCBvbmUgaXMgY29ycmVjdD8K
Cj4gKwkJCXBoeXMgPSA8JmNvbWJwaHlfcHUgUEhZX1RZUEVfUENJRT47CgpzL2NvbWJwaHlfcHUv
Y29tYnBoeQoKPiA8c25pcD4KKwkJY29tYnBoeV9wdTogcGh5QGZmNzUwMDAwIHsKClBsZWFzZSBj
aGFuZ2UgaXQgdG8gYGNvbWJwaHlgIGxpa2UgcmszNTY4LgoKSGVpa28gSSBrbm93IHlvdSBqdXN0
IG1lcmdlZCB0aGlzLCBpdCdzIGEgYml0IG9mZmVuc2l2ZSBidXQgSSB0aGluawppdCB3b3VsZCBi
ZSBiZXR0ZXIgdG8gZHJvcCB0aGVzZSBwYXRjaGVzIGFuZCBmaXggdGhlbSBmdXJ0aGVyLgpPciBr
ZXZlciB3b3VsZCB5b3UgbGlrZSB0byBzZW5kIGEgZml4IHBhdGNoPyBBbHRob3VnaCBtb3N0IG9m
CnRoZW0gYXJlIHR5cG8gaXNzdWVzLCBpdCB3aWxsIHRha2UgYSBmZXcgcGF0Y2hlcyB0byBmaXgg
aXQuCgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDI1MDMxMDE0MDkxNi4xNDM4
NC0yLXppeWFvQGRpc3Jvb3Qub3JnLwpbMl0gaHR0cHM6Ly9naXRodWIuY29tL3JvY2tjaGlwLWxp
bnV4L2tlcm5lbC9jb21taXQvNGYwYzljY2M3OWMzNzNhYTk3MDg0YjNiMWFiMDY1MWNhNDI0ODIy
NwpbM10gaHR0cHM6Ly9naXRodWIuY29tL3JvY2tjaGlwLWxpbnV4L2tlcm5lbC9jb21taXQvYWZi
ODVjNzU5Y2ZhZGM0MDUxYzQyYTk3MDM4NjAwNzFhOTg3N2YyZQpbNF0gaHR0cHM6Ly9naXRodWIu
Y29tL2Nvb2xwaS1nZW9yZ2UvY29vbHBpLWtlcm5lbC9jb21taXQvNTIyYjk0MTIyZWM3OTc3NjBk
Y2Q0NjY4NTEyNTBjYmRmYWZmZjUwZgpbNV0gaHR0cHM6Ly9naXRodWIuY29tL0FybVNvTS9yazM1
MDYtcmtyNC4yLXNkay9ibG9iL21haW4vZG9jcy9jbi9Db21tb24vUENJZS9Sb2NrY2hpcF9EZXZl
bG9wZXJfR3VpZGVfUENJZV9DTi5wZGYKClRoYW5rcywKQ2h1a3VuCgotLQoyLjI1LjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
