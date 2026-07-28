Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F9C4C531D0
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 01:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Boz7Qq3TbXTkZ3lqCunmVbeGC4SMDVF4uxrcrfNb7Lc=; b=1XB6oEQJ094o91
	FAm82pr5nLGfTqjCaXlO9XZLr1JUgGTFZPIWFIwEnnkKFPtO6vnS17qkIUA/SUanqxnYzUxrYP3JD
	gQKpYwYifI92W20hip+fpO5ZD75FrGSx/DwwpVh7OSn0ft/lDx2H1zNQ13MdyzUF05jxV2+ajL7j6
	vTyJ9QPUOjAOyMDKzd2wSvYAUGDIUg98pZzC4yLhCbF55u5WczO14S7AAIAjoOZRhHs2WExzrwUAU
	jfV/T6yvYsicHTKFSl+KONvDK9smxrRXInr8W4J7cccnUkPw2FrBeO0iIEkuUkZrmN6DfjRMqkLGQ
	N3DZYa90IVH4s+xlBBOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woWaM-00000004CIh-45AR;
	Tue, 28 Jul 2026 01:26:22 +0000
Received: from mout-p-201.mailbox.org ([2001:67c:2050:0:465::201])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woWaI-00000004CHo-3oQP;
	Tue, 28 Jul 2026 01:26:21 +0000
Received: from smtp202.mailbox.org (unknown [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4h8Hq80jt3zMlGQ;
	Tue, 28 Jul 2026 03:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1785201972;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=DYj3Gwonno5tuigqL6BvnWApaq+2uBwSe5vHZ9bElX0=;
	b=ckTmdxs9OkhWuPopV5aVBYLdi56OHydKkzRRtbTY8T4A3Ptc0tuBM2m9hxcis6VT3HqRBj
	lhW/s8J892kWxhIECWC5npbZTxko9UerUFAkWIgLWjT0u5AenX6OBaO44m+sxkoeaJgAh9
	Lt9YfrIYi5lifDN85sk+xK03/xyP9yHMIFEvqlB1rEVogpsHtroWwvBVXabEE00vD2EYRv
	7L4aD8PeOTBeAv3EVR0bmyTGE8Vd1jOH9PLybGEmOBM+YjAOvvf+/xVlyV0a+O4fdlNp+u
	BbwtUFXgtvrAXIbvmmNYk3tGT4sa0QwwjgzdQMh3DEOShsiy3ouT03g0eKQLoQ==
From: Marek Vasut <marek.vasut+renesas@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1785201970;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=DYj3Gwonno5tuigqL6BvnWApaq+2uBwSe5vHZ9bElX0=;
	b=hErtWioxNzYcuQSR6cgc6HhLaPgVsgNE/fEjbEgRpLqlojUzXglToYGEZBvNc74x+5aFvB
	stnAQBGxcLHP5s8ICl817uqN+RatiCaXAaY0KQbo0kDJJEm7h0FYpwm5Dxkts7tEoK1994
	ycpKjNEdH40z2Aa048E8GKhxQkcidD5WFIugELy7BXuJT5o6Tb7HFvToF8GqUmxf5PZ7sh
	4L3Wdi/9c+jOYh17SfoZ976Qrrc/O4wjlGGtdDh4BmuH1MtZ33Ygx/wH/8PtJxZhbTzDn0
	VYPhfLnDrLh+Fzw8j+wqIJ8YYoUSyTLkeYepQJ1KQZub1czTVr5PBWJ8CUvbLg==
To: linux-pci@vger.kernel.org
Subject: [PATCH 0/2] PCI: dwc: Handle return value from endpoint .init/.preinit callbacks
Date: Tue, 28 Jul 2026 03:24:23 +0200
Message-ID: <20260728012548.465139-1-marek.vasut+renesas@mailbox.org>
MIME-Version: 1.0
X-MBO-RS-ID: 50191466ca9f8db85b8
X-MBO-RS-META: hmi6jyzzt1u6jydo7geudygbdrddrpon
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_182619_111612_E60F62D9 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
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

VGhpcyBpcyBhIHRyaXZpYWwgcHJlcGFyYXRvcnkgY2hhbmdlIHdoaWNoIGFsbG93cyBjaGVja2lu
Zwp0aGUgc3RydWN0IGR3X3BjaWVfZXBfb3BzIC5pbml0Ly5wcmVfaW5pdCByZXR1cm4gdmFsdWVz
LgoKQ3VycmVudGx5IG9ubHkgdGhlIExheWVyc2NhcGUgUENJZSBjb250cm9sbGVyIGJlbmVmaXRz
IGZyb20gdGhpcyBhcwppdHMgbHNfcGNpZV9lcF9pbml0KCkgbWF5IGZhaWwgaW4gZHdfcGNpZV9l
cF9nZXRfZnVuY19mcm9tX2VwKCkgY2FsbCwKYnV0IHRoZSBSZW5lc2FzIFItQ2FyIEdlbjUgd2ls
bCBiZW5lZml0IGZyb20gdGhpcyBuZXh0LgoKU2luY2UgdGhpcyBhZmZlY3RzIG1hbnkgY29udHJv
bGxlciBnbHVlcyBhbmQgaGFzIGEgaHVnZSBDQyBsaXN0LApJIGFtIHNlbmRpbmcgdGhpcyBzZXBh
cmF0ZWx5IGZyb20gdGhlIFItQ2FyIEdlbjUgcGF0Y2hlcy4KCk1hcmVrIFZhc3V0ICgyKToKICBQ
Q0k6IGR3YzogSGFuZGxlIHJldHVybiB2YWx1ZSBmcm9tIGVuZHBvaW50IC5pbml0IGNhbGxiYWNr
CiAgUENJOiBkd2M6IEhhbmRsZSByZXR1cm4gdmFsdWUgZnJvbSBlbmRwb2ludCAucHJlX2luaXQg
Y2FsbGJhY2sKCiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktZHJhN3h4LmMgICAgICAg
ICB8ICA0ICsrKy0KIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1rZXlzdG9uZS5jICAg
ICAgIHwgIDQgKysrLQogZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVyc2NhcGUt
ZXAuYyAgfCAgNiArKysrLS0KIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtYXJ0cGVj
Ni5jICAgICAgIHwgIDQgKysrLQogZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNp
Z253YXJlLWVwLmMgfCAxNCArKysrKysrKysrLS0tLQogZHJpdmVycy9wY2kvY29udHJvbGxlci9k
d2MvcGNpZS1kZXNpZ253YXJlLmggICAgfCAgNCArKy0tCiBkcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgICB8ICA0ICsrKy0KIGRyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvZHdjL3BjaWUta2VlbWJheS5jICAgICAgIHwgIDQgKysrLQogZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvcGNpZS1yY2FyLWdlbjQuYyAgICAgfCAgNiArKysrLS0KIDkgZmlsZXMgY2hhbmdl
ZCwgMzUgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCgotLS0KQ2M6ICJLcnp5c3p0b2Yg
V2lsY3p5xYRza2kiIDxrd2lsY3p5bnNraUBrZXJuZWwub3JnPgpDYzogQW5hbmQgTW9vbiA8bGlu
dXguYW1vb25AZ21haWwuY29tPgpDYzogQmpvcm4gSGVsZ2FhcyA8YmhlbGdhYXNAZ29vZ2xlLmNv
bT4KQ2M6IEZyYW5rIExpIDxGcmFuay5MaUBueHAuY29tPgpDYzogR2VlcnQgVXl0dGVyaG9ldmVu
IDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KQ2M6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRl
Y2guZGU+CkNjOiBKZXNwZXIgTmlsc3NvbiA8amVzcGVyLm5pbHNzb25AYXhpcy5jb20+CkNjOiBK
aW5nb28gSGFuIDxqaW5nb29oYW4xQGdtYWlsLmNvbT4KQ2M6IEtvaWNoaXJvIERlbiA8ZGVuQHZh
bGludXguY28uanA+CkNjOiBMb3JlbnpvIFBpZXJhbGlzaSA8bHBpZXJhbGlzaUBrZXJuZWwub3Jn
PgpDYzogTWFnbnVzIERhbW0gPG1hZ251cy5kYW1tQGdtYWlsLmNvbT4KQ2M6IE1hbml2YW5uYW4g
U2FkaGFzaXZhbSA8bWFuaUBrZXJuZWwub3JnPgpDYzogTWluZ2h1YW4gTGlhbiA8bWluZ2h1YW4u
TGlhbkBueHAuY29tPgpDYzogTWluZ2thaSBIdSA8bWluZ2thaS5odUBueHAuY29tPgpDYzogTmlj
b2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KQ2M6IE5p
a2xhcyBDYXNzZWwgPGNhc3NlbEBrZXJuZWwub3JnPgpDYzogUWlhbmZlbmcgUm9uZyA8cm9uZ3Fp
YW5mZW5nQHZpdm8uY29tPgpDYzogUWlhbmcgWXUgPHFpYW5nLnl1QG9zcy5xdWFsY29tbS5jb20+
CkNjOiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgpDYzogUm95IFphbmcgPHJveS56YW5n
QG54cC5jb20+CkNjOiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KQ2M6IFNp
ZGRoYXJ0aCBWYWRhcGFsbGkgPHMtdmFkYXBhbGxpQHRpLmNvbT4KQ2M6IFNyaWthbnRoIFRob2th
bGEgPHNyaWthbnRoLnRob2thbGFAaW50ZWwuY29tPgpDYzogVmlnbmVzaCBSYWdoYXZlbmRyYSA8
dmlnbmVzaHJAdGkuY29tPgpDYzogWW9zaGloaXJvIFNoaW1vZGEgPHlvc2hpaGlyby5zaGltb2Rh
LnVoQHJlbmVzYXMuY29tPgpDYzogWXVobyBDaG9pIDxkYmdoOTEyOUBnbWFpbC5jb20+CkNjOiBp
bXhAbGlzdHMubGludXguZGV2CkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LW9tYXBAdmdlci5r
ZXJuZWwub3JnCkNjOiBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1yZW5lc2Fz
LXNvY0B2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKCi0tIAoyLjUzLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
