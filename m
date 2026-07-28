Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 058F3C53219
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 01:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76d68P6pqQ0Wus/fi/oDVIeVNymZeBO3V/H/fkZfmoo=; b=Jq1XaMU20Az9pU
	puxrtftG7vf9pPLjcpZP47G5wpnEfRfnLATyL9vBXFVwtV/MJYw1zvirJisM4HdoJbzz8LQtskJ/s
	9YskMiIHgr8xR9aLE6R3iJj7krrC5mIK5Dsx/E/xVYdkgZ6mEVcpc7lW5GsivEZ2CrRlRKCholJf/
	ywp+3Vt44S8CEp1jn7RGbjK42RMyIhptv/wYft3ap9oIEgaBs6/85zUruaQKNcudxgMQjOVW0PZ6l
	S2XddHSgfPAMBB0NzkZ2gZFWWFHGx22+6LDrJ14DnYuSYeXdyY6GvIRjuxP0DqxjUMTMYpv6aseZB
	VQCD5thRdleamsbHoVbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woWaV-00000004CMD-1REr;
	Tue, 28 Jul 2026 01:26:31 +0000
Received: from mout-p-101.mailbox.org ([80.241.56.151])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woWaS-00000004CJY-2vWU;
	Tue, 28 Jul 2026 01:26:30 +0000
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4h8HqQ237Dz8v9m;
	Tue, 28 Jul 2026 03:26:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1785201986;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AOb78p74bkOmvufOcc/1bh+dA535Pa9k7i52m7AyAII=;
	b=r/EzyGH3gq0jSjzH6u+ZswyOUvyFz3jBfnRyF/1noE+2NZlS74okB3Hd4eEFnRSENgEhCU
	CF/Icl+CJzCSC9ce8uSnQCg6kbdKERYgbQ61RyHUAN0FYM+qdF9cdkMJ65SIM3BZuf8rLV
	pQrV/3ukfBlb82d//8bNoT3foQHMm6CHFz72nUGC/380OYDpBqbQfpTJKbbO9x7fmBXK/X
	Sfh1VQ6EpENZSAIxyQIcFpagiqFoIsKEI3zfRqDAibY+qzLTnbbNlrM+jy+CZqcsFsxcDW
	c0ZEqhDhvqprVa1zJMGCS0fv6RbPMp6vbWtS+nF1KWih17X9OkYRx1eIBJNfqQ==
Authentication-Results: outgoing_mbo_mout;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=sqNUGCHC;
	spf=pass (outgoing_mbo_mout: domain of marek.vasut+renesas@mailbox.org designates 2001:67c:2050:b231:465::202 as permitted sender) smtp.mailfrom=marek.vasut+renesas@mailbox.org
From: Marek Vasut <marek.vasut+renesas@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1785201984;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AOb78p74bkOmvufOcc/1bh+dA535Pa9k7i52m7AyAII=;
	b=sqNUGCHCwjzf00FtL5kcEQRgPIzyTFjIKf2F7BE9KNUbk5/TUqJas6eZ87Z/L6jak1NWTb
	Wo1+t44CYWQyHTb1o7LuIcQGivMjxi2X/lXD5FXo9vhH2aauOWu0GroyjMuyGrzzxI8Rl2
	qCQJNIux80uWKS6huYvmxMT82bfqORC/Y9+aYor5VhUKeGu6gq4EQPZQ/OXGqhX+88vARB
	odg2KM+Zw3YO1eDeugMhDIUkv0ANPzt/AECWKcjlD0/iOvIxj7ZlxjGgBaOmvq6SnFZAGV
	f8eD5hFLtXgXde4oHGbFfMjVK+ghKJhOz2UYiMwjz5LQM0ezx1+9CNmCUq3HuA==
To: linux-pci@vger.kernel.org
Subject: [PATCH 2/2] PCI: dwc: Handle return value from endpoint .pre_init callback
Date: Tue, 28 Jul 2026 03:24:25 +0200
Message-ID: <20260728012548.465139-3-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260728012548.465139-1-marek.vasut+renesas@mailbox.org>
References: <20260728012548.465139-1-marek.vasut+renesas@mailbox.org>
MIME-Version: 1.0
X-MBO-RS-ID: 3530f36967d57e20065
X-MBO-RS-META: bmr6zbzz4m7u37imjwni6gtkry6uugwh
X-Rspamd-Queue-Id: 4h8HqQ237Dz8v9m
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_182628_888316_690787E5 
X-CRM114-Status: GOOD (  13.57  )
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
Cc: imx@lists.linux.dev, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Vignesh Raghavendra <vigneshr@ti.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Frank Li <Frank.Li@nxp.com>, Niklas Cassel <cassel@kernel.org>, Koichiro Den <den@valinux.co.jp>, =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, Jesper Nilsson <jesper.nilsson@axis.com>, Magnus Damm <magnus.damm@gmail.com>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Siddharth Vadapalli <s-vadapalli@ti.com>, Shawn Lin <shawn.lin@rock-chips.com>, Srikanth Thokala <srikanth.thokala@intel.com>, Marek Vasut <marek.vasut+renesas@mailbox.org>, Manivannan Sadhasivam <mani@kernel.org>, Qiang Yu <qiang.yu@oss.qualcomm.com>, Bjorn Helgaas <bhelgaas@google.com>, linux-omap@vger.kernel.org, Qianfeng Rong <rongqianfeng@vivo.com>, Mingkai Hu <mingkai.hu@nxp.com>, Roy Zang <roy.zang@nxp.com>, Minghuan Lian <minghuan.Lian@nxp.com>, Jingoo Han <jingoohan1@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Yuho Choi <dbgh9129@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QWRkIHJldHVybiB2YWx1ZSBoYW5kbGluZyBmb3Igc3RydWN0IGR3X3BjaWVfZXBfb3BzIC5wcmVf
aW5pdCBjYWxsYmFjay4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFZhc3V0IDxtYXJlay52YXN1dCty
ZW5lc2FzQG1haWxib3gub3JnPgotLS0KQ2M6ICJLcnp5c3p0b2YgV2lsY3p5xYRza2kiIDxrd2ls
Y3p5bnNraUBrZXJuZWwub3JnPgpDYzogQW5hbmQgTW9vbiA8bGludXguYW1vb25AZ21haWwuY29t
PgpDYzogQmpvcm4gSGVsZ2FhcyA8YmhlbGdhYXNAZ29vZ2xlLmNvbT4KQ2M6IEZyYW5rIExpIDxG
cmFuay5MaUBueHAuY29tPgpDYzogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGds
aWRlci5iZT4KQ2M6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CkNjOiBKZXNwZXIg
Tmlsc3NvbiA8amVzcGVyLm5pbHNzb25AYXhpcy5jb20+CkNjOiBKaW5nb28gSGFuIDxqaW5nb29o
YW4xQGdtYWlsLmNvbT4KQ2M6IEtvaWNoaXJvIERlbiA8ZGVuQHZhbGludXguY28uanA+CkNjOiBM
b3JlbnpvIFBpZXJhbGlzaSA8bHBpZXJhbGlzaUBrZXJuZWwub3JnPgpDYzogTWFnbnVzIERhbW0g
PG1hZ251cy5kYW1tQGdtYWlsLmNvbT4KQ2M6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaUBr
ZXJuZWwub3JnPgpDYzogTWluZ2h1YW4gTGlhbiA8bWluZ2h1YW4uTGlhbkBueHAuY29tPgpDYzog
TWluZ2thaSBIdSA8bWluZ2thaS5odUBueHAuY29tPgpDYzogTmljb2xhcyBGcmF0dGFyb2xpIDxu
aWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KQ2M6IE5pa2xhcyBDYXNzZWwgPGNhc3Nl
bEBrZXJuZWwub3JnPgpDYzogUWlhbmZlbmcgUm9uZyA8cm9uZ3FpYW5mZW5nQHZpdm8uY29tPgpD
YzogUWlhbmcgWXUgPHFpYW5nLnl1QG9zcy5xdWFsY29tbS5jb20+CkNjOiBSb2IgSGVycmluZyA8
cm9iaEBrZXJuZWwub3JnPgpDYzogUm95IFphbmcgPHJveS56YW5nQG54cC5jb20+CkNjOiBTaGF3
biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KQ2M6IFNpZGRoYXJ0aCBWYWRhcGFsbGkg
PHMtdmFkYXBhbGxpQHRpLmNvbT4KQ2M6IFNyaWthbnRoIFRob2thbGEgPHNyaWthbnRoLnRob2th
bGFAaW50ZWwuY29tPgpDYzogVmlnbmVzaCBSYWdoYXZlbmRyYSA8dmlnbmVzaHJAdGkuY29tPgpD
YzogWW9zaGloaXJvIFNoaW1vZGEgPHlvc2hpaGlyby5zaGltb2RhLnVoQHJlbmVzYXMuY29tPgpD
YzogWXVobyBDaG9pIDxkYmdoOTEyOUBnbWFpbC5jb20+CkNjOiBpbXhAbGlzdHMubGludXguZGV2
CkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LWtlcm5l
bEB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LW9tYXBAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51
eC1wY2lAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1yZW5lc2FzLXNvY0B2Z2VyLmtlcm5lbC5v
cmcKQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKLS0tCiBkcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUtZXAuYyB8IDcgKysrKystLQogZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLmggICAgfCAyICstCiBkcml2ZXJz
L3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXJjYXItZ2VuNC5jICAgICB8IDYgKysrKy0tCiAzIGZp
bGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWVwLmMgYi9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUtZXAuYwppbmRleCBkNzhmYjg0
NTU4MmIyLi5iMDAyMzkwOTdkODkzIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLWRlc2lnbndhcmUtZXAuYworKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2llLWRlc2lnbndhcmUtZXAuYwpAQCAtMTUyNCw4ICsxNTI0LDExIEBAIGludCBkd19wY2ll
X2VwX2luaXQoc3RydWN0IGR3X3BjaWVfZXAgKmVwKQogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7
CiAKLQlpZiAoZXAtPm9wcy0+cHJlX2luaXQpCi0JCWVwLT5vcHMtPnByZV9pbml0KGVwKTsKKwlp
ZiAoZXAtPm9wcy0+cHJlX2luaXQpIHsKKwkJcmV0ID0gZXAtPm9wcy0+cHJlX2luaXQoZXApOwor
CQlpZiAocmV0KQorCQkJcmV0dXJuIHJldDsKKwl9CiAKIAlyZXQgPSBwY2lfZXBjX21lbV9pbml0
KGVwYywgZXAtPnBoeXNfYmFzZSwgZXAtPmFkZHJfc2l6ZSwKIAkJCSAgICAgICBlcC0+cGFnZV9z
aXplKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdu
d2FyZS5oIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLmgKaW5k
ZXggMDA0YjQzM2YxNzEzNS4uNjU0NmRjM2FhMjA3NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLmgKKysrIGIvZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLmgKQEAgLTQ3NCw3ICs0NzQsNyBAQCBzdHJ1Y3QgZHdf
cGNpZV9ycCB7CiB9OwogCiBzdHJ1Y3QgZHdfcGNpZV9lcF9vcHMgewotCXZvaWQJKCpwcmVfaW5p
dCkoc3RydWN0IGR3X3BjaWVfZXAgKmVwKTsKKwlpbnQJKCpwcmVfaW5pdCkoc3RydWN0IGR3X3Bj
aWVfZXAgKmVwKTsKIAlpbnQJKCppbml0KShzdHJ1Y3QgZHdfcGNpZV9lcCAqZXApOwogCWludAko
KnJhaXNlX2lycSkoc3RydWN0IGR3X3BjaWVfZXAgKmVwLCB1OCBmdW5jX25vLAogCQkJICAgICB1
bnNpZ25lZCBpbnQgdHlwZSwgdTE2IGludGVycnVwdF9udW0pOwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1yY2FyLWdlbjQuYyBiL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtcmNhci1nZW40LmMKaW5kZXggNWY3MjExYjkxZWU1Yi4uZmJlNDY1YTI5
MDY4ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1yY2FyLWdl
bjQuYworKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXJjYXItZ2VuNC5jCkBA
IC00ODEsNyArNDgxLDcgQEAgc3RhdGljIHZvaWQgcmNhcl9nZW40X3JlbW92ZV9kd19wY2llX3Jw
KHN0cnVjdCByY2FyX2dlbjRfcGNpZSAqcmNhcikKIH0KIAogLyogRW5kcG9pbnQgbW9kZSAqLwot
c3RhdGljIHZvaWQgcmNhcl9nZW40X3BjaWVfZXBfcHJlX2luaXQoc3RydWN0IGR3X3BjaWVfZXAg
KmVwKQorc3RhdGljIGludCByY2FyX2dlbjRfcGNpZV9lcF9wcmVfaW5pdChzdHJ1Y3QgZHdfcGNp
ZV9lcCAqZXApCiB7CiAJc3RydWN0IGR3X3BjaWUgKmR3ID0gdG9fZHdfcGNpZV9mcm9tX2VwKGVw
KTsKIAlzdHJ1Y3QgcmNhcl9nZW40X3BjaWUgKnJjYXIgPSB0b19yY2FyX2dlbjRfcGNpZShkdyk7
CkBAIC00ODksOSArNDg5LDExIEBAIHN0YXRpYyB2b2lkIHJjYXJfZ2VuNF9wY2llX2VwX3ByZV9p
bml0KHN0cnVjdCBkd19wY2llX2VwICplcCkKIAogCXJldCA9IHJjYXJfZ2VuNF9wY2llX2NvbW1v
bl9pbml0KHJjYXIpOwogCWlmIChyZXQpCi0JCXJldHVybjsKKwkJcmV0dXJuIHJldDsKIAogCXdy
aXRlbChQQ0lFRE1BSU5UU1RTRU5fSU5JVCwgcmNhci0+YmFzZSArIFBDSUVETUFJTlRTVFNFTik7
CisKKwlyZXR1cm4gMDsKIH0KIAogc3RhdGljIHZvaWQgcmNhcl9nZW40X3BjaWVfZXBfZGVpbml0
KHN0cnVjdCByY2FyX2dlbjRfcGNpZSAqcmNhcikKLS0gCjIuNTMuMAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
