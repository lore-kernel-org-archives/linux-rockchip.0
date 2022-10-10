Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CC6BC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Oct 2022 07:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QGpSqOus8hXthdedyYKfFpoLZZARwdP+tpXS+yayNi8=; b=bXm9LJ7EAATFp+
	r2SAg7CCJEt6jud4j1uikkTirjnDUP4pHiMv6K+CUxSGW/cjh4OioRsVdH02KIOxRoKMxMRywJOiU
	cTQZ/QsM+vtTBoCIrzCsP5/PX7ddOa/CUZd+OAUkSBEz3nbMlXiVGpLxps3Eu2AtzsaXgO39kQxa7
	NV/veytJ4x5kjzgZ6EiPcIKlG3Z4pHl9FrojOQVwG8NLQrJ0susw+FnQS1vlql2FsZ0UaelPis9On
	OV7qjfTporYJn5GgM/fHhBDL+8QvEx1B4I33wo1F6As2QWlJdq7QD6Q6Idr4cI9JeCju4ynhI3k9e
	/F/pAUU9+hLOLA5wh37g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmt8-00HKJK-DR; Mon, 10 Oct 2022 07:07:46 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmsw-00HKGt-PM; Mon, 10 Oct 2022 07:07:36 +0000
Received: by mail-qk1-x72e.google.com with SMTP id v17so6200550qkv.5;
        Mon, 10 Oct 2022 00:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WHWPo1qKRevOhOtumpbJ7lklIPnMqp7zCvbF4M9yd6s=;
        b=n407lvjwbRtsnfe/+PUAPd141O/GCABQm04b53IBiweXewZw0jzDJYPtuqD1e/D6pb
         ZZhMAMMw79QQu/gGU7sj6DOztaVj7Io2DgGYrrdF/zxWDxr00MoV7qJVN2qEH7l1v30h
         51T1PoMTKVxiKFoX0xSp7Hrss8bc53/S/CRDzawk5XoPvB7/+VNc9O4OmSCYizLQQYsL
         Qms/ByOQ2lPJA4EJ6r6IGGhoU/X5avh76tbUdECznyg9CHLa06d/BcFtg4viTGQQisw7
         zPJ2j0I4L4xOd8PQ/gxs1JYpPbT/4NlzxWfwIQGNN1voXXh63LHfbTQw+2BObObRQ5aQ
         s5Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WHWPo1qKRevOhOtumpbJ7lklIPnMqp7zCvbF4M9yd6s=;
        b=OV22OO7XUoUhKE5r/ICQzxFWO0/qUu7rPxi/H1Wl7QfkymeL3JIqFiFRshWvvxEB2p
         kDtueQQ+LK3CMX9Bf6feMLf8YwH7G9mp83mHyhRXPnGs4jD27auwebumNX0wp+NSGh2I
         gqge2arCf3ntm9vljjq5ySRhD0UYrR7FpIHQ06dXVv5AZ/XG/Pp5aAeVnCSQy87Ms1eV
         x7/pH0vUoOWxpLlymvA/afYLSFKaIWTHPoV4x2zM75Z4ojlOmguPmqxTcXfV6qMLgzqP
         gHPDkLVgmW8I6w2S/isEeVNRICBAta9peM1mw4NjZGA754AswBeRgPOghvnf/uFBNYFy
         ZEYA==
X-Gm-Message-State: ACrzQf1VVf+1t6Tw8yyWiuwy01xUMXfHsYNSjNzu7IZHhy1sSfobvazQ
	A0noMUSOm1BGAGve8R4mR+k=
X-Google-Smtp-Source: AMsMyM6igdgHC4JEuEbFPrpMU7w9LFR2EtdXbU4uFf/Pw/LFnyimrAeQQYF4jLHVc7EWphGp71/pSg==
X-Received: by 2002:a05:620a:298a:b0:6ce:7aa7:f01f with SMTP id r10-20020a05620a298a00b006ce7aa7f01fmr11456414qkp.611.1665385653377;
        Mon, 10 Oct 2022 00:07:33 -0700 (PDT)
Received: from p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de (p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de. [2003:f6:ef03:6f00:5de6:a4d0:d791:ed01])
        by smtp.gmail.com with ESMTPSA id w16-20020a05620a445000b006dfa0891397sm9891789qkp.32.2022.10.10.00.07.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Oct 2022 00:07:32 -0700 (PDT)
Message-ID: <1191286a7ca86488363c99be1503b2bbef905f48.camel@gmail.com>
Subject: Re: [PATCH v2 15/16] iio: health: max30102: do not use internal
 iio_dev lock
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
Date: Mon, 10 Oct 2022 09:08:51 +0200
In-Reply-To: <20221009124440.71adf505@jic23-huawei>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	 <20221004134909.1692021-16-nuno.sa@analog.com>
	 <CAHp75VdiAzOUNMB3wD5og-uZi1W_7UWkqV6+s7jCxpaBs1VWRQ@mail.gmail.com>
	 <428661431e54744064946ced681cc0351d51d698.camel@gmail.com>
	 <20221009124440.71adf505@jic23-huawei>
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221010_000734_863603_6A5E4238 
X-CRM114-Status: GOOD (  40.55  )
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

T24gU3VuLCAyMDIyLTEwLTA5IGF0IDEyOjQ0ICswMTAwLCBKb25hdGhhbiBDYW1lcm9uIHdyb3Rl
Ogo+IE9uIFdlZCwgMDUgT2N0IDIwMjIgMTA6MTc6MDAgKzAyMDAKPiBOdW5vIFPDoSA8bm9uYW1l
Lm51bm9AZ21haWwuY29tPiB3cm90ZToKPiAKPiA+IE9uIFR1ZSwgMjAyMi0xMC0wNCBhdCAxNzox
NSArMDMwMCwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgo+ID4gPiBPbiBUdWUsIE9jdCA0LCAyMDIy
IGF0IDQ6NDkgUE0gTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KPiA+ID4gd3JvdGU6wqAg
Cj4gPiA+ID4gCj4gPiA+ID4gVGhlIHBhdHRlcm4gdXNlZCBpbiB0aGlzIGRldmljZSBkb2VzIG5v
dCBxdWl0ZSBmaXQgaW4gdGhlCj4gPiA+ID4gaWlvX2RldmljZV9jbGFpbV9kaXJlY3RfbW9kZSgp
IHR5cGljYWwgdXNhZ2UuIEluIHRoaXMgY2FzZSwgd2UKPiA+ID4gPiB3YW50Cj4gPiA+ID4gdG8K
PiA+ID4gPiBrbm93IGlmIHdlIGFyZSBpbiBidWZmZXJlZCBtb2RlIG9yIG5vdCB0byBrbm93IGlm
IHRoZSBkZXZpY2UgaXMKPiA+ID4gPiBwb3dlcmVkCj4gPiA+ID4gKGJ1ZmZlciBtb2RlKSBvciBu
b3QuIEFuZCBkZXBlbmRpbmcgb24gdGhhdCBtYXgzMDEwMl9nZXRfdGVtcCgpCj4gPiA+ID4gd2ls
bAo+ID4gPiA+IHBvd2VyIG9uIHRoZSBkZXZpY2UgaWYgbmVlZGVkLiBIZW5jZSwgaW4gb3JkZXIg
dG8ga2VlcCB0aGUgc2FtZQo+ID4gPiA+IGZ1bmN0aW9uYWxpdHksIHdlIHRyeSB0bzoKPiA+ID4g
PiAKPiA+ID4gPiAxLiBDbGFpbSBCdWZmZXJlZCBtb2RlOwo+ID4gPiA+IDI6IElmIDEpIHN1Y2Nl
ZWRzIGNhbGwgbWF4MzAxMDJfZ2V0X3RlbXAoKSB3aXRob3V0IHBvd2VyaW5nIG9uCj4gPiA+ID4g
dGhlCj4gPiA+ID4gwqDCoCBkZXZpY2U7Cj4gPiA+ID4gMzogUmVsZWFzZSBCdWZmZXJlZCBtb2Rl
Owo+ID4gPiA+IDQ6IElmIDEpIGZhaWxzLCBDbGFpbSBEaXJlY3QgbW9kZTsKPiA+ID4gPiA1OiBJ
ZiA0KSBzdWNjZWVkcyBjYWxsIG1heDMwMTAyX2dldF90ZW1wKCkgd2l0aCBwb3dlcmluZyBvbiB0
aGUKPiA+ID4gPiBkZXZpY2U7Cj4gPiA+ID4gNjogUmVsZWFzZSBEaXJlY3QgbW9kZTsKPiA+ID4g
PiA3OiBJZiA0KSBmYWlscywgZ290byB0byAxKSBhbmQgdHJ5IGFnYWluLgo+ID4gPiA+IAo+ID4g
PiA+IFRoaXMgZGFuY2UgYmV0d2VlbiBidWZmZXJlZCBhbmQgZGlyZWN0IG1vZGUgaXMgbm90IHBh
cnRpY3VsYXJseQo+ID4gPiA+IHByZXR0eQo+ID4gPiA+IChhcyB3ZWxsIGFzIHRoZSBsb29wIGlu
dHJvZHVjZWQgYnkgdGhlIGdvdG8gc3RhdGVtZW50KSBidXQgaXQKPiA+ID4gPiBkb2VzCj4gPiA+
ID4gYWxsb3cKPiA+ID4gPiB1cyB0byBnZXQgcmlkIG9mIHRoZSBtbG9jayB1c2FnZSB3aGlsZSBr
ZWVwaW5nIHRoZSBzYW1lCj4gPiA+ID4gYmVoYXZpb3IuwqAgCj4gPiA+IAo+ID4gPiAuLi4KPiA+
ID4gwqAgCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGlpb19kZXZp
Y2VfY2xhaW1fYnVmZmVyX21vZGUoaW5kaW9fZGV2KSkge8KgCj4gPiA+IAo+ID4gPiBXaHkgaXMg
cmV0IG5vdCB1c2VkIGhlcmU/Cj4gPiA+IMKgIAo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKgo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogVGhpcyBvbmUgaXMgYSAqYml0KiBoYWNreS4g
SWYgd2UKPiA+ID4gPiBjYW5ub3QKPiA+ID4gPiBjbGFpbSBidWZmZXIKPiA+ID4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIG1vZGUsIHRoZW4gdHJ5
IGRpcmVjdCBtb2RlIHNvIHRoYXQKPiA+ID4gPiB3ZQo+ID4gPiA+IG1ha2Ugc3VyZQo+ID4gPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogdGhpbmdz
IGNhbm5vdCBjb25jdXJyZW50bHkgY2hhbmdlLgo+ID4gPiA+IEFuZAo+ID4gPiA+IHdlIGp1c3Qg
a2VlcAo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICogdHJ5aW5nIHVudGlsIHdlIGdldCBvbmUgb2YgdGhlCj4gPiA+ID4gbW9kZXMuLi4KPiA+
ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+
ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZgo+
ID4gPiA+IChpaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9tb2RlKGluZGlvX2RldikpwqAgCj4gPiA+
IAo+ID4gPiAuLi5hbmQgaGVyZT8KPiA+ID4gwqAgCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIGFueV9tb2Rl
X3JldHJ5O8KgIAo+ID4gPiDCoCAKPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB9IGVsc2Uge8KgIAo+ID4gPiDCoCAKPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB9wqAgCj4gPiA+IAo+ID4gPiBJLm8udy4gd2hhdCBlcnJvciBjb2RlIHdpbGwgYmUgdmlz
aWJsZSB0byB0aGUgY2FsbGVyIGFuZCB3aHkuCj4gPiA+IMKgIAo+ID4gCj4gPiBOb3RlIHRoYXQg
d2UgZG8gbm90IHJlYWxseSBjYXJlIGFib3V0IHRoZSBlcnJvciBjb2RlIHJldHVybmVkIGJ5Cj4g
PiBib3RoCj4gPiBpaW9fZGV2aWNlX2NsYWltX2J1ZmZlcl9tb2RlKCkgYW5kIGlpb19kZXZpY2Vf
Y2xhaW1fZGlyZWN0X21vZGUoKS4KPiA+IFdlCj4gPiBqdXN0IGxvb3AgdW50aWwgd2UgZ2V0IG9u
ZSBvZiB0aGUgbW9kZXMgKHRodXMgcmV0ID0gMCkgc28gdGhhdCB3ZQo+ID4gY2FuCj4gPiBzYWZl
bHkgY2FsbCBvbmUgb2YgdGhlIG1heDMwMTAyX2dldF90ZW1wKCkgdmFyaWFudHMuIEFuZCB0aGF0
IHdpbGwKPiA+IGJlCj4gPiB0aGUgdmlzaWJsZSBlcnJvciBjb2RlIChpZiBhbnkpLiBUaGF0IHNh
aWQsIHlvdSBjYW4gbG9vayBhdCB0aGUKPiA+IGZpcnN0Cj4gPiB2ZXJzaW9uIG9mIHRoZSBzZXJp
ZXMgYWJvdXQgdGhpcyAoYW5kIHRoZSBwcmV2aW91cyBwYXRjaCkgYW5kIHdoeQo+ID4gdGhpcwo+
ID4gaXMgYmVpbmcgZG9uZSBsaWtlIHRoaXMgKG5vdGUgdGhhdCBJJ20gYWxzbyBub3QgMTAwJSBj
b252aW5jZWQKPiA+IGFib3V0Cj4gPiB0aGlzIHBpbmcgcG9uZyBiZXR3ZWVuIGdldHRpbmcgb25l
IG9mIHRoZSBJSU8gbW9kZXMgYnV0IGl0J3MgYWxzbwo+ID4gbm90Cj4gPiB0aGF0IGJhZCBhbmQg
aWYgdGhlcmUncyBubyBtYWpvciBjb21wbGFpbnMsIEknbSBmaW5lIHdpdGggaXQpLgo+IAo+IFRo
aXMgaXMgYSB2YW5pc2hpbmdseSByYXJlIGNvcm5lciBjYXNlIGFuZCBub3QgaW4gYSByZW1vdGVs
eSBoaWdoCj4gcGVyZm9ybWFuY2UKPiBwYXRoIHNvIEknbSBub3Qga2VlbiBvbiBpbnRyb2R1Y2lu
ZyBhIG1vcmUgY29tcGxleCBBUEkganVzdCB0byBoYW5kbGUKPiB0aGlzIGNvcm5lci4gSWYgd2Ug
YWRkZWQgYSBtZWFucyB0byBnZXQgdGhlIGxvY2sgaW5kZXBlbmRlbnQgb2YgbW9kZQo+IHdlJ2Qg
aGF2ZSBhbiBpbnRlcmZhY2UgdGhhdCBpcyBmYXIgdG8gbGlrZWx5IHRvIGdldCBtaXNzdXNlZC4K
ClRvdGFsbHkgYWdyZWUuIEl0IGNyb3NzZWQgbXkgbWluZCB0byBoYXZlIGFuIGhlbHBlciBmb3Ig
Z2V0dGluZyB0aGUKbG9jayBidXQgdGhhdCB3b3VsZCBkZWZlYXQgdGhlIHB1cnBvc2Ugb2YgdGhp
cyBwYXRjaHNldCEgV2VsbCwgSSdtIGFsc28KZmluZSB3aXRoIHRoZSBjb2RlIGFzIGl0IHN0YW5k
cyBzbyBJJ2xsIGxlYXZlIGl0IGZvciB2MyBhbmQgaWYgbm8gb25lCmNvbXBsYWlucyBJIGd1ZXNz
IHdlJ3JlIGdvb2QgdG8gZ28uLi4gCgoKLSBOdW5vIFPDoQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
