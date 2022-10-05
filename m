Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E03A7C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Oct 2022 08:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q7XSJaA+VqjV8RXnhGCcd41ufsZvk7fmpLqQvstBVH0=; b=X38LbfJ/Zm/D86
	Uu/jbmfl4A2SR7sNUnja8WlLi0JwDO9InZ/zD0MBGaxMjQiYtjcyUbXbqUkuhow95MAjplGDLe6Er
	C20m8I9hlnCx71G+reWmrHQIf9kFwJZJ0jb5s+XblS6Us1sEEzjIRI2aQESQExjaQ/QbQZKSprbL+
	PAZPTZL7CeetsU9V1Bsy4ZhM8y4Jt6i3N7EMex/4++g8ffJr06dp0d5QkpU86uEhCg7SBOUzmNWI6
	WkC1uQsVcB+vRN/qQuAY/KhY1VReiktnkL+8PP3PUjPkCm9NvIbDag7mm1T9WOgH8gZfmmWG3OcaE
	J3UXcpEfIAm+ATozRpqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofzS9-00CyAF-Bq; Wed, 05 Oct 2022 08:08:29 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofzRx-00Cy5k-Pt; Wed, 05 Oct 2022 08:08:19 +0000
Received: by mail-qt1-x835.google.com with SMTP id ay9so9536714qtb.0;
        Wed, 05 Oct 2022 01:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date;
        bh=IO0LVild74/mfqPHFPHXSTTABQ/rsCldzeWn8+3PjVQ=;
        b=FDZS9qui2faSwsVV3cjLcPNwh5vsiqPsdCwLDXNl0yxJIyVDli1zLYa+oNLoXPPHI/
         Dd/VQBOyE8zbVD2Geveu+3RKwrkpzTm5a59cYGdaQFEwVAtfIFGPDYeML4r7dwsTBBjf
         MnP+Dv0jWIeJAEeh9gvEQ19l4M9AkVncsF/hh9FicRwkveEyc++kxasALszHJa2heKRL
         YVCG3BtLN8TfKLc3hWPZlKfF9myql3b0me1uh6QBcNA3lwTMPhyXcK3Sm6AAGGOZAF/P
         bLZTxwE+bnXD84w7uIgYU+FIdRHp9mj0JRdQIkf1B69Ro8+uLKYH4f+FOZUvcYLuqGRX
         ZcEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date;
        bh=IO0LVild74/mfqPHFPHXSTTABQ/rsCldzeWn8+3PjVQ=;
        b=OyW9680QUFzhEDJtubuKtZ5wNrQ9Cl0OdBFjk5bJ0z2EPzqoJm1Hp6E4ZLt8Uc0ruD
         3gkEVq0hXMYqhr9dAj57eNK/A0TlRwMEtdhrYZFEGAIuJ8W5dWGtGIsJTlL4RVhu5g42
         2N7cnhRnMKhDfaK1e0QG4mrTeEV++VwjA0DP9ytHHU9M0ox0C2JGTiNkBNPqgyHzq6N/
         pd1MagTKgvIliLo87xjK+4QAyaeZH4Cnkcl81JeutugpOItPDnLbJjuYcIDL1ggdnXjr
         aKi9LLDeshJjAJMprcQE+TcKMRHhDbx5NXYUrYse7Mxmi/5RMOoxBfP+2DjQghEUjmrX
         jbPA==
X-Gm-Message-State: ACrzQf3KgZo2hGpbk9FyBlyNK/nHLIl8jhsH8POnsFETFGlrYiDHnP2B
	Dv9Joxm9SuxJPUgE2CczFGI=
X-Google-Smtp-Source: AMsMyM7KKu8RFTXOAcGz3XKD+YAlWeFFXKBbyfKnT8ZDlqUqQ5OtmZQODuuWcH2Ct9njCTWQP0/z4Q==
X-Received: by 2002:ac8:5887:0:b0:35b:b700:8990 with SMTP id t7-20020ac85887000000b0035bb7008990mr22423332qta.450.1664957292793;
        Wed, 05 Oct 2022 01:08:12 -0700 (PDT)
Received: from p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de (p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de. [2003:f6:ef03:6f00:5de6:a4d0:d791:ed01])
        by smtp.gmail.com with ESMTPSA id dm42-20020a05620a1d6a00b006e2f0ebad01sm872757qkb.113.2022.10.05.01.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Oct 2022 01:08:11 -0700 (PDT)
Message-ID: <0bad9d1ef45d0a85b7d25a4ee50914ea93936bb2.camel@gmail.com>
Subject: Re: [PATCH v2 14/16] iio: health: max30100: do not use internal
 iio_dev lock
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>, Nuno =?ISO-8859-1?Q?S=E1?=
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
 Zapolskiy <vz@mleia.com>, Jerome Brunet <jbrunet@baylibre.com>, Haibo Chen
 <haibo.chen@nxp.com>, Kevin Hilman <khilman@baylibre.com>, Jonathan Cameron
 <jic23@kernel.org>
Date: Wed, 05 Oct 2022 10:09:29 +0200
In-Reply-To: <CAHp75Vfv4BntoDPOo_MXZ33dVEKYj1KW_Ocd5QL_Ez06HJ33iw@mail.gmail.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	 <20221004134909.1692021-15-nuno.sa@analog.com>
	 <CAHp75Vfv4BntoDPOo_MXZ33dVEKYj1KW_Ocd5QL_Ez06HJ33iw@mail.gmail.com>
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_010817_864344_1CBA4421 
X-CRM114-Status: GOOD (  16.40  )
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

T24gVHVlLCAyMDIyLTEwLTA0IGF0IDE3OjEzICswMzAwLCBBbmR5IFNoZXZjaGVua28gd3JvdGU6
Cj4gT24gVHVlLCBPY3QgNCwgMjAyMiBhdCA0OjQ5IFBNIE51bm8gU8OhIDxudW5vLnNhQGFuYWxv
Zy5jb20+IHdyb3RlOgo+ID4gCj4gPiBUaGUgcGF0dGVybiB1c2VkIGluIHRoaXMgZGV2aWNlIGRv
ZXMgbm90IHF1aXRlIGZpdCBpbiB0aGUKPiA+IGlpb19kZXZpY2VfY2xhaW1fZGlyZWN0X21vZGUo
KSB0eXBpY2FsIHVzYWdlLiBJbiB0aGlzIGNhc2UsCj4gPiBpaW9fYnVmZmVyX2VuYWJsZWQoKSB3
YXMgYmVpbmcgdXNlZCBub3QgdG8gcHJldmVudCB0aGUgcmF3IGFjY2Vzcwo+ID4gYnV0IHRvCj4g
PiBhbGxvdyBpdC4gSGVuY2UsIGxldCdzIG1ha2UgdXNlIG9mIHRoZSBuZXcKPiA+IGlpb19kZXZp
Y2VfY2xhaW1fYnVmZmVyX21vZGUoKSBBUEkgdG8gbWFrZSBzdXJlIHdlIHN0YXkgaW4gYnVmZmVy
ZWQKPiA+IG1vZGUKPiA+IGR1cmluZyB0aGUgY29tcGxldGUgcmVhZC4KPiAKPiAuLi4KPiAKPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChpaW9fZGV2aWNlX2NsYWltX2J1ZmZl
cl9tb2RlKGluZGlvX2RldikpIHsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcmV0ID0gLUVBR0FJTjsKPiAKPiBXaHkgaXMgdGhlIGVycm9yIGNvZGUg
c2hhZG93ZWQ/IElzbid0IGl0IGJldHRlciB0byByZXR1cm4gZXhhY3RseSB0aGUKPiBvbmUgeW91
IHJlc2VuZCB0byB0aGUgdXBwZXIgY2FsbGVyKHMpPyBFYWNoIHVuY2xlYXIgZXJyb3IgY29kZQo+
IHNoYWRvd2luZyBzaG91bGQgYmUgYXQgbGVhc3QgZXhwbGFpbmVkLgo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgIH0KCkknbSBrZWVwaW5nIHRoZSBzYW1lIGVycm9yIHRoYXQgd2FzIHJldHVybmVkIGJl
Zm9yZS4gQ2hhbmdpbmcgdGhlIGVycm9yCmNvZGUgcmV0dXJuZWQgdG8gdXNlcnNwYWNlIGNhbiBi
cmVhayBzb21lIGFwcHMgcmVseWluZyBvbiBpdC4gQnV0IGlmCmV2ZXJ5b25lIGlzIG9rIHdpdGgg
YXNzdW1pbmcgdGhlIHJpc2sgYW5kIGNoYW5naW5nIGl0LCBmaW5lIGJ5IG1lLgoKCi0gTnVubyBT
w6EKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
