Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FAFAC47089
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 20:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6SCMK17W5rieOFTZd8EyWdlRAIaDgRtVXjZurnOBGc=; b=KXGE7fIPhXevIV
	Js5cqSptHAra3A89t0y/XRHuhTUtK2WMqsEbpX9lJdMNE+Qs0ttCUhE9/XMsYf0a0owGol5D1jraW
	5htp0ASxihtZDQFv0iDq61dkHB0WjDGOdpM9j7LrL5JuObN4ydt1Rh/LxkCsOrYwm0OJhGSKwmV7A
	KFRNEyhqJmcC/9ju1uOsFk5AuIzYXUYQVoNrlg2XfV6zuE1yf11wNc68ip/fV0hjpJy7a3XzZqffV
	BenaGmPj0IoJbM+UxDgtKUYcgkW8I1DIUQTyL4QzgcvCAc8X/WRTXfIBshmd/ARhu7HiJ7NijOpvz
	UuRhvHckFUY/C9RnS64A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Hnt-00A2Qz-0O; Mon, 05 Dec 2022 20:11:05 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Hno-00A2KT-IB; Mon, 05 Dec 2022 20:11:02 +0000
Received: by mail-ej1-x62b.google.com with SMTP id vp12so1172743ejc.8;
        Mon, 05 Dec 2022 12:10:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sp/bNT5Sth10xITvOq6/Mc90creRR8yZ/shLGt2Fjbo=;
        b=b6Jb2v7WFhoSvR0qnQE049/t4BrlMrHARODr4SKR7Xn1FQa9HrOT4fkLVGvEHA9Y1j
         1aehg61bR85KIrd2yJzQDQujMLuCNIt+emvdW9fTMhx/4U1IfjkR3nnqFTKD2foaT9Ui
         956X6MJskqO817oItJy60eJ/aPD436SYiI8CtZcVVtFSrPoeWakNB2ZLOP0F+i4StkUL
         nsRQewGeP0UsRkxnq3KtMkx7OiRgubdtkydVEQYG6jK5ZHZmbx0yNK/c8JcyYjD3JIAC
         Ut3m1P+iv3Z6OSkGBM5RkqV2YJSAbtOAlIPpS5aYllY3p4QAyiook36M6HlT+zHtjfwv
         isQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sp/bNT5Sth10xITvOq6/Mc90creRR8yZ/shLGt2Fjbo=;
        b=dLuAAAivr+PJcvQaV1/3PNAEr/eKqaGkAAKSjoWNhjTbMPoh/yg2sN8d3tHsAIA6vU
         lmI9A5OUolk9WiL6i0W4D0KHGAlFDXnVLQgOggIKpmJgCXg8aH2OEY7IETBOGiVHQMlO
         nJwtZEr9lFtUvQyNzHlMuufGZCyGq1NcMgoHVm3gTVS6+bbDxFtQgdbq3Ot3ri2+fyR3
         opmysgwhrYsMGonzmMlDcx06rv+zt8m+YcFlmC47nIAABXvWLbeAIEslo4MLHdKQBOEh
         NjaDAp0BzkBIFp5gNrIoycX417WaGZMEZhW3vNrUIWpLO6v/fYQzAf2eRMNJ2gZztRhA
         quAw==
X-Gm-Message-State: ANoB5pm4xmWtQ+UvTNUulloywSYuBoWvPh99rqXjEbkNebLr+ic2dJDa
	Lb8DzBGRwWeYajeWPG7aneQ=
X-Google-Smtp-Source: AA0mqf7z2/lysFZiqxK7ulKcSDgTYuqAgvTjsjwNu9269MsuvY9zIMkwT4vKR3jmOkwgiNV/Sr+dWg==
X-Received: by 2002:a17:906:6c93:b0:7c0:ff76:7866 with SMTP id s19-20020a1709066c9300b007c0ff767866mr2992853ejr.272.1670271058311;
        Mon, 05 Dec 2022 12:10:58 -0800 (PST)
Received: from kista.localnet (82-149-19-102.dynamic.telemach.net. [82.149.19.102])
        by smtp.gmail.com with ESMTPSA id d21-20020a170906305500b007838e332d78sm6558596ejd.128.2022.12.05.12.10.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Dec 2022 12:10:57 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, 
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
	Samuel Holland <samuel@sholland.org>, Stefan Agner <stefan@agner.ch>, Heiko Stuebner <heiko@sntech.de>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>, 
	Sergio Paracuellos <sergio.paracuellos@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Nicholas Piggin <npiggin@gmail.com>, Christophe Leroy <christophe.leroy@csgroup.eu>, 
	Tim Harvey <tharvey@gateworks.com>, Peng Fan <peng.fan@nxp.com>, 
	Rasmus Villemoes <rasmus.villemoes@prevas.dk>, Frank Wunderlich <frank-w@public-files.de>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Oleksij Rempel <linux@rempel-privat.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org, linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH 2/5] arm: dts: remove label = "cpu" from DSA dt-binding
Date: Mon, 05 Dec 2022 21:10:54 +0100
Message-ID: <5625120.DvuYhMxLoT@kista>
In-Reply-To: <20221130141040.32447-3-arinc.unal@arinc9.com>
References: <20221130141040.32447-1-arinc.unal@arinc9.com> <20221130141040.32447-3-arinc.unal@arinc9.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_121100_649708_5C0576CC 
X-CRM114-Status: GOOD (  10.43  )
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

RG5lIHNyZWRhLCAzMC4gbm92ZW1iZXIgMjAyMiBvYiAxNToxMDozNyBDRVQgamUgQXLEsW7DpyDD
nE5BTCBuYXBpc2FsKGEpOgo+IFRoaXMgaXMgbm90IHVzZWQgYnkgdGhlIERTQSBkdC1iaW5kaW5n
LCBzbyByZW1vdmUgaXQgZnJvbSBhbGwgZGV2aWNldHJlZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTog
QXLEsW7DpyDDnE5BTCA8YXJpbmMudW5hbEBhcmluYzkuY29tPgo+IC0tLQo+ICBhcmNoL2FybS9i
b290L2R0cy9hcm1hZGEtMzcwLXJkLmR0cyAgICAgICAgICAgICAgICAgICAgICAgfCAxIC0KPiAg
YXJjaC9hcm0vYm9vdC9kdHMvYXJtYWRhLTM4MS1uZXRnZWFyLWdzMTEwZW14LmR0cyAgICAgICAg
IHwgMSAtCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2FybWFkYS0zODUtY2xlYXJmb2ctZ3RyLWw4LmR0
cyAgICAgICAgICB8IDEgLQo+ICBhcmNoL2FybS9ib290L2R0cy9hcm1hZGEtMzg1LWNsZWFyZm9n
LWd0ci1zNC5kdHMgICAgICAgICAgfCAxIC0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvYXJtYWRhLTM4
NS1saW5rc3lzLmR0c2kgICAgICAgICAgICAgICAgIHwgMSAtCj4gIGFyY2gvYXJtL2Jvb3QvZHRz
L2FybWFkYS0zODUtdHVycmlzLW9tbmlhLmR0cyAgICAgICAgICAgICB8IDEgLQo+ICBhcmNoL2Fy
bS9ib290L2R0cy9hcm1hZGEtMzg4LWNsZWFyZm9nLmR0cyAgICAgICAgICAgICAgICAgfCAxIC0K
PiAgYXJjaC9hcm0vYm9vdC9kdHMvYXJtYWRhLXhwLWxpbmtzeXMtbWFtYmEuZHRzICAgICAgICAg
ICAgIHwgMSAtCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2F0OTEtc2FtYTVkMl9pY3AuZHRzICAgICAg
ICAgICAgICAgICAgICB8IDEgLQo+ICBhcmNoL2FybS9ib290L2R0cy9hdDkxLXNhbWE1ZDNfa3N6
OTQ3N19ldmIuZHRzICAgICAgICAgICAgfCAxIC0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvYmNtLWN5
Z251cy5kdHNpICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSAtCj4gIGFyY2gvYXJtL2Jvb3Qv
ZHRzL2JjbTQ3MDgtYnVmZmFsby13enItMTE2NmRocC1jb21tb24uZHRzaSB8IDEgLQo+ICBhcmNo
L2FybS9ib290L2R0cy9iY200NzA4LWx1eHVsLXhhcC0xNTEwLmR0cyAgICAgICAgICAgICAgfCAx
IC0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvYmNtNDcwOC1sdXh1bC14d2MtMTAwMC5kdHMgICAgICAg
ICAgICAgIHwgMSAtCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2JjbTQ3MDgtbmV0Z2Vhci1yNjI1MC5k
dHMgICAgICAgICAgICAgICB8IDEgLQo+ICBhcmNoL2FybS9ib290L2R0cy9iY200NzA4LXNtYXJ0
cmctc3I0MDBhYy5kdHMgICAgICAgICAgICAgfCAxIC0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvYmNt
NDcwODEtYnVmZmFsby13enItNjAwZGhwMi5kdHMgICAgICAgIHwgMSAtCj4gIGFyY2gvYXJtL2Jv
b3QvZHRzL2JjbTQ3MDgxLWx1eHVsLXhhcC0xNDEwLmR0cyAgICAgICAgICAgICB8IDEgLQo+ICBh
cmNoL2FybS9ib290L2R0cy9iY200NzA4MS1sdXh1bC14d3ItMTIwMC5kdHMgICAgICAgICAgICAg
fCAxIC0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvYmNtNDcwOS1uZXRnZWFyLXI4MDAwLmR0cyAgICAg
ICAgICAgICAgIHwgMSAtCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2JjbTQ3MDk0LWFzdXMtcnQtYWM4
OHUuZHRzICAgICAgICAgICAgICB8IDMgLS0tCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2JjbTQ3MDk0
LWRsaW5rLWRpci04ODVsLmR0cyAgICAgICAgICAgICB8IDEgLQo+ICBhcmNoL2FybS9ib290L2R0
cy9iY200NzA5NC1saW5rc3lzLXBhbmFtZXJhLmR0cyAgICAgICAgICAgfCA0IC0tLS0KPiAgYXJj
aC9hcm0vYm9vdC9kdHMvYmNtNDcwOTQtbHV4dWwtYWJyLTQ1MDAuZHRzICAgICAgICAgICAgIHwg
MSAtCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2JjbTQ3MDk0LWx1eHVsLXhhcC0xNjEwLmR0cyAgICAg
ICAgICAgICB8IDEgLQo+ICBhcmNoL2FybS9ib290L2R0cy9iY200NzA5NC1sdXh1bC14YnItNDUw
MC5kdHMgICAgICAgICAgICAgfCAxIC0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvYmNtNDcwOTQtbHV4
dWwteHdjLTIwMDAuZHRzICAgICAgICAgICAgIHwgMSAtCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2Jj
bTQ3MDk0LWx1eHVsLXh3ci0zMTAwLmR0cyAgICAgICAgICAgICB8IDEgLQo+ICBhcmNoL2FybS9i
b290L2R0cy9iY200NzA5NC1sdXh1bC14d3ItMzE1MC12MS5kdHMgICAgICAgICAgfCAxIC0KPiAg
YXJjaC9hcm0vYm9vdC9kdHMvYmNtNDcxODktdGVuZGEtYWM5LmR0cyAgICAgICAgICAgICAgICAg
IHwgMSAtCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2JjbTUzMDE1LW1lcmFraS1tcjI2LmR0cyAgICAg
ICAgICAgICAgICB8IDEgLQo+ICBhcmNoL2FybS9ib290L2R0cy9iY201MzAxNi1tZXJha2ktbXIz
Mi5kdHMgICAgICAgICAgICAgICAgfCAxIC0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvYmNtOTUzMDEy
ZXIuZHRzICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSAtCj4gIGFyY2gvYXJtL2Jvb3QvZHRz
L2JjbTk1ODYyMmhyLmR0cyAgICAgICAgICAgICAgICAgICAgICAgICB8IDEgLQo+ICBhcmNoL2Fy
bS9ib290L2R0cy9iY205NTg2MjNoci5kdHMgICAgICAgICAgICAgICAgICAgICAgICAgfCAxIC0K
PiAgYXJjaC9hcm0vYm9vdC9kdHMvYmNtOTU4NjI1aHIuZHRzICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgMSAtCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2JjbTk1ODYyNWsuZHRzICAgICAgICAgICAg
ICAgICAgICAgICAgICB8IDEgLQo+ICBhcmNoL2FybS9ib290L2R0cy9iY205ODgzMTJoci5kdHMg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAxIC0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvZ2VtaW5p
LWRsaW5rLWRpci02ODUuZHRzICAgICAgICAgICAgICAgIHwgMSAtCj4gIGFyY2gvYXJtL2Jvb3Qv
ZHRzL2dlbWluaS1zbDkzNTEyci5kdHMgICAgICAgICAgICAgICAgICAgICB8IDEgLQo+ICBhcmNo
L2FybS9ib290L2R0cy9nZW1pbmktc3EyMDEuZHRzICAgICAgICAgICAgICAgICAgICAgICAgfCAx
IC0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvaW14NTEtemlpLXJkdTEuZHRzICAgICAgICAgICAgICAg
ICAgICAgIHwgMSAtCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDUxLXppaS1zY3UyLW1lenouZHRz
ICAgICAgICAgICAgICAgICB8IDEgLQo+ICBhcmNoL2FybS9ib290L2R0cy9pbXg1MS16aWktc2N1
My1lc2IuZHRzICAgICAgICAgICAgICAgICAgfCAxIC0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvaW14
NTMta3AtaHNjLmR0cyAgICAgICAgICAgICAgICAgICAgICAgIHwgMSAtCj4gIGFyY2gvYXJtL2Jv
b3QvZHRzL2lteDZkbC15YXBwNC1jb21tb24uZHRzaSAgICAgICAgICAgICAgICB8IDEgLQo+ICBh
cmNoL2FybS9ib290L2R0cy9pbXg2cS1iNDUwdjMuZHRzICAgICAgICAgICAgICAgICAgICAgICAg
fCAxIC0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvaW14NnEtYjY1MHYzLmR0cyAgICAgICAgICAgICAg
ICAgICAgICAgIHwgMSAtCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZxLWI4NTB2My5kdHMgICAg
ICAgICAgICAgICAgICAgICAgICB8IDEgLQo+ICBhcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLWd3
NTkwNC5kdHNpICAgICAgICAgICAgICAgICAgICAgfCAxIC0KPiAgYXJjaC9hcm0vYm9vdC9kdHMv
aW14NnFkbC1za292LWNwdS5kdHNpICAgICAgICAgICAgICAgICAgIHwgMSAtCj4gIGFyY2gvYXJt
L2Jvb3QvZHRzL2lteDZxZGwtemlpLXJkdTIuZHRzaSAgICAgICAgICAgICAgICAgICB8IDEgLQo+
ICBhcmNoL2FybS9ib290L2R0cy9pbXg2cXAtcHJ0d2QzLmR0cyAgICAgICAgICAgICAgICAgICAg
ICAgfCAxIC0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvaW14N2QtemlpLXJwdTIuZHRzICAgICAgICAg
ICAgICAgICAgICAgIHwgMSAtCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2tpcmt3b29kLWRpcjY2NS5k
dHMgICAgICAgICAgICAgICAgICAgICB8IDEgLQo+ICBhcmNoL2FybS9ib290L2R0cy9raXJrd29v
ZC1sLTUwLmR0cyAgICAgICAgICAgICAgICAgICAgICAgfCAxIC0KPiAgYXJjaC9hcm0vYm9vdC9k
dHMva2lya3dvb2QtbGlua3N5cy12aXBlci5kdHMgICAgICAgICAgICAgIHwgMSAtCj4gIGFyY2gv
YXJtL2Jvb3QvZHRzL2tpcmt3b29kLW12ODhmNjI4MWd0dy1nZS5kdHMgICAgICAgICAgICB8IDEg
LQo+ICBhcmNoL2FybS9ib290L2R0cy9raXJrd29vZC1yZDg4ZjYyODEuZHRzaSAgICAgICAgICAg
ICAgICAgfCAxIC0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvbXQ3NjIzYS1yZmItZW1tYy5kdHMgICAg
ICAgICAgICAgICAgICAgIHwgMSAtCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL210NzYyM2EtcmZiLW5h
bmQuZHRzICAgICAgICAgICAgICAgICAgICB8IDEgLQo+ICBhcmNoL2FybS9ib290L2R0cy9tdDc2
MjNuLWJhbmFuYXBpLWJwaS1yMi5kdHMgICAgICAgICAgICAgfCAxIC0KPiAgYXJjaC9hcm0vYm9v
dC9kdHMvbXQ3NjIzbi1yZmItZW1tYy5kdHMgICAgICAgICAgICAgICAgICAgIHwgMSAtCj4gIGFy
Y2gvYXJtL2Jvb3QvZHRzL29yaW9uNXgtbmV0Z2Vhci13bnI4NTR0LmR0cyAgICAgICAgICAgICB8
IDEgLQo+ICBhcmNoL2FybS9ib290L2R0cy9xY29tLWlwcTgwNjQtcmIzMDExLmR0cyAgICAgICAg
ICAgICAgICAgfCAyIC0tCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL3I5YTA2ZzAzMi5kdHNpICAgICAg
ICAgICAgICAgICAgICAgICAgICB8IDEgLQo+ICBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTUx
YS1wcnR0MWMuZHRzICAgICAgICAgICAgICAgICAgfCAxIC0KPiAgYXJjaC9hcm0vYm9vdC9kdHMv
c3VuN2ktYTIwLWxhbW9iby1yMS5kdHMgICAgICAgICAgICAgICAgIHwgMSAtCgpGb3Igc3VuN2k6
CgpBY2tlZC1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQGdtYWlsLmNvbT4KCkJl
c3QgcmVnYXJkcywKSmVybmVqCgo+ICBhcmNoL2FybS9ib290L2R0cy92ZjYxMC16aWktY2Z1MS5k
dHMgICAgICAgICAgICAgICAgICAgICAgfCAxIC0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvdmY2MTAt
emlpLWRldi1yZXYtYi5kdHMgICAgICAgICAgICAgICAgIHwgMSAtCj4gIGFyY2gvYXJtL2Jvb3Qv
ZHRzL3ZmNjEwLXppaS1kZXYtcmV2LWMuZHRzICAgICAgICAgICAgICAgICB8IDEgLQo+ICBhcmNo
L2FybS9ib290L2R0cy92ZjYxMC16aWktc2N1NC1haWIuZHRzICAgICAgICAgICAgICAgICAgfCAx
IC0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvdmY2MTAtemlpLXNwYjQuZHRzICAgICAgICAgICAgICAg
ICAgICAgIHwgMSAtCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL3ZmNjEwLXppaS1zc21iLWR0dS5kdHMg
ICAgICAgICAgICAgICAgICB8IDEgLQo+ICBhcmNoL2FybS9ib290L2R0cy92ZjYxMC16aWktc3Nt
Yi1zcHUzLmR0cyAgICAgICAgICAgICAgICAgfCAxIC0KPiAgNzUgZmlsZXMgY2hhbmdlZCwgODEg
ZGVsZXRpb25zKC0pCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
