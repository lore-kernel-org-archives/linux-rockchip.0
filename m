Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 420E1C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Oct 2022 07:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s/4Je4bhraPmtb2Q3C4CUwZT3E7DaN4GpsoWkOEdFE8=; b=zyqtnXFeLw68gx
	2Z+qWUN4bC0XspyUbBLT3tQic8jsA7nFVUeY4Cf1s053OZsRrzfWWafb42SmjG+NgBdq14o7e0w85
	ssOKXhVCfTwT4bdRgak51cbQdn78R9IXDOhjkkg0KncDd5fs3/7g4Kbvoe5BWMUtjhNlTEGMghXhG
	LznbpTsnyTDtxMak7ngojolzIhasvAm8sBe75xa/onS3Fu4MulIHVWCAQclUIDMM3M/vZP5tadR/u
	qPgvBA8nRnVfo+cLnYUAPOjWvg0pzYSseW36ObozATelJBe8w1u3XBSk7BUHVBKWRrWBf+HxrEryW
	fNOYZl/dMBr6LnsojQIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmvk-00HKvM-QL; Mon, 10 Oct 2022 07:10:28 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmvZ-00HKsG-7P; Mon, 10 Oct 2022 07:10:18 +0000
Received: by mail-qt1-x82d.google.com with SMTP id h15so1895755qtu.2;
        Mon, 10 Oct 2022 00:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cqantoaZonPlYgGQGR7qFyyvdL6723k4g+GFmT1ALoA=;
        b=G+AzIixjDRv0qpyufIdJomHx+yTVLb0uWiOdobLG3w2zBge4b3/FgA1V78XQaxZ2xK
         4wemvPNfQ5Evyzc02kj8I7bb7xBoB2NYY8tsaky8XqUK1DfCP63g2YSTJiYMyslZu0gx
         V2bffGhyNjaMCHdmAxMe775Z15ytSo1djaxqKqUTx+fsI/jj0ree/SD7NJULKVhB2Nqa
         AQup1ciMXzHg/FPrJuwi78O8UXCalkEetRr92vr/JiWC5VOPTzf3uU22lZcU5GXgR2YC
         0zgAutmFe7evozMlZHDYvsSbseq4i1KZWafdfy27QFNn1KI72QywNz0J4GI5/jmZwws2
         2Wgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cqantoaZonPlYgGQGR7qFyyvdL6723k4g+GFmT1ALoA=;
        b=hu9tgjt7JyHWMl0GuSB3XU8y3M3//iygRuYme7Oh2sPyCAwDNLKNmRpKtCbEkfG+t5
         mXA5j/uwWeU/n16R5AmTzrax2uXuqWmJadeZQFlHqkb23emAe7NS8EC6EOIxxGjIokpz
         VCaS1C7dSb81rsu9fmeIzUksnD1KnhL7FJIfQeAjQive253MFxWfW1qIZaL2PZEzGMrs
         DS8ZzfF5VOB2EQcnzgNXX1HNucJxgY6bLO8tk82SEXMmzoFdlkBlttgYR3zYy/Nlq+Qc
         +og/iJXLv7jyAnV4Oy/WTBtOYrbKYEK5GRMF3ngWg8urxrMIos/vbivpMNBe6xwwyROA
         FLGw==
X-Gm-Message-State: ACrzQf2ARa093iRmW6KWtuc6Z9KqN3uQTuxDQGycIK5auhbmhvVnqTXM
	7mMmltTYY8//9d95rkqxde8=
X-Google-Smtp-Source: AMsMyM6c5WXfjncBULc9UHk40SqYvDt4Kb9Si4N5vVusfF5PksVcJ9qxCRe6Sa/luSlMl9vyH2DM4A==
X-Received: by 2002:a05:622a:1191:b0:394:a7a2:7a3e with SMTP id m17-20020a05622a119100b00394a7a27a3emr13738039qtk.344.1665385814014;
        Mon, 10 Oct 2022 00:10:14 -0700 (PDT)
Received: from p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de (p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de. [2003:f6:ef03:6f00:5de6:a4d0:d791:ed01])
        by smtp.gmail.com with ESMTPSA id i16-20020ac87650000000b0035d5e5660cbsm7864005qtr.59.2022.10.10.00.10.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Oct 2022 00:10:13 -0700 (PDT)
Message-ID: <4059bf5b8a6d6bc2b5edab7eb447503e6a6b639b.camel@gmail.com>
Subject: Re: [PATCH v2 16/16] iio: core: move 'mlock' to 'struct
 iio_dev_opaque'
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, Nuno =?ISO-8859-1?Q?S=E1?=
	 <nuno.sa@analog.com>
Cc: linux-amlogic@lists.infradead.org, linux-imx@nxp.com, 
 linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Shawn Guo <shawnguo@kernel.org>, Lars-Peter
 Clausen <lars@metafoo.de>, Jyoti Bhayana <jbhayana@google.com>, Hans de
 Goede <hdegoede@redhat.com>, Andriy Tryshnivskyy
 <andriy.tryshnivskyy@opensynergy.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Miquel Raynal <miquel.raynal@bootlin.com>, Cixi
 Geng <cixi.geng1@unisoc.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Ciprian Regus <ciprian.regus@analog.com>, Fabio Estevam
 <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, Alexandru
 Ardelean <aardelean@deviqon.com>,  Florian Boor
 <florian.boor@kernelconcepts.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Orson Zhai <orsonzhai@gmail.com>, Chen-Yu
 Tsai <wens@csie.org>, Chunyan Zhang <zhang.lyra@gmail.com>, Vladimir
 Zapolskiy <vz@mleia.com>, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Haibo Chen <haibo.chen@nxp.com>,
 Kevin Hilman <khilman@baylibre.com>
Date: Mon, 10 Oct 2022 09:11:32 +0200
In-Reply-To: <20221009131923.2cc18d37@jic23-huawei>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	 <20221004134909.1692021-17-nuno.sa@analog.com>
	 <20221009131923.2cc18d37@jic23-huawei>
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221010_001017_285748_8A66323C 
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU3VuLCAyMDIyLTEwLTA5IGF0IDEzOjE5ICswMTAwLCBKb25hdGhhbiBDYW1lcm9uIHdyb3Rl
Ogo+IE9uIFR1ZSwgNCBPY3QgMjAyMiAxNTo0OTowOSArMDIwMAo+IE51bm8gU8OhIDxudW5vLnNh
QGFuYWxvZy5jb20+IHdyb3RlOgo+IAo+ID4gTm93IHRoYXQgdGhlcmUgYXJlIG5vIG1vcmUgdXNl
cnMgYWNjZXNzaW5nICdtbG9jaycgZGlyZWN0bHksIHdlIGNhbgo+ID4gbW92ZQo+ID4gaXQgdG8g
dGhlIGlpb19kZXYgcHJpdmF0ZSBzdHJ1Y3R1cmUuIEhlbmNlLCBpdCdzIG5vdyBleHBsaWNpdCB0
aGF0Cj4gPiBuZXcKPiA+IGRyaXZlcidzIHNob3VsZCBub3QgZGlyZWN0bHkgdGhpcyBsb2NrLgo+
ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cuY29tPgo+IFRo
aXMgbG9va3MgZ29vZCB0byBtZS4gCj4gU28gc2VyaWVzIHdpc2UsIEkgdGhpbmsgSSd2ZSBwaWNr
ZWQgdXAgMS0xMi4gCj4gVG8gcmVzb2x2ZSBpcyByZW1haW5pbmcgZGlzY3Vzc2lvbiBwbHVzIHRo
ZSBtaXNzbWF0Y2ggaW4gZnVuY3Rpb24KPiBuYW1lIHZzCj4gY29tbWVudCBpbiAxMy4KPiAKClNv
LCBJIHRoaW5rIHdlIGFyZSBtaXNzaW5nIGFuIGltcHJvdmVtZW50IG9uIHRoZSBjb21taXQgbWVz
c2FnZSBmb3IKcGF0Y2ggMTQgKGFib3V0IHNoYWRvd2luZyB0aGUgZXJyb3IgY29kZSkgYW5kIGZp
eGluZyB0aGUgZnVuY3Rpb24KbmFtZS4uCj4gVGhhbmtzIGZvciBnZXR0aW5nIHRoaXMgdGlkaWVk
IHVwIcKgIEl0J3MgdGhlIGVuZCBvZiBhIHZlcnkgbG9uZwo+IHByb2Nlc3MuCj4gSSBhbG1vc3Qg
ZmVlbCBsaWtlIHdlIG5lZWQgYSBwYXJ0eSAtIHRoZXJlIHdvdWxkIGJlIGEgcXVpdGUgYSBjcm93
ZAo+IGdpdmVuCj4gaG93IG1hbnkgcGVvcGxlIGhhdmUgYmVlbiBpbnZvbHZlZCBpbiB0aGlzIGVm
Zm9ydCBvdmVyIHRoZSB5ZWFycy4gOikKPiAKClN1cmUsIGhhcHB5IHRvIGhlbHAhIFRoaXMgb25l
IGZlbHQgbGlrZSBzb21ldGhpbmcgdGhhdCB3ZSByZWFsbHkgbmVlZAp0byB0YWtlIGNhcmUgOikK
Ci0gTnVubyBTw6EKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
