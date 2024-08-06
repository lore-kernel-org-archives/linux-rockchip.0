Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44A45C52D70
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Aug 2024 21:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j7W4zPpalh35hqJslFj4SdrZCs1DVhuYwumA7DrLc+U=; b=QBA6WYeVUrp3v7
	67G7UaybMBGQzD1i3wzLLd9Ag90YRy0mw14HPbrCir4bWyIoT5l/arYgb9QOivdFIj0P/2oSqIkR/
	d6kjIe12LVcAwJBkc9cYS7pUZvoRq3lWyQDhV7Uj77ymXUX2kvlytCl5TOP3rJEHGXWPsAtw7ei5I
	X0duKNXgcqrp2DzBiY8tkZIdq7G7moqxk6ALt4+fyNzK98fZEoYXHXLI3mmndtr4Od8R5jP7OwNxN
	U81WI4wR8chfBg2TXE4F11cB5tdJc4Oq9eiaqMJB8qAJf07OP9HkfHdzq1Tgxg7kGFiMBrUuE3c8+
	YkWSHEcxKdBePgBucZng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbRZS-00000002wBP-04k2;
	Tue, 06 Aug 2024 21:18:18 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbRZO-00000002wAo-0vPK;
	Tue, 06 Aug 2024 21:18:15 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1722979084; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=kJU6zPIfWUudt7/XRn7/TOg0fe55t5arfi7vARhhCP6MF7RvWzD84vIuKeFmkA4eAYNit+LKpF5uxMWaJWlWpakk4so/16te7AXgQtvctebweUfTIlNTUOcpYDiF5VuEQQ9nzwTtt6zeeNcSk3j6DGsUKoYqb3spEVlpVesO3xI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1722979084; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=1utvhZHP0c6T8Ir5t589WiTudCfRoOIw0DiDKTzIf38=; 
	b=Vln/VZMrK75Lw8wGQ5yGeEQeZHvszyvBo7X9MMrDL8jwFcbPu7J011BtX6p3Dun79CqbpQ8hruVt5NL5Gk3SyvgrDbejSpAgMPWJiZMHK5mPXLuDJoBSxPcHwSOVplKb6jg3Zz+VjRiGC0OXJG3uYuxIJomdtO7Tcj2Y4yVcw6E=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.dufresne@collabora.com;
	dmarc=pass header.from=<nicolas.dufresne@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1722979084;
	s=zohomail; d=collabora.com; i=nicolas.dufresne@collabora.com;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=1utvhZHP0c6T8Ir5t589WiTudCfRoOIw0DiDKTzIf38=;
	b=kMK3/MuPZXiddxJtOppeyg/qVO1KC8I7lLYcf667P+mF/nJCBXAQnGFbYsENftWv
	Q2rfbB9P682e+5c2KG8Y+oDq8rdQmRnR7DfUuwUZG3gWtrhurdNuimzYoz5HqML9NhA
	neornCWQdp7AypaXPGfyLMjOJtxjIAsvnSOeZvSI=
Received: by mx.zohomail.com with SMTPS id 172297908214914.577164447111386;
	Tue, 6 Aug 2024 14:18:02 -0700 (PDT)
Message-ID: <3c388a51fef3d2c284fe7648ffd7215e097980a9.camel@collabora.com>
Subject: Re: [PATCH v4 0/4] Add Synopsys DesignWare HDMI RX Controller
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Tim Surber <me@timsurber.de>, Dmitry Osipenko
 <dmitry.osipenko@collabora.com>, Shreeya Patel
 <shreeya.patel@collabora.com>,  heiko@sntech.de, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org,  conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org,  p.zabel@pengutronix.de,
 jose.abreu@synopsys.com, nelson.costa@synopsys.com, 
 shawn.wen@rock-chips.com, hverkuil@xs4all.nl, hverkuil-cisco@xs4all.nl
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Date: Tue, 06 Aug 2024 17:17:58 -0400
In-Reply-To: <06838f40-881c-4301-826b-e29a4277e663@timsurber.de>
References: <20240719124032.26852-1-shreeya.patel@collabora.com>
	 <6f5c4ebb-84ab-4b65-9817-ac5f6158911f@timsurber.de>
	 <929d2f50-6b0e-4d1e-a6d3-482d615bd06a@collabora.com>
	 <06838f40-881c-4301-826b-e29a4277e663@timsurber.de>
User-Agent: Evolution 3.52.3 (3.52.3-1.fc40) 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_141814_359511_5508C4A3 
X-CRM114-Status: UNSURE (   6.64  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgVGltLAoKTGUgbWFyZGkgMDYgYW/Du3QgMjAyNCDDoCAyMjozNyArMDIwMCwgVGltIFN1cmJl
ciBhIMOpY3JpdMKgOgo+ICMjI3NvdXJjZSBzZXQgdG8gNGs2MGZwcyMjIyMKPiAtLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KPiB2NGwyLWN0bCAtLXZlcmJvc2UgLWQgL2Rldi92aWRlbzEgCj4g
LS1zZXQtZm10LXZpZGVvPXdpZHRoPTM4NDAsaGVpZ2h0PTIxNjAscGl4ZWxmb3JtYXQ9J05WMTIn
IAo+IC0tc3RyZWFtLW1tYXA9NCAtLXN0cmVhbS1za2lwPTMgLS1zdHJlYW0tY291bnQ9MTAwIC0t
c3RyZWFtLXBvbGwKPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiBWSURJT0NfUVVFUllD
QVA6IG9rCj4gVklESU9DX0dfRk1UOiBvawo+IFZJRElPQ19TX0ZNVDogb2sKPiBGb3JtYXQgVmlk
ZW8gQ2FwdHVyZSBNdWx0aXBsYW5hcjoKPiDCoMKgwqDCoCBXaWR0aC9IZWlnaHTCoMKgwqDCoMKg
IDogMzg0MC8yMTYwCj4gwqDCoMKgwqAgUGl4ZWwgRm9ybWF0wqDCoMKgwqDCoCA6ICdOVjEyJyAo
WS9VViA0OjI6MCkKPiDCoMKgwqDCoCBGaWVsZMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA6IE5v
bmUKPiDCoMKgwqDCoCBOdW1iZXIgb2YgcGxhbmVzwqAgOiAxCj4gwqDCoMKgwqAgRmxhZ3PCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgOgo+IMKgwqDCoMKgIENvbG9yc3BhY2XCoMKgwqDCoMKgwqDC
oCA6IHNSR0IKPiDCoMKgwqDCoCBUcmFuc2ZlciBGdW5jdGlvbiA6IERlZmF1bHQKPiDCoMKgwqDC
oCBZQ2JDci9IU1YgRW5jb2Rpbmc6IERlZmF1bHQKPiDCoMKgwqDCoCBRdWFudGl6YXRpb27CoMKg
wqDCoMKgIDogRGVmYXVsdAo+IMKgwqDCoMKgIFBsYW5lIDDCoMKgwqDCoMKgwqDCoMKgwqDCoCA6
Cj4gwqDCoMKgwqDCoMKgwqAgQnl0ZXMgcGVyIExpbmUgOiAzODQwCj4gwqDCoMKgwqDCoMKgwqAg
U2l6ZSBJbWFnZcKgwqDCoMKgIDogODI5NDQwMAoKWW91IGhhdmUgaGlnaGxpZ2h0ZWQgYSBidWcg
aGVyZS4gTlYxMiBoYXMgMiBwbGFuZXMsIGJ1dCB0aGUgc2l6ZSBpbWFnZSBvbmx5CmFsbG93IGZv
ciB0aGUgbHVtYSB0byBiZSBzdG9yZWQuCgogICBTaXplIEltYWdlOiAzODQwICogMjE2MCAqIDMg
LyAyID0gMTI0NDE2MDAgYnl0ZXMuCgpMZXRzIGF0IGxlYXN0IGdldCB0aGF0IGZpeGVkLCBhbmQg
Y2hlY2sgYWdhaW4uCgpOaWNvbGFzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
