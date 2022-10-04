Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09708C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 14:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QkWswo28BDMgqc5e7n6J6W3tiwYNsD+b36CJ1yTlvQI=; b=4CwTkBU24YDst1
	rWY8XhbXFsaWWwwlyj4Lry2BuX9ibP6tOstps6t7UuLWQg1E+1GWylIbuOVOm4z0xYLZ+j25C6MI4
	MWnCFO6QiUHrJ9jD51S0sTeDnM+nAmJTe48pOS+1L/eG/lzqd3z489Ae2mCgo/x99bGgTtHezjLZ3
	qPUq0UO5gCzDMRlsq5TzXNrxV4cm7Lc853rZUyu13jGxvyueAjMs+QFawAf+q7BjKrr/Xv3RR/E8S
	i0dRA9jnOoDxbt6DfA2Dtd/eOMaNDBdmyL7ymvIp8iCrk6oU2xmLDow7AAu+owCInlF7x4wUGyVfh
	NUC54bgF1RzDvRzYERgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofign-009u7Y-1M; Tue, 04 Oct 2022 14:14:29 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofigc-009u5A-7Q; Tue, 04 Oct 2022 14:14:19 +0000
Received: by mail-qt1-x832.google.com with SMTP id g23so8184198qtu.2;
        Tue, 04 Oct 2022 07:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=maEXSmVmGtXhghuZ9eV9Qu8wIQRINbQBXVMbVoUqxeI=;
        b=eztDnV24HCyqXE2eEiT4owbCvj5y3otJL5kilBQZ6HUxUBVvJ3a9uUUYz7Xe6sOf9Z
         alyHbm4EcyW5T9v6RXsfuUCd2UYwtfnUZshZVbEymIO8vjsriucZjMz6U/5UXwtIqcYo
         jd0eTps+8Z1iHbd2P6hk8Yu1yfUgUZtQkVA2p8zSPp0i99dRrxdPJsXhcuk1JLFGWfnT
         QClXVa66weXSvktQVxwRm0jvlz4sPUrdOkaxh0/kxByZscGYeGn1HdW9/AZJ4/aug1la
         /tSfJwCvzOmyS/+chWg+/Xt/Kixp8OK38UCDPf40STboKG13bkQebXRQ9GPDnDk/Kc1a
         lhzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=maEXSmVmGtXhghuZ9eV9Qu8wIQRINbQBXVMbVoUqxeI=;
        b=YTQ9gU+70KC0uydrHdIuTiqFjWwhKQx6nTW6P1p1lKvC+uSy8Hsw/JhirO6jxo/2QP
         fV7PyxGLYAcIbd5k8FihOLW70IxG0OyTleRG+7c29cMkpTg2REYEHGXd5dPVUdGaPgXC
         95EjVY7DYXMEn6VrNj1UbTUJx1rCG6/uRjr1v+qlBlU4ZCEuciho9g8Ua/B/AL4Indl6
         x/7kZ2qXpDm4/RufEt4tCgsqmlyTYIx/n2X3D2VETcCrcDe9tWmU8R2fhcBJ7i4nQvgv
         5YtcxP9xFZP1iEgbEuLYr2lcYA2sBnUd7275mS3A51hxxJd48CaaBWPI1l6rhGuBxsYJ
         9QlA==
X-Gm-Message-State: ACrzQf1dfNZtm5HKXxuduf5NL4jUb28c0P5SQqC4Q18LTY5RjM3c+Hxr
	x95VgiIiIAZsYudjhWUY1SkDa+M/vFxZonVKQ1s=
X-Google-Smtp-Source: AMsMyM4s6DEU5yVCc9twcWThWHGbqWxPTnr1GnFXsCftksCb6kacyWf2VpRgZjkgVAqm2Gje7DT3g5MKoRofGpnyDQQ=
X-Received: by 2002:ac8:7c43:0:b0:35c:cd8f:3da5 with SMTP id
 o3-20020ac87c43000000b0035ccd8f3da5mr19837471qtv.61.1664892855872; Tue, 04
 Oct 2022 07:14:15 -0700 (PDT)
MIME-Version: 1.0
References: <20221004134909.1692021-1-nuno.sa@analog.com> <20221004134909.1692021-15-nuno.sa@analog.com>
In-Reply-To: <20221004134909.1692021-15-nuno.sa@analog.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 4 Oct 2022 17:13:40 +0300
Message-ID: <CAHp75Vfv4BntoDPOo_MXZ33dVEKYj1KW_Ocd5QL_Ez06HJ33iw@mail.gmail.com>
Subject: Re: [PATCH v2 14/16] iio: health: max30100: do not use internal
 iio_dev lock
To: =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>
Cc: linux-amlogic@lists.infradead.org, linux-imx@nxp.com, 
	linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Neil Armstrong <narmstrong@baylibre.com>, Shawn Guo <shawnguo@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Jyoti Bhayana <jbhayana@google.com>, 
	Hans de Goede <hdegoede@redhat.com>, 
	Andriy Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Cixi Geng <cixi.geng1@unisoc.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Ciprian Regus <ciprian.regus@analog.com>, Fabio Estevam <festevam@gmail.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Alexandru Ardelean <aardelean@deviqon.com>, 
	Florian Boor <florian.boor@kernelconcepts.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Orson Zhai <orsonzhai@gmail.com>, 
	Chen-Yu Tsai <wens@csie.org>, Chunyan Zhang <zhang.lyra@gmail.com>, Vladimir Zapolskiy <vz@mleia.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Haibo Chen <haibo.chen@nxp.com>, 
	Kevin Hilman <khilman@baylibre.com>, Jonathan Cameron <jic23@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_071418_307222_50C5C230 
X-CRM114-Status: GOOD (  11.77  )
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

T24gVHVlLCBPY3QgNCwgMjAyMiBhdCA0OjQ5IFBNIE51bm8gU8OhIDxudW5vLnNhQGFuYWxvZy5j
b20+IHdyb3RlOgo+Cj4gVGhlIHBhdHRlcm4gdXNlZCBpbiB0aGlzIGRldmljZSBkb2VzIG5vdCBx
dWl0ZSBmaXQgaW4gdGhlCj4gaWlvX2RldmljZV9jbGFpbV9kaXJlY3RfbW9kZSgpIHR5cGljYWwg
dXNhZ2UuIEluIHRoaXMgY2FzZSwKPiBpaW9fYnVmZmVyX2VuYWJsZWQoKSB3YXMgYmVpbmcgdXNl
ZCBub3QgdG8gcHJldmVudCB0aGUgcmF3IGFjY2VzcyBidXQgdG8KPiBhbGxvdyBpdC4gSGVuY2Us
IGxldCdzIG1ha2UgdXNlIG9mIHRoZSBuZXcKPiBpaW9fZGV2aWNlX2NsYWltX2J1ZmZlcl9tb2Rl
KCkgQVBJIHRvIG1ha2Ugc3VyZSB3ZSBzdGF5IGluIGJ1ZmZlcmVkIG1vZGUKPiBkdXJpbmcgdGhl
IGNvbXBsZXRlIHJlYWQuCgouLi4KCj4gKyAgICAgICAgICAgICAgIGlmIChpaW9fZGV2aWNlX2Ns
YWltX2J1ZmZlcl9tb2RlKGluZGlvX2RldikpIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBy
ZXQgPSAtRUFHQUlOOwoKV2h5IGlzIHRoZSBlcnJvciBjb2RlIHNoYWRvd2VkPyBJc24ndCBpdCBi
ZXR0ZXIgdG8gcmV0dXJuIGV4YWN0bHkgdGhlCm9uZSB5b3UgcmVzZW5kIHRvIHRoZSB1cHBlciBj
YWxsZXIocyk/IEVhY2ggdW5jbGVhciBlcnJvciBjb2RlCnNoYWRvd2luZyBzaG91bGQgYmUgYXQg
bGVhc3QgZXhwbGFpbmVkLgoKPiArICAgICAgICAgICAgICAgfSBlbHNlIHsKCj4gICAgICAgICAg
ICAgICAgIH0KCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
