Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8FF8C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 15:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfU8HBEGhQFE0dPlSAk+JFKvpB/awAH3Vb2vvCMSR00=; b=pfVIhY7LKIKezq
	IqclgU80dNSS5biPBIEVpe9IadXjx01AECKu0BuQXsFZQAOzHz0c8QcGBmCV1tjyCC1HmV/D5nMmu
	JscjkgzvCWBQxgNoZsszGAgQ+Zw2I957SOflLZ+rDJLYPPrevNfgo6coqHwB9PC7uLHaZ10ROrbFz
	5a3XiTL/0o9YWTrTJILdmsnftekCNU1Zu8ga0ROZvJ2rkqKjre2kwLe4fQFz7HtaezrUyDIjPs4FK
	iscnBfkoPWBBkDu692PAnUoX4CWXCcm0qCRNT+IOHg6w6Jw2pJZfTC7WYQraSsofnou9HfB3QSP2J
	4tI7l1kPGIXWfp1eP76A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaewC-004lJo-Ky; Tue, 20 Sep 2022 15:13:28 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaevx-004l8t-P9; Tue, 20 Sep 2022 15:13:15 +0000
Received: by mail-qk1-x736.google.com with SMTP id o7so1804537qkj.10;
        Tue, 20 Sep 2022 08:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=H/fELBq8CrA1DvGdURv9OEhTBXymuyG0Ndt8d3ITimI=;
        b=odqvhHE4k7/usvdUB+d9hXNls03VbsjsLLXsqVMWrIxb23eU4DkX5vrM83VTLppWKR
         ymCHStOYHe2be/kpoRTfwTZRUih7KT3hKhI+EwPdNWOworFuN5vnqpv5ga5Q2CmWxQI4
         vBZbTCdhXulCvdJxEBXNPZsjosvrBDFPMj8wZ+qAhGlKaVpt5KG0lES84qXE7u/zCbrD
         gxEWm2RSk2S9pVLQtOYUlYm/2H7Oe6Qw5ll0092KQVutYVagKSLJ+FsgJOq9N9cKYiY4
         7feqMG6EocZdNCOboZ/98Q0ELa4zmBDN6KPGZHkN6mjeGrt2rbZIjbOCIO66f138shzq
         hK0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=H/fELBq8CrA1DvGdURv9OEhTBXymuyG0Ndt8d3ITimI=;
        b=28rgGr7w1nn47qjssM/9dcyceIE91yuwzh7MNoMsO6X/4rkPaKOr9QLbNuEDHmN0RQ
         ++GZsN/yGaG7pBV81pPchYu5LjlJhd8PWR9bYzNQ4Um9CcHPWJ+I0ufShqJK/2zopWIM
         hVPo328mZ5mM9JjdyU3mMNDULqEgyeAyan+nuD9IBEz1c5PWV4yGiX/4yT/OZ8hGjUwN
         zMreYjJXgWkcPKB1yWRrjNVrqM7YR9S97reYQfh7wvyL4yzvDbAZcRoIqlcW5XeSlmA+
         eFEdzK8qvzU7pHGEdjrUq8MN3dl5g8yyb8MYkbzrvPeKjvBlXFMgaFemY3BC4Ii3ZUG4
         vQgA==
X-Gm-Message-State: ACrzQf1D/jKbEupbAw2gOwquvganJ2h/0+mNm98Mm1MJUg3s+BL+rC6N
	A/8VFaKyO5+3FKyVDbd3pxkMBUTAuRQr/6V9Bq4=
X-Google-Smtp-Source: AMsMyM7fL5q6SxxEBDkVEF8PUG8Ss/gYOHVmtrul7fepLnHVvvy+tkwmPheD5VX2p+fX+A0Nn5TkJJig9fnXZsuGYMI=
X-Received: by 2002:a05:620a:410e:b0:6bc:5cdc:88ec with SMTP id
 j14-20020a05620a410e00b006bc5cdc88ecmr17318786qko.734.1663686786455; Tue, 20
 Sep 2022 08:13:06 -0700 (PDT)
MIME-Version: 1.0
References: <20220920112821.975359-1-nuno.sa@analog.com> <20220920112821.975359-4-nuno.sa@analog.com>
 <CAHp75VeA48FbKy2uUjW4T19=Vn-UEznT7prkXZq4sdZ4Q9o-YA@mail.gmail.com>
 <SJ0PR03MB6778FFE254E9DDC103258FE8994C9@SJ0PR03MB6778.namprd03.prod.outlook.com>
 <CAHp75VdVbkXCC1PpT4h-+4HHpZX-zK34xH9dVG8vGcpQhXaQHQ@mail.gmail.com>
 <CAHp75VfdUOTd9tRXdTVq_prNf_T2=iQ4tEjusHC=gXDZvb3Qeg@mail.gmail.com> <SJ0PR03MB6778EEF81693C026CE131B49994C9@SJ0PR03MB6778.namprd03.prod.outlook.com>
In-Reply-To: <SJ0PR03MB6778EEF81693C026CE131B49994C9@SJ0PR03MB6778.namprd03.prod.outlook.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 20 Sep 2022 18:12:30 +0300
Message-ID: <CAHp75VdT0a2DevybjT4HN8xGFrKzrR0sPXA6P89xnBg1xcqbQA@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20220920_081313_850978_0727B636 
X-CRM114-Status: GOOD (  22.76  )
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

T24gVHVlLCBTZXAgMjAsIDIwMjIgYXQgNDo0NiBQTSBTYSwgTnVubyA8TnVuby5TYUBhbmFsb2cu
Y29tPiB3cm90ZToKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBBbmR5
IFNoZXZjaGVua28gPGFuZHkuc2hldmNoZW5rb0BnbWFpbC5jb20+Cj4gPiBTZW50OiBUdWVzZGF5
LCBTZXB0ZW1iZXIgMjAsIDIwMjIgMzozOSBQTQo+ID4gT24gVHVlLCBTZXAgMjAsIDIwMjIgYXQg
NDozNyBQTSBBbmR5IFNoZXZjaGVua28KPiA+IDxhbmR5LnNoZXZjaGVua29AZ21haWwuY29tPiB3
cm90ZToKPiA+ID4gT24gVHVlLCBTZXAgMjAsIDIwMjIgYXQgNDoxOCBQTSBTYSwgTnVubyA8TnVu
by5TYUBhbmFsb2cuY29tPiB3cm90ZToKPiA+ID4gPiA+IE9uIFR1ZSwgU2VwIDIwLCAyMDIyIGF0
IDI6MjggUE0gTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KPiA+IHdyb3RlOgo+ID4KPiA+
IC4uLgo+ID4KPiA+ID4gPiA+ID4gICAgICAgICBpbmZvID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsK
PiA+ID4gPiA+ID4gKyAgICAgICBtdXRleF9pbml0KCZpbmZvLT5sb2NrKTsKPiA+ID4gPiA+ID4g
ICAgICAgICBpbmZvLT5pcnEgPSBwbGF0Zm9ybV9nZXRfaXJxKHBkZXYsIDApOwo+ID4gPiA+ID4g
PiAgICAgICAgIGlmIChpbmZvLT5pcnEgPCAwKQo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAg
cmV0dXJuIGluZm8tPmlycTsKPiA+ID4gPiA+Cj4gPiA+ID4gPiBDb25zaWRlciBpbml0aWFsaXpp
bmcgaXQgYXMgbGF0ZSBhcyBwb3NzaWJsZSwgbGlrZSBhZnRlciBJUlEgcmV0cmlldmFsCj4gPiA+
ID4gPiBpbiB0aGlzIGNvbnRleHQgKG1heWJlIGV2ZW4gZGVlcGVyLCBidXQgbm8gY29udGV4dCBh
dmFpbGFibGUpLiBEaXR0bwo+ID4gPiA+ID4gZm9yIHRoZSByZXN0IG9mIHRoZSBzZXJpZXMuCj4g
PiA+ID4KPiA+ID4gPiBBbnkgc3BlY2lhbCByZWFzb24gZm9yIGl0IChtYXliZSByZWxhdGVkIHRv
IGxvY2tkZXAgOndvbmRlcmluZzogKSA/IEp1c3QKPiA+ID4gPiBjdXJpb3VzIGFzIEkgbmV2ZXIg
bm90aWNlZCBzdWNoIGEgcGF0dGVybiB3aGVuIGluaXRpYWxpemluZyBtdXRleGVzLgo+ID4gPgo+
ID4gPiBZZXMuIE1pY3JvLW9wdGltaXphdGlvbiBiYXNlZCBvbiB0aGUgcnVsZSAiZG9uJ3QgY3Jl
YXRlIGEgcmVzb3VyY2UgaW4KPiA+ID4gY2FzZSBvZiBrbm93biBlcnJvciIuCj4gPiA+Cj4gPiA+
IE9UT0gsIHlvdSBoYXZlIHRvIGJlIHN1cmUgdGhhdCB0aGUgbXV0ZXggKGFuZCBnZW5lcmFsbHkg
c3BlYWtpbmcgYQo+ID4gPiBsb2NraW5nKSBzaG91bGQgYmUgaW5pdGlhbGl6ZWQgZWFybHkgZW5v
dWdoLgo+Cj4gVHlwaWNhbGx5IG5vdCByZWFsbHkgbmVlZGVkIGR1cmluZyBwcm9iZS4uLgoKQWN0
dWFsbHkgYXMgbG9uZyBhcyB5b3UgZXhwb3NlIHRoZSBBQkkgdG8gdGhlIHVzZXIgYW55dGhpbmcg
Y2FuCmhhcHBlbiwgbWVhbnMgdGhhdCB5b3VyIGNvZGUgc2hvdWxkIGJlIHJlYWR5IHRvIHJlY2Vp
dmUgdGhlIHJlcXVlc3RzCmluIGFueSBwb3NzaWJsZSBjYWxsYmFja3MgLyBmaWxlIG9wcy4gU2Ft
ZSBhcHBsaWVzIHRvIHRoZSBJUlEgaGFuZGxlci4KU28gaXQncyB2ZXJ5IGltcG9ydGFudCB0byBp
bml0aWFsaXplIGxvY2tpbmcganVzdCBpbiB0aW1lLiBIZW5jZSBJIGNhbgpzYXkgdGhhdCAidHlw
aWNhbGx5IGl0IG5lZWRzIHRvIGJlIGNhcmVmdWxseSBwbGFjZWQiLgoKPiA+IE5vdGUgdGhhdCAi
bWljcm8iIGluIHRoZSBhYm92ZSBjYW4gYmUgbXVsdGlwbGllZCBieSAnaycsIHdoZXJlICdrJyBp
cwo+ID4gdGhlIGFtb3VudCBvZiBkZWZlcnJlZCBwcm9iZXMgKHByb2JhYmx5IG5vdCB0aGUgY2Fz
ZSBoZXJlLCBidXQgYWdhaW4sCj4gPiAiZ2VuZXJhbGx5IHNwZWFraW5nIikuCj4KPiBXZWxsLCBJ
IGRvbid0IHRoaW5rICdtdXRleF9pbml0KCknIGRvZXMgdGhhdCBtdWNoIHRoYXQgcmVhbGx5IG1h
dHRlcnMgaW4KPiB0aGVzZSBwYXRjaGVzIGJ1dCBvaywgdGhhdCBydWxlIGlzIGluZGVlZCBhIGdv
b2QgcHJhY3RpY2UgdGhhdCBzb21ldGltZXMKPiBtYWtlcyBhIGRpZmZlcmVuY2UuIEFuZCBzaW5j
ZSBJIHdpbGwgZGVmaW5pdGVseSBuZWVkIGEgdjIsIEkgY2FuIG1ha2UgdGhhdAo+IGNoYW5nZS4g
V2hlcmUgYXBwbGljYWJsZSwgdGhlIGJlc3QgcGxhY2UgaXMgcHJvYmFibHkgYmVmb3JlIHJlZ2lz
dGVyaW5nIHRoZQo+IElJTyBkZXZpY2UuLi4KClNvbWUgZHJpdmVycyBhcmUgcGVkYW50aWMgYW5k
IHdhbnQgdG8gaGF2ZSBtdXRleF9kZXN0cm95KCkgdG8gYmUKY2FsbGVkLCBpdCBhbHNvIHJlZHVj
ZXMgdGhlIHN1cmZhY2Ugb2YgcmV0dXJuaW5nIHdpdGggYW4gdW5kZXN0cm95ZWQKb2JqZWN0IChs
ZXQncyBub3QgZGlzY3VzcyB0aGUgdXNlZnVsbmVzcyBvZiBzdWNoIGRlc3RydWN0aW9uLCBidXQg
aW4KcHJpbmNpcGxlKS4KCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
