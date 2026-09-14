Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1360C88E6E
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2026 08:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n0UAXXhfr+jkSPfqgUBITeG5vxz7WUpUaifRisqGYrA=; b=zK5JgJfpe6oI9Y
	CtXzdrUZsbMg87lW1X3y/G6No9yO59XxVx5vvMOSIOTA+9TVaOqjDhBV5omBL+130W+eLnXYZUPqh
	1z8KKjt4JJPsd0zO8h3JOE+kE2Vce1J639Qpwy7U3NykcuyR1itCr6/zT0KqVVxLXNGu2C8i1Se51
	FGpj51sQ85UEEcLmgG5Ef3k6s6n1/OlIVUPgVJAWBfyILvs4kv6sjOh7Sqy9p4cIwGY8mva7I7EKS
	YVmMrUorJwhfr64QKrtqF/KugHziiJAmOlfSFPyCILUHtRHVm5GFTAzbuhefaLpxUOngWQ+xIDGQX
	BoNlJIXZKcLituG41tYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x61zD-00000002idu-0ZBP;
	Mon, 14 Sep 2026 08:24:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x61z8-00000002ib6-0PA8;
	Mon, 14 Sep 2026 08:24:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 61ED24378D;
	Mon, 14 Sep 2026 08:24:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3ABE8C2BD00;
	Mon, 14 Sep 2026 08:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789374257;
	bh=MkeMHyHyjaln4EFjaZWMqZiH0kqhwaJ4f7l2qdwElYc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=j+sWkJ1wiPe1zF+mOLbrcLoMhBQf+6J14N1xaAVql9Xzk5KCYOtnOK4ZZyJN02sAH
	 QlRvwMe0gAHDfuXxs+8j41Wvg91CMYIjHt/YRMwQI67zVRkem8VXEWENs7eXHB7J+h
	 j5f7zzlMwM6d6KFPM3/JXtxUhp9N1jiboiDbwek9x/n1kmpppRjv3JqSEAXxG246eu
	 AwQM9SCGygO2vyiEy1cvjz+LnY2sulBaQOZ81hae4nn0LcLowqgvh6kclzaBa01gor
	 dySmSYtfLXY2LNiVrGNZDwlogTQ86i1hKHs9eG3rl0MjAsFF0ziGPv7dwc3XDoZ6Tf
	 QBmtcpMAIqq9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21EADC88E70;
	Mon, 14 Sep 2026 08:24:17 +0000 (UTC)
From: =?utf-8?q?=E5=AE=89=E5=AE=B9_via_B4_Relay?= <devnull+HystericalDragons.proton.me@kernel.org>
Date: Mon, 14 Sep 2026 16:24:10 +0800
Subject: [PATCH v5 4/4] arm64: dts: rockchip: Follow the DTS coding style
 in the NanoPi RK3528 devicetrees
MIME-Version: 1.0
Message-Id: <20260914-r28s-upstream-v5-4-7409c498e8dc@proton.me>
References: <20260914-r28s-upstream-v5-0-7409c498e8dc@proton.me>
In-Reply-To: <20260914-r28s-upstream-v5-0-7409c498e8dc@proton.me>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Chukun Pan <amadeus@jmu.edu.cn>, Jonas Karlman <jonas@kwiboo.se>, 
 jensen <jensenhuang@friendlyarm.com>, 
 Andrey Korshunov <razor1702@gmail.com>, 
 Diederik de Haas <diederik@cknow-tech.com>, 
 =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2532;
 i=HystericalDragons@proton.me; h=from:subject:message-id;
 bh=axQv03VI0SPoMzFgZAAgEWAflE5+RNrxFv6cJ6dO4AU=;
 b=owGbwMvMwCUmepz3XUtTHjvjabUkhqzl6/Urj34+npb2imvPHTZ29bdvG51nnLw/eZPidn3m/
 vaU6zW7O0pZGMS4GGTFFFlkN1VHCq2KnlnEInUcZg4rE8gQBi5OAZjIIXVGhu28cV94L8pHVjzg
 LjLRv/T3346TYqsSdLmrF+0paC1hXcDwP+FojeLuEDXjiHemTjNW7A1csFnEzP2vXa+LgpWJEcN
 3dgA=
X-Developer-Key: i=HystericalDragons@proton.me; a=openpgp;
 fpr=1DB27B5912AA5B9972041AC715C70DEE84826E07
X-Endpoint-Received: by B4 Relay for HystericalDragons@proton.me/default
 with auth_id=1004
X-Original-From: =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
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
Reply-To: HystericalDragons@proton.me
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RnJvbTog5a6J5a65IDxIeXN0ZXJpY2FsRHJhZ29uc0Bwcm90b24ubWU+CgpEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvZHRzLWNvZGluZy1zdHlsZS5yc3QgYXNrcyBmb3IgInN0YXR1
cyIKdG8gYmUgcHJlY2VkZWQgYnkgYSBibGFuayBsaW5lIHdoZW4gdGhlcmUgaXMgY29udGVudCBi
ZWZvcmUgaXQgaW4gdGhlCm5vZGUuIFRoZSBzaGFyZWQgTmFub1BpIFJLMzUyOCBkZXZpY2V0cmVl
IGFuZCB0aGUgTmFub1BpIFplcm8yIGJvYXJkCmRldmljZXRyZWUgZG8gbm90IGRvIHRoYXQuCgpB
ZGQgdGhlIG1pc3NpbmcgYmxhbmsgbGluZXMuIE5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4KClN1Z2dl
c3RlZC1ieTogRGllZGVyaWsgZGUgSGFhcyA8ZGllZGVyaWtAY2tub3ctdGVjaC5jb20+ClNpZ25l
ZC1vZmYtYnk6IOWuieWuuSA8SHlzdGVyaWNhbERyYWdvbnNAcHJvdG9uLm1lPgotLS0KIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LW5hbm9waS16ZXJvMi5kdHMgfCAgMSArCiBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC1uYW5vcGkuZHRzaSAgICAgIHwgMTAg
KysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtbmFub3BpLXplcm8yLmR0cyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LW5hbm9waS16ZXJvMi5kdHMKaW5k
ZXggYThkOTlmOTgzZi4uN2QxZWQ4ODE1ZCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1MjgtbmFub3BpLXplcm8yLmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzUyOC1uYW5vcGktemVybzIuZHRzCkBAIC03Niw1ICs3Niw2IEBAICZ1
c2JfaG9zdDBfb2hjaSB7CiAKICZ1c2IycGh5X2hvc3QgewogCXBoeS1zdXBwbHkgPSA8JnVzYjJf
aG9zdF81dj47CisKIAlzdGF0dXMgPSAib2theSI7CiB9OwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtbmFub3BpLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzUyOC1uYW5vcGkuZHRzaQppbmRleCAwNmE2YzBkYzgyLi45NjM3Zjkx
ZWYwIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC1uYW5v
cGkuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC1uYW5vcGku
ZHRzaQpAQCAtMTcwLDE3ICsxNzAsMjAgQEAgJmdtYWMxIHsKIAlwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwmcmdtaWlfbWlpbT4sIDwmcmdtaWlfdHhfYnVzMj4sIDwm
cmdtaWlfcnhfYnVzMj4sCiAJCSAgICA8JnJnbWlpX3JnbWlpX2Nsaz4sIDwmcmdtaWlfcmdtaWlf
YnVzPjsKKwogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAKICZncHUgewogCW1hbGktc3VwcGx5ID0g
PCZ2ZGRfbG9naWM+OworCiAJc3RhdHVzID0gIm9rYXkiOwogfTsKIAogJmkyYzEgewogCXBpbmN0
cmwtbmFtZXMgPSAiZGVmYXVsdCI7CiAJcGluY3RybC0wID0gPCZpMmMxbTBfeGZlcj47CisKIAlz
dGF0dXMgPSAib2theSI7CiAKIAloeW04NTYzOiBydGNANTEgewpAQCAtMjQ0LDE3ICsyNDcsMjAg
QEAgc2RtbWNfdm9sX2N0cmxfaDogc2RtbWMtdm9sLWN0cmwtaCB7CiAmcHdtMSB7CiAJcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKIAlwaW5jdHJsLTAgPSA8JnB3bTFtMF9waW5zPjsKKwogCXN0
YXR1cyA9ICJva2F5IjsKIH07CiAKICZwd20yIHsKIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQi
OwogCXBpbmN0cmwtMCA9IDwmcHdtMm0wX3BpbnM+OworCiAJc3RhdHVzID0gIm9rYXkiOwogfTsK
IAogJnNhcmFkYyB7CiAJdnJlZi1zdXBwbHkgPSA8JnZjY18xdjg+OworCiAJc3RhdHVzID0gIm9r
YXkiOwogfTsKIApAQCAtMjY3LDYgKzI3Myw3IEBAICZzZGhjaSB7CiAJbm9uLXJlbW92YWJsZTsK
IAl2bW1jLXN1cHBseSA9IDwmdmNjXzN2Mz47CiAJdnFtbWMtc3VwcGx5ID0gPCZ2Y2NfMXY4PjsK
KwogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAKQEAgLTI3OCwxMiArMjg1LDE0IEBAICZzZG1tYyB7
CiAJc2QtdWhzLXNkcjEwNDsKIAl2bW1jLXN1cHBseSA9IDwmdmNjM3YzX3NkPjsKIAl2cW1tYy1z
dXBwbHkgPSA8JnZjY2lvX3NkPjsKKwogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAKICZ1YXJ0MCB7
CiAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKIAlwaW5jdHJsLTAgPSA8JnVhcnQwbTBfeGZl
cj47CisKIAlzdGF0dXMgPSAib2theSI7CiB9OwogCkBAIC0yOTIsNiArMzAxLDcgQEAgJnVzYl9o
b3N0MF94aGNpIHsKIAltYXhpbXVtLXNwZWVkID0gImhpZ2gtc3BlZWQiOwogCXBoeXMgPSA8JnVz
YjJwaHlfb3RnPjsKIAlwaHktbmFtZXMgPSAidXNiMi1waHkiOworCiAJc3RhdHVzID0gIm9rYXki
OwogfTsKIAoKLS0gCjIuNTUuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
