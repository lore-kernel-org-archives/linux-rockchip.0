Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED61DC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Oct 2022 08:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RK0mOK42uui+rAorMwklStpALJaFzzzbxZ1LCk6WCBs=; b=ffiJcT66UBpwnw
	yDe5x+SufQqOM1f1y6+T4JWXbVNGHGA9WyWOaEwe2ZXbkeOryLROsICP/17I7nr0KrPBNCgSBROsP
	hqsPYGri7IkgX9hnX/edeRYAdvO6wlx3xZ32HTWP7qeVUNbJyXaWiME5tMoG7dFi9V8QMReq10fob
	gL6mPuzHPHh6Uwni5brqy7Ry5+xp6Xcm+vVNrLAABXDe2q9I/kwtuHlDoDtwOmVJVbFTzrMX2E8gR
	+U47uCzv9nBUq3hGlSX4ZfJ708ib+yyRmdwAtv54JKJcXujgnH4YNiPlALBfiPc5rfT7hm8ZPCnyk
	lenadAoLMy02/OfqP9fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofzZN-00Czuu-HS; Wed, 05 Oct 2022 08:15:57 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofzZB-00Czp3-9F; Wed, 05 Oct 2022 08:15:46 +0000
Received: by mail-qt1-x82f.google.com with SMTP id g23so9532328qtu.2;
        Wed, 05 Oct 2022 01:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date;
        bh=tAPw4yEf6SHNItylvGA1OKl9dXOTYh49zTb3gddLagI=;
        b=hN3AR8nr0ypcbUd+d3GaDTtK0QyAJVmFiLOU72ULL3RAar+RsSMOTgplk4ILNXz1Zm
         zknUvcQ9jfm+Bsc6+yrBd7/mGeQp2VfW7NODyefMac6S925K67W7OZjoCVPb6IswdCqe
         w1ecnUoblAGDQ6j16fuAOp8r07av3QVqiOvTmi84vu1k8B7DPluszTydvkDQ9d3uYKFs
         Q+60s+MA5nj4arq/nLPmU6mCnHqCDjLnQSWEHyzTKbUGjvdfhb+1L6pBAucpQLMELmre
         uOoiIxsncH9PHrpKX04F1t400n2hWhCePDf082e26+xO44DluDU8ouS5ATm0h0iCWP0m
         FL6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date;
        bh=tAPw4yEf6SHNItylvGA1OKl9dXOTYh49zTb3gddLagI=;
        b=ZQtOtvBGj8JxPD6VOTqrwC5djgWRuR+ASgWx/rTU/3UWLVYtCIgmeAegDbIZMoLy55
         hMa93SYvPDvUon0Ft+lL3TFgoi2/hbS0C0ckbYwjYeDJikiF2ijJFxsm8DcviAG5u29w
         IRl3HciMVMyHUVBMS2xqG/rjAdArDABu2Hzxxg34fPi3v3B06v+12XPZLY3lPhefs+lR
         Zvs5nRIWyvzE5qEbuWg+ZqaXiRFz6jIc0bfw7/HDA+h9lHIg/9oUryY60olOv9JLW+XC
         Sg33VsX8qYRzrGvmauriAD3A0aVN3OUIevZKQ9KccFhwIFDYAW74JNdPO1lDYGVXwdyY
         3bzw==
X-Gm-Message-State: ACrzQf2A3M50oEbGpXx9+io+z5+mi9zvn1RDqruLXwqdB2egFilKous/
	zGrTmUV1toPSoM8ETW365js=
X-Google-Smtp-Source: AMsMyM7+mm1zQ34QC8GikFji+VHDdjcJmdbQ82iZxoJPrhQEawjnE996rvoGiMpoelrDKzjd/RtpdA==
X-Received: by 2002:a05:622a:252:b0:35d:482f:e105 with SMTP id c18-20020a05622a025200b0035d482fe105mr22690420qtx.92.1664957743172;
        Wed, 05 Oct 2022 01:15:43 -0700 (PDT)
Received: from p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de (p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de. [2003:f6:ef03:6f00:5de6:a4d0:d791:ed01])
        by smtp.gmail.com with ESMTPSA id z2-20020ac875c2000000b0035cf2995ad8sm13559089qtq.51.2022.10.05.01.15.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Oct 2022 01:15:42 -0700 (PDT)
Message-ID: <428661431e54744064946ced681cc0351d51d698.camel@gmail.com>
Subject: Re: [PATCH v2 15/16] iio: health: max30102: do not use internal
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
Date: Wed, 05 Oct 2022 10:17:00 +0200
In-Reply-To: <CAHp75VdiAzOUNMB3wD5og-uZi1W_7UWkqV6+s7jCxpaBs1VWRQ@mail.gmail.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	 <20221004134909.1692021-16-nuno.sa@analog.com>
	 <CAHp75VdiAzOUNMB3wD5og-uZi1W_7UWkqV6+s7jCxpaBs1VWRQ@mail.gmail.com>
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_011545_348780_3BE52A89 
X-CRM114-Status: GOOD (  28.22  )
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

T24gVHVlLCAyMDIyLTEwLTA0IGF0IDE3OjE1ICswMzAwLCBBbmR5IFNoZXZjaGVua28gd3JvdGU6
Cj4gT24gVHVlLCBPY3QgNCwgMjAyMiBhdCA0OjQ5IFBNIE51bm8gU8OhIDxudW5vLnNhQGFuYWxv
Zy5jb20+IHdyb3RlOgo+ID4gCj4gPiBUaGUgcGF0dGVybiB1c2VkIGluIHRoaXMgZGV2aWNlIGRv
ZXMgbm90IHF1aXRlIGZpdCBpbiB0aGUKPiA+IGlpb19kZXZpY2VfY2xhaW1fZGlyZWN0X21vZGUo
KSB0eXBpY2FsIHVzYWdlLiBJbiB0aGlzIGNhc2UsIHdlIHdhbnQKPiA+IHRvCj4gPiBrbm93IGlm
IHdlIGFyZSBpbiBidWZmZXJlZCBtb2RlIG9yIG5vdCB0byBrbm93IGlmIHRoZSBkZXZpY2UgaXMK
PiA+IHBvd2VyZWQKPiA+IChidWZmZXIgbW9kZSkgb3Igbm90LiBBbmQgZGVwZW5kaW5nIG9uIHRo
YXQgbWF4MzAxMDJfZ2V0X3RlbXAoKQo+ID4gd2lsbAo+ID4gcG93ZXIgb24gdGhlIGRldmljZSBp
ZiBuZWVkZWQuIEhlbmNlLCBpbiBvcmRlciB0byBrZWVwIHRoZSBzYW1lCj4gPiBmdW5jdGlvbmFs
aXR5LCB3ZSB0cnkgdG86Cj4gPiAKPiA+IDEuIENsYWltIEJ1ZmZlcmVkIG1vZGU7Cj4gPiAyOiBJ
ZiAxKSBzdWNjZWVkcyBjYWxsIG1heDMwMTAyX2dldF90ZW1wKCkgd2l0aG91dCBwb3dlcmluZyBv
biB0aGUKPiA+IMKgwqAgZGV2aWNlOwo+ID4gMzogUmVsZWFzZSBCdWZmZXJlZCBtb2RlOwo+ID4g
NDogSWYgMSkgZmFpbHMsIENsYWltIERpcmVjdCBtb2RlOwo+ID4gNTogSWYgNCkgc3VjY2VlZHMg
Y2FsbCBtYXgzMDEwMl9nZXRfdGVtcCgpIHdpdGggcG93ZXJpbmcgb24gdGhlCj4gPiBkZXZpY2U7
Cj4gPiA2OiBSZWxlYXNlIERpcmVjdCBtb2RlOwo+ID4gNzogSWYgNCkgZmFpbHMsIGdvdG8gdG8g
MSkgYW5kIHRyeSBhZ2Fpbi4KPiA+IAo+ID4gVGhpcyBkYW5jZSBiZXR3ZWVuIGJ1ZmZlcmVkIGFu
ZCBkaXJlY3QgbW9kZSBpcyBub3QgcGFydGljdWxhcmx5Cj4gPiBwcmV0dHkKPiA+IChhcyB3ZWxs
IGFzIHRoZSBsb29wIGludHJvZHVjZWQgYnkgdGhlIGdvdG8gc3RhdGVtZW50KSBidXQgaXQgZG9l
cwo+ID4gYWxsb3cKPiA+IHVzIHRvIGdldCByaWQgb2YgdGhlIG1sb2NrIHVzYWdlIHdoaWxlIGtl
ZXBpbmcgdGhlIHNhbWUgYmVoYXZpb3IuCj4gCj4gLi4uCj4gCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBpZiAoaWlvX2RldmljZV9jbGFpbV9idWZmZXJfbW9kZShpbmRpb19kZXYp
KSB7Cj4gCj4gV2h5IGlzIHJldCBub3QgdXNlZCBoZXJlPwo+IAo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIFRoaXMgb25lIGlzIGEgKmJpdCogaGFja3ku
IElmIHdlIGNhbm5vdAo+ID4gY2xhaW0gYnVmZmVyCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIG1vZGUsIHRoZW4gdHJ5IGRpcmVjdCBtb2RlIHNv
IHRoYXQgd2UKPiA+IG1ha2Ugc3VyZQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgKiB0aGluZ3MgY2Fubm90IGNvbmN1cnJlbnRseSBjaGFuZ2UuIEFu
ZAo+ID4gd2UganVzdCBrZWVwCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAqIHRyeWluZyB1bnRpbCB3ZSBnZXQgb25lIG9mIHRoZSBtb2Rlcy4uLgo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZgo+ID4gKGlp
b19kZXZpY2VfY2xhaW1fZGlyZWN0X21vZGUoaW5kaW9fZGV2KSkKPiAKPiAuLi5hbmQgaGVyZT8K
PiAKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgZ290byBhbnlfbW9kZV9yZXRyeTsKPiAKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIH0gZWxzZSB7Cj4gCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB9Cj4gCj4gSS5vLncuIHdoYXQgZXJyb3IgY29kZSB3aWxsIGJlIHZpc2libGUgdG8gdGhlIGNh
bGxlciBhbmQgd2h5Lgo+IAoKTm90ZSB0aGF0IHdlIGRvIG5vdCByZWFsbHkgY2FyZSBhYm91dCB0
aGUgZXJyb3IgY29kZSByZXR1cm5lZCBieSBib3RoCmlpb19kZXZpY2VfY2xhaW1fYnVmZmVyX21v
ZGUoKSBhbmQgaWlvX2RldmljZV9jbGFpbV9kaXJlY3RfbW9kZSgpLiBXZQpqdXN0IGxvb3AgdW50
aWwgd2UgZ2V0IG9uZSBvZiB0aGUgbW9kZXMgKHRodXMgcmV0ID0gMCkgc28gdGhhdCB3ZSBjYW4K
c2FmZWx5IGNhbGwgb25lIG9mIHRoZSBtYXgzMDEwMl9nZXRfdGVtcCgpIHZhcmlhbnRzLiBBbmQg
dGhhdCB3aWxsIGJlCnRoZSB2aXNpYmxlIGVycm9yIGNvZGUgKGlmIGFueSkuIFRoYXQgc2FpZCwg
eW91IGNhbiBsb29rIGF0IHRoZSBmaXJzdAp2ZXJzaW9uIG9mIHRoZSBzZXJpZXMgYWJvdXQgdGhp
cyAoYW5kIHRoZSBwcmV2aW91cyBwYXRjaCkgYW5kIHdoeSB0aGlzCmlzIGJlaW5nIGRvbmUgbGlr
ZSB0aGlzIChub3RlIHRoYXQgSSdtIGFsc28gbm90IDEwMCUgY29udmluY2VkIGFib3V0CnRoaXMg
cGluZyBwb25nIGJldHdlZW4gZ2V0dGluZyBvbmUgb2YgdGhlIElJTyBtb2RlcyBidXQgaXQncyBh
bHNvIG5vdAp0aGF0IGJhZCBhbmQgaWYgdGhlcmUncyBubyBtYWpvciBjb21wbGFpbnMsIEknbSBm
aW5lIHdpdGggaXQpLgoKLSBOdW5vIFPDoQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
