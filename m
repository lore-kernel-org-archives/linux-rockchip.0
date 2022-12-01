Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EDEAC43217
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Dec 2022 06:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drJvsrnC6sGFvC76LpPZjbsIQ6kn/XE69FZ4VF24UCc=; b=hmyyz7kMbTZYgi
	zmyQv8R4nV8SM9dv+h7l3gcQ2FNDFmhNTHXix9pzUavIcVdAqlxGDsA2L7jfpaQForj5vAFURkmR+
	yNiOK7R0xwcgaMxFxLtZgBPRfOJT8hKoIEGZWL0v9bLWbF9acy/tcCPkutXJrpeVbJZcksEIZ4sjl
	lTcu71N0K/n8hKuEtGK7sLOHztPMLmgziVNOHD9aAE/a7U9taIsB4ZtIvZZTfTwuBAascKcEtAfIy
	Y7+FDlSYCZNY75DABBVwnD/4tohkolDLEt/Njias02kd9TvC+BuZugZrt5Zg4DnFHhpu3R/4yO6SK
	LkaxmUjA4fgTIMwQBEIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0cgz-0056Eh-TU; Thu, 01 Dec 2022 06:05:05 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0cgv-0056AN-Pw; Thu, 01 Dec 2022 06:05:03 +0000
Received: by mail-oi1-x22f.google.com with SMTP id l127so1002168oia.8;
        Wed, 30 Nov 2022 22:04:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SQ6eCCvP2RIqVFnGOfA4yG/2BtjQTMpdxc/JWs/IikY=;
        b=PvHY6dBEyebJE6QNI6Wjq2MneXIl4rTpGS7fBC7Qv6R/Yiga7OIh4/Pj4BgHnrpndG
         GrmgooNZOVFverQjG/PwQwa+jNTTeu5eaofi0fQ6sUgKspL/GgqiAAoT7DsAPA/bcNeL
         CuuBxemNVt9HiH103qegQcLdL8byYtx9q2Sy8nfwvxBZulJQ2g5EAZZ4I/KTXdccwea1
         xayFiXCzBGxNpmCBPyhigLfeSVQaNBWPI/KTZtc4+CqnxGM8xxSJGEpvpTJVaXAoUIMI
         LhDFRKO2nzxUjEipEZonE2WghJNoafzVk4PIFC+1xTm7vj4OLlTNuK0dUH2dye1MdJio
         EOHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SQ6eCCvP2RIqVFnGOfA4yG/2BtjQTMpdxc/JWs/IikY=;
        b=PLYZQc+7NuTFOuzQB/q8o8GOgOmKF+cR6OenUJ3oPg6GMkNyQX1hfVgC8y8APsS3jf
         MO7AH8t4kCLmLXGmsxG6beN0+4NC87mPIS/NcNGUz+ER3BfHFIW4bzfy84Fsrmw4nZFO
         XxyZ3KQZEEYIM/Wck5+OYFv4DBz1COmaPpTNkK+WBKMmW46sMYugjQEZEgEWx2Nr+eP1
         1dF6uH8gDwav10jM7y+cIMswHUv14/2LCssPLXu8ecD+Cf4cwuQw3kdu63bOLjrey/Q1
         6MFJx2DuPbq0k/SFvXouwNDf6q0O2zSzdvVTYw+I5/h1PabdejbaPrMEnsENWYqd25S/
         +3kg==
X-Gm-Message-State: ANoB5pnnFmcz9R63fmpzr1VFl1/AKM+z2gaoT7JSauE1bQkK0eh6uHU7
	CTsJlzb2IB6HMlVfoxshvUPbo9Db69zJhQcLav4=
X-Google-Smtp-Source: AA0mqf5l2e4XTILLZHTH7QTRBPvz28RAyHNavvCrAHgTBlylFcIYKmUFvkgoGR7uLixlsP/mcB3a5GSDsiHvA3KSd08=
X-Received: by 2002:aca:60c6:0:b0:35a:51fc:2134 with SMTP id
 u189-20020aca60c6000000b0035a51fc2134mr22358640oib.144.1669874698405; Wed, 30
 Nov 2022 22:04:58 -0800 (PST)
MIME-Version: 1.0
References: <20221130141040.32447-1-arinc.unal@arinc9.com> <20221130141040.32447-5-arinc.unal@arinc9.com>
In-Reply-To: <20221130141040.32447-5-arinc.unal@arinc9.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 1 Dec 2022 07:04:47 +0100
Message-ID: <CAMhs-H_yk4_ieChz9ZaMgZiQNSO7RxhAXPN0nHWWxbox=qY_mw@mail.gmail.com>
Subject: Re: [PATCH 4/5] mips: dts: remove label = "cpu" from DSA dt-binding
To: =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, soc@kernel.org, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Andrew Lunn <andrew@lunn.ch>, 
	Gregory Clement <gregory.clement@bootlin.com>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Claudiu Beznea <claudiu.beznea@microchip.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Florian Fainelli <f.fainelli@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>, 
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	Hans Ulli Kroll <ulli.kroll@googlemail.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@somainline.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Stefan Agner <stefan@agner.ch>, Heiko Stuebner <heiko@sntech.de>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Michael Ellerman <mpe@ellerman.id.au>, 
	Nicholas Piggin <npiggin@gmail.com>, Christophe Leroy <christophe.leroy@csgroup.eu>, 
	Tim Harvey <tharvey@gateworks.com>, Peng Fan <peng.fan@nxp.com>, 
	Rasmus Villemoes <rasmus.villemoes@prevas.dk>, Frank Wunderlich <frank-w@public-files.de>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Oleksij Rempel <linux@rempel-privat.de>, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org, 
	linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221130_220501_913027_5E924D28 
X-CRM114-Status: GOOD (  11.32  )
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

T24gV2VkLCBOb3YgMzAsIDIwMjIgYXQgMzoxNCBQTSBBcsSxbsOnIMOcTkFMIDxhcmluYy51bmFs
QGFyaW5jOS5jb20+IHdyb3RlOgo+Cj4gVGhpcyBpcyBub3QgdXNlZCBieSB0aGUgRFNBIGR0LWJp
bmRpbmcsIHNvIHJlbW92ZSBpdCBmcm9tIGFsbCBkZXZpY2V0cmVlcy4KPgo+IFNpZ25lZC1vZmYt
Ynk6IEFyxLFuw6cgw5xOQUwgPGFyaW5jLnVuYWxAYXJpbmM5LmNvbT4KPiAtLS0KPiAgYXJjaC9t
aXBzL2Jvb3QvZHRzL3JhbGluay9tdDc2MjEuZHRzaSB8IDEgLQoKQWNrZWQtYnk6IFNlcmdpbyBQ
YXJhY3VlbGxvcyA8c2VyZ2lvLnBhcmFjdWVsbG9zQGdtYWlsLmNvbT4KClRoYW5rcywKICAgIFNl
cmdpbyBQYXJhY3VlbGxvcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
