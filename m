Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F989E7718F
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Dec 2024 00:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9JWU7da7aytTQPgs56rSVwlaIRk2pQu/G1PQ5NQN4ss=; b=JrChFTRk0G0IDI
	5ok5KROmEyOthGuT2Q89aLhtsQ7Xf8wkqsestBA6WBl8t2PsBTguVb9zytHomvsG4Isk7WeZtOydr
	5/5rwCsvtkt6oSqLaGbMwYs983ZmfyWHVruSfIbjqIlVsinDV2aCUJ1sZb/wzKWuLpXauktU1L8pE
	8K4Gfv8ydUS16bFQ8uhxs6wM+vtTpCUaAxeJ6vwwo4rZJmL9hwGgiDrde7z8SNdwuW3g6JzvYPylf
	GU7t23Wld59w+uH0hDbFpztTEgeeQy2UulOPw25mUVXNaoFSTlQqg54cf83gfT6MuuQkw3wkqQKCB
	xdyWqe93VaCLJFTykTOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSQ7g-00000006Cdw-2lHo;
	Tue, 31 Dec 2024 00:28:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSQ6T-00000006CTx-1Ddu;
	Tue, 31 Dec 2024 00:27:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Ro/DoIxPTQaYjz+4yPa+Cz8iLKFVM57HWDgrlLw5WE0=; b=FnfkFP4CRjvtQmqmAc40YkcvxP
	J8TmBraLy4RSaMLdgd9Ymgkc2MRaxCzf8WVnEle64Hw92iP/focrKILAqTl4U/HiVLlZCRn06Ov48
	zY1s7UUz/64bEYGbsBuVx3e5aREOZmiVmoEPhuvS8U1c5/YqO2g64YP4Y188oiaq6G4OLwliW6UKS
	AZNO7PH7NnzHlMHTBoK7bjrB/ybL1iB4HaCTJyrjKBIBGpVgROb3+PD6/9p8jhk4S5dBSvBuv5Pf8
	8suOo/QjBw8LEDNr93phakpOWEECZYzTbAb9ToaLY2xy3p/4+BAsuA1m5FavvoN2fLbVqW3iCjgLU
	f5SussYg==;
Received: from i5e860d12.versanet.de ([94.134.13.18] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tSQ6E-000300-DH; Tue, 31 Dec 2024 01:27:06 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/7] arm64: dts: rockchip: refactor common rk3588-orangepi-5.dtsi
Date: Tue, 31 Dec 2024 01:27:05 +0100
Message-ID: <868000342.0ifERbkFSE@phil>
In-Reply-To: <CALWfF7Kg9HQoqyEYaj9FGPYu3+vAzZNLMVhSr_90SFDg5Syc9w@mail.gmail.com>
References: <20241229184256.1870-2-honyuenkwun@gmail.com>
 <20241229184256.1870-3-honyuenkwun@gmail.com>
 <CALWfF7Kg9HQoqyEYaj9FGPYu3+vAzZNLMVhSr_90SFDg5Syc9w@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_162721_346183_BF9C01C0 
X-CRM114-Status: GOOD (  14.61  )
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

SGkgSmltbXksCgpBbSBTb25udGFnLCAyOS4gRGV6ZW1iZXIgMjAyNCwgMjA6MjA6NTkgQ0VUIHNj
aHJpZWIgSmltbXkgSG9uOgo+IE9uIFN1biwgRGVjIDI5LCAyMDI0IGF0IDEyOjQ04oCvUE0gSmlt
bXkgSG9uIDxob255dWVua3d1bkBnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IGZvciBPcmFuZ2Ug
UGkgNSBQbHVzL01heC9VbHRyYSBhbmQgQUkgTWF4Cj4gPiAtLS0KPiA+ICAuLi4vZHRzL3JvY2tj
aGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMuZHRzICAgfCA4MzMgKystLS0tLS0tLS0tLS0tLS0t
Cj4gPiAgLi4uZ2VwaS01LXBsdXMuZHRzID0+IHJrMzU4OC1vcmFuZ2VwaS01LmR0c2l9IHwgMTk1
ICstLS0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDc3IGluc2VydGlvbnMoKyksIDk1MSBkZWxldGlv
bnMoLSkKPiA+ICBjb3B5IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAve3JrMzU4OC1vcmFu
Z2VwaS01LXBsdXMuZHRzID0+IHJrMzU4OC1vcmFuZ2VwaS01LmR0c2l9ICg4MCUpCj4gCj4gSGVp
a28sCj4gCj4gU2hvdWxkIEkgZ28gYWhlYWQgYW5kIG1ha2UgYSB2NSBpbmNsdWRpbmcgdGhlIGZv
bGxvd2luZyBpbiBteSBiYXNlbGluZQo+IGJlZm9yZSB0aGUgcmVmYWN0b3I/Cj4gLSBHUFUgcG93
ZXIgZG9tYW4gZGVwZW5kZW5jeSBbMV0KPiAtIFVTQiAzLjAgb24gNSBQbHVzIFsyXQo+IERvIHRo
b3NlIHNlcmllcyBsb29rIGxpa2UgdGhleSdsbCBnbyBpbiBhcyBpcz8KCklmIHlvdSB3YW50IHRv
IGRvIGEgdjUsIHlvdSBfY291bGRfIGluY2x1ZGUgdGUgVVNCIHRoaW5nLCBiZWNhdXNlIHRoYXQK
aXMgRFRTIG9ubHksIHNvIG9uIG15IHR1cmYgOy0pIC4KCllvdSBjb3VsZCBhbHNvIGRyb3AgdGhl
IFJGQyArIFVOVEVTVEVEIHBhcnRzIGZvciBub3cgYW5kIHJlc3VibWl0IHRoZW0KbGF0ZXIuCgpG
b3IgdGhlIEdQVSBwb3dlciBkb21haW4gSSBjYW5ub3Qgc2F5IHdoZW4gdGhpcyB3aWxsIGdvIGlu
LCBzbyBiZXR0ZXIKbm90IGRlcGVuZCBvbiBpdC4gRXNwZWNpYWxseSBhcyB3ZSBkb24ndCBrbm93
IHdoZW4gcGVvcGxlIHdpbGwgcmV0dXJuCmZyb20geG1hcy9uZXcteWVhciB2YWNhdGlvbnMuCgpT
byBpZGVhbGx5IGZvciB0aGUgcG93ZXItZG9tYWluIHRoaW5nLCBjcmVhdGUgYSBmb2xsb3ctdXAg
cGF0Y2guCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
