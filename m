Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91776C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 10:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmW8UFeJWZQEzKeRSaPTzYuVZGklNEmfWy3nGaQbe7I=; b=3bUOn1HjtFvySo
	ixIT42oowJ2OR3Oy4M6uPWlEj0sySo1U9e6V97KpUYJI8gwQfFDFtNDgEQnwK/pKNKiNUw2iHQHNj
	M/cu8kjADZZNnCdayLg3N7yo47qMowr9m5PS1DfIzINNpEDyTNM1kj2joSXGZwqHh95YNT/HAas/f
	/r6Jf8fDR1nChOXH3EVJWmLCWP+oK67OLirAJpgVVAdrhGb40VorXHXFcFNzvniMfJJlhoQl1tBHa
	ublCeWbBgEsBN3IpcZOm6e10+8yx5G7fibdsmIL3GOTbfgt08USMchfcv8GzzJ3si6sNTyupb4h/u
	pfPkhtnIiqPxno4YKdVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeCrt-008TgO-EU; Fri, 30 Sep 2022 10:03:41 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeCre-008Tai-4Z; Fri, 30 Sep 2022 10:03:27 +0000
Received: by mail-qv1-xf33.google.com with SMTP id s13so2492783qvq.10;
        Fri, 30 Sep 2022 03:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date;
        bh=iQqXgr+4YepRHf5MCkYU6O/jwsUQ9T5ainHxb7iM9i8=;
        b=UPkltYBuAXyB4MSvRfTaRXkSGTXUCp8YorMZlcDDO0ubsdnJRKFwB3PpUAxSFtm/M2
         6ZDek0f7m8QUuh89t2RYXodCFISGTT+IYHl/7EYderLges97lwhvTpAQC3GkmCKXL/K+
         PjAlcUnrPIcoOhEyZbetlMgX7lDx65Vdvg60zR1AiteeuCMz9TOjjeDHn29z5DdhIzvQ
         DQ7RlfWTsLYmdaRdrVQ+yRmCiJ5CEIOxn+U/vc0mFLJMA0j9UUy6Z1zsVwL4fdLU/lCw
         P5lhLewWXYLpMc1DK9BnzpUEV98rOxOubqIo/OhbsS+UGVHpi0RuzafuFnO+CezwC/M0
         AK6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date;
        bh=iQqXgr+4YepRHf5MCkYU6O/jwsUQ9T5ainHxb7iM9i8=;
        b=y3noKeFlyY+REMPMYFnY3cA7KsR0ZNFCw31/TIWUOg7eOnuI7zGp4LO6VLftGWRAkZ
         Nj4mVtAyPUL8pmvvXVI3J16wJvHswkMAH+jtzGn83r5RAVtjuYF3vPX/5Xzy80MV92X7
         W9geeO3QqCtHBge1FMIhF5yWUcof581wZUi8YEgeEcfWKEMY778kYEvu2Gh6kG4TYtta
         MWBoZBbtYsvTgj9ttUl9YJ8J6F2vBUN99kFWVotPYlhbh/Aiit/lCIwk4y3z52b+orgI
         5rB/OR/Vs+xav8JnpoPV4mWT9vYuuz2BJ7X5uoGVGD5TJ9NvqvoVk3+3LXMZM/OXctOY
         2sDA==
X-Gm-Message-State: ACrzQf0Cx5FRknKZXMiB4/nYzyku0pUZRzkmN1PBjwAbA8YrqN5xm4M+
	uNGVTkRzyeL1OtpW+BODe6k=
X-Google-Smtp-Source: AMsMyM7gteQgf8eFvijooshAhE+MKquJs8M2jlrI42yG3DNEqfFJesHyQ7u4AQI8DGi9Oe8FfVAzWA==
X-Received: by 2002:a05:6214:224b:b0:4af:b412:2269 with SMTP id c11-20020a056214224b00b004afb4122269mr3997334qvc.54.1664532203236;
        Fri, 30 Sep 2022 03:03:23 -0700 (PDT)
Received: from p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de (p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de. [2003:f6:ef03:6f00:5de6:a4d0:d791:ed01])
        by smtp.gmail.com with ESMTPSA id b8-20020ac844c8000000b0035d57445127sm1484058qto.47.2022.09.30.03.03.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 03:03:22 -0700 (PDT)
Message-ID: <d41b131df565e7c7d6083ebbd7de0346c46b9e23.camel@gmail.com>
Subject: Re: [PATCH 14/15] iio: health: max30102: do not use internal
 iio_dev lock
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, Nuno =?ISO-8859-1?Q?S=E1?=
	 <nuno.sa@analog.com>
Cc: linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,  linux-amlogic@lists.infradead.org,
 linux-imx@nxp.com, linux-iio@vger.kernel.org,  Chunyan Zhang
 <zhang.lyra@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Sascha Hauer
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
Date: Fri, 30 Sep 2022 12:04:39 +0200
In-Reply-To: <20220924165417.46a1fc44@jic23-huawei>
References: <20220920112821.975359-1-nuno.sa@analog.com>
	 <20220920112821.975359-15-nuno.sa@analog.com>
	 <20220924165417.46a1fc44@jic23-huawei>
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_030326_263954_E28A33EB 
X-CRM114-Status: GOOD (  28.09  )
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

T24gU2F0LCAyMDIyLTA5LTI0IGF0IDE2OjU0ICswMTAwLCBKb25hdGhhbiBDYW1lcm9uIHdyb3Rl
Ogo+IE9uIFR1ZSwgMjAgU2VwIDIwMjIgMTM6Mjg6MjAgKzAyMDAKPiBOdW5vIFPDoSA8bnVuby5z
YUBhbmFsb2cuY29tPiB3cm90ZToKPiAKPiA+IFRoZSBwYXR0ZXJuIHVzZWQgaW4gdGhpcyBkZXZp
Y2UgZG9lcyBub3QgcXVpdGUgZml0IGluIHRoZQo+ID4gaWlvX2RldmljZV9jbGFpbV9kaXJlY3Rf
bW9kZSgpIHR5cGljYWwgdXNhZ2UuIEluIHRoaXMgY2FzZSwKPiA+IGlpb19idWZmZXJfZW5hYmxl
ZCgpIHdhcyBiZWluZyB1c2VkIG5vdCB0byBwcmV2ZW50IHRoZSByYXcgYWNjZXNzCj4gPiBidXQg
dG8gZGVjaWRlIHdoZXRoZXIgb3Igbm90IHRoZSBkZXZpY2UgbmVlZHMgdG8gYmUgcG93ZXJlZCBv
bgo+ID4gYmVmb3JlLgo+ID4gSWYgYnVmZmVyaW5nLCB0aGVuIHRoZSBkZXZpY2UgaXMgYWxyZWFk
eSBvbi4gVG8gZ3VhcmFudGVlIHRoZSBzYW1lCj4gPiBiZWhhdmlvciwgYSBjb21iaW5hdGlvbiBv
ZiBsb2NrcyBpcyBiZWluZyB1c2VkOgo+ID4gCj4gPiAxLiBVc2UgaWlvX2RldmljZV9jbGFpbV9k
aXJlY3RfbW9kZSgpIHRvIGNoZWNrIGlmIGRpcmVjdCBtb2RlIGNhbgo+ID4gYmUKPiA+IGNsYWlt
ZWQgYW5kIGlmIHdlIGNhbiwgdGhlbiB3ZSBrZWVwIGl0IHVudGlsIHRoZSByZWFkaW5nIGlzIGRv
bmUKPiA+ICh3aGljaAo+ID4gYWxzbyBtZWFucyB0aGUgZGV2aWNlIHdpbGwgYmUgcG93ZXJlZCBv
biBhbmQgb2ZmKTsKPiA+IDIuIElmIGFscmVhZHkgYnVmZmVyaW5nLCB3ZSBuZWVkIHRvIG1ha2Ug
c3VyZSB0aGF0IGJ1ZmZlcmluZyBpcyBub3QKPiA+IGRpc2FibGVkIChhbmQgaGVuY2UsIHBvd2Vy
aW5nIG9mZiB0aGUgZGV2aWNlKSB3aGlsZSBkb2luZyBhIHJhdwo+ID4gcmVhZC4gRm9yCj4gPiB0
aGF0LCB3ZSBjYW4gbWFrZSB1c2Ugb2YgdGhlIGxvY2FsIGxvY2sgdGhhdCBhbHJlYWR5IGV4aXN0
cy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4K
PiBPYnZpb3VzbHkgc2FtZSBkYW5jZSBpbiBoZXJlIGFzIHRoZSByZWxhdGVkIHByZXZpb3VzIHBh
dGNoLiBTbyBzYW1lCj4gc29sdXRpb24KPiBuZWVkcyBhZG9wdGluZy7CoCBJIGp1c3QgdGhvdWdo
dCBJJ2QgcmVwbHkgdG8gbWFrZSBzdXJlIHdlIGRpZG4ndAo+IGZvcmdldCB0bwo+IGNvdmVyIHRo
ZW0gYm90aCA6KQo+IAo+IApIaSBKb25hdGhhbiwKClNvIEkgd2FzIHdvcmtpbmcgb24gdjIgaW4g
dGhlIG1vcm5pbmcgYW5kIHdlbnQgd2l0aCB5b3VyCmlpb19kZXZpY2VfY2xhaW1fYnVmZmVyX21v
ZGUoKSBhcHByb2FjaC4uLiBBbmQgYmFoLCB3ZWxsIGl0IHdvcmtzIGxpa2UKYSBjaGFybSBpbiB0
aGUgcHJldmlvdXMgcGF0Y2gsIGl0IGZhaWxzIGluIHRoaXMgb25lOgoKLSAgICAgICAgICAgICAg
IG11dGV4X2xvY2soJmluZGlvX2Rldi0+bWxvY2spOwotICAgICAgICAgICAgICAgaWYgKCFpaW9f
YnVmZmVyX2VuYWJsZWQoaW5kaW9fZGV2KSkKKyAgICAgICAgICAgICAgIGlmIChpaW9fZGV2aWNl
X2NsYWltX2J1ZmZlcl9tb2RlKGluZGlvX2RldikpIHsKICAgICAgICAgICAgICAgICAgICAgICAg
cmV0ID0gbWF4MzAxMDJfZ2V0X3RlbXAoZGF0YSwgdmFsLCB0cnVlKTsKLSAgICAgICAgICAgICAg
IGVsc2UKKyAgICAgICAgICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgICAgICAgICAgICAgIHJl
dCA9IG1heDMwMTAyX2dldF90ZW1wKGRhdGEsIHZhbCwgZmFsc2UpOwotICAgICAgICAgICAgICAg
bXV0ZXhfdW5sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKLSAgICAgICAgICAgICAgIGlmIChyZXQp
CisgICAgICAgICAgICAgICAgICAgICAgIGlpb19kZXZpY2VfcmVsZWFzZV9idWZmZXJfbW9kZShp
bmRpb19kZXYpOworICAgICAgICAgICAgICAgfQorICAgICAgICAgICAgICAgaWYocmV0KQogICAg
ICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmV0OwoKCk5vdGUgdGhhdCBpZiB3ZSBhcmUgbm90
IGluIGJ1ZmZlcmVkIG1vZGUgd2Ugd29uJ3QgZ2V0IG1sb2NrIGFuZCBjYWxsCm1heDMwMTAyX2dl
dF90ZW1wKGRhdGEsIHZhbCwgdHJ1ZSkgd2l0aG91dCBhbnkgbG9jay4gV2hpbGUgaXQncyB2ZXJ5
CnVubGlrZWx5IGZvciBzb21lb25lLCBpbiB0aGUgbWVhbnRpbWUsIHRvIGVuYWJsZSB0aGUgYnVm
ZmVyIGFuZCB0aGVuCmRpc2FibGUgaXQsIGl0J3Mgc3RpbGwgcmFjeSBhbmQgcG9zc2libGUgKGF0
IGxlYXN0IGluIHRoZW9yeSkuCgpTbywgSSdtIHRoaW5raW5nIGFnYWluIG9uIHRoZSBmbGFnIGFw
cHJvYWNoLi4uIEp1c3QgY2hlY2sgbXkgY29tbWVudAooaW4gdGhlIHByZXZpb3VzIHBhdGNoKSBh
Ym91dCBpdCBiZWluZyByZWZjb3VudGVkLiBJIG1lYW4sIEkgbWlnaHQgYmUKbWlzc2luZyBzb21l
dGhpbmcsIGJ1dCBpZiB3ZSBuZWVkIGEgcmVmY291bnQsIEkgd291bGQgc2F5IHRoaW5ncyB3b3Vs
ZApiZSBhbHJlYWR5IChwb3RlbnRpYWxseSkgYnJva2VuLCByaWdodD8KCldpdGggdGhpcyBzdGVw
IGJhY2ssIEknbSBwbGFubmluZyBvbiBhIHYyIGluIHRoZSBiZWdpbm5pbmcgb2YgdGhlIHdlZWsK
YWZ0ZXIgd2UgaGF2ZSB0aGlzIHNvcnRlZCBvdXQgKGFuZCBJIGd1ZXNzIHdlIG5lZWQgdG8gc2V0
dGxlIHRoaW5ncwphbHNvIGluIHRoZSBhZDc5OXggcGF0Y2gpCgotIE51bm8gU8OhCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
