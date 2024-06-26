Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77050C27C4F
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jun 2024 10:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmXaG12yZwhD/Rr+P0GV3JKEzK32oOpqHyFvtactKeM=; b=ofJweTJqMP5VWb
	z1adnkYQCmhsqS8Mm+jD0WLbWb9J9u0o0uTCIw7vXq1d16QG6ftmnzsAptHZ9k4AKcwWfu20DxgKY
	kutLqYwdrPCl8T9Dtkxrkrab+sWMcnNhooEECKo5azIxr+bjspoqkuFhgMT6Scz90OGddvvOR9tVQ
	PiUlmUirkjjHkCIammhHC5p9XHPDfTc2LWCdwS0k8cOvqeEq6O9cohilETXnA/2x+2pMmIOVWItcd
	YnRQLVsSE4cp2yNydAg93A2rxBy5NkCZmljTaz1A86VjObkz8bHBTjgGw+bsT0K/3wmULgQBjI7PA
	G3tjjnCgsjz9yo7RqKGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMPTy-00000006EB0-27j6;
	Wed, 26 Jun 2024 10:02:32 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMPTr-00000006E6W-205G
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Jun 2024 10:02:26 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-52caebc6137so6171843e87.0
        for <linux-rockchip@lists.infradead.org>; Wed, 26 Jun 2024 03:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719396141; x=1720000941; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UIal9mSNuB7WVuajAQysXy9I34dokLqqKQSl/SD8Ip0=;
        b=qNqesiAC1X7e1EkVCSz62k+JFehhes2NlVG/hHoy85saQmO8K7zhG02Me767JypiZM
         sc6fPACY2nQGAdHO+awWUXeFR/hIr/tCF/DkCRuVGqx88Q8OLHb9q0h++sGlaao7cas0
         vqFBQ37EZrIYiUFIVJDvM3iDeg/1uuxC39itKAEYrMVoY42tjTSXD1GV++QA93n8EUqr
         iAT5L0VEmo+AG+Da1/Ro/gVI4DngXS+Dx7BIXusa564HZ25KuevWOwMThRRRqxjhry8E
         T20q05XDjwmdspCK1LBWN2UbwKpFySrj7g/cwGAoWjAh8cnRKCA+y2OecBg4IyV4J2oU
         SN2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719396141; x=1720000941;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UIal9mSNuB7WVuajAQysXy9I34dokLqqKQSl/SD8Ip0=;
        b=Q0kAfH8BQcmSO1QUX/bGsRdk/WUztS8iUQbykMQVgR4Qv8T+/QVN8O8E8k9s6gJENQ
         foqmMcCZzLPCXoBAZvBwVs4lOP6itm61DLiaG8tIz69DXeFAEFNhRENhHkoaVK32Epub
         7mYUjOPFhUchCZCGdePLyuTqkTF96qblgFUFZlsfo4SFdOsWbwfuHuqAzGJkgXT6+Hn1
         FbVcuIpyEDE+ESuYZQuoG3AAHCjDAEUu0VrdK/GLWNCC5Xq5sGv+jaCWgtEJ4uOEi31f
         VAKrjIxQ28MQP7TK/lE5oP3qXGE1e7SPw0VbfBpXTzO5aJoBi+QqaeT6Apu2K9R7ennr
         Vchg==
X-Forwarded-Encrypted: i=1; AJvYcCXpdb0aHEG3ufc4cmfi1HLwlto4csC0I7fixuQTnHKr8nLH85+0VRPFzdKTwrXfHXaijO7ConVFsniGSG4HPwrHKSjkCzjzuNxKgDzJEwztW+eq
X-Gm-Message-State: AOJu0Yyqj+BMMs1FFEpy63xhtBniQAqfuEErwALB3Y5vaSIS8qLz6cFj
	utEfNOBK1BGKVAg6Roa47Rj1YfuQT2Q8azYtowc/uw/xKg5fQTazaNmfVBJCNpYhaFdslyQAj98
	dqNlfbv49mSYA9GKMVpaFR3Rq263SguPA8ml2cA==
X-Google-Smtp-Source: AGHT+IEEH1F7Tv7LomODsunYV84Dtc4zLrPpgRRnnl78k+rzuBYmNhragIOzGe8Zi41e1oTPofFlhnZh4uvVT5y70J8=
X-Received: by 2002:a05:6512:2254:b0:52c:8fd7:2252 with SMTP id
 2adb3069b0e04-52ce18324cdmr7591081e87.11.1719396141307; Wed, 26 Jun 2024
 03:02:21 -0700 (PDT)
MIME-Version: 1.0
References: <20240504-pinctrl-cleanup-v2-0-26c5f2dc1181@nxp.com> <AM6PR04MB594163BAB898D8689A94056F88CE2@AM6PR04MB5941.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB594163BAB898D8689A94056F88CE2@AM6PR04MB5941.eurprd04.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 26 Jun 2024 12:02:09 +0200
Message-ID: <CACRpkdb17buPQVupCRDthvAgMKpvKvRWEN5GbA7pyF9NxymGEg@mail.gmail.com>
Subject: Re: [PATCH v2 00/20] pinctrl: Use scope based of_node_put() cleanups
To: Peng Fan <peng.fan@nxp.com>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Dvorkin Dmitry <dvorkin@tibbo.com>, Wells Lu <wellslutw@gmail.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Emil Renner Berthing <kernel@esmil.dk>, Jianlong Huang <jianlong.huang@starfivetech.com>, 
	Hal Feng <hal.feng@starfivetech.com>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Viresh Kumar <vireshk@kernel.org>, Shiraz Hashim <shiraz.linux.kernel@gmail.com>, 
	"soc@kernel.org" <soc@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Sylwester Nawrocki <s.nawrocki@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Patrice Chotard <patrice.chotard@foss.st.com>, 
	Heiko Stuebner <heiko@sntech.de>, Damien Le Moal <dlemoal@kernel.org>, 
	Ludovic Desroches <ludovic.desroches@microchip.com>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Aisheng Dong <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Jacky Bai <ping.bai@nxp.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Chester Lin <chester62515@gmail.com>, 
	Matthias Brugger <mbrugger@suse.com>, 
	"Ghennadi Procopciuc (OSS)" <ghennadi.procopciuc@oss.nxp.com>, Sean Wang <sean.wang@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Dan Carpenter <dan.carpenter@linaro.org>, 
	Tony Lindgren <tony@atomide.com>, Stephen Warren <swarren@wwwdotorg.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-stm32@st-md-mailman.stormreply.com" <linux-stm32@st-md-mailman.stormreply.com>, 
	"linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, 
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, 
	"imx@lists.linux.dev" <imx@lists.linux.dev>, 
	"linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>, 
	"openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_030223_637686_F54C09EB 
X-CRM114-Status: UNSURE (   9.88  )
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

T24gVHVlLCBKdW4gMTgsIDIwMjQgYXQgMTo1MuKAr1BNIFBlbmcgRmFuIDxwZW5nLmZhbkBueHAu
Y29tPiB3cm90ZToKCj4gPiBTdWJqZWN0OiBbUEFUQ0ggdjIgMDAvMjBdIHBpbmN0cmw6IFVzZSBz
Y29wZSBiYXNlZCBvZl9ub2RlX3B1dCgpCj4gPiBjbGVhbnVwcwo+Cj4gc3Qvc3RtMzIvcmVuZXNh
cyBwYXRjaGVzIGFyZSBwaWNrZWQuIFdvdWxkIHlvdSBoYW5kbGUgdGhlIHJlbWFpbmluZwo+IG9u
ZXM/CgpIbSByaWdodCwgSSBhcHBsaWVkIGFsbCB0aGF0IGFwcGx5IGNsZWFubHk6Cjk3MWM4YjRj
MDhlNyAoSEVBRCAtPiBkZXZlbCkgcGluY3RybDogc2Ftc3VuZzogVXNlIHNjb3BlIGJhc2VkCm9m
X25vZGVfcHV0KCkgY2xlYW51cHMKM2E4ODI1NTRhM2JiIHBpbmN0cmw6IGsyMTA6IFVzZSBzY29w
ZSBiYXNlZCBvZl9ub2RlX3B1dCgpIGNsZWFudXBzCjdmNTAwZjIwMTFjMCBwaW5jdHJsOiBmcmVl
c2NhbGU6IG14czogRml4IHJlZmNvdW50IG9mIGNoaWxkCmQ3ZjUxMjBhOTQ0YSBwaW5jdHJsOiBw
aW5jb25mLWdlbmVyaWM6IFVzZSBzY29wZSBiYXNlZCBvZl9ub2RlX3B1dCgpIGNsZWFudXBzCjI0
MGM1ZjIzOGQ1OSBwaW5jdHJsOiBiY206IGJjbTYzeHg6IFVzZSBzY29wZSBiYXNlZCBvZl9ub2Rl
X3B1dCgpIGNsZWFudXBzCjNhMDI3OGNmYjQ0OCBwaW5jdHJsOiBtZWRpYXRlazogVXNlIHNjb3Bl
IGJhc2VkIG9mX25vZGVfcHV0KCkgY2xlYW51cHMKYzk1N2FlN2U3ZTY4IHBpbmN0cmw6IG5vbWFk
aWs6IFVzZSBzY29wZSBiYXNlZCBvZl9ub2RlX3B1dCgpIGNsZWFudXBzCjNkY2MwMWIzNmYxOCBw
aW5jdHJsOiBzMzJjYzogVXNlIHNjb3BlIGJhc2VkIG9mX25vZGVfcHV0KCkgY2xlYW51cHMKN2My
YWFiYjU2ZjkyIHBpbmN0cmw6IGF0OTE6IFVzZSBzY29wZSBiYXNlZCBvZl9ub2RlX3B1dCgpIGNs
ZWFudXBzCjU2YzQyZjZjN2IyYyBwaW5jdHJsOiByb2NrY2hpcDogVXNlIHNjb3BlIGJhc2VkIG9m
X25vZGVfcHV0KCkgY2xlYW51cHMKOGM1ZGMyYTViM2E3IHBpbmN0cmw6IHNwZWFyOiBVc2Ugc2Nv
cGUgYmFzZWQgb2Zfbm9kZV9wdXQoKSBjbGVhbnVwcwo3OTRlNWRjNTMzYjAgcGluY3RybDogc3By
ZDogVXNlIHNjb3BlIGJhc2VkIG9mX25vZGVfcHV0KCkgY2xlYW51cHMKOGZhOTljMDAzNTFjIHBp
bmN0cmw6IHN0YXJmaXZlOiBVc2Ugc2NvcGUgYmFzZWQgb2Zfbm9kZV9wdXQoKSBjbGVhbnVwcwox
MWVlZmMwYWM4ODQgcGluY3RybDogdGVncmE6IFVzZSBzY29wZSBiYXNlZCBvZl9ub2RlX3B1dCgp
IGNsZWFudXBzCgpDYW4geW91IGxvb2sgaW50byByZWJhc2luZyB0aGUgcmVtYWluaW5nIG9uZXM/
CgpJIGFtIGEgYml0IHVuc3VyZSBhYm91dCBTYW1zdW5nLCBLcnp5c3p0b2YgdXN1YWxseSBwaWNr
IHRoZXNlLCBidXQgbm8gYmlnCmRlYWwgSSBndWVzcywgaWYgaGUgb2JqZWN0cyBJIGNhbiBqdXN0
IHRha2UgaXQgb3V0IGFnYWluLgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
