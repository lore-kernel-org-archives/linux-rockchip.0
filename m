Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5256C5B572
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2026 06:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xx3qgJ4TrdMxIphCXy2/pMqaxvMJFuOKyJd2MiJwf0s=; b=gZwbo+Fz0hGoTG
	nMHa1g1j6TsjsdaHq4Qx0rg3I81XUSzmjabwwE9Io5m2vgbJFOjzh+/9PktTBhi4KHFnqj5BRY1YR
	vg/YfL28lfhdZKnKGhPGU1baEKbBsqhjDC5zU0eSvNY8ueXxVdbsy9UWjH/qh8dSlS+uQRfJn6ubl
	5OxpU7C6am0TCiM+n/lmq3Txom/l4NYQiAVFEGal3E/XxDxZNEsfNDYFNtgPp2jSuZZCZEf4iznDk
	Jd0+SDikCcvE2NpUnNe2DfnjFavmyP+631ZvpTWkgyqRdOBBGEgRZi2305+DsB8IZPPvZ7i20MEwq
	Rmsc35DWSs4M6W4pjqgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuP6J-0000000HUd7-2LgN;
	Thu, 13 Aug 2026 06:39:39 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuP6I-0000000HUcV-1ZiY;
	Thu, 13 Aug 2026 06:39:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 920CA43C24;
	Thu, 13 Aug 2026 06:39:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4EF91F000E9;
	Thu, 13 Aug 2026 06:39:27 +0000 (UTC)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: linux-pci@vger.kernel.org, 
 Marek Vasut <marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260728012548.465139-1-marek.vasut+renesas@mailbox.org>
References: <20260728012548.465139-1-marek.vasut+renesas@mailbox.org>
Subject: Re: [PATCH 0/2] PCI: dwc: Handle return value from endpoint
 .init/.preinit callbacks
Message-Id: <178660316742.413588.14087680266052241971.b4-ty@b4>
Date: Thu, 13 Aug 2026 08:39:27 +0200
MIME-Version: 1.0
X-Mailer: b4 0.15.2
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
Cc: imx@lists.linux.dev, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Vignesh Raghavendra <vigneshr@ti.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Frank Li <Frank.Li@nxp.com>, Niklas Cassel <cassel@kernel.org>, Koichiro Den <den@valinux.co.jp>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, Jesper Nilsson <jesper.nilsson@axis.com>, Magnus Damm <magnus.damm@gmail.com>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Siddharth Vadapalli <s-vadapalli@ti.com>, Shawn Lin <shawn.lin@rock-chips.com>, Srikanth Thokala <srikanth.thokala@intel.com>, Manivannan Sadhasivam <mani@kernel.org>, Qiang Yu <qiang.yu@oss.qualcomm.com>, Bjorn Helgaas <bhelgaas@google.com>, linux-omap@vger.kernel.org, Qianfeng Rong <rongqianfeng@vivo.com>, Mingkai Hu <mingkai.hu@nxp.com>, Roy Zang <roy.zang@nxp.com>, Minghuan Lian <minghuan.Lian@nxp.com>, Jingoo Han <jingoohan1@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Yuho Choi <dbgh9129@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ck9uIFR1ZSwgMjggSnVsIDIwMjYgMDM6MjQ6MjMgKzAyMDAsIE1hcmVrIFZhc3V0IHdyb3RlOgo+
IFRoaXMgaXMgYSB0cml2aWFsIHByZXBhcmF0b3J5IGNoYW5nZSB3aGljaCBhbGxvd3MgY2hlY2tp
bmcKPiB0aGUgc3RydWN0IGR3X3BjaWVfZXBfb3BzIC5pbml0Ly5wcmVfaW5pdCByZXR1cm4gdmFs
dWVzLgo+IAo+IEN1cnJlbnRseSBvbmx5IHRoZSBMYXllcnNjYXBlIFBDSWUgY29udHJvbGxlciBi
ZW5lZml0cyBmcm9tIHRoaXMgYXMKPiBpdHMgbHNfcGNpZV9lcF9pbml0KCkgbWF5IGZhaWwgaW4g
ZHdfcGNpZV9lcF9nZXRfZnVuY19mcm9tX2VwKCkgY2FsbCwKPiBidXQgdGhlIFJlbmVzYXMgUi1D
YXIgR2VuNSB3aWxsIGJlbmVmaXQgZnJvbSB0aGlzIG5leHQuCj4gCj4gWy4uLl0KCkFwcGxpZWQs
IHRoYW5rcyEKClsxLzJdIFBDSTogZHdjOiBIYW5kbGUgcmV0dXJuIHZhbHVlIGZyb20gZW5kcG9p
bnQgLmluaXQgY2FsbGJhY2sKICAgICAgY29tbWl0OiBmYWNlMzY1NDU3NDEzMTczZDRlZjRiYWY4
ODdlOTNiM2UzZWRkODA1ClsyLzJdIFBDSTogZHdjOiBIYW5kbGUgcmV0dXJuIHZhbHVlIGZyb20g
ZW5kcG9pbnQgLnByZV9pbml0IGNhbGxiYWNrCiAgICAgIGNvbW1pdDogYzEzNjZiNzJhZDRlODdi
ZTYwYjU3Yjc0NjM1YTNhMGJjNThkMmIwYgoKQmVzdCByZWdhcmRzLAotLSAK4K6u4K6j4K6/4K61
4K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
