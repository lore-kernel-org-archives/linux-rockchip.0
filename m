Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16D96C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 16:50:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C61D960EB9
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 16:50:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C61D960EB9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5EYgnxpqshCVWbO0uA5mcxeiO/BPikWfsUEd8Uj3tcg=; b=up0cJCOhDDSEGw
	LoaIyP2fRk8sXGmkyQt5nM+xtdsaTtJNuWCrRajvsLYYa0jF+Aajs/dadTpUJNEj0noUKPYrAm1Hv
	u2sEBPnFOdHLhFRQhu33sBsu1CXqmnoDjfhN1TG+D9+jVQWMuPTc75VxnSQ4msNeRdeFz1F6JBbsw
	P1ShuT85kbOusk6VRcJux4LWAI+Lv82zBIwmZd6hirnncImaGJzO+3W3sZNFkdY1GauSI9F6RZsCQ
	jWatEo8SuSyjP0baO+NZv5KI8AkICsJ5HscW6ks18X8RvG8K8CnI7Jacn4RYKeSG+adUjNFzCcrb3
	4Qzl6hdiuwe7i35vyk7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8mlA-001jHA-4B; Wed, 28 Jul 2021 16:50:20 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8mks-001jD3-9s; Wed, 28 Jul 2021 16:50:03 +0000
Received: by mail-yb1-xb30.google.com with SMTP id g76so5050191ybf.4;
 Wed, 28 Jul 2021 09:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=otNTlDwa87Ct7KnwMnmWEklfb8eXN/ybU6dmwmB/y4k=;
 b=Hz1c+rC6UucgzDlm5ZjYdqfckks0A1P9uuWsr0puCpQLwdw5cahcJNSxTYc99NBr/N
 u+tW+C8g2d6CK7OT5A0pPor1ZXJJMo6VvHMSmYeyyYmfv2y5L7cseFltdcWLDv/BpP2S
 iNS0Sd+jp2XBZVH98iLn4WdYtSdrEkq4WcCWNv9EEC95pleo3vI3QDgsBMZCHS3MsAKr
 pD4rxKYfzjZuxwKGaxoskZLB58c7NIsVw6OmCXllHGZ62oTcRNtcGIpgqBlB7avcmp6/
 aXu9YiOvi82wkh651hshpX5nrd0wVp8YXLSg3ITLV7qR/9OW2YqsVfdaFXDM974hZfK7
 PkDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=otNTlDwa87Ct7KnwMnmWEklfb8eXN/ybU6dmwmB/y4k=;
 b=GOOTC0JH/91eRqXA28nTfWIL1uESklOI5ZnKffsjdwsMd/lmU0AW6qA7/YGa1l7KyJ
 Zbl702mCv5G6ZCIUisflZWyvTT2f5/Rgsy0uFqWkKT8KWlFvDm4A/12Ml2S2J4I3AikO
 mEV22RCxj/QJeatpKImZeyf2M7kP9c+AgXOuubEpCck1J4BZDKFCIZKfcxM9byYsQPAM
 6ZlLAZJmPgzvWV64qEYQCNQ+BXq16tHzMUQlH5TFnBFpVbXE614o7LobP4qkhJNwDs20
 xc3B6yoRUSiIDb9F1Y2/nslaBFF3SF//0mK85x7Y4D4dAA58svgEzv43RNTgAuxwjQvF
 ZRZw==
X-Gm-Message-State: AOAM532Pik7Vkrl+lbD9tCWDMspU7GcVdsduFlG4Mc4lWjqXqODXXYTs
 uzysov0iS3vY7/bEwJNPr6jeds2eojORXPac2E0=
X-Google-Smtp-Source: ABdhPJw1TruNXS+01KTW3gp+Fe37RtD+n7CfbVJq7xUSj403ji3R82e0709hZow8OpZrbJQoYJR41H7iUFiOiVkK5UM=
X-Received: by 2002:a25:3c5:: with SMTP id 188mr701558ybd.437.1627491000573;
 Wed, 28 Jul 2021 09:50:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210728135534.703028-1-pgwipeout@gmail.com>
 <13247009.uLZWGnKmhe@diego>
 <CAMdYzYqR+ocrXQi8TOHY0Yd2oULXuPgE_QnbcuQSw=BoaumBKA@mail.gmail.com>
 <6063626.MhkbZ0Pkbq@diego>
 <CAMdYzYqz-i1X2oORi6SjSqi6_KwRcbt2u04+cVxcSonX9gxOew@mail.gmail.com>
In-Reply-To: <CAMdYzYqz-i1X2oORi6SjSqi6_KwRcbt2u04+cVxcSonX9gxOew@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 28 Jul 2021 12:49:47 -0400
Message-ID: <CAMdYzYrj7PdvmfvSNV5B3=aDrAx1VUO2=w8vgVprBE1qiEZP3A@mail.gmail.com>
Subject: Re: [PATCH 6/9] arm64: dts: rockchip: add missing rk3568 cru phandles
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 devicetree@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_095002_413123_3C14C771 
X-CRM114-Status: GOOD (  34.00  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gV2VkLCBKdWwgMjgsIDIwMjEgYXQgMTE6MTYgQU0gUGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdt
YWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIEp1bCAyOCwgMjAyMSBhdCAxMDo0MSBBTSBIZWlr
byBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiA+Cj4gPiBBbSBNaXR0d29jaCwg
MjguIEp1bGkgMjAyMSwgMTY6MTg6NDkgQ0VTVCBzY2hyaWViIFBldGVyIEdlaXM6Cj4gPiA+IE9u
IFdlZCwgSnVsIDI4LCAyMDIxIGF0IDEwOjA2IEFNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRl
Y2guZGU+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gSGkgUGV0ZXIsCj4gPiA+ID4KPiA+ID4gPiBB
bSBNaXR0d29jaCwgMjguIEp1bGkgMjAyMSwgMTU6NTU6MzEgQ0VTVCBzY2hyaWViIFBldGVyIEdl
aXM6Cj4gPiA+ID4gPiBUaGUgZ3JmIGFuZCBwbXVncmYgcGhhbmRsZXMgYXJlIG5lY2Vzc2FyeSBm
b3IgdGhlIHBtdWNydSBhbmQgY3J1IHRvCj4gPiA+ID4gPiBtb2RpZnkgY2xvY2tzLiBBZGQgdGhl
c2UgcGhhbmRsZXMgdG8gcGVybWl0IGFkanVzdGluZyB0aGUgY2xvY2sgcmF0ZXMKPiA+ID4gPiA+
IGFuZCBtdXhlcy4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBHZWlz
IDxwZ3dpcGVvdXRAZ21haWwuY29tPgo+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiAgYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NnguZHRzaSB8IDMgKysrCj4gPiA+ID4gPiAgMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+ID4gPiA+ID4KPiA+ID4gPiA+IGRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1NnguZHRzaQo+ID4gPiA+ID4gaW5kZXggMDkwNWZhYzA3MjZh
Li44YmEwNTE2ZWVkZDggMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2eC5kdHNpCj4gPiA+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2eC5kdHNpCj4gPiA+ID4gPiBAQCAtMjE4LDYgKzIxOCw4IEBAIGdyZjog
c3lzY29uQGZkYzYwMDAwIHsKPiA+ID4gPiA+ICAgICAgIHBtdWNydTogY2xvY2stY29udHJvbGxl
ckBmZGQwMDAwMCB7Cj4gPiA+ID4gPiAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicm9ja2No
aXAscmszNTY4LXBtdWNydSI7Cj4gPiA+ID4gPiAgICAgICAgICAgICAgIHJlZyA9IDwweDAgMHhm
ZGQwMDAwMCAweDAgMHgxMDAwPjsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgcm9ja2NoaXAsZ3Jm
ID0gPCZncmY+Owo+ID4gPiA+ID4gKyAgICAgICAgICAgICByb2NrY2hpcCxwbXVncmYgPSA8JnBt
dWdyZj47Cj4gPiA+ID4KPiA+ID4gPiBJIGRvbid0IHRoaW5rIHRoZSBwbXVjcnUgbmVlZHMgYm90
aCBhbmQgaW4gZmFjdCB0aGUgbWFpbmxpbmUKPiA+ID4gPiBjbG9jayBkcml2ZXIgc2hvdWxkIGp1
c3QgcmVmZXJlbmNlIGl0cyBzcGVjaWZpYyBncmYgYXQgYWxsLCBpLmUuCj4gPiA+ID4gICAgICAg
ICBwbXVjcnUgLT4gcG11Z3JmICh2aWEgdGhlIHJvY2tjaGlwLGdyZiBoYW5kbGUpCj4gPiA+ID4g
ICAgICAgICBjcnUgLT4gZ3JmCj4gPiA+ID4KPiA+ID4gPiBJJ3ZlIG5vdCBzZWVuIGFueXRoaW5n
IGJyZWFraW5nIHRoaXMgc2NvcGUgc28gZmFyLgo+ID4gPgo+ID4gPiBJIHRob3VnaHQgdGhlIHNh
bWUgdGhpbmcgYXMgd2VsbCwgYnV0IGZvciBzb21lIHJlYXNvbiB0aGUgZHJpdmVyCj4gPiA+IHJl
ZnVzZXMgdG8gYXBwbHkgYXNzaWduZWQtY2xvY2tzIHRvIHRoZSBwbGxzIHVubGVzcyB0aGVzZSBh
cmUgYWxsCj4gPiA+IHByZXNlbnQuCj4gPiA+IElmIHRoZSBkcml2ZXIgY2FuIGdldCB0aGVzZSBh
c3NpZ25tZW50cyBhdXRvbWF0aWNhbGx5IGV2ZW50dWFsbHksCj4gPiA+IHBlcmhhcHMgaXQncyBh
IGxvYWRpbmcgb3JkZXIgaXNzdWU/Cj4gPiA+Cj4gPiA+IFRoaW5raW5nIGFib3V0IGl0LCBpdCdz
IHByb2JhYmx5IHRoZSBncmYgYW5kIHBtdWdyZiBoYXZlbid0IHByb2JlZAo+ID4gPiB3aGVuIHRo
ZSBkcml2ZXIgaXMgYXR0ZW1wdGluZyB0byBhc3NpZ24gdGhlc2UsIGFuZCB0eWluZyB0aGVtIHRv
Z2V0aGVyCj4gPiA+IGZvcmNlcyB0aGUgcHJvYmUgdG8gaGFwcGVuIGZpcnN0Lgo+ID4KPiA+IHRo
b3VnaCBub3RoaW5nIHJlZmVyZW5jZXMgdGhlIHJlZ3VsYXIgZ3JmIGZyb20gdGhlIHBtdWNydSBJ
IHRoaW5rLgo+ID4KPiA+IEkuZS4gdGhlIHBtdWNydSBQTEwgcmVhZCB0aGVpciBsb2NrIHN0YXRl
IGZyb20gUkszNTY4X1BNVV9NT0RFX0NPTgo+ID4KPiA+IFRoZSByazM1NjggcmV1c2VzIHRoZSBw
bGxfcmszMzI4LXR5cGUgd2hpY2ggaW4gdHVybiBpcyBhIG1vZGlmaWVkIHBsbF9yazMwMzYKPiA+
IGFuZCB1c2VzIHRoZWlyIG9wcy4gV2hpY2ggaW4gdHVybiBtZWFucyB0aGUgcGxsIHNob3VsZG4n
dCBhY2Nlc3MgdGhlIEdSRiBhdAo+ID4gYWxsLCBhcyBpdCB1c2VzIHRoZSBwbGwncyBvd24gcmVn
aXN0ZXIgdG8gY2hlY2sgdGhlIGxvY2tlZCBzdGF0ZS4KPiA+Cj4gPiBDYW4geW91IHRyeSB0byBj
aGFuZ2UgY2xrLXBsbC5jIGZyb20KPiA+Cj4gPiAgICAgICAgIHN3aXRjaCAocGxsX3R5cGUpIHsK
PiA+ICAgICAgICAgY2FzZSBwbGxfcmszMDM2Ogo+ID4gICAgICAgICBjYXNlIHBsbF9yazMzMjg6
Cj4gPiAgICAgICAgICAgICAgICAgaWYgKCFwbGwtPnJhdGVfdGFibGUgfHwgSVNfRVJSKGN0eC0+
Z3JmKSkKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIGluaXQub3BzID0gJnJvY2tjaGlwX3Jr
MzAzNl9wbGxfY2xrX25vcmF0ZV9vcHM7Cj4gPiAuLi4KPiA+IHRvCj4gPiAgICAgICAgIHN3aXRj
aCAocGxsX3R5cGUpIHsKPiA+ICAgICAgICAgY2FzZSBwbGxfcmszMDM2Ogo+ID4gICAgICAgICBj
YXNlIHBsbF9yazMzMjg6Cj4gPiAgICAgICAgICAgICAgICAgaWYgKCFwbGwtPnJhdGVfdGFibGUp
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBpbml0Lm9wcyA9ICZyb2NrY2hpcF9yazMwMzZf
cGxsX2Nsa19ub3JhdGVfb3BzOwo+ID4KPiA+IHNpbWlsYXIgdG8gcmszMzk5Pwo+Cj4gVGhhbmtz
LCBJJ2xsIHRlc3QgdGhpcyEKCkNvbmZpcm1lZCB0aGlzIGZpeGVkIHRoZSBpc3N1ZSBmb3IgdGhl
IHJrMzU2Niwgc28gYXMgbG9uZyBhcyBpdApkb2Vzbid0IGJyZWFrIHJrMzMyOCB0aGlzIHdvcmtz
LgpJJ2xsIGluY2x1ZGUgdGhlIHBhdGNoIGluIHRoZSBuZXh0IHNlcmllcy4KCj4KPiA+Cj4gPiBI
ZWlrbwo+ID4KPiA+ID4gPiA+ICAgICAgICAgICAgICAgI2Nsb2NrLWNlbGxzID0gPDE+Owo+ID4g
PiA+ID4gICAgICAgICAgICAgICAjcmVzZXQtY2VsbHMgPSA8MT47Cj4gPiA+ID4gPiAgICAgICB9
Owo+ID4gPiA+ID4gQEAgLTIyNSw2ICsyMjcsNyBAQCBwbXVjcnU6IGNsb2NrLWNvbnRyb2xsZXJA
ZmRkMDAwMDAgewo+ID4gPiA+ID4gICAgICAgY3J1OiBjbG9jay1jb250cm9sbGVyQGZkZDIwMDAw
IHsKPiA+ID4gPiA+ICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1Njgt
Y3J1IjsKPiA+ID4gPiA+ICAgICAgICAgICAgICAgcmVnID0gPDB4MCAweGZkZDIwMDAwIDB4MCAw
eDEwMDA+Owo+ID4gPiA+ID4gKyAgICAgICAgICAgICByb2NrY2hpcCxncmYgPSA8JmdyZj47Cj4g
PiA+ID4gPiAgICAgICAgICAgICAgICNjbG9jay1jZWxscyA9IDwxPjsKPiA+ID4gPiA+ICAgICAg
ICAgICAgICAgI3Jlc2V0LWNlbGxzID0gPDE+Owo+ID4gPiA+ID4gICAgICAgfTsKPiA+ID4gPiA+
Cj4gPiA+ID4KPiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4KPiA+ID4KPiA+Cj4gPgo+ID4KPiA+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
