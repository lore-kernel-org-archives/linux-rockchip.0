Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBA8EC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Oct 2022 17:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qG0Kb2oqz4kf8HVydKBPFj9WpK895rJ1qmdta8nrjk=; b=q0SOJMYSjyLVaI
	4N5+ez9wHVAgA58g2Y2YqV8xrkSHUdQxYQ2goYCZeMAyn62e6fTe3ag/KLJsIeTAO9MrQ77hODr7w
	Ah0WC7n8Rcj4+GahJXm3VhH2h9vX+SBcOs+2pGE/sSs1BICW4TbVH43aRvPP2gVHkKgEr0l+/wLjA
	0LRLsepdm4ot55nZfNKDaaT7dmV57KpTsqcYL/W5vj1EKFzY3I1bIxQM+04XlesPzQf99KyTaxC8K
	PLBjRJSCDdenvS9UfWl5PRKp459ET5YnaVtrZPCz1Y/YvxFTy9Vc4yMd5GVyoajS/TfVGxaI3KC4T
	e8Zh5NUQXdjMyVXe1hgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oifkO-008t1A-9k; Wed, 12 Oct 2022 17:42:24 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oifkC-008sxO-El; Wed, 12 Oct 2022 17:42:13 +0000
Received: by mail-qk1-x72a.google.com with SMTP id t25so3862129qkm.2;
        Wed, 12 Oct 2022 10:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pGr4YOrtKswOjzzP3xN+2PhnwfyEQn8bkB6qIni8vh8=;
        b=WeL0cgYMLpxhzch3oF052ucy8+I3ta4eedAGSXAMFvGX1e1us6QlVlxUJHYshI6y1N
         fkGTWG+mK8ZKfF2WftgyQIjbpouK/JFskUgWt1kgOZMTCVi0mw2NxKYrIUYCMP8fhbw3
         F4/H5pm8YCtb5OsSI258LyF+OR31KOXlAz7FqeLtXSrZLF8+FH08H4VbgSuA5uu9eDF5
         DKk8KBUNe6c9YMB0vkgd/e41yJr8tQiHeivii4irw2fsdqd8QKvnD9CXUEwl/ScJxFR5
         Up8JgrLpD8aj2wlcoi3bCuaYREwAK5r0nJgQan6GdUi/2LHowjk3boQduD5qiTppvoNq
         7H/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pGr4YOrtKswOjzzP3xN+2PhnwfyEQn8bkB6qIni8vh8=;
        b=wbqS8BxnN1t0yJBuLnO54KSIaIzw4W88EVt8t9VNP1ZKzE+4cxQedCHe9wbp7TYDB/
         3bWu5+RQS0wzmKK4mLlPVTmriKVzgiXBLs+mHh0Satm7nRY+7lZGR0LRUKX02H5W9n2z
         pXQYq9Pxn0p7yvhMbXyGEC+XI/+MDnLbRm3cLngOtI2mjS+vKC0FzSeScDyevG33X60c
         /2bFktqjI2SWHw7SHE4o7e3tFeiLGk12k13GaiHUUVmjhEnqZ6JotAQqAE6+CuaKJqzf
         sIdykw4ez5cfn5CnFoY7wRsGpbZ1b+Y/YdAPUHUA+U5mtCtqZiNOHpUuyI4kpVbPNaKc
         Ce7A==
X-Gm-Message-State: ACrzQf1LvkZ4L6vsUezmSGaRpi0y7ZAyDteyj7Gh+MIg+pcPMdUUjWt7
	rv8JoRJDJh/QacHRcmjbFXEh2ia+UNpVZguiOJc=
X-Google-Smtp-Source: AMsMyM4Qx0QscVzFMWDT7b+vIsDRKAbiDa7oEGHZc95k537KgzhJXH0oJ//h9mJ0miOA/eNEHszDNx3V+6gTz5bOCpQ=
X-Received: by 2002:ae9:e315:0:b0:6ee:761d:4b8b with SMTP id
 v21-20020ae9e315000000b006ee761d4b8bmr8314124qkf.748.1665596524259; Wed, 12
 Oct 2022 10:42:04 -0700 (PDT)
MIME-Version: 1.0
References: <20221012151620.1725215-1-nuno.sa@analog.com> <20221012151620.1725215-2-nuno.sa@analog.com>
In-Reply-To: <20221012151620.1725215-2-nuno.sa@analog.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 12 Oct 2022 20:41:28 +0300
Message-ID: <CAHp75Vc2zz94axxrOb13A71MLTRRt8eLATqJy3CAG-nF253f7w@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] iio: core: introduce iio_device_{claim|release}_buffer_mode()
 APIs
To: =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-iio@vger.kernel.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-imx@nxp.com, Chen-Yu Tsai <wens@csie.org>, 
	Andriy Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>, 
	Ciprian Regus <ciprian.regus@analog.com>, Vladimir Zapolskiy <vz@mleia.com>, 
	Cixi Geng <cixi.geng1@unisoc.com>, Neil Armstrong <narmstrong@baylibre.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Heiko Stuebner <heiko@sntech.de>, Fabio Estevam <festevam@gmail.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Hans de Goede <hdegoede@redhat.com>, Alexandru Ardelean <aardelean@deviqon.com>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Haibo Chen <haibo.chen@nxp.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Jyoti Bhayana <jbhayana@google.com>, 
	Jonathan Cameron <jic23@kernel.org>, Florian Boor <florian.boor@kernelconcepts.de>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, Orson Zhai <orsonzhai@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_104212_539525_4CD31710 
X-CRM114-Status: GOOD (  20.83  )
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

T24gV2VkLCBPY3QgMTIsIDIwMjIgYXQgNjoxNSBQTSBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cu
Y29tPiB3cm90ZToKPgo+IFRoZXNlIEFQSXMgYXJlIGFuYWxvZ291cyB0byBpaW9fZGV2aWNlX2Ns
YWltX2RpcmVjdF9tb2RlKCkgYW5kCj4gaWlvX2RldmljZV9yZWxlYXNlX2RpcmVjdF9tb2RlKCkg
YnV0LCBhcyB0aGUgbmFtZSBzdWdnZXN0cywgd2l0aCB0aGUKPiBsb2dpYyBmbGlwcGVkLiBXaGls
ZSB0aGlzIGxvb2tzIG9kZCBlbm91Z2gsIGl0IHdpbGwgaGF2ZSBhdCBsZWFzdCB0d28KPiB1c2Vy
cyAoaW4gZm9sbG93aW5nIGNoYW5nZXMpIGFuZCBpdCB3aWxsIGJlIGltcG9ydGFudCB0byBtb3Zl
IHRoZSBpaW8KPiBtbG9jayB0byB0aGUgcHJpdmF0ZSBzdHJ1Y3QuCgpJSU8KCj4gU2lnbmVkLW9m
Zi1ieTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9paW8v
aW5kdXN0cmlhbGlvLWNvcmUuYyB8IDM4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Kwo+ICBpbmNsdWRlL2xpbnV4L2lpby9paW8uaCAgICAgICAgIHwgIDIgKysKPiAgMiBmaWxlcyBj
aGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vaW5k
dXN0cmlhbGlvLWNvcmUuYyBiL2RyaXZlcnMvaWlvL2luZHVzdHJpYWxpby1jb3JlLmMKPiBpbmRl
eCAxNTFmZjM5OTMzNTQuLmNmODBmODFlNDY2NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2lpby9p
bmR1c3RyaWFsaW8tY29yZS5jCj4gKysrIGIvZHJpdmVycy9paW8vaW5kdXN0cmlhbGlvLWNvcmUu
Ywo+IEBAIC0yMDgzLDYgKzIwODMsNDQgQEAgdm9pZCBpaW9fZGV2aWNlX3JlbGVhc2VfZGlyZWN0
X21vZGUoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldikKPiAgfQo+ICBFWFBPUlRfU1lNQk9MX0dQ
TChpaW9fZGV2aWNlX3JlbGVhc2VfZGlyZWN0X21vZGUpOwo+Cj4gKy8qKgo+ICsgKiBpaW9fZGV2
aWNlX2NsYWltX2J1ZmZlcl9tb2RlIC0gS2VlcCBkZXZpY2UgaW4gYnVmZmVyIG1vZGUKPiArICog
QGluZGlvX2RldjogdGhlIGlpb19kZXYgYXNzb2NpYXRlZCB3aXRoIHRoZSBkZXZpY2UKPiArICoK
PiArICogSWYgdGhlIGRldmljZSBpcyBpbiBidWZmZXIgbW9kZSBpdCBpcyBndWFyYW50ZWVkIHRv
IHN0YXkKPiArICogdGhhdCB3YXkgdW50aWwgaWlvX2RldmljZV9yZWxlYXNlX2J1ZmZlcl9tb2Rl
KCkgaXMgY2FsbGVkLgo+ICsgKgo+ICsgKiBVc2Ugd2l0aCBpaW9fZGV2aWNlX3JlbGVhc2VfYnVm
ZmVyX21vZGUoKQoKTWlzc2VkIHRyYWlsaW5nIHBlcmlvZC4KCj4gKyAqCj4gKyAqIFJldHVybnM6
IDAgb24gc3VjY2VzcywgLUVCVVNZIG9uIGZhaWx1cmUKCkRpdHRvLgoKPiArICovCj4gK2ludCBp
aW9fZGV2aWNlX2NsYWltX2J1ZmZlcl9tb2RlKHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYpCj4g
K3sKPiArICAgICAgIG11dGV4X2xvY2soJmluZGlvX2Rldi0+bWxvY2spOwo+ICsKPiArICAgICAg
IGlmIChpaW9fYnVmZmVyX2VuYWJsZWQoaW5kaW9fZGV2KSkKPiArICAgICAgICAgICAgICAgcmV0
dXJuIDA7Cj4gKwo+ICsgICAgICAgbXV0ZXhfdW5sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKPiAr
ICAgICAgIHJldHVybiAtRUJVU1k7Cj4gK30KPiArRVhQT1JUX1NZTUJPTF9HUEwoaWlvX2Rldmlj
ZV9jbGFpbV9idWZmZXJfbW9kZSk7Cj4gKwo+ICsvKioKPiArICogaWlvX2RldmljZV9yZWxlYXNl
X2J1ZmZlcl9tb2RlIC0gcmVsZWFzZXMgY2xhaW0gb24gYnVmZmVyIG1vZGUKPiArICogQGluZGlv
X2RldjogdGhlIGlpb19kZXYgYXNzb2NpYXRlZCB3aXRoIHRoZSBkZXZpY2UKPiArICoKPiArICog
UmVsZWFzZSB0aGUgY2xhaW0uIERldmljZSBpcyBubyBsb25nZXIgZ3VhcmFudGVlZCB0byBzdGF5
Cj4gKyAqIGluIGJ1ZmZlciBtb2RlLgo+ICsgKgo+ICsgKiBVc2Ugd2l0aCBpaW9fZGV2aWNlX2Ns
YWltX2J1ZmZlcl9tb2RlKCkKCkRpdHRvLgoKPiArICovCj4gK3ZvaWQgaWlvX2RldmljZV9yZWxl
YXNlX2J1ZmZlcl9tb2RlKHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYpCj4gK3sKPiArICAgICAg
IG11dGV4X3VubG9jaygmaW5kaW9fZGV2LT5tbG9jayk7Cj4gK30KPiArRVhQT1JUX1NZTUJPTF9H
UEwoaWlvX2RldmljZV9yZWxlYXNlX2J1ZmZlcl9tb2RlKTsKPiArCj4gIC8qKgo+ICAgKiBpaW9f
ZGV2aWNlX2dldF9jdXJyZW50X21vZGUoKSAtIGhlbHBlciBmdW5jdGlvbiBwcm92aWRpbmcgcmVh
ZC1vbmx5IGFjY2VzcyB0bwo+ICAgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdGhl
IG9wYXF1ZSBAY3VycmVudG1vZGUgdmFyaWFibGUKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51
eC9paW8vaWlvLmggYi9pbmNsdWRlL2xpbnV4L2lpby9paW8uaAo+IGluZGV4IGYwZWM4YTVlNWE3
YS4uOWQzYmQ2Mzc5ZWI4IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvaWlvL2lpby5oCj4g
KysrIGIvaW5jbHVkZS9saW51eC9paW8vaWlvLmgKPiBAQCAtNjI5LDYgKzYyOSw4IEBAIGludCBf
X2Rldm1faWlvX2RldmljZV9yZWdpc3RlcihzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBpaW9f
ZGV2ICppbmRpb19kZXYsCj4gIGludCBpaW9fcHVzaF9ldmVudChzdHJ1Y3QgaWlvX2RldiAqaW5k
aW9fZGV2LCB1NjQgZXZfY29kZSwgczY0IHRpbWVzdGFtcCk7Cj4gIGludCBpaW9fZGV2aWNlX2Ns
YWltX2RpcmVjdF9tb2RlKHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYpOwo+ICB2b2lkIGlpb19k
ZXZpY2VfcmVsZWFzZV9kaXJlY3RfbW9kZShzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2KTsKPiAr
aW50IGlpb19kZXZpY2VfY2xhaW1fYnVmZmVyX21vZGUoc3RydWN0IGlpb19kZXYgKmluZGlvX2Rl
dik7Cj4gK3ZvaWQgaWlvX2RldmljZV9yZWxlYXNlX2J1ZmZlcl9tb2RlKHN0cnVjdCBpaW9fZGV2
ICppbmRpb19kZXYpOwo+Cj4gIGV4dGVybiBzdHJ1Y3QgYnVzX3R5cGUgaWlvX2J1c190eXBlOwo+
Cj4gLS0KPiAyLjM4LjAKPgoKCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtv
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
