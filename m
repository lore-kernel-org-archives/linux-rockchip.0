Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8658C25B7E
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 15:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9vLxGq7hCY+2kpM8bf4bH0U1UnD/0ZpMI8xJERBdHI=; b=0f04D2rc5VBTzP
	rSpWEIVUrnl0JkeiVxZysN9kcbbAQWaPQxJnatUhTQQ6bVNm2rxB06rJYk2DT1sazaUcSOxJHOC6R
	y15vxZLP8woEuHP1smCioPoNWHX6rvuXnFHtegiaogYoMQxts7BYICkVAN0fhMZpWv/Xpz1WS4iN6
	S62UgsWo1N36sdFnWFAeZgRS4xdLInk1Q/8G38+b6HTETyEfL0plywKI3enYGzyp3N38LTnbxj320
	D9kXuz4tbd40ljVWRpAWg8mGHUH2AMkbL/AO2hstJ93dQ2BWYIUX0rNG6u5XYDRAfu3/F8No1kTif
	T3Bn4Qvmub84uoX3x7ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBcjO-0000000FhdS-1Qep;
	Mon, 27 May 2024 15:57:50 +0000
Received: from mout.web.de ([212.227.17.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBcjL-0000000FhcN-26s7;
	Mon, 27 May 2024 15:57:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1716825410; x=1717430210; i=markus.elfring@web.de;
	bh=cCQzbMHV0uZw8ARZF6tyJxZsTWRc/buEbEqLjIXSnlw=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=PUTkJtv+17tmHPSwdj2hf899Cxz87JZtpAv6Jc/t460ErK6rIZ1XjrMEwjT/IL5e
	 u6asEjjbaWV05EEJOrnLlJNLso+bKJ6JUhoe+vAQmYcyr1mOVJ9CmwVzJFYdsDjWk
	 lhH7BRvhFBzVj6hnFHPSxBLuofy8FnxnuGCzKVh06VXSoykW9+Z5sNppeifyGBhS7
	 Tbby0eXDkzEd3ur+rXCvlZhYwOhxY2j+kjNeQE+m/gaI7bzpQ3HVkzXeOYg+oIyfZ
	 hv0kSHTDq7XWjQmMF+X+gAfIYHkN5y02reNDf+/pFuI1uzraU+ayvVz08dwXuor0H
	 +gQ8lygtBMIj/W0VNQ==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.83.95]) by smtp.web.de (mrweb106
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1N6JxT-1sa0Ai3q9J-016inV; Mon, 27
 May 2024 17:56:50 +0200
Message-ID: <aa58efd3-b502-4bed-8c84-e5d78da23fbe@web.de>
Date: Mon, 27 May 2024 17:56:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Peng Fan <peng.fan@nxp.com>, soc@kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Andrew Jeffery <andrew@codeconstruct.com.au>,
 Angelo Gioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Chester Lin <chester62515@gmail.com>, Chunyan Zhang <zhang.lyra@gmail.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Damien Le Moal <dlemoal@kernel.org>, Dan Carpenter
 <dan.carpenter@linaro.org>, Dong Aisheng <aisheng.dong@nxp.com>,
 Dvorkin Dmitry <dvorkin@tibbo.com>, Emil Renner Berthing <kernel@esmil.dk>,
 Fabio Estevam <festevam@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
 Hal Feng <hal.feng@starfivetech.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Jacky Bai <ping.bai@nxp.com>,
 Jianlong Huang <jianlong.huang@starfivetech.com>,
 Joel Stanley <joel@jms.id.au>, Jonathan Hunter <jonathanh@nvidia.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Matthias Brugger <mbrugger@suse.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Orson Zhai
 <orsonzhai@gmail.com>, Patrice Chotard <patrice.chotard@foss.st.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sean Wang <sean.wang@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
 Stephen Warren <swarren@wwwdotorg.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>, Tony Lindgren <tony@atomide.com>,
 Viresh Kumar <vireshk@kernel.org>, Wells Lu <wellslutw@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, linux-gpio@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-samsung-soc@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-riscv@lists.infradead.org, linux-mediatek@lists.infradead.org,
 imx@lists.linux.dev, linux-aspeed@lists.ozlabs.org,
 openbmc@lists.ozlabs.org, kernel@pengutronix.de,
 Peng Fan <peng.fan@oss.nxp.com>
References: <20240504-pinctrl-cleanup-v2-18-26c5f2dc1181@nxp.com>
Subject: Re: [PATCH v2 18/20] pinctrl: freescale: mxs: Fix refcount of child
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240504-pinctrl-cleanup-v2-18-26c5f2dc1181@nxp.com>
X-Provags-ID: V03:K1:fY28vuOzSy7D3myo+NUo+Q8h4MAB+DMYH6x54XY9zacr23bFm3Z
 XEU1mqywgExmQK1yZjuU6En9jXs1HgcwzsaQZ+4suTC5BPEjIf/Fg4o0HdX3AuRpQZI2yac
 KrkniKWThKnQbs96+yLl/Dm5E5NsImhOyFs1ksUAetHBWVW2WfIWoOdGSaoQFZRJLEXutYy
 iCHwBxLqQsK9Mq+39k2DQ==
UI-OutboundReport: notjunk:1;M01:P0:TjeN7uyFccs=;bjTTRHq6gIBTOMFXSFUogBWSZuQ
 ZTwgZq2VnppV1aZlnrDYMmOmytXyq0JrjEzIfy/yH2myRvZFwVxrMpYgtVdN++fuf8ainJk/t
 uFkTD8huhpK+v/6sd6lXCGtTOMoxBExDvHrzfiIvMwNnj5vJaD78bXrOpQIviBkrbo/dpouOC
 Ln7QFnEpQNN9tfIRGg8gaddFRITCsPb8eIY2ZjqdGWqcC0mpb+GXVonl0LzMFBCnUIrGNucUB
 JyF0gcU5WkAg6RJMxI6bQbphTn5At4z7kJpzYsMNnHFABhVCUal+gm0247pr1mpjl/KiGECTR
 XNTX442NdkykPvhiMNWp17M35HW0J6oLENbsSL8PyhGQHAW5h5EnpFB5SuC+MkmcW7VQwxd36
 lCdpZmXrsZsRJ7AbJhptgf/dByjHu/LOLAj4+ethb/xC2SLDH84JLTDzzYCw43EzHk/09K8p9
 cDEpfpl8+VPFN35SSlqs/3lTQxU1UurqQF96DxIJCZdCGRE3icPsCoTwZMOJqDYJkYsmztQRH
 YW541Ftvhar9wZSgE19Bcj1s0L3HXu9Xp3pkz7IcX+lrc7RPJuNoPC+xc48ucMhoGmNSMI5WK
 RVp1WSoLoJahSt7/mjjyxqyly6XzUtnKE6um1tWMAR0vojK8hQcOOL84UbAmXM7tbS+2QyuCj
 LkzuEZ/KIlY89jP9+dNMuuSCCwKeQJA7ykttwUV0aQte1rS7POYfJSX2aeTAa8Z7rWLzt7kHc
 AmtJvjHPIr4iMol58kTZo18kQbOqJQsi9qx7qS9pObTVMxyOiWt4lPdDW0vYOWO4MOmC4QlIy
 k96VHg44SU3OMjnGBpPp4v6EScAmUEUHJaYg/CdI/NGc8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_085747_857137_C73716AA 
X-CRM114-Status: UNSURE (   5.82  )
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

SG93IGRvIHlvdSB0aGluayBhYm91dCB0byB1c2UgdGhlIHN1bW1hcnkgcGhyYXNlIOKAnEZpeCBy
ZWZlcmVuY2UgY291bnRpbmcgZm9yIGNoaWxkcmVuIGluIG14c19waW5jdHJsX3Byb2JlX2R0KCni
gJ0/CgoK4oCmCj4gb2ZfZ2V0X25leHRfY2hpbGQoKSB3aWxsIGluY3JlYXNlIHJlZmNvdW50IOKA
pgoKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdGhlIHJlZmVyZW5jZSBjb3Vu
dGVyPwoKCj4gUGVyIGN1cnJlbnQgaW1wbGVtZW50YXRpb24sICdjaGlsZCcgd2lsbCBiZSBvdmVy
cmlkZSBieQoKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG92
ZXJyaWRkZW4/CgoKPiBmb3JfZWFjaF9jaGlsZF9vZl9ub2RlKG5wLCBjaGlsZCksIHNvIHVzZSBv
Zl9nZXRfY2hpbGRfY291bnQgdG8gYXZvaWQKPiByZWZjb3VudCBsZWFrYWdlLgoKQW5vdGhlciB3
b3JkaW5nIHN1Z2dlc3Rpb246CiAgZm9yX2VhY2hfY2hpbGRfb2Zfbm9kZShucCwgY2hpbGQpLiBU
aHVzIHVzZSBhbiBvZl9nZXRfY2hpbGRfY291bnQoKSBjYWxsCiAgdG8gYXZvaWQgcmVmZXJlbmNl
IGNvdW50aW5nIGxlYWthZ2UuCgoKUmVnYXJkcywKTWFya3VzCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
