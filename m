Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C35AC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Oct 2022 17:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tnbQ9hPTt6sZiZL8GRGoIfAFwQ+zDyhfGPuw0gW8rYo=; b=R4w2CWXwkldAde
	+rdFBeM5lCeBc2M/9IPg4DVSKmXfXNMkxVFlGGTEEQ5p1touMH6p2JeZ+YUkKtBaVAiEa+SLzckIP
	zuL2uYzSiqbmqM/5i30Za3nPUo1bWzUED7uiLd1k+HIKMdLQiw3QmO97hqr012L+BYo/mvppQOMAa
	2ZozTn62B6g+m1rslgS9GvB7sLFNBxhH+4PPYXnzRpv7d/or2UBQuKYr9ZmNu7ZqBFFCydCwiXYYx
	RyZA3hKl4iNdit17yWsMOjZANtpREsNO3GWWRcd0Roxo/hfYt5KqkoYIMqsHY5qt+F+8qmc3f6UlH
	ePpO+fWpkQ0NIXHKFfVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oifp1-008thE-S7; Wed, 12 Oct 2022 17:47:11 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oifoq-008tdk-1d; Wed, 12 Oct 2022 17:47:01 +0000
Received: by mail-qt1-x831.google.com with SMTP id bb5so5313261qtb.11;
        Wed, 12 Oct 2022 10:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Eyz/lIUSG70FWic8i45ydzTxNMdUqxKfc9SELXNeLo8=;
        b=okyR7A3m1nTyA6CSsQ4lc8rj24bE8WIzKqRZtHPn4l6nhJwOW5R3AYOgli/stk8Qzi
         806ndj6B/P32W6+qT0bXGHV/eDSr2JiDMMvQ1L/aj1cmm21YUjBdI3P9WmRzaCZC5CKS
         VbxguSdNXoi41m7p//Qhjc1n2XDCTwmqnZ5z8i4RH2am/aus4ZfnRA/gOqoEkpn1uUNl
         29tEi20rg249R9AprQUH7l+DtkSKjfn+tnfmEoAwUp9vYiM2fCMrbe/qksgR8Q61CCh6
         nv1c9UG4tt63FdGt/iW4S4bg0q6X8G2uXLUmXdcTNaL39OmyWe+Mo5Ir8mWIheJquBk1
         TvuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Eyz/lIUSG70FWic8i45ydzTxNMdUqxKfc9SELXNeLo8=;
        b=yYLWnX6najYhDoJyuzI9yuYtyOiZCm6ALB3bGVM0mabgiP7Lgj3fiDKFMNIdw1xsx7
         wkJmvWf0amuuz/SzxDdhoG9alxO60pursG53MxPh4JdxLdYg6cJsaoaTj7AE7KPybJ5H
         IgViFQnYlML6MPGR9FSxu1sVALygC1lEh41i+wV9bqfoiK/YTjcyAUPlRIatH8TC0oxN
         4zVp73P44oqL+tUySa4MjF+BBXFTInFaAE7W5Wg4c+Bw5YBAg2LC4z39ZS4goJnQJEuS
         B52y3xqU/DJe45zkTVrwcfHAwpRkp7+ImasB3tbxykwJaMXL4qEe8QwPnDd3590bPBJ9
         a02w==
X-Gm-Message-State: ACrzQf2QpM0qMVELzgBDIjl0bPdRqeozVFUIE4v//KeoCSTZoKD3vYhD
	LctoWPziIe9brmJmc6GE8Zov+rxKFpLzybFnuRw=
X-Google-Smtp-Source: AMsMyM4wC6G8QVC5EYiV+vg/uFFB8OcNl8jga6fXEr0n5Fw/3K59SrYxwXpmfqdkrFciV1jsYE9tYSxdm5hOx4EfY9g=
X-Received: by 2002:a05:622a:4204:b0:394:111d:d86f with SMTP id
 cp4-20020a05622a420400b00394111dd86fmr24950258qtb.384.1665596816780; Wed, 12
 Oct 2022 10:46:56 -0700 (PDT)
MIME-Version: 1.0
References: <20221012151620.1725215-1-nuno.sa@analog.com> <20221012151620.1725215-3-nuno.sa@analog.com>
In-Reply-To: <20221012151620.1725215-3-nuno.sa@analog.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 12 Oct 2022 20:46:20 +0300
Message-ID: <CAHp75Vc=TMsFBR8PUb7tifgM_b8foRhiAwy3VEDsX4hTOjKP=Q@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] iio: health: max30100: do not use internal iio_dev lock
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
X-CRM114-CacheID: sfid-20221012_104700_145742_9A05F746 
X-CRM114-Status: GOOD (  25.39  )
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
Y29tPiB3cm90ZToKPgo+IFRoZSBwYXR0ZXJuIHVzZWQgaW4gdGhpcyBkZXZpY2UgZG9lcyBub3Qg
cXVpdGUgZml0IGluIHRoZQo+IGlpb19kZXZpY2VfY2xhaW1fZGlyZWN0X21vZGUoKSB0eXBpY2Fs
IHVzYWdlLiBJbiB0aGlzIGNhc2UsCj4gaWlvX2J1ZmZlcl9lbmFibGVkKCkgd2FzIGJlaW5nIHVz
ZWQgbm90IHRvIHByZXZlbnQgdGhlIHJhdyBhY2Nlc3MgYnV0IHRvCj4gYWxsb3cgaXQuIEhlbmNl
LCBsZXQncyBtYWtlIHVzZSBvZiB0aGUgbmV3Cj4gaWlvX2RldmljZV9jbGFpbV9idWZmZXJfbW9k
ZSgpIEFQSSB0byBtYWtlIHN1cmUgd2Ugc3RheSBpbiBidWZmZXJlZCBtb2RlCj4gZHVyaW5nIHRo
ZSBjb21wbGV0ZSByZWFkLgo+Cj4gTm90ZSB0aGF0IHdlIGFyZSBzaGFkb3dpbmcgdGhlIGVycm9y
IGNvZGUgcmV0dXJuZWQgYnkKPiBpaW9fZGV2aWNlX2NsYWltX2J1ZmZlcl9tb2RlKCkgc28gdGhh
dCB3ZSBrZWVwIHRoZSBvcmlnaW5hbCBvbmUKPiAoLUVBR0FJTikuIFRoZSByZWFzb24gaXMgdGhh
dCBzb21lIHVzZXJzcGFjZSBzdGFjayBtaWdodCBhbHJlYWR5IGJlCj4gcmVseWluZyBvbiB0aGlz
IHBhcnRpY3VsYXIgY29kZSBzbyB0aGF0IHdlIGFyZSBub3QgdGFraW5nIGNoYW5jZXMgYW5kCj4g
bGVhdmUgaXQgYWxvbmUuCgpUaGUgYWJvdmUgbGluZSB3aWR0aHMgc2VlbSBhIGJpdCBhcmJpdHJh
cnkgdG8gbWUuIEJ1dCBJIHRoaW5rIGl0J3MgZHVlCnRvIGZ1bmN0aW9uIG5hbWVzIGluIHRoZW0u
ClBlcmhhcHMgeW91IGNhbiBtYWtlIHRoZW0gbGVzcyBkZXZpYXRlZCBieSBzaHVmZmxpbmcgYSBi
aXQsIGxpa2UKbW92aW5nICJidXQgdG8iIHRvIHRoZSBuZXh0IGxpbmUuCgo+IFNpZ25lZC1vZmYt
Ynk6IE51bm8gU8OhIDxudW5vLnNhQGFuYWxvZy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvaWlvL2hl
YWx0aC9tYXgzMDEwMC5jIHwgOSArKystLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9oZWFs
dGgvbWF4MzAxMDAuYyBiL2RyaXZlcnMvaWlvL2hlYWx0aC9tYXgzMDEwMC5jCj4gaW5kZXggMmNj
YTVlMDUxOWY4Li42YWM0OTkwMWM5ZGEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9paW8vaGVhbHRo
L21heDMwMTAwLmMKPiArKysgYi9kcml2ZXJzL2lpby9oZWFsdGgvbWF4MzAxMDAuYwo+IEBAIC0z
ODcsMTggKzM4NywxNSBAQCBzdGF0aWMgaW50IG1heDMwMTAwX3JlYWRfcmF3KHN0cnVjdCBpaW9f
ZGV2ICppbmRpb19kZXYsCj4gICAgICAgICAgICAgICAgICAqIFRlbXBlcmF0dXJlIHJlYWRpbmcg
Y2FuIG9ubHkgYmUgYWNxdWlyZWQgd2hpbGUgZW5naW5lCj4gICAgICAgICAgICAgICAgICAqIGlz
IHJ1bm5pbmcKPiAgICAgICAgICAgICAgICAgICovCj4gLSAgICAgICAgICAgICAgIG11dGV4X2xv
Y2soJmluZGlvX2Rldi0+bWxvY2spOwo+IC0KPiAtICAgICAgICAgICAgICAgaWYgKCFpaW9fYnVm
ZmVyX2VuYWJsZWQoaW5kaW9fZGV2KSkKCj4gKyAgICAgICAgICAgICAgIGlmIChpaW9fZGV2aWNl
X2NsYWltX2J1ZmZlcl9tb2RlKGluZGlvX2RldikpIHsKCkkgdGhpbmsgYSBzdW1tYXJ5IG9mIHJl
cGxhY2luZyBlcnJvciBjb2RlIGlzIGdvb2QgdG8gaGF2ZSBoZXJlLCBsaWtlCgovKgogKiBSZXBs
YWNpbmcgLUVCVVNZIG9yIG90aGVyIGVycm9yIGNvZGUKICogcmV0dXJuZWQgYnkgaWlvX2Rldmlj
ZV9jbGFpbV9idWZmZXJfbW9kZSgpCiAqIGJlY2F1c2UgdXNlciBzcGFjZSBtYXkgcmVseSBvbiB0
aGUgY3VycmVudAogKiBvbmUuCiAqLwoKPiAgICAgICAgICAgICAgICAgICAgICAgICByZXQgPSAt
RUFHQUlOOwo+IC0gICAgICAgICAgICAgICBlbHNlIHsKPiArICAgICAgICAgICAgICAgfSBlbHNl
IHsKPiAgICAgICAgICAgICAgICAgICAgICAgICByZXQgPSBtYXgzMDEwMF9nZXRfdGVtcChkYXRh
LCB2YWwpOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIGlmICghcmV0KQo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgcmV0ID0gSUlPX1ZBTF9JTlQ7Cj4KPiArICAgICAgICAgICAg
ICAgICAgICAgICBpaW9fZGV2aWNlX3JlbGVhc2VfYnVmZmVyX21vZGUoaW5kaW9fZGV2KTsKPiAg
ICAgICAgICAgICAgICAgfQo+IC0KPiAtICAgICAgICAgICAgICAgbXV0ZXhfdW5sb2NrKCZpbmRp
b19kZXYtPm1sb2NrKTsKPiAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gICAgICAgICBjYXNlIElJ
T19DSEFOX0lORk9fU0NBTEU6Cj4gICAgICAgICAgICAgICAgICp2YWwgPSAxOyAgLyogMC4wNjI1
ICovCgotLSAKV2l0aCBCZXN0IFJlZ2FyZHMsCkFuZHkgU2hldmNoZW5rbwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
