Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC8AFC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Nov 2022 14:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7gUPDPTW9sdeikcI+TimUMKEZ5gKLxVE1+gdjOZGPHc=; b=YpY/rfi3lt73pe
	9pj/uPFqlCj+pZR1weaMkmMpN+vPE2vCsNNW8dqvDWehc2bi2DVogpp7n2CVUNph260UZ9PwQtSQ5
	bnMiMKCjOowNCadanZw0kz8u5ZmMCeCRCS3zjwpL6jGr8hG0Q7CLr6OlE7Cxcl0iyf9MfymTOs8M0
	s4Gc4aqIM2i+cyedijReAQp7wEE0MU21XvxfbcvlwQbAccPCETGAoTtjVPpzD6X4C3a+VHMkbBc4j
	WFXamV8aXZbA1dt62WpHIzakEgxL8yQ6WE2o2+2d3JTqD58cx0umSpDisWzekduWc7WqNtSxEmLPk
	RNYvjqnuGJigXL0OUN8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0OQu-00H5OO-GE; Wed, 30 Nov 2022 14:51:32 +0000
Received: from mail-qv1-f46.google.com ([209.85.219.46])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0OQp-00H5K9-1k; Wed, 30 Nov 2022 14:51:28 +0000
Received: by mail-qv1-f46.google.com with SMTP id e18so10717928qvs.1;
        Wed, 30 Nov 2022 06:51:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rbewHNiIDPrh2vDJAS18QQyUgoqR1U2XFbW+RCOiyVY=;
        b=bx5mQUAq01GPNrPkPC0BGz4gSQtCGcPvwJOFihbcmNyzsmT450IJLUdJNmUDAx04+V
         G+7wS1bUGCMbNd7JIWLjHFFyHXjxK1fO9393/2rNx5MH3k+gPLPKBGgFiuvG1fOkXdoG
         sALE5a99Gdk7jDfUmwiXNCOD1bOoxnZGJQOpWDaNKx9DI3bXHt7GAElbuLgyptmaRVSr
         F5RE1vtUbY5hkOzzIH+4+077doHKB++XClo2PyTcNEVUw5gKHmCrOI6sVTJFoG79bpKm
         4kEh2gDS6Ms5uvQacx4WRjGIwVrLjMic6VmAHBw5gR6XDU2o2tvipTJ5Jdv33D+EH+SW
         7I3Q==
X-Gm-Message-State: ANoB5plc1XR+JoLqSh1jVh2KZiI2Q2tpn1edojA0IJsizTGYjiRv6blg
	ZHFlMxORJyol+F+FopUQYJyGB7Yd7kyFGw==
X-Google-Smtp-Source: AA0mqf7pFM4RRZ1uqEBGDtiBdz0B3ovwyH3NMQJdPKfWAcv0pQz5OUd1mrKuJy0Uz234y/oiP1jWZA==
X-Received: by 2002:a0c:d646:0:b0:4b1:d133:a4a8 with SMTP id e6-20020a0cd646000000b004b1d133a4a8mr40036136qvj.130.1669819885342;
        Wed, 30 Nov 2022 06:51:25 -0800 (PST)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com. [209.85.219.173])
        by smtp.gmail.com with ESMTPSA id s12-20020a05620a0bcc00b006ee7e223bb8sm1330541qki.39.2022.11.30.06.51.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 06:51:24 -0800 (PST)
Received: by mail-yb1-f173.google.com with SMTP id v206so5121219ybv.7;
        Wed, 30 Nov 2022 06:51:23 -0800 (PST)
X-Received: by 2002:a81:f80f:0:b0:38e:e541:d8ca with SMTP id
 z15-20020a81f80f000000b0038ee541d8camr55824371ywm.283.1669819872327; Wed, 30
 Nov 2022 06:51:12 -0800 (PST)
MIME-Version: 1.0
References: <20221130141040.32447-1-arinc.unal@arinc9.com> <20221130141040.32447-3-arinc.unal@arinc9.com>
In-Reply-To: <20221130141040.32447-3-arinc.unal@arinc9.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 30 Nov 2022 15:51:00 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVBZiWxORfb2hd0hn_En6yFEwm8uJXr553YfB8gv1sOFw@mail.gmail.com>
Message-ID: <CAMuHMdVBZiWxORfb2hd0hn_En6yFEwm8uJXr553YfB8gv1sOFw@mail.gmail.com>
Subject: Re: [PATCH 2/5] arm: dts: remove label = "cpu" from DSA dt-binding
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
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	Sergio Paracuellos <sergio.paracuellos@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Nicholas Piggin <npiggin@gmail.com>, Christophe Leroy <christophe.leroy@csgroup.eu>, 
	Tim Harvey <tharvey@gateworks.com>, Peng Fan <peng.fan@nxp.com>, 
	Rasmus Villemoes <rasmus.villemoes@prevas.dk>, Frank Wunderlich <frank-w@public-files.de>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Oleksij Rempel <linux@rempel-privat.de>, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org, 
	linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
	=?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221130_065127_117480_A3D7FC16 
X-CRM114-Status: GOOD (  19.87  )
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

Q0MgY2xlZ2VyCgpPbiBXZWQsIE5vdiAzMCwgMjAyMiBhdCAzOjMzIFBNIEFyxLFuw6cgw5xOQUwg
PGFyaW5jLnVuYWxAYXJpbmM5LmNvbT4gd3JvdGU6Cj4gVGhpcyBpcyBub3QgdXNlZCBieSB0aGUg
RFNBIGR0LWJpbmRpbmcsIHNvIHJlbW92ZSBpdCBmcm9tIGFsbCBkZXZpY2V0cmVlcy4KPgo+IFNp
Z25lZC1vZmYtYnk6IEFyxLFuw6cgw5xOQUwgPGFyaW5jLnVuYWxAYXJpbmM5LmNvbT4KCj4gIGFy
Y2gvYXJtL2Jvb3QvZHRzL3I5YTA2ZzAzMi5kdHNpICAgICAgICAgICAgICAgICAgICAgICAgICB8
IDEgLQoKQWNrZWQtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIu
YmU+Cgo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3I5YTA2ZzAzMi5kdHNpCj4gKysrIGIvYXJj
aC9hcm0vYm9vdC9kdHMvcjlhMDZnMDMyLmR0c2kKPiBAQCAtNDAxLDcgKzQwMSw2IEBAIHN3aXRj
aF9wb3J0MzogcG9ydEAzIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN3aXRj
aF9wb3J0NDogcG9ydEA0IHsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgcmVnID0gPDQ+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBl
dGhlcm5ldCA9IDwmZ21hYzI+Owo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBsYWJlbCA9ICJjcHUiOwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBwaHktbW9kZSA9ICJpbnRlcm5hbCI7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGZpeGVkLWxpbmsgewoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAg
ICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0KR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJl
J3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4g
cGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNl
bGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBz
YXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
