Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D549CC6FA92
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 13:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r3AbQ27e+H5ON2ptC9oPsLJPrkwzldlFOj5I1Pw8Tu0=; b=eEZcxOIiaLvVCV
	RIFx2q9Tr6/rAJakvLSI7vnpWYWtN/0aj5qEtRiHH+PxZ81Frgs4LT8kWIpTlmXxgFLpaiuVWxHOl
	lPO/rTw63aGSL+W81XQZ3ema9mLy0xr58XLsXTIBeOaLjrRpGRE6uR5JO6/7y4TQot0fOlOBfiM8P
	XcTdY6WrplYSu2c4jV7X9C3zCpctF+2IxviJmdUs8fAFkyuyPKAGw6kmrjUgktnPWISqC/a4XVCoP
	KsfKY39qWzM2Ny1nS6gIzQTFX7hNQAkikdsAw5lGBZX+VMH12RuPPsPrlN4fcq+yRdJi2qtxe+lk3
	RP++l3dDla9hBkPwUyqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadTs-0049jw-M6; Tue, 20 Sep 2022 13:40:08 +0000
Received: from mail-qv1-xf34.google.com ([2607:f8b0:4864:20::f34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadTf-0049bG-2Y; Tue, 20 Sep 2022 13:39:56 +0000
Received: by mail-qv1-xf34.google.com with SMTP id w4so2024374qvp.2;
        Tue, 20 Sep 2022 06:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=x27NWvYktqlnusyS/qm9PNgdsudNh50YHSIrIUi9m8s=;
        b=YEZRyS/mExig2KaV4RW4O5SenkKekfz/I/LZ4vkqtmJhA72WWTImL0KtR8QYpFJC/w
         4u5cANeaCnvpFM4IKoJHVFsaRgDrjBH+g1wWpECPZ6Eu/rk6V+cE+Nq8HNeWTLhmZ6OJ
         nKvNU9UjcqkWtvEgECdo0swBarERO65UAbYsso8N2s+hjQKAS295pQW3niA5Ufil7JvQ
         1I+HbPBGEubUeriW22gHYnwDPM5cwW9tML19PeF7QpP2wGFUW7udSCBVFytHOF4uYjND
         wsDItVWu399GdaVXG5bcCDI9XysgPN6oooRmqx7vTvfDYAvrq9p6A3+Xm9qt3k1X5QQc
         THlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=x27NWvYktqlnusyS/qm9PNgdsudNh50YHSIrIUi9m8s=;
        b=IMu8p6kQTf+yfbc8yYduU6TDbrzHVRvVKUZ2pv5QtVc6QkhZA9lIY4wTMp2JiGhWv5
         xJm2brVJtzqZ3H2xLA6HDiWGOb3SycMCPzBhU7dRtQxyrb4ytY435MTukibHefEdkJgh
         H8sTHsGz5gGCdpYUtAsgLMtTTMhr6hYQD5tGNQ4powOJZwIH1az8jd6Jl0pgrohLOs3l
         nfu/DWM5xBJE/QjHYzAKNmpthS6BKyRshl4HBnIgynzxG5HxLI0J4ED9ofv2tDgh8tB/
         AUIpIeku60xOVk1FihRSH8A32f102Qarzxmlpvxgx0cv3ejpI4YZyN3gyWmw4LxZh5Uc
         frdw==
X-Gm-Message-State: ACrzQf2zCuWND9WgzcrnVU5noNl+MtM2g0ttulmPFA8MWyWbbp8Dm3Na
	G1ny0zZifPWXsdLAlsMs+/aOltgyPb4M5OMcZqMzvpwpjvY=
X-Google-Smtp-Source: AMsMyM5C+z2L7ENi+SWLvx55m0PRFwxKoEZfjPSxoLQ70jW3kb3UuOMOpiUDttlB9lpgAQ5Ayl1c1mbvthu4A5c70sA=
X-Received: by 2002:a05:6214:19cf:b0:4a9:4241:2399 with SMTP id
 j15-20020a05621419cf00b004a942412399mr18751591qvc.64.1663681192253; Tue, 20
 Sep 2022 06:39:52 -0700 (PDT)
MIME-Version: 1.0
References: <20220920112821.975359-1-nuno.sa@analog.com> <20220920112821.975359-4-nuno.sa@analog.com>
 <CAHp75VeA48FbKy2uUjW4T19=Vn-UEznT7prkXZq4sdZ4Q9o-YA@mail.gmail.com>
 <SJ0PR03MB6778FFE254E9DDC103258FE8994C9@SJ0PR03MB6778.namprd03.prod.outlook.com>
 <CAHp75VdVbkXCC1PpT4h-+4HHpZX-zK34xH9dVG8vGcpQhXaQHQ@mail.gmail.com>
In-Reply-To: <CAHp75VdVbkXCC1PpT4h-+4HHpZX-zK34xH9dVG8vGcpQhXaQHQ@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 20 Sep 2022 16:39:16 +0300
Message-ID: <CAHp75VfdUOTd9tRXdTVq_prNf_T2=iQ4tEjusHC=gXDZvb3Qeg@mail.gmail.com>
Subject: Re: [PATCH 03/15] iio: adc: axp288_adc: do not use internal iio_dev lock
To: "Sa, Nuno" <Nuno.Sa@analog.com>
Cc: "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, 
	"linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>, "linux-imx@nxp.com" <linux-imx@nxp.com>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	"Hennerich, Michael" <Michael.Hennerich@analog.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Cixi Geng <cixi.geng1@unisoc.com>, Kevin Hilman <khilman@baylibre.com>, 
	Vladimir Zapolskiy <vz@mleia.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Alexandru Ardelean <aardelean@deviqon.com>, Fabio Estevam <festevam@gmail.com>, 
	Andriy Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>, Haibo Chen <haibo.chen@nxp.com>, 
	Shawn Guo <shawnguo@kernel.org>, Hans de Goede <hdegoede@redhat.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Heiko Stuebner <heiko@sntech.de>, Florian Boor <florian.boor@kernelconcepts.de>, 
	"Regus, Ciprian" <Ciprian.Regus@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Jonathan Cameron <jic23@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Jyoti Bhayana <jbhayana@google.com>, 
	Chen-Yu Tsai <wens@csie.org>, Orson Zhai <orsonzhai@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_063955_134416_4C94D802 
X-CRM114-Status: GOOD (  13.52  )
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

T24gVHVlLCBTZXAgMjAsIDIwMjIgYXQgNDozNyBQTSBBbmR5IFNoZXZjaGVua28KPGFuZHkuc2hl
dmNoZW5rb0BnbWFpbC5jb20+IHdyb3RlOgo+IE9uIFR1ZSwgU2VwIDIwLCAyMDIyIGF0IDQ6MTgg
UE0gU2EsIE51bm8gPE51bm8uU2FAYW5hbG9nLmNvbT4gd3JvdGU6Cj4gPiA+IE9uIFR1ZSwgU2Vw
IDIwLCAyMDIyIGF0IDI6MjggUE0gTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4gd3JvdGU6
CgouLi4KCj4gPiA+ID4gICAgICAgICBpbmZvID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKPiA+ID4g
PiArICAgICAgIG11dGV4X2luaXQoJmluZm8tPmxvY2spOwo+ID4gPiA+ICAgICAgICAgaW5mby0+
aXJxID0gcGxhdGZvcm1fZ2V0X2lycShwZGV2LCAwKTsKPiA+ID4gPiAgICAgICAgIGlmIChpbmZv
LT5pcnEgPCAwKQo+ID4gPiA+ICAgICAgICAgICAgICAgICByZXR1cm4gaW5mby0+aXJxOwo+ID4g
Pgo+ID4gPiBDb25zaWRlciBpbml0aWFsaXppbmcgaXQgYXMgbGF0ZSBhcyBwb3NzaWJsZSwgbGlr
ZSBhZnRlciBJUlEgcmV0cmlldmFsCj4gPiA+IGluIHRoaXMgY29udGV4dCAobWF5YmUgZXZlbiBk
ZWVwZXIsIGJ1dCBubyBjb250ZXh0IGF2YWlsYWJsZSkuIERpdHRvCj4gPiA+IGZvciB0aGUgcmVz
dCBvZiB0aGUgc2VyaWVzLgo+ID4KPiA+IEFueSBzcGVjaWFsIHJlYXNvbiBmb3IgaXQgKG1heWJl
IHJlbGF0ZWQgdG8gbG9ja2RlcCA6d29uZGVyaW5nOiApID8gSnVzdAo+ID4gY3VyaW91cyBhcyBJ
IG5ldmVyIG5vdGljZWQgc3VjaCBhIHBhdHRlcm4gd2hlbiBpbml0aWFsaXppbmcgbXV0ZXhlcy4K
Pgo+IFllcy4gTWljcm8tb3B0aW1pemF0aW9uIGJhc2VkIG9uIHRoZSBydWxlICJkb24ndCBjcmVh
dGUgYSByZXNvdXJjZSBpbgo+IGNhc2Ugb2Yga25vd24gZXJyb3IiLgo+Cj4gT1RPSCwgeW91IGhh
dmUgdG8gYmUgc3VyZSB0aGF0IHRoZSBtdXRleCAoYW5kIGdlbmVyYWxseSBzcGVha2luZyBhCj4g
bG9ja2luZykgc2hvdWxkIGJlIGluaXRpYWxpemVkIGVhcmx5IGVub3VnaC4KCk5vdGUgdGhhdCAi
bWljcm8iIGluIHRoZSBhYm92ZSBjYW4gYmUgbXVsdGlwbGllZCBieSAnaycsIHdoZXJlICdrJyBp
cwp0aGUgYW1vdW50IG9mIGRlZmVycmVkIHByb2JlcyAocHJvYmFibHkgbm90IHRoZSBjYXNlIGhl
cmUsIGJ1dCBhZ2FpbiwKImdlbmVyYWxseSBzcGVha2luZyIpLgoKLS0gCldpdGggQmVzdCBSZWdh
cmRzLApBbmR5IFNoZXZjaGVua28KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
