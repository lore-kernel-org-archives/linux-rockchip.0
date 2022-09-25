Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FB0EC04A95
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Sep 2022 20:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GlKqHZQ1vKzXdhPvzKJyohUg9n2d9XRvabm20FNucGQ=; b=yoxPwna1CJPpzj
	uyUMLkaiiegtyuS2pW7lGbL4sDXn7IzYQ4/NrvETML99BzBAOurOcrElqqF6lpI81dWFCdSiWJ+P9
	Ybt5Eqmp32Mpc14BahlJMQAcxBvpIeUxHKk8KqYM4uGSrH/P4qJr38odANZZuy2oEPc1TxEvb41dw
	jlcwNMJCAaDJRMoztAC2dwNkXzrUSDyt8Upa9qNnu1FRIU7fnyjHvFE9WrpFY81cQb/6/eOEFggeO
	ZEtMvsDlQ1FR4nplobWmy/vxL+xqlxgMFpx0O6ArOhtK89wvpTskY0rGcNPsm7g+japkPw86z5GtL
	LQNPa8737aueMlkXe8wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocYPg-00GV5Z-DN; Sun, 25 Sep 2022 20:39:44 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocYOr-00GUhz-3i; Sun, 25 Sep 2022 20:38:58 +0000
Received: by mail-ej1-x62d.google.com with SMTP id z13so10298671ejp.6;
        Sun, 25 Sep 2022 13:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=OaZucz9S56qvWBD+7k+kTS+HBw5bFAP+ZtEIWbVKyqM=;
        b=ANwjh5joJXyH4ejpGNMaAJ3riPfbjzUlgYK4IJjrms2EHE2EEK1RzCe6UkNueK1iS0
         FHtA8U/Ow441uBxTv1wq77l0Oig+p1EhlIOCcef+y8/SxpRi3Q7V4lPtr6p3WSJmpKSi
         AsJrje5/+zTsDX54ZD58P7PULoQNlpPUJxWvC7NjARajCYAC45NN4pcjZ6Q09aIefJE4
         aaI2vHdIdgu7sU96Ybk01e6PpHpszqIm5Qvp2JKxBz5Ft2W6pVahvYfwOCwmM3fy2RuZ
         MoRG9qztRLHkMKK2/VxO4qVndsU0Hd/pUcsBlqVh9gEI9JWVl54jxXXWIMsGMy1nRphk
         22Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=OaZucz9S56qvWBD+7k+kTS+HBw5bFAP+ZtEIWbVKyqM=;
        b=YobHLKOs77ROYOOn0o3/VAeMhKIi3nNhBFWgLls7pYFiYDAW33HsfiVKwNPUubBoYy
         zvxUC/d3zfcm4BqepwXogzMvuFUJ8QtpG6ZmRlxVI7xO937+kxUXevy9B/ThaSoi1IIt
         1oFfCC+53nUm9JExnl8X0pjZyf/g0tJ0U/idd+GKQYJIg+AN9waodPNcWOhxInTIb4HV
         mV7OShj5zNsbvq2ULY44wNCUf4qnrt+e71EPBNTmYydvneI85PaZiH4ZW5m84sgi8o/X
         xCxTW/NAdKT8SPhivgWneQnOVwvM+Zd9HIOdOlCvVe7rZncfwYadw8tmzBcufO9q9uLM
         pUOw==
X-Gm-Message-State: ACrzQf3bIZTndwj1WBJyz+msx1cXKleIhSfIp0CXedh7GHtBxQYCHHWs
	7Xib9wytTilDL3fmU0LtTU/yZspOrykcwB0qbsQ=
X-Google-Smtp-Source: AMsMyM41lgm4JdhV6j3MeNw4KpSvvdGBz3YlLhCMoPxernnddViSws8tNDR9uSEoeCJUOb1030SdtqLBkkOMZLgedyI=
X-Received: by 2002:a17:907:7fa0:b0:782:9713:1e with SMTP id
 qk32-20020a1709077fa000b007829713001emr11894538ejc.394.1664138330936; Sun, 25
 Sep 2022 13:38:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220920112821.975359-1-nuno.sa@analog.com> <20220920112821.975359-8-nuno.sa@analog.com>
In-Reply-To: <20220920112821.975359-8-nuno.sa@analog.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 25 Sep 2022 22:38:39 +0200
Message-ID: <CAFBinCAtAemSFXfBNtn282yxF9YG5zdRcbXYAHS-ygBOEzShcg@mail.gmail.com>
Subject: Re: [PATCH 07/15] iio: adc: meson_saradc: do not use internal iio_dev lock
To: =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-imx@nxp.com, 
	linux-iio@vger.kernel.org, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Cixi Geng <cixi.geng1@unisoc.com>, Kevin Hilman <khilman@baylibre.com>, 
	Vladimir Zapolskiy <vz@mleia.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Alexandru Ardelean <aardelean@deviqon.com>, Fabio Estevam <festevam@gmail.com>, 
	Andriy Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>, Haibo Chen <haibo.chen@nxp.com>, 
	Shawn Guo <shawnguo@kernel.org>, Hans de Goede <hdegoede@redhat.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Heiko Stuebner <heiko@sntech.de>, Florian Boor <florian.boor@kernelconcepts.de>, 
	Ciprian Regus <ciprian.regus@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Andy Shevchenko <andy.shevchenko@gmail.com>, Jonathan Cameron <jic23@kernel.org>, 
	Neil Armstrong <narmstrong@baylibre.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Jyoti Bhayana <jbhayana@google.com>, Chen-Yu Tsai <wens@csie.org>, Orson Zhai <orsonzhai@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_133853_217261_E8A47CE1 
X-CRM114-Status: UNSURE (   6.95  )
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

T24gVHVlLCBTZXAgMjAsIDIwMjIgYXQgMToyOCBQTSBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cu
Y29tPiB3cm90ZToKPgo+IFRoZSBpaW9fZGV2aWNlIGxvY2sgaXMgb25seSBtZWFudCBmb3IgaW50
ZXJuYWwgdXNlLiBIZW5jZSBkZWZpbmUgYQo+IGRldmljZSBsb2NhbCBsb2NrIHRvIHByb3RlY3Qg
YWdhaW5zdCBjb25jdXJyZW50IGFjY2Vzc2VzLgo+Cj4gU2lnbmVkLW9mZi1ieTogTnVubyBTw6Eg
PG51bm8uc2FAYW5hbG9nLmNvbT4KUmV2aWV3ZWQtYnk6IE1hcnRpbiBCbHVtZW5zdGluZ2wgPG1h
cnRpbi5ibHVtZW5zdGluZ2xAZ29vZ2xlbWFpbC5jb20+CgpUaGFuayB5b3UgZm9yIHRoaXMgcGF0
Y2ghCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
