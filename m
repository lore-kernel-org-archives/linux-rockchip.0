Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC217C55160
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 16:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pROpvPhk3lcinnUZnA/Wq4mVORMuMrK1fPm+QvO8tko=; b=kTvALjIUH853k0
	SXa/k8yBFbHqVS9CSOq/OAWkU5KptcKJj/bwbJOw09+tLpdWYon0wsZJYEJqucks/pLLlUbO7aLx2
	hwWLSCIWcll1bb9zjvVequ9lPqC4PvFDgI4JPO7qH47crzDTSPtJvi5FtEeYXsRCy3/OWBnob/cw8
	pUdwMLaD2jdNVPcsrjGARi2hOLnxuwyu9uILfzid/r+Audl24qMLSuQ+ayy+NKNuGA3RtDqq+/fKx
	snBzPOGkwiRFc/zeBhd1kuY2s/JqEbqahE68LOi77ihgfFbHqb3x7O33BCcEty6Db2EqQsdfmUDOC
	oKCudlDDsnQPJoUPq9gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpTxv-0000000B2gI-2dLk;
	Thu, 30 Jul 2026 16:50:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpTxu-0000000B2g2-090X
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 16:50:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7707A43723;
	Thu, 30 Jul 2026 16:50:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E98E41F000E9;
	Thu, 30 Jul 2026 16:50:33 +0000 (UTC)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, Rob Herring <robh@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Niklas Cassel <cassel@kernel.org>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Wilfred Mallawa <wilfred.mallawa@wdc.com>, 
 Shin'ichiro Kawasaki <shinichiro.kawasaki@wdc.com>, 
 Damien Le Moal <dlemoal@kernel.org>
In-Reply-To: <20260727172654.605988-4-cassel@kernel.org>
References: <20260727172654.605988-4-cassel@kernel.org>
Subject: Re: [PATCH 1/1] PCI: dw-rockchip: Add support to reset Root Port
 upon link down event
Message-Id: <178543023346.1027311.7750630092829191758.b4-ty@b4>
Date: Thu, 30 Jul 2026 18:50:33 +0200
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ck9uIE1vbiwgMjcgSnVsIDIwMjYgMTk6MjY6NTYgKzAyMDAsIE5pa2xhcyBDYXNzZWwgd3JvdGU6
Cj4gVGhlIFBDSWUgbGluayBtYXkgZ28gZG93biBpbiBjYXNlcyBsaWtlIGZpcm13YXJlIGNyYXNo
ZXMgb3IgdW5zdGFibGUKPiBjb25uZWN0aW9ucy4gV2hlbiB0aGlzIG9jY3VycywgdGhlIFBDSWUg
Um9vdCBQb3J0IG11c3QgYmUgcmVzZXQgdG8gcmVzdG9yZQo+IHRoZSBmdW5jdGlvbmFsaXR5LiBI
b3dldmVyLCB0aGUgY3VycmVudCBkcml2ZXIgbGFja3MgbGluayBkb3duIGhhbmRsaW5nLAo+IGZv
cmNpbmcgdXNlcnMgdG8gcmVib290IHRoZSBzeXN0ZW0gdG8gcmVjb3Zlci4KPiAKPiBUaGlzIHBh
dGNoIGltcGxlbWVudHMgdGhlIGByZXNldF9yb290X3BvcnRgIGNhbGxiYWNrIGZvciBsaW5rIGRv
d24gaGFuZGxpbmcKPiBmb3IgUm9ja2NoaXAgRFdDIFBDSWUgaG9zdCBjb250cm9sbGVyLiBJbiB3
aGljaCwgdGhlIFJDIGlzIHJlc2V0LAo+IHJlY29uZmlndXJlZCBhbmQgbGluayB0cmFpbmluZyBp
bml0aWF0ZWQgdG8gcmVjb3ZlciBmcm9tIHRoZSBsaW5rIGRvd24KPiBldmVudC4KPiAKPiBbLi4u
XQoKQXBwbGllZCwgdGhhbmtzIQoKWzEvMV0gUENJOiBkdy1yb2NrY2hpcDogQWRkIHN1cHBvcnQg
dG8gcmVzZXQgUm9vdCBQb3J0IHVwb24gbGluayBkb3duIGV2ZW50CiAgICAgIGNvbW1pdDogOTIy
NWFmYTdhODYzN2RmNDFiOGU0NzA1ZWE3ZTdlODkwY2U3ODA4NAoKQmVzdCByZWdhcmRzLAotLSAK
4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
