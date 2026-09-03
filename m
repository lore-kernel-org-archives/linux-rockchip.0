Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C742AC61DD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 08:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O0R6HCXgxGUXI5EnBJioLOp1YJE8msFU6vsB2bqQ0KM=; b=DG6lNwvFdUOu+3
	N5+aVeZhmOT4M2WS47yFgmUYcv2fZMXXao8qYM655VKib/zilpojhBeKq7Vm/PK05BFsGgHPZ4OBH
	LjLTwTchtZB1xzrTvIY9K/qPCaQ49gHkENUYadinapVhGVozmt/dNYvGas4W9bJToklsjfBouXIdM
	vciYQM3iKsbvEx0YdYouva0d72w4SkMVhlUScefCDUJykaISXEB9I76hd6njrO+MOJVaGL0hp1a2l
	5Kx1TuBQfH941gJZsw1KLcwd6AogBZ1puaEpIB3kIQV4FpOP+zH2clnAgDg6BZeIltNgCKumyn2lO
	MJfx34R52HYdDvh2usJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x23Hu-0000000GrqK-23Io;
	Thu, 03 Sep 2026 08:59:14 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x23Hq-0000000Grol-1Fso;
	Thu, 03 Sep 2026 08:59:11 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 227C41A18F9;
	Thu,  3 Sep 2026 08:59:07 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E519A602B8;
	Thu,  3 Sep 2026 08:59:06 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CDB7D11C79B6F;
	Thu,  3 Sep 2026 10:58:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1788425945; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=V1QGsX6n7s/Q58nwjzCnUIFO1aaMfaPkZ14gV28tNtM=;
	b=q1GHvmMjv4Wa6DSVg0LmjGGBrxi4LPtvTp4UyOe4G6EegU/mLn1n5mIKxBVj6oLhjuXXWU
	v/dAmFaKftte7CBAZkrOfBE70aMZNpgU8kEJEfTHIRqLcbSttVx0gPuxMJk/dpGgpHV7oZ
	e7bLnyBn9DkvQ0okpSO14YyQOyBWGlK4A6zKDhbd2cLlmqPPD93NU8qmKGBWYiUwwSURKK
	uLYpBw+hl1d4Ly8fJ9LCB8ItREG2ebAvNOdHJF3niAAbjbf/3SQEUPejTorP3sL6soehQi
	I2vTd3bUZKcctPRCFR8/zJIX8Oo67eTENP3LmZVNWu5C4z0UHQhF2ZKBSNwepQ==
Message-ID: <7d0e6b70-b474-44d9-bf57-6079b8d9651e@bootlin.com>
Date: Thu, 3 Sep 2026 10:58:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3 01/10] net: stmmac: move XPCS lifetime
 management to platform drivers
To: Coia Prant <coiaprant@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Romain Gantois <romain.gantois@bootlin.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Shawn Lin <shawn.lin@rock-chips.com>,
 David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-renesas-soc@vger.kernel.org
References: <20260901150111.141037-1-coiaprant@gmail.com>
 <20260901150111.141037-2-coiaprant@gmail.com>
 <0dec5462-f6d5-4ef9-9d02-5fdf7f3090a0@bootlin.com>
 <CALj3r0i2msRXH-uqA2QX=cRkQwM_H2bFH9GiroEys2NfEbTtCQ@mail.gmail.com>
Content-Language: en-US
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
In-Reply-To: <CALj3r0i2msRXH-uqA2QX=cRkQwM_H2bFH9GiroEys2NfEbTtCQ@mail.gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_015910_468969_E1CC0979 
X-CRM114-Status: GOOD (  17.14  )
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

CgpPbiA5LzMvMjYgMTA6NTEsIENvaWEgUHJhbnQgd3JvdGU6Cj4gTWF4aW1lIENoZXZhbGxpZXIg
PG1heGltZS5jaGV2YWxsaWVyQGJvb3RsaW4uY29tPiDkuo4yMDI25bm0OeaciDPml6Xlkajlm5sg
MTY6MzLlhpnpgZPvvJoKPj4KPj4gSGkgYWdhaW4sCj4+Cj4+IFNvcnJ5IEkgaGFkIGEgc2Vjb25k
IGxvb2sgYXQgdGhhdCBhZnRlciBhIGdvb2QgbmlnaHQncyBzbGVlcCwgYW5kIGFjdHVhbGx5IGhl
cmUKPj4gd2UgbWF5IHJlZ3Jlc3MuIFRoZSBvcmlnaW5hbCBsb2dpYyBjaGVja2VkIGZvciAicGNz
LWhhbmRsZSIgcHJlc2VuY2UsIHRoZW4KPj4gZm9yIHRoZSBwY3MgbWFzaywgYnV0IGlmIG5vIFBD
UyBpcyBmb3VuZCB3ZSBkaWRuJ3QgZXJyb3Igb3V0LCB3ZSByZXR1cm5lZCAwLgo+Pgo+PiBUaGlz
IGlzIG1ha2luZyBpdCBtYW5kYXRvcnkgdG8gaGF2ZSBhIFBDUy4gUGxlYXNlIGhhbmRsZSBncmFj
ZWZ1bGx5IHRoZSAidGhlcmUncyBubwo+PiBQQ1MiIGNhc2UgOigKPj4KPj4KPj4gTWF4aW1lCj4g
Cj4gSGksCj4gCj4gVGhpcyBjaGFuZ2UgY292ZXJzIGFsbCBjYWxsYmFja3MgdGhhdCB1c2UgYHNl
bGVjdF9wY3NgLiBEcml2ZXJzCj4gd2l0aG91dCBgc2VsZWN0X3Bjc2AgY2FsbGJhY2tzIHdpbGwg
bm90IGhhdmUgdGhlaXIgcGNzIHVzZWQgYnkKPiBQaHlsaW5rLgo+IAo+IEN1cnJlbnRseSwgb25s
eSB0aGUgSW50ZWwgbWdiZSBkcml2ZXIgdXNlcyB4cGNzLCBhbmQgSW50ZWwgaGFzIGFsc28KPiBz
ZXQgYSBtYXNrIGZvciBwY3MtaGFuZGxlIG5vdCBzZXQuCj4gCj4gVGhpcyBtZWFucyB0aGF0IG9u
IEludGVsIHBsYXRmb3JtcywgdGhlIHBhcnRzIHRoYXQgaW1wbGVtZW50Cj4gYHNlbGVjdF9wY3Ng
IGFsd2F5cyByZXF1aXJlIHhwY3MgdG8gZXhpc3QuCj4gCj4gSSB0aGluayB0aGVyZSBzaG91bGRu
J3QgYmUgYW55IHByb2JsZW1zIGhlcmUsIGJ1dCBJIGFncmVlIHdpdGggeW91LAo+IHJlZ3Jlc3Np
b24gaXNzdWVzIGNhbiBpbmRlZWQgZWFzaWx5IG9jY3VyIGhlcmUuCgpBbGlnaHQsIGxldCdzIGtl
ZXAgaXQgdGhpcyB3YXkuIFRoZSBhc3N1bXB0aW9uIGJlY29tZXMgImlmIHlvdSBoYXZlCmEgcGNz
X2luaXQoKSBjYWxsYmFjaywgaXQgbWVhbnMgeW91IGV4cGVjdCBhIFBDUyB0byBiZSB0aGVyZSwg
RU5PREVWCmlzIGFuIGFjdHVhbCBlcnJvciIuCgpNeSByZXZpZXdlZC1ieSBzdGlsbCBzdGFuZHMg
dGhlbi4KCk1heGltZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
