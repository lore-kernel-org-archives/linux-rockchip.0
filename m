Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C95FC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Nov 2022 17:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWI3jBeXjo83OK0wx5NHgbsoir3ochxzuQLpfsXylsI=; b=WNvfgh10Djx4h7
	VvgsfQ047KOU9p16vw69/nflCt8LOR5zA7n1ovoVf+kODxgQCelVeI1rI8bLKwLuogbZQVWBBr2pw
	kS/UHFG9uSjWQ8bgXGHPTOtVxsS72iIxWqp0PhWwqXjYGVNrS6kxu/j9YthGF0t1OZVAxxKGELXWd
	PXJKz2iRRaRZdbErLFwKybsry3ejr/hQyPdEp7zkJHhIW+H600wJ1WI65b2wBmdJmvrcbfRuSHRI0
	SfW7xpUQ/Zb0Np4cGA05Y3td5giq8CO8gBYEUqGdi4DVXChMruqMDUADdLmzBe5aT8A1v8UvP97KZ
	dTpLl8WxNHgfggfFJupg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0RF2-001CMl-7G; Wed, 30 Nov 2022 17:51:28 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0Qoe-000yFM-FA; Wed, 30 Nov 2022 17:24:14 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1669828953; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=S/tfmU/bGGwQvtztH48Ct75lrbtqrXhXhFaZ/qxNerqJ91kUiHyxbc1jZgMG+4D0FKKkKH/4VQ3BLtqRTavpPoP0qk/GhDBztMZabk/SDYZC/2nEdVUnHFj4lt4oCEoZYdqNVJlYpWtQohH7Xk7iafENArs6IvnxKDn4lbCO+NY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1669828953; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=NbXEpZ0aVb9mBV+yGpUjXQNqRrz9CwkBfjyCJADEE7w=; 
	b=C23QGjP6pvzkPw8IT2Uuj+OI28I1OxDdVDda3ZHxJKaLJwmEtBXvApFXi3zZ/mEx84iI22v9FKFVcEQyP1mwTeNAA8c8CIyncscoEw3nyF5RjPbZJoaHJj5B5pIq3hX61yGE+U4Eyaav9m6qghMn5BR1/svu5KRcXCc4bCqS2NY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=arinc9.com;
	spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
	dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1669828952;
	s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=NbXEpZ0aVb9mBV+yGpUjXQNqRrz9CwkBfjyCJADEE7w=;
	b=fgVncX7MMGMyEBfpkO8jiLauPmhaMoiVDaHCHtIu1b+XSbYbH5rq3QxvQ66+UjGq
	V03JuP9AIYknMLnVMBa8W3NqAG1KZGS1eLpr23f5DQnweBY5641jnmU3F92tMwbCwcF
	9EJMyICQRP12neK7zmEutFcDRBKbw0f9SP1sI86M=
Received: from [10.10.10.3] (37.120.152.236 [37.120.152.236]) by mx.zohomail.com
	with SMTPS id 1669828951728942.0277054948851; Wed, 30 Nov 2022 09:22:31 -0800 (PST)
Message-ID: <32638470-b074-3b14-bfb2-10b49307b9e3@arinc9.com>
Date: Wed, 30 Nov 2022 20:22:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 0/5] remove label = "cpu" from DSA dt-binding
To: Andrew Lunn <andrew@lunn.ch>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, soc@kernel.org,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, Chen-Yu Tsai
 <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Stefan Agner <stefan@agner.ch>,
 Heiko Stuebner <heiko@sntech.de>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Tim Harvey <tharvey@gateworks.com>, Peng Fan <peng.fan@nxp.com>,
 Rasmus Villemoes <rasmus.villemoes@prevas.dk>,
 Frank Wunderlich <frank-w@public-files.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Oleksij Rempel <linux@rempel-privat.de>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev,
 linux-rockchip@lists.infradead.org, linux-mips@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
References: <20221130141040.32447-1-arinc.unal@arinc9.com>
 <Y4d9B7VSHvqJn0iS@lunn.ch>
Content-Language: en-US
From: =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
In-Reply-To: <Y4d9B7VSHvqJn0iS@lunn.ch>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221130_092412_676797_DEA5708D 
X-CRM114-Status: GOOD (  18.32  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMzAuMTEuMjAyMiAxODo1NSwgQW5kcmV3IEx1bm4gd3JvdGU6Cj4gT24gV2VkLCBOb3YgMzAs
IDIwMjIgYXQgMDU6MTA6MzVQTSArMDMwMCwgQXLEsW7DpyDDnE5BTCB3cm90ZToKPj4gSGVsbG8g
Zm9sa3MsCj4+Cj4+IFdpdGggdGhpcyBwYXRjaCBzZXJpZXMsIHdlJ3JlIGNvbXBsZXRlbHkgZ2V0
dGluZyByaWQgb2YgJ2xhYmVsID0gImNwdSI7Jwo+PiB3aGljaCBpcyBub3QgdXNlZCBieSB0aGUg
RFNBIGR0LWJpbmRpbmcgYXQgYWxsLgo+Pgo+PiBJbmZvcm1hdGlvbiBmb3IgdGFraW5nIHRoZSBw
YXRjaGVzIGZvciBtYWludGFpbmVyczoKPj4gUGF0Y2ggMTogbmV0ZGV2IG1haW50YWluZXJzIChi
YXNlZCBvZmYgbmV0ZGV2L25ldC1uZXh0LmdpdCBtYWluKQo+PiBQYXRjaCAyLTM6IFNvQyBtYWlu
dGFpbmVycyAoYmFzZWQgb2ZmIHNvYy9zb2MuZ2l0IHNvYy9kdCkKPj4gUGF0Y2ggNDogTUlQUyBt
YWludGFpbmVycyAoYmFzZWQgb2ZmIG1pcHMvbGludXguZ2l0IG1pcHMtbmV4dCkKPj4gUGF0Y2gg
NTogUG93ZXJQQyBtYWludGFpbmVycyAoYmFzZWQgb2ZmIHBvd2VycGMvbGludXguZ2l0IG5leHQt
dGVzdCkKPiAKPiBIaSBBcsSxbsOnCj4gCj4gU28geW91ciBwbGFuIGlzIHRoYXQgZWFjaCBhcmNo
aXRlY3R1cmUgbWFpbnRhaW5lciBtZXJnZXMgb25lIHBhdGNoPwoKSW5pdGlhbGx5LCBJIHNlbnQg
dGhpcyBzZXJpZXMgdG8gc29jQGtlcm5lbC5vcmcgdG8gdGFrZSBpdCBhbGwgYnV0IFJvYiAKc2Fp
ZCBpdCBtdXN0IGJlIHRoaXMgd2F5IGluc3RlYWQuCgo+IAo+IFRoYXQgaXMgZmluZSwgYnV0IGl0
IGlzIGdvb2QgdG8gYmUgZXhwbGljaXQsIG90aGVyd2lzZSBwYXRjaGVzIHdpbGwKPiBmYWxsIHRo
cm91Z2ggdGhlIGNyYWNrcyBiZWNhdXNlIG5vYm9keSBwaWNrcyB0aGVtIHVwLiBJIGdlbmVyYWxs
eSB1c2UKPiBUbzogdG8gaW5kaWNhdGUgd2hvIGkgZXhwZWN0IHRvIG1lcmdlIGEgcGF0Y2gsIGFu
ZCBldmVyeWJvZHkgZWxzZSBpbgo+IHRoZSBDYzoKClRoYW5rcyBmb3IgdGhpcywgSSdsbCBmb2xs
b3cgc3VpdCBpZiBJIGRvbid0IHNlZSBhbnkgYWN0aXZpdHkgZm9yIGEgZmV3IAp3ZWVrcy4KCj4g
Cj4gUmV2aWV3ZWQtYnk6IEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4KPiAKPiAgICAgIEFu
ZHJldwoKQXLEsW7DpwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
