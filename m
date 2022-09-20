Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E4C7C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 13:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=en0gJH6n3hOAZWmrBmcf92Rg49TA8CLOiSZSOsHMWnA=; b=nXygvEP+Y13vdH
	dKJw0GzV40XkuOo4Z6KyFnJ6gO15DxirxOu/8TlLbx85rx72u4ZcOwokjSzXaj/24XiHaST3pNsqn
	LR35NzKizLEI3EHUYMYNnVPaLhcgyBmVsnODD9fVedtWJ85JoRpnaClecS+8We669cQACcfkEwUs6
	s3ARtAdcEK/XXyMsxbL3XGTjIz3xuzIxAl8gRyoNMmNNZzUNBYl21ZUlXSqGHeUZmkMMV3y2TGWGq
	iifvVySZ2m81+mcYQ9BNxf3iVweGJ3rb0qcK7S6GgoFsMeqSoZa9oz2DyEz0tFYe7TAvwdqShc8q4
	vVQAUYouM8NlesKRXiTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadRx-004918-1m; Tue, 20 Sep 2022 13:38:09 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadRl-0048wt-Jh; Tue, 20 Sep 2022 13:37:58 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id w4so2020296qvp.2;
        Tue, 20 Sep 2022 06:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=ldfCfPiEcl/iU6xkC9UBhb9pCzWFcdD9p30orMt50qQ=;
        b=ODRXoPyJ/TIwb3d/5fipsb9U4muzMkRw+uwLDlR5po75SUqM7n9cLElB3A7bdfH2hm
         JSlt3PSCmlA8zhg/TzrF4ppn3crEZo8H7OTj5eawr3ISGr5nUWHWSMLZZYFDjIMMrvuA
         Sx+Ace0o1wYKyHWCtfeMEUIoWEIZPlrIoXnkOGNm7DVHJ9Zu26Ec90q7Pn9fYmgWeNtz
         +nF0aSOP4aSGWZ5+AfLwQ62K6CjKmnSUWNwzyu/pMyzMPvhe0Usk6Wh+QcR5G4bCd7pM
         /p2FGkh1Y19EA7MogXX37LqHOSQvs+apl3NdvoMLviD01/RmE2e40KJi98J1z1qHVDO+
         k1tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ldfCfPiEcl/iU6xkC9UBhb9pCzWFcdD9p30orMt50qQ=;
        b=KNHvMiKyRL+jiCeodkNwLoqkVXNqDrrxBdme5z14E8gMG8q/zgAXks2SSkFuTHjg4y
         Ugi9+PdVm7FZkGzJ2MVlkmlZeHj9nrjuZ6/c6/6hNgdP0ECZth25+zXwv8MoyXNhlCmc
         h8795xLFbFuiy0iX6QvREKd+s32hOdpM16Fc61dpIIR/US8UaqylmKBud+MLnNVVOoJ/
         Ku5aEkhfHwvY7K+TW6AoIa3K0Iq3ffr9kQr220lthvCb3zHu2rvFdh41wGaHoDYIDh+U
         kKPrghhUEWBdraDqVDPdbsp53DP/73e9om2Klti6EDMfjXdbeKppozUT2oYJ0cnw07DH
         zHXw==
X-Gm-Message-State: ACrzQf3fyMjgevIm61tZas4hV3PUKIP+9p2K/p/tb0HUBlmxjOOvZtrs
	g6x9iaojmNEe3GNLuVVSK37Mrky61LmLm17Ul4o=
X-Google-Smtp-Source: AMsMyM5RWpOoUCubSLZldb8nZ0OMTgh0LmGChDVJqvPSCUwsewgD/0JGu3T0lW4vETV28zQlu9VzRczxmvQKqnteIac=
X-Received: by 2002:a0c:e24b:0:b0:4a1:d41b:e280 with SMTP id
 x11-20020a0ce24b000000b004a1d41be280mr19334009qvl.11.1663681075513; Tue, 20
 Sep 2022 06:37:55 -0700 (PDT)
MIME-Version: 1.0
References: <20220920112821.975359-1-nuno.sa@analog.com> <20220920112821.975359-4-nuno.sa@analog.com>
 <CAHp75VeA48FbKy2uUjW4T19=Vn-UEznT7prkXZq4sdZ4Q9o-YA@mail.gmail.com> <SJ0PR03MB6778FFE254E9DDC103258FE8994C9@SJ0PR03MB6778.namprd03.prod.outlook.com>
In-Reply-To: <SJ0PR03MB6778FFE254E9DDC103258FE8994C9@SJ0PR03MB6778.namprd03.prod.outlook.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 20 Sep 2022 16:37:19 +0300
Message-ID: <CAHp75VdVbkXCC1PpT4h-+4HHpZX-zK34xH9dVG8vGcpQhXaQHQ@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20220920_063757_669381_A33A28C9 
X-CRM114-Status: GOOD (  10.83  )
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

T24gVHVlLCBTZXAgMjAsIDIwMjIgYXQgNDoxOCBQTSBTYSwgTnVubyA8TnVuby5TYUBhbmFsb2cu
Y29tPiB3cm90ZToKPiA+IE9uIFR1ZSwgU2VwIDIwLCAyMDIyIGF0IDI6MjggUE0gTnVubyBTw6Eg
PG51bm8uc2FAYW5hbG9nLmNvbT4gd3JvdGU6CgouLi4KCj4gPiA+ICAgICAgICAgaW5mbyA9IGlp
b19wcml2KGluZGlvX2Rldik7Cj4gPiA+ICsgICAgICAgbXV0ZXhfaW5pdCgmaW5mby0+bG9jayk7
Cj4gPiA+ICAgICAgICAgaW5mby0+aXJxID0gcGxhdGZvcm1fZ2V0X2lycShwZGV2LCAwKTsKPiA+
ID4gICAgICAgICBpZiAoaW5mby0+aXJxIDwgMCkKPiA+ID4gICAgICAgICAgICAgICAgIHJldHVy
biBpbmZvLT5pcnE7Cj4gPgo+ID4gQ29uc2lkZXIgaW5pdGlhbGl6aW5nIGl0IGFzIGxhdGUgYXMg
cG9zc2libGUsIGxpa2UgYWZ0ZXIgSVJRIHJldHJpZXZhbAo+ID4gaW4gdGhpcyBjb250ZXh0ICht
YXliZSBldmVuIGRlZXBlciwgYnV0IG5vIGNvbnRleHQgYXZhaWxhYmxlKS4gRGl0dG8KPiA+IGZv
ciB0aGUgcmVzdCBvZiB0aGUgc2VyaWVzLgo+Cj4gQW55IHNwZWNpYWwgcmVhc29uIGZvciBpdCAo
bWF5YmUgcmVsYXRlZCB0byBsb2NrZGVwIDp3b25kZXJpbmc6ICkgPyBKdXN0Cj4gY3VyaW91cyBh
cyBJIG5ldmVyIG5vdGljZWQgc3VjaCBhIHBhdHRlcm4gd2hlbiBpbml0aWFsaXppbmcgbXV0ZXhl
cy4KClllcy4gTWljcm8tb3B0aW1pemF0aW9uIGJhc2VkIG9uIHRoZSBydWxlICJkb24ndCBjcmVh
dGUgYSByZXNvdXJjZSBpbgpjYXNlIG9mIGtub3duIGVycm9yIi4KCk9UT0gsIHlvdSBoYXZlIHRv
IGJlIHN1cmUgdGhhdCB0aGUgbXV0ZXggKGFuZCBnZW5lcmFsbHkgc3BlYWtpbmcgYQpsb2NraW5n
KSBzaG91bGQgYmUgaW5pdGlhbGl6ZWQgZWFybHkgZW5vdWdoLgoKLS0gCldpdGggQmVzdCBSZWdh
cmRzLApBbmR5IFNoZXZjaGVua28KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
