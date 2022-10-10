Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 743B7C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Oct 2022 07:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nUyKlsBacnJBNHzv3AGpGQIaijp2t01vK+Jvi5c6EXs=; b=BUKwRb03VxwIp1
	yH8q3S6X1xv6j3MgogX4mwNsxho6klbgg/MbIdKXm3GcPRHkH/WcKQiL/lkQaDOzVeSjfVxrOy6As
	eepm3CQ3J9vwU3RtZqjx/4y7jI6oT0rGHS3NQ+3Dj7HxLRM1iWfTYaHJubympclI2pC//KRwG8HVH
	2EQCXSsZgZXDNc0z0VILiso0KDGvTNZUG4Yr8Zw7oTqy1q4sWVNxtbmraRVPZU8n2YXNrcjmZH6y+
	OFZsEFLSXQU7zs+xFQAe777+BC4oYvd4QQWE6nIUhRoX2zLBQkLV1Qk9mYysJliJKcb0t9iIcq5Ns
	B2E+Rw9AmFDnGZkGj+bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmoF-00HJVd-RX; Mon, 10 Oct 2022 07:02:43 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmo3-00HJSa-Ba; Mon, 10 Oct 2022 07:02:33 +0000
Received: by mail-qk1-x72d.google.com with SMTP id x25so2558699qki.2;
        Mon, 10 Oct 2022 00:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3yT0ctdZydc+N40TPk8vYFwq0X5hY6hPQZEk2eDVw70=;
        b=hPG3MIllA4/bctpkcrIFqmmy2fPX7ndGoe/454jMNR3Jkb9XF5kEprHDarMWao/enM
         OPtKMe8HpjiYqarFWAmEP/Zwcff2Y1ekewl8XmC/dvF+faQ7JqA5dAx2TmlH9XDVyoO4
         1ug4utdGLrgVMfOcRKxDJfnJ0G7oDe2U/YIqiRLOTG+c9quEHL8ym29ACJfoEaHJDVJV
         E91NW7r5AKWoj1eUOPaiqdJV25W6LiiDpNGGA9/AO+Lm557bxs/OTXEH28992KxMYh4f
         cQAYihaqIuuwsjZBNjqPHKk9Jo2LiCZ9U/xSmtKzT/r4WW4+o5rEJHn7iQkng8y78J0q
         r2Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3yT0ctdZydc+N40TPk8vYFwq0X5hY6hPQZEk2eDVw70=;
        b=GCxz7FkcJaLTJMf8bZTkgMt2FHz0NncSonyalbUETDim50ILABRhicL8xhjloFmzJZ
         lnhVtrPbQrPJXSx+K7yctN+eCL99TL2mU/m1Pqb+he+dWoJjQA+Y6qAbNgdpRBjzRTHI
         GnvcXR15nVudzR59Cy+y6WofeHL8c85Y59AuawgSwP9NNUH2F0uXXkjr37cfIwLW+gOB
         L2H+vNkBwy6H9RKRw7j1cDaymEetuLv6hXbUwQQEB5YSKmYBhVxHr/raI+wUald6HLHa
         cLxAb8vP4RTyaTsMd8jUfbwtNvzTPLJesDzKZ2NQrsqZHeA+E+hkjRApaVuWmrGNf5O7
         oKvg==
X-Gm-Message-State: ACrzQf03J52MQcj88TYctUpQkpvcRhrH6Km9cNbqBuPUhoKSKcnPwVGL
	lT3hQw+U3lA8elh1Ee+mCAU=
X-Google-Smtp-Source: AMsMyM7KfTRmJnXydAYbJgREbLJNimSTnmeCiAGcC+LyfonBwqydRnZBDe0+CQJF9ZRflMHJzX0Vuw==
X-Received: by 2002:a05:620a:318a:b0:6ce:732a:f92 with SMTP id bi10-20020a05620a318a00b006ce732a0f92mr11728995qkb.347.1665385347394;
        Mon, 10 Oct 2022 00:02:27 -0700 (PDT)
Received: from p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de (p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de. [2003:f6:ef03:6f00:5de6:a4d0:d791:ed01])
        by smtp.gmail.com with ESMTPSA id i13-20020a05620a248d00b006b5e296452csm9649652qkn.54.2022.10.10.00.02.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Oct 2022 00:02:26 -0700 (PDT)
Message-ID: <73e43d55f76216d3cb720d687d1510e626997f0f.camel@gmail.com>
Subject: Re: [PATCH v2 13/16] iio: core: introduce
 iio_device_{claim|release}_buffer_mode() APIs
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, Nuno =?ISO-8859-1?Q?S=E1?=
 <nuno.sa@analog.com>, linux-amlogic@lists.infradead.org, linux-imx@nxp.com,
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
 <haibo.chen@nxp.com>, Kevin Hilman <khilman@baylibre.com>
Date: Mon, 10 Oct 2022 09:03:44 +0200
In-Reply-To: <20221009124120.39a43103@jic23-huawei>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	 <20221004134909.1692021-14-nuno.sa@analog.com>
	 <CAHp75VfmMWonUV1jahbAmBZJixfdxA=ZAm-NNt7XiO+RDbupyg@mail.gmail.com>
	 <609d7e50d76a2a2aa2bbaddfed8a846c91854065.camel@gmail.com>
	 <20221009124120.39a43103@jic23-huawei>
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221010_000231_431887_2B8B4084 
X-CRM114-Status: GOOD (  20.32  )
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

T24gU3VuLCAyMDIyLTEwLTA5IGF0IDEyOjQxICswMTAwLCBKb25hdGhhbiBDYW1lcm9uIHdyb3Rl
Ogo+IE9uIFdlZCwgMDUgT2N0IDIwMjIgMTA6Mzc6MzkgKzAyMDAKPiBOdW5vIFPDoSA8bm9uYW1l
Lm51bm9AZ21haWwuY29tPiB3cm90ZToKPiAKPiA+IE9uIFR1ZSwgMjAyMi0xMC0wNCBhdCAxNzow
OCArMDMwMCwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgo+ID4gPiBPbiBUdWUsIE9jdCA0LCAyMDIy
IGF0IDQ6NDkgUE0gTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KPiA+ID4gd3JvdGU6wqAg
Cj4gPiA+ID4gCj4gPiA+ID4gVGhlc2UgQVBJcyBhcmUgYW5hbG9nb3VzIHRvIGlpb19kZXZpY2Vf
Y2xhaW1fZGlyZWN0X21vZGUoKSBhbmQKPiA+ID4gPiBpaW9fZGV2aWNlX3JlbGVhc2VfZGlyZWN0
X21vZGUoKSBidXQsIGFzIHRoZSBuYW1lIHN1Z2dlc3RzLAo+ID4gPiA+IHdpdGgKPiA+ID4gPiB0
aGUKPiA+ID4gPiBsb2dpYyBmbGlwcGVkLiBXaGlsZSB0aGlzIGxvb2tzIG9kZCBlbm91Z2gsIGl0
IHdpbGwgaGF2ZSBhdAo+ID4gPiA+IGxlYXN0Cj4gPiA+ID4gdHdvCj4gPiA+ID4gdXNlcnMgKGlu
IGZvbGxvd2luZyBjaGFuZ2VzKSBhbmQgaXQgd2lsbCBiZSBpbXBvcnRhbnQgdG8gbW92ZQo+ID4g
PiA+IHRoZQo+ID4gPiA+IGlpbwo+ID4gPiA+IG1sb2NrIHRvIHRoZSBwcml2YXRlIHN0cnVjdC7C
oCAKPiA+ID4gCj4gPiA+IC4uLgo+ID4gPiDCoCAKPiA+ID4gPiAraW50IGlpb19kZXZpY2VfY2xh
aW1fYnVmZmVyX21vZGUoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldikKPiA+ID4gPiArewo+ID4g
PiA+ICvCoMKgwqDCoMKgwqAgbXV0ZXhfbG9jaygmaW5kaW9fZGV2LT5tbG9jayk7Cj4gPiA+ID4g
Kwo+ID4gPiA+ICvCoMKgwqDCoMKgwqAgaWYgKGlpb19idWZmZXJfZW5hYmxlZChpbmRpb19kZXYp
KcKgIAo+ID4gPiAKPiA+ID4gRG8geW91IG5lZWQgdG8gYW5ub3RhdGUgdGhlc2UgdHdvIEFQSXMg
dG8gbWFrZSBzcGFyc2UgaGFwcHkgYWJvdXQKPiA+ID4gbG9ja2luZyBiYWxhbmNlPwo+ID4gPiAK
PiA+ID4gKFRyeSB0byBydW4gYG1ha2UgVz0xIEM9MSAuLi5gIHdpdGggeW91ciBwYXRjaGVzIGFu
ZCBsb29rIGlmIGFueQo+ID4gPiBuZXcKPiA+ID4gd2FybmluZ3MgYXBwZWFyLinCoCAKPiA+IAo+
ID4gbWFrZSBXPTEgQz0xIGRyaXZlcnMvaWlvL2luZHVzdHJpYWxpby1jb3JlLm8KPiA+ICPCoCBV
UETCoMKgwqDCoCBpbmNsdWRlL2NvbmZpZy9rZXJuZWwucmVsZWFzZQo+IAo+IC4uLgo+IAo+ID4g
ZHJpdmVycy9paW8vaW5kdXN0cmlhbGlvLWNvcmUuYzoyMTAwOiB3YXJuaW5nOiBleHBlY3Rpbmcg
cHJvdG90eXBlCj4gPiBmb3IKPiA+IGlpb19kZXZpY2VfY2xhaW1fYnVmZmVyZWRfbW9kZSgpLiBQ
cm90b3R5cGUgd2FzIGZvcgo+ID4gaWlvX2RldmljZV9jbGFpbV9idWZmZXJfbW9kZSgpIGluc3Rl
YWQKPiAKPiBUaGF0IG9uZSB3YW50cyBmaXhpbmcgYXMgdGhpcyBwYXRjaCBpbnRyb2R1Y2VzIGl0
Lgo+IAoKQmFoLCBUaGF0J3Mgd2h5IGFub3RoZXIgcGFpciBvZiBleWVzIGlzIHVzZWZ1bC4uLiBJ
IGxvb2tlZCBmb3IgdGhhdAp3YXJuaW5nIHdpdGhvdXQgc2VlaW5nIHdoYXQgaXQgd2FzIGNvbXBs
YWluaW5nIGFib3V0LiBOb3csIEkgY291bGQKZmluYWxseSBzZWUgaXQgOikKCi0gTnVubyBTw6EK
PiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
