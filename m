Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40E81CC6B0F
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2026 13:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MgVTjA3ZmxANmRGVKDS8uuTVSZx+6GvzMow3ezLLrBs=; b=YWK+HR56xhqQ2k
	fKezicg7+nE3f4MEbBTwP8UTYP20J09btpCE2kSTxleQcaQT/747pPmZFLf9/W4YVujPLSWH9Jqp5
	kDi8npWquopsPXYAgPAEjT7+JPTMYeXiWMYpyNbNvD2cwf6sGM9aiaC4uOzEMWRJKETkDuWFCLySw
	8ta+03v4PBLHi0pHTbBeCBpKG9N4rQ1pXBvkbUnfrY9gotFnFtrmZq0/CJXEM1fU14Ae4cxi6wOLI
	AjPGHjnl6ps+G63ILJetJhUrq/YDWD9HZukaIs+ZJeS+NaorybsoekwasHyshl68XSnO5aXgQpWnD
	rpavqv7SfOvxgnNJB1wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGcrb-0000000D0H2-0Zs8;
	Tue, 13 Oct 2026 13:48:19 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGcrY-0000000D0GE-1C0t;
	Tue, 13 Oct 2026 13:48:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6A076602C3;
	Tue, 13 Oct 2026 13:48:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45EB31F000FF;
	Tue, 13 Oct 2026 13:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791899295;
	bh=MwsHrhWwBAqFC5XDIDWmcboOdLh7zz3XrR9XYaXosSk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=ZqqqnXTXL5JQQBVpDNrKTM+tmsrFuh0quFdrhPcnKsyO7YbA+lJycODBdX98wdONc
	 xUDQCxz05TL7W75efE5ASsLNQRZLVN5/dBp9WD573ytfDG0rg2Gk6R7d3M/iNI88tL
	 RXJb6RL0tTmjBoZjyP/89KYnxPitqQKJ2XWJyoLAyjiE3wbbIVMxyquN7oWk7nKoNs
	 G/DNMOqBz69isfb+qUI0N2FHmmRXZndeYKJs8ErRvSxrMPnyE7FdVH504bw8/T3/9U
	 V0v7mrpEZLQLR7Z1iMbD/vHjPrNTjS1Th3v8OWXdvYA4WVEeKVP1iPVbQHnszEI5Qh
	 LSdKlEbgaI3Yg==
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>, 
 Geraldo Nascimento <geraldogabriel@gmail.com>
Cc: linux-rockchip@lists.infradead.org, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <cover.1781622998.git.geraldogabriel@gmail.com>
References: <cover.1781622998.git.geraldogabriel@gmail.com>
Subject: Re: [PATCH v7 0/3] PCI: rockchip: 5.0 GT/s speed discouraged by
 Rockchip
Message-Id: <179189927768.12828.5970294502454132706.b4-ty@b4>
Date: Tue, 13 Oct 2026 19:17:57 +0530
MIME-Version: 1.0
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=909; i=mani@kernel.org;
 h=from:subject:message-id; bh=MJ2L3Ts8++Q18HVodqsi50qgRqQHnU8MLJbv9TbaZZU=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBqzjaWuJsyJInKTko4kslC28gQaP58gTARVbj2t
 UDexrJ/9uWJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCas42lgAKCRBVnxHm/pHO
 9W4rB/9dfTBuarNvfVBSNUuYe2/Gdg9P5KVqDROq9kkrp8mxE5shnJedONgaWeuv7GI66sIjIjn
 rD8FbCw8pRxng8BoATEhuSMlZq9QKbV13RebbzDMgpYoPdBjw1frOv6uMUZ6kgyMtdpgUZYOO2C
 6W410/kMupZjqqanx7W73Bg0LNMWuga+2rwyzOr9Rle1AQMco1hT/dcrVbMzU6NKDOmENnyC2G4
 ZFyrxo0ZSnXNk044fYyMemjU2ZwBwMiy3hR6fO4hCWslzj52aK4AN++wb3smZb7GQGuT1yVJU2B
 NGzRdxzYXeyLJH+Yber3rvaSu6wuzO3i3KToeCmVjn3+03YS
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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

Ck9uIFR1ZSwgMTYgSnVuIDIwMjYgMTI6MjQ6NDggLTAzMDAsIEdlcmFsZG8gTmFzY2ltZW50byB3
cm90ZToKPiBQQ0k6IHJvY2tjaGlwOiA1LjAgR1QvcyBzcGVlZCBkaXNjb3VyYWdlZCBieSBSb2Nr
Y2hpcAo+IAo+IERyYWdhbiBTaW1pYyBhbHJlYWR5IGhhZCB3YXJuZWQgbWUgb2YgcG90ZW50aWFs
IGlzc3VlcyB3aXRoIDUuMCBHVC9zCj4gc3BlZWQgb3BlcmF0aW9uIGluIFJvY2tjaGlwIFBDSWUu
IEhvd2V2ZXIsIGluIHJlY2VudCBpbnRlcmFjdGlvbnMKPiB3aXRoIFNoYXduIExpbiBmcm9tIFJv
Y2tjaGlwIGl0IGNhbWUgdG8gbXkgYXR0ZW50aW9uIHRoZXJlJ3MgZ3JhdmUKPiBkYW5nZXIgaW4g
dGhlIHVua25vd24gZXJyYXRhIHJlZ2FyZGluZyA1LjAgR1QvcyBvcGVyYXRpb25hbCBzcGVlZAo+
IG9mIHRoZWlyIFBDSWUgY29yZSwgaW5jbHVkaW5nIGRhdGEgbG9zcy4KPiAKPiBbLi4uXQoKQXBw
bGllZCwgdGhhbmtzIQoKWzEvM10gUENJOiByb2NrY2hpcC1lcDogZG8gbm90IGF0dGVtcHQgNS4w
IEdUL3MgcmV0cmFpbmluZwogICAgICBjb21taXQ6IDM5Zjg5ZGRlMGE3NmIyMjlkZjdlYjM1NmFh
ZjZmNDQ0YjRmOGE2MzYKWzIvM10gUENJOiByb2NrY2hpcC1ob3N0OiBkbyBub3QgYXR0ZW1wdCA1
LjAgR1QvcyByZXRyYWluaW5nCiAgICAgIGNvbW1pdDogNTk4OGE1M2Y1YmY3NThiMmQ0MWNiNmUw
ODMyYzE5Yjk2OTJjNzZkMgpbMy8zXSBQQ0k6IHJvY2tjaGlwOiBkcml2ZSBhdCAyLjUgR1Qvcywg
ZXJyb3Igb3RoZXIgc3BlZWRzCiAgICAgIGNvbW1pdDogNjI4NDMwMzFjYTFmMTFkMWI4ZTkwZTdm
NTU4YzFiM2M0Y2Q3NzE4NAoKQmVzdCByZWdhcmRzLAotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j
4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
