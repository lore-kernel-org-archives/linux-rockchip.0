Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A4B3C4321E
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Dec 2022 11:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mJZCVjkEqqA1lAoqJ0HfT0+LHepWyWlaM7OLUnuJtM=; b=SQXhuUt2mJrlBW
	M6pcoWn20kYIyqMsXhm4FuQ4V96YMT7F9t9HR6rOweT7mRxEODoBMujMAcYZNrMBrYKekxP9GbH1l
	WnrMXJEgCCJqIHn3lSS8qVHiJb0JSVkijOx+u7UWkpH8n3j7qONjiQhoT7Gi+MQiTmI9j+xgvMqCt
	qpa7mseTZO5zu+xPOBpG5TCuuPgzbcIK7ngGzesSkScikWCbFMZXezNvSNph7xzpugE7jX+BfJUff
	uQbVJ7GDUfHYxcnrSk9nDZZc3PoDZPd4Lutkj4xAhrYzVjlYaCzxZu+Bi43/9wPQWGmtf1QrwpWy0
	+ym/YlspGY9JXWdoka5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0hv4-0076sz-Uz; Thu, 01 Dec 2022 11:39:58 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0hv1-0076rA-7l; Thu, 01 Dec 2022 11:39:56 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1669894669; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=QTQmm9pOeLgmKb8bWo/bk1tmntAG21CY8mqL5Y7GzMv84vMVC3VrVna9NzX1hngi7eK1jcFyuiSXXvVA9bOp7v2JNs+2P/yWem+qMtXkZfdIeULvLO4Rfg8yQmTObIt1kyNHO2k94mTkgHZvRKbMyIMAcRvOxm9qMfK6qb3t88g=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1669894669; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=dfOEXnlaPDTQyh5hwojKntKZbR0Ct6BYQNOU/3518PU=; 
	b=OYF7SwvD1mv3O+HAFCbq9CfMSGf7fvV73aJ926EunEgVq/bUTdRUCCmRrZD9+8rTw9wNG3PDjimgO76TJJ6VPC/P/vttun+Obu5Dzyp0sS31x9L5iYLvG+rdO6kZvZ2wtK6Gn86PgqwwiOO9sfMtbOWsOMExVMcejf44MYA+nAo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=arinc9.com;
	spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
	dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1669894669;
	s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=dfOEXnlaPDTQyh5hwojKntKZbR0Ct6BYQNOU/3518PU=;
	b=Sxoe6pf0viFvg95RBI3wMeoXYd0syHO9a0cEcwxKEbUeNP5X1PyRVz24a8qLfztM
	cNOs3+XlOAmEYW4Cspyrx9xPr6rdVmINXwU/r6bTSOpPefuylQ7S/DIWSUhazWPCj3l
	ohbSEg1Td2+qDT3JhrnQZaDjIZ9aCibjEQyIlKI4=
Received: from [10.10.10.3] (37.120.152.236 [37.120.152.236]) by mx.zohomail.com
	with SMTPS id 1669894667415837.5294444284028; Thu, 1 Dec 2022 03:37:47 -0800 (PST)
Message-ID: <83ed1490-4d87-98c5-2616-54b5f1ab64b7@arinc9.com>
Date: Thu, 1 Dec 2022 14:37:31 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 0/5] remove label = "cpu" from DSA dt-binding
To: Michael Ellerman <mpe@ellerman.id.au>, Andrew Lunn <andrew@lunn.ch>
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
 Nicholas Piggin <npiggin@gmail.com>,
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
 <Y4d9B7VSHvqJn0iS@lunn.ch> <32638470-b074-3b14-bfb2-10b49307b9e3@arinc9.com>
 <877czbs8w7.fsf@mpe.ellerman.id.au>
Content-Language: en-US
From: =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
In-Reply-To: <877czbs8w7.fsf@mpe.ellerman.id.au>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_033955_353922_1ABC6FB2 
X-CRM114-Status: GOOD (  17.73  )
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

T24gMS4xMi4yMDIyIDEzOjQyLCBNaWNoYWVsIEVsbGVybWFuIHdyb3RlOgo+IEFyxLFuw6cgw5xO
QUwgPGFyaW5jLnVuYWxAYXJpbmM5LmNvbT4gd3JpdGVzOgo+PiBPbiAzMC4xMS4yMDIyIDE4OjU1
LCBBbmRyZXcgTHVubiB3cm90ZToKPj4+IE9uIFdlZCwgTm92IDMwLCAyMDIyIGF0IDA1OjEwOjM1
UE0gKzAzMDAsIEFyxLFuw6cgw5xOQUwgd3JvdGU6Cj4+Pj4gSGVsbG8gZm9sa3MsCj4+Pj4KPj4+
PiBXaXRoIHRoaXMgcGF0Y2ggc2VyaWVzLCB3ZSdyZSBjb21wbGV0ZWx5IGdldHRpbmcgcmlkIG9m
ICdsYWJlbCA9ICJjcHUiOycKPj4+PiB3aGljaCBpcyBub3QgdXNlZCBieSB0aGUgRFNBIGR0LWJp
bmRpbmcgYXQgYWxsLgo+Pj4+Cj4+Pj4gSW5mb3JtYXRpb24gZm9yIHRha2luZyB0aGUgcGF0Y2hl
cyBmb3IgbWFpbnRhaW5lcnM6Cj4+Pj4gUGF0Y2ggMTogbmV0ZGV2IG1haW50YWluZXJzIChiYXNl
ZCBvZmYgbmV0ZGV2L25ldC1uZXh0LmdpdCBtYWluKQo+Pj4+IFBhdGNoIDItMzogU29DIG1haW50
YWluZXJzIChiYXNlZCBvZmYgc29jL3NvYy5naXQgc29jL2R0KQo+Pj4+IFBhdGNoIDQ6IE1JUFMg
bWFpbnRhaW5lcnMgKGJhc2VkIG9mZiBtaXBzL2xpbnV4LmdpdCBtaXBzLW5leHQpCj4+Pj4gUGF0
Y2ggNTogUG93ZXJQQyBtYWludGFpbmVycyAoYmFzZWQgb2ZmIHBvd2VycGMvbGludXguZ2l0IG5l
eHQtdGVzdCkKPj4+Cj4+PiBIaSBBcsSxbsOnCj4+Pgo+Pj4gU28geW91ciBwbGFuIGlzIHRoYXQg
ZWFjaCBhcmNoaXRlY3R1cmUgbWFpbnRhaW5lciBtZXJnZXMgb25lIHBhdGNoPwo+Pgo+PiBJbml0
aWFsbHksIEkgc2VudCB0aGlzIHNlcmllcyB0byBzb2NAa2VybmVsLm9yZyB0byB0YWtlIGl0IGFs
bCBidXQgUm9iCj4+IHNhaWQgaXQgbXVzdCBiZSB0aGlzIHdheSBpbnN0ZWFkLgo+Pgo+Pj4KPj4+
IFRoYXQgaXMgZmluZSwgYnV0IGl0IGlzIGdvb2QgdG8gYmUgZXhwbGljaXQsIG90aGVyd2lzZSBw
YXRjaGVzIHdpbGwKPj4+IGZhbGwgdGhyb3VnaCB0aGUgY3JhY2tzIGJlY2F1c2Ugbm9ib2R5IHBp
Y2tzIHRoZW0gdXAuIEkgZ2VuZXJhbGx5IHVzZQo+Pj4gVG86IHRvIGluZGljYXRlIHdobyBpIGV4
cGVjdCB0byBtZXJnZSBhIHBhdGNoLCBhbmQgZXZlcnlib2R5IGVsc2UgaW4KPj4+IHRoZSBDYzoK
Pj4KPj4gVGhhbmtzIGZvciB0aGlzLCBJJ2xsIGZvbGxvdyBzdWl0IGlmIEkgZG9uJ3Qgc2VlIGFu
eSBhY3Rpdml0eSBmb3IgYSBmZXcKPj4gd2Vla3MuCj4gCj4gSU1ITyB0aGUgYmVzdCBzb2x1dGlv
biBpZiB0aGUgcGF0Y2hlcyBhcmUgdHJ1bHkgaW5kZXBlbmRlbnQgaXMgdG8gc2VuZAo+IHRoZW0g
aW5kZXBlbmRhbnRseSB0byBlYWNoIG1haW50YWluZXIuIFRoYXQgd2F5IHRoZXJlJ3Mgbm8gY29u
ZnVzaW9uCj4gYWJvdXQgd2hldGhlciBzb21lb25lIGVsc2Ugd2lsbCB0YWtlIHRoZSBzZXJpZXMu
Cj4gCj4gSXQncyBhbHNvIHNpbXBsZXIgZm9yIG1haW50YWluZXJzIHRvIGFwcGx5IGEgc2luZ2xl
IHN0YW5kYWxvbmUgcGF0Y2ggdnMKPiBwaWNrIGEgc2luZ2xlIHBhdGNoIGZyb20gYSBsYXJnZXIg
c2VyaWVzLgoKSSBhZ3JlZS4gSSdsbCBkbyB0aGF0IG5leHQgdGltZS4KCkNoZWVycy4KQXLEsW7D
pwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
