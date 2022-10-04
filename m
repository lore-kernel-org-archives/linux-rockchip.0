Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC003C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 07:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VrVpWiAPw/V8isCIJsqLVKUTyJpUFheT2+T3Twut4zU=; b=1eCtLdS4n2uuZq
	lknvd02XBQa54YqKgGXZLvP1s5ybJmvraK3alGNtrN+eaPIhAzTklDRgLWCDVB35P5JmAVRR6ITU9
	N1SXDfqxv/+cIEEPtSFeFMj4neoVzlnW18HQGghvW2iS1kQ32ORewdEhwxxnWkaWDzt99mS5pA/rf
	u5bPZWyjiGRaOyIR+WKBkSxW14KzmG1x0LxBGNPJvWp974gpS/87DBHVzeHUXKIeDHHY0gxB+v4UR
	o2ECY5DkOpN4mJcSVOpCtIiwnWs/S2DJa4tl74STA7fReG8aidumY5ThYKmHyjy13KgCD0Ry7UHyk
	GxqJY5r/y79r74X4Nf+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofcig-008otC-3b; Tue, 04 Oct 2022 07:52:02 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofciU-008opI-BU; Tue, 04 Oct 2022 07:51:51 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id mx8so1911035qvb.8;
        Tue, 04 Oct 2022 00:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date;
        bh=9eDs+P1GL8nCLCW93dxyiPgDB7yR3iHl8twFnUGybrI=;
        b=hL1WPJ+QiVJmIPq9w0ctpv2LfS+yx2+QCpSPUDym8PlT80bQrhahmMzJAeX4VNggAm
         vPmrnwJo7oS56/em7xGuCuQe4qkaBJM6c/r/ih3RkNEewZBUJ/X11pMjP1cIkN9/3mtG
         cjSrznZtnE7bKbxTwXuMFM3CcrQwL+fSlrs9HfX/McgeucQv5hH9YHr4P+oGO2ZRSEg/
         DsTLcgeAkWNOMvK9Dkw8/y0GO0U2BjWTtPvnVCjhCIx/1Dr551rvM1PIrre/7SE/kvP8
         GA1cUgR6FkM0X99uvGi8Dy++x1I81MTJ84eqVq9BMkveO89pg5zbBi4S5H1rJ31C1SeM
         oeRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date;
        bh=9eDs+P1GL8nCLCW93dxyiPgDB7yR3iHl8twFnUGybrI=;
        b=aN40mcPsG1/GdbdL3zkV2eaqo7qL41ZPLHFqMJNESU+yU63Ds5Ql8pYwzV6FO/JAGr
         4Qc9Vbhnp6AXeP68Vm0klFTECAjraEkxcZTcYYJ+GuFGrUXI6EuPhYYYYQ4AoRysdIqb
         5/ElolH95ziCUF1wcmk3v7lcO/irQ3gZVL/t6ym4/kmbdCWn0s+IHCx9neZCK4My+51D
         v6v6cKcdXiiKHr1yL2jLPiTwP/z6U/qLC8/bVROSzjhdxXTDkAXtfYNC0z8hMmzLmTgv
         1vo3Nb57XhoJmxWh51Wgd2zlyo16OPMA2kv5GKFxbhKiUAhxBXwURQ4uf1NguKB2eG+u
         PyEw==
X-Gm-Message-State: ACrzQf2EHxEHA++JysiJblDwdYKaAn7TzIUlHvDncFQJj8k4g8wSvPXV
	zFQx7G0q4uDuHLLCAZ/IAWk19ucrq5O1TgjVjok=
X-Google-Smtp-Source: AMsMyM66HpCi23rHTq7Msh95SV7hO7BtFz5zjtqFS7UBnac5xLuXCTRKmSMn9eT1HFtjN8UyjkHUmg==
X-Received: by 2002:a05:6214:27c3:b0:4ac:a9f7:49c4 with SMTP id ge3-20020a05621427c300b004aca9f749c4mr19085509qvb.48.1664869907748;
        Tue, 04 Oct 2022 00:51:47 -0700 (PDT)
Received: from p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de (p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de. [2003:f6:ef03:6f00:5de6:a4d0:d791:ed01])
        by smtp.gmail.com with ESMTPSA id fb25-20020a05622a481900b0034035e73be0sm11683672qtb.4.2022.10.04.00.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Oct 2022 00:51:46 -0700 (PDT)
Message-ID: <9d74aeeafd7987d6a495fb01c76566cf9443bd22.camel@gmail.com>
Subject: Re: [PATCH 14/15] iio: health: max30102: do not use internal
 iio_dev lock
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Nuno =?ISO-8859-1?Q?S=E1?= <nuno.sa@analog.com>, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-imx@nxp.com,
 linux-iio@vger.kernel.org,  Chunyan Zhang <zhang.lyra@gmail.com>, Michael
 Hennerich <Michael.Hennerich@analog.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Sascha Hauer
 <s.hauer@pengutronix.de>,  Cixi Geng <cixi.geng1@unisoc.com>, Kevin Hilman
 <khilman@baylibre.com>, Vladimir Zapolskiy <vz@mleia.com>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Alexandru Ardelean
 <aardelean@deviqon.com>, Fabio Estevam <festevam@gmail.com>, Andriy
 Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>, Haibo Chen
 <haibo.chen@nxp.com>,  Shawn Guo <shawnguo@kernel.org>, Hans de Goede
 <hdegoede@redhat.com>, Miquel Raynal <miquel.raynal@bootlin.com>, Jerome
 Brunet <jbrunet@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, Florian
 Boor <florian.boor@kernelconcepts.de>, Ciprian Regus
 <ciprian.regus@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Baolin Wang <baolin.wang@linux.alibaba.com>,
 Jyoti Bhayana <jbhayana@google.com>,  Chen-Yu Tsai <wens@csie.org>, Orson
 Zhai <orsonzhai@gmail.com>
Date: Tue, 04 Oct 2022 09:53:02 +0200
In-Reply-To: <20221002120830.52699870@jic23-huawei>
References: <20220920112821.975359-1-nuno.sa@analog.com>
	 <20220920112821.975359-15-nuno.sa@analog.com>
	 <20220924165417.46a1fc44@jic23-huawei>
	 <d41b131df565e7c7d6083ebbd7de0346c46b9e23.camel@gmail.com>
	 <20221002120830.52699870@jic23-huawei>
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_005150_422649_EDF78C07 
X-CRM114-Status: GOOD (  33.84  )
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

T24gU3VuLCAyMDIyLTEwLTAyIGF0IDEyOjA4ICswMTAwLCBKb25hdGhhbiBDYW1lcm9uIHdyb3Rl
Ogo+IE9uIEZyaSwgMzAgU2VwIDIwMjIgMTI6MDQ6MzkgKzAyMDAKPiBOdW5vIFPDoSA8bm9uYW1l
Lm51bm9AZ21haWwuY29tPiB3cm90ZToKPiAKPiA+IE9uIFNhdCwgMjAyMi0wOS0yNCBhdCAxNjo1
NCArMDEwMCwgSm9uYXRoYW4gQ2FtZXJvbiB3cm90ZToKPiA+ID4gT24gVHVlLCAyMCBTZXAgMjAy
MiAxMzoyODoyMCArMDIwMAo+ID4gPiBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cuY29tPiB3cm90
ZToKPiA+ID4gwqAgCj4gPiA+ID4gVGhlIHBhdHRlcm4gdXNlZCBpbiB0aGlzIGRldmljZSBkb2Vz
IG5vdCBxdWl0ZSBmaXQgaW4gdGhlCj4gPiA+ID4gaWlvX2RldmljZV9jbGFpbV9kaXJlY3RfbW9k
ZSgpIHR5cGljYWwgdXNhZ2UuIEluIHRoaXMgY2FzZSwKPiA+ID4gPiBpaW9fYnVmZmVyX2VuYWJs
ZWQoKSB3YXMgYmVpbmcgdXNlZCBub3QgdG8gcHJldmVudCB0aGUgcmF3Cj4gPiA+ID4gYWNjZXNz
Cj4gPiA+ID4gYnV0IHRvIGRlY2lkZSB3aGV0aGVyIG9yIG5vdCB0aGUgZGV2aWNlIG5lZWRzIHRv
IGJlIHBvd2VyZWQgb24KPiA+ID4gPiBiZWZvcmUuCj4gPiA+ID4gSWYgYnVmZmVyaW5nLCB0aGVu
IHRoZSBkZXZpY2UgaXMgYWxyZWFkeSBvbi4gVG8gZ3VhcmFudGVlIHRoZQo+ID4gPiA+IHNhbWUK
PiA+ID4gPiBiZWhhdmlvciwgYSBjb21iaW5hdGlvbiBvZiBsb2NrcyBpcyBiZWluZyB1c2VkOgo+
ID4gPiA+IAo+ID4gPiA+IDEuIFVzZSBpaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9tb2RlKCkgdG8g
Y2hlY2sgaWYgZGlyZWN0IG1vZGUKPiA+ID4gPiBjYW4KPiA+ID4gPiBiZQo+ID4gPiA+IGNsYWlt
ZWQgYW5kIGlmIHdlIGNhbiwgdGhlbiB3ZSBrZWVwIGl0IHVudGlsIHRoZSByZWFkaW5nIGlzCj4g
PiA+ID4gZG9uZQo+ID4gPiA+ICh3aGljaAo+ID4gPiA+IGFsc28gbWVhbnMgdGhlIGRldmljZSB3
aWxsIGJlIHBvd2VyZWQgb24gYW5kIG9mZik7Cj4gPiA+ID4gMi4gSWYgYWxyZWFkeSBidWZmZXJp
bmcsIHdlIG5lZWQgdG8gbWFrZSBzdXJlIHRoYXQgYnVmZmVyaW5nIGlzCj4gPiA+ID4gbm90Cj4g
PiA+ID4gZGlzYWJsZWQgKGFuZCBoZW5jZSwgcG93ZXJpbmcgb2ZmIHRoZSBkZXZpY2UpIHdoaWxl
IGRvaW5nIGEgcmF3Cj4gPiA+ID4gcmVhZC4gRm9yCj4gPiA+ID4gdGhhdCwgd2UgY2FuIG1ha2Ug
dXNlIG9mIHRoZSBsb2NhbCBsb2NrIHRoYXQgYWxyZWFkeSBleGlzdHMuCj4gPiA+ID4gCj4gPiA+
ID4gU2lnbmVkLW9mZi1ieTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT7CoCAKPiA+ID4g
T2J2aW91c2x5IHNhbWUgZGFuY2UgaW4gaGVyZSBhcyB0aGUgcmVsYXRlZCBwcmV2aW91cyBwYXRj
aC4gU28KPiA+ID4gc2FtZQo+ID4gPiBzb2x1dGlvbgo+ID4gPiBuZWVkcyBhZG9wdGluZy7CoCBJ
IGp1c3QgdGhvdWdodCBJJ2QgcmVwbHkgdG8gbWFrZSBzdXJlIHdlIGRpZG4ndAo+ID4gPiBmb3Jn
ZXQgdG8KPiA+ID4gY292ZXIgdGhlbSBib3RoIDopCj4gPiA+IAo+ID4gPiDCoCAKPiA+IEhpIEpv
bmF0aGFuLAo+ID4gCj4gPiBTbyBJIHdhcyB3b3JraW5nIG9uIHYyIGluIHRoZSBtb3JuaW5nIGFu
ZCB3ZW50IHdpdGggeW91cgo+ID4gaWlvX2RldmljZV9jbGFpbV9idWZmZXJfbW9kZSgpIGFwcHJv
YWNoLi4uIEFuZCBiYWgsIHdlbGwgaXQgd29ya3MKPiA+IGxpa2UKPiA+IGEgY2hhcm0gaW4gdGhl
IHByZXZpb3VzIHBhdGNoLCBpdCBmYWlscyBpbiB0aGlzIG9uZToKPiA+IAo+ID4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgbXV0ZXhfbG9jaygmaW5kaW9fZGV2LT5tbG9jayk7Cj4gPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoIWlpb19idWZmZXJfZW5hYmxlZChpbmRp
b19kZXYpKQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGlpb19kZXZpY2Vf
Y2xhaW1fYnVmZmVyX21vZGUoaW5kaW9fZGV2KSkgewo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXQgPSBtYXgzMDEwMl9nZXRfdGVtcChkYXRhLCB2
YWwsIHRydWUpOwo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZWxzZQo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfSBlbHNlIHsKPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gbWF4MzAxMDJfZ2V0X3RlbXAoZGF0
YSwgdmFsLCBmYWxzZSk7Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtdXRleF91
bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOwo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgaWYgKHJldCkKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBpaW9fZGV2aWNlX3JlbGVhc2VfYnVmZmVyX21vZGUoaW5kaW9fZGV2KTsKPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGlmKHJldCkKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIHJldDsKPiA+IAo+ID4gCj4gPiBOb3RlIHRoYXQgaWYgd2UgYXJlIG5vdCBp
biBidWZmZXJlZCBtb2RlIHdlIHdvbid0IGdldCBtbG9jayBhbmQKPiA+IGNhbGwKPiA+IG1heDMw
MTAyX2dldF90ZW1wKGRhdGEsIHZhbCwgdHJ1ZSkgd2l0aG91dCBhbnkgbG9jay4gV2hpbGUgaXQn
cwo+ID4gdmVyeQo+ID4gdW5saWtlbHkgZm9yIHNvbWVvbmUsIGluIHRoZSBtZWFudGltZSwgdG8g
ZW5hYmxlIHRoZSBidWZmZXIgYW5kCj4gPiB0aGVuCj4gPiBkaXNhYmxlIGl0LCBpdCdzIHN0aWxs
IHJhY3kgYW5kIHBvc3NpYmxlIChhdCBsZWFzdCBpbiB0aGVvcnkpLgo+IAo+IEFoLiBUaGF0J3Mg
aW5kZWVkIHRlZGlvdXMuIEknZCBjbG9zZSB0aGUgcmFjZSBieSBjbGFpbWluZyBkaXJlY3QgbW9k
ZQo+IGZvciB0aGUgZWxzZSBicmFuY2guwqAgSWYgdGhhdCBmYWlscywgcGFoLCBqdXN0IGZhaWwg
dGhlIGNhbGwgd2l0aCBhCj4gc3VpdGFibGUKPiBlcnJvciByZXR1cm4gKC1FQUdBSU4gcHJvYmFi
bHkpLiAKPiBPciBwdXQgYSByZXRyeSBsb29rIGFyb3VuZCB0aGUgd2hvbGUgdGhpbmcgdG8gbWFr
ZSBpdCBldmVuIGxlc3MKPiBsaWtlbHkKPiB3ZSdsbCBoaXQgdGhlIGdhcCBpbiB0aGUgbG9ja2lu
Zy4KPiAKCkhtbSBJIGRpZCB0aG91Z2h0IGFib3V0IHRoYXQgYnV0IGl0IGxvb2tlZCB2ZXJ5ICJk
aXJ0eSIuLi4gQW55d2F5cywgSQpjYW4gZG8gaXQgZm9yIHYyIGp1c3Qgc28gd2UgaGF2ZSBhIGxv
b2sgb24gaG93IGl0IGxvb2tzIGxpa2UuCgotIE51bm8gU8OhCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
