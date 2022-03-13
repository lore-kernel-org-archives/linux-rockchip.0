Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C97AFC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Mar 2022 12:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvKbRfGgR4WBeWM5D0PcTyf1orI/2DvE/uHQn+tkg/U=; b=ZQnAreeTGb3ZiW
	ScuEcTxJ9ek3LbOThpo0ZHzlY8stRmh5PXDR9v+3vFcpviy/K4+tUs2GcUEL31AvFOPoSpXry9yk5
	tLBknP6cCByM5awHqsTb9r9Wf3xaeABK2jBkwVuYoCTkMGELgT8naU1nkjx0AQSy1NARFpljeo+SS
	tVp5FDPcIor24pNVeArVdRUabX8/3RCyDVyN/FaLDcF9Yfbi9WLGGxfdF06DEiCgDyfyejS8wHhX2
	KcG8jeZo7/Ngb48qMJvptZmp0AzyuUW3Tyb4Tl2sEwqEFvp9GwaaNfAwK4m64uIFPXcPOPW5zEC6T
	wXm9Rm65a3yhbsmizuRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTNmd-002nL8-Go; Sun, 13 Mar 2022 12:57:15 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTNma-002nKj-Jk
 for linux-rockchip@lists.infradead.org; Sun, 13 Mar 2022 12:57:14 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id g1so25825295ybe.4
 for <linux-rockchip@lists.infradead.org>; Sun, 13 Mar 2022 05:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fkXYlJ6C6wkFx+x1ssKNLuodQj89i4Wuj3dyn8HZpf4=;
 b=e6LfJXTDrJfr5e+FFTBR0v8xULBC4J7mRTDfbLN9gxn7hKKROSV7ZupjXMLbjousk1
 xo3TallrpFvTBcUxLYiWQoDzUINEUjp0OnUTfRNdrVUYmyiY4gjx//bLKVUYDi31D+Pf
 c1qPal5zb3zJU2M1jTTSUein/9JRR1fbzyWfhW5Gqbt2uUlGJNWuMkLEqPNqg01VBjcp
 vUaEA7NxHf2krE4SbXeHOv3AcOMnRsdHQ9giyIm6nWRalg/MkCJpdKMuO4Z1smX5fazZ
 aH6qJY53kFdK7D3JZ+RuT4jMwsBmBMo/2JCUN9UsIeTkzEZLYJzxlTPQBEtEWzS+TH5u
 KLrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fkXYlJ6C6wkFx+x1ssKNLuodQj89i4Wuj3dyn8HZpf4=;
 b=cwHjg5tWQopgiYTU1FwKN3fASonQOXEhSPyt8m9b0fV8uO7LFtt0MbsxBdqCPxjX1G
 RhakxVO+Iw+70py+Iy/TgXIcgQ4n4mlmgOnE26BCChJOpRPWIlU7n6ghhh1AJMQ/CY/u
 vYB774Cm+W5Qso5Hwpv8kq3KPqEv6rfkLnTomPn7faYoSfPUO77FGh3VLBxIXsN92TV7
 03VzqWEB4uWEJZiwQIYYcKHxNuy85rXlJL7Rqv8l5TrS9IFLsxGtmcxCD2amlmAU6fRo
 y6JIdwAX60tYDphTTVMo9AiS+tiMz3yxWdhKKuHdKNF9rfvI2FVy7QLjxIvUBlr4EXDc
 c7JQ==
X-Gm-Message-State: AOAM530UWzP5fawZKopZQVTvaf/E6Dl7VhqmxKmQyMuc7TlmHRA/bilA
 juI8A9ke7QJIG7OIzm4IRafjyl5TsTw+iTW62zI=
X-Google-Smtp-Source: ABdhPJxH2ISX8S+q91FSxXNkK8blf42NUZjIRur4xEN3Knox2qgPaszmg0iOARYnwXKwf7vmcknjfuEcvofiXpzpTFc=
X-Received: by 2002:a25:e697:0:b0:629:1f4a:5a3c with SMTP id
 d145-20020a25e697000000b006291f4a5a3cmr14243335ybh.228.1647176227256; Sun, 13
 Mar 2022 05:57:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220126202427.3047814-1-pgwipeout@gmail.com>
 <3AFD1DD4-AF0A-4ECC-B4F5-E6BD6B9F1BB7@gmail.com>
In-Reply-To: <3AFD1DD4-AF0A-4ECC-B4F5-E6BD6B9F1BB7@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 13 Mar 2022 08:56:55 -0400
Message-ID: <CAMdYzYq06QSmFAwCuTmBYy4LfQAQDxzx2PGc8HOB1iEjxXHGyg@mail.gmail.com>
Subject: Re: [PATCH] drm/bridge: synopsys/dw-hdmi: set cec clock rate
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>, 
 Robert Foss <robert.foss@linaro.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@linux.ie>, 
 Daniel Vetter <daniel@ffwll.ch>, Pierre-Hugues Husson <phh@phh.me>,
 Archit Taneja <architt@codeaurora.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Robin Murphy <robin.murphy@arm.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 dri-devel@lists.freedesktop.org, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220313_055712_688291_E97EA772 
X-CRM114-Status: GOOD (  24.87  )
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

T24gU3VuLCBNYXIgMTMsIDIwMjIgYXQgNjoxMyBBTSBQaW90ciBPbmlzemN6dWsKPHBpb3RyLm9u
aXN6Y3p1a0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4KPgo+ID4gV2lhZG9tb8WbxIcgbmFwaXNhbmEg
cHJ6ZXogUGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4gdyBkbml1IDI2LjAxLjIwMjIs
IG8gZ29kei4gMjE6MjQ6Cj4gPgo+ID4gVGhlIGhkbWktY2VjIGNsb2NrIG11c3QgYmUgMzJraHog
aW4gb3JkZXIgZm9yIGNlYyB0byB3b3JrIGNvcnJlY3RseS4KPiA+IEVuc3VyZSBhZnRlciBlbmFi
bGluZyB0aGUgY2xvY2sgd2Ugc2V0IGl0IGluIG9yZGVyIGZvciB0aGUgaGFyZHdhcmUgdG8KPiA+
IHdvcmsgYXMgZXhwZWN0ZWQuCj4gPiBXYXJuIG9uIGZhaWx1cmUsIGluIGNhc2UgdGhpcyBpcyBh
IHN0YXRpYyBjbG9jayB0aGF0IGlzIHNsaWdodHkgb2ZmLgo+ID4gRml4ZXMgaGRtaS1jZWMgc3Vw
cG9ydCBvbiBSb2NrY2hpcCBkZXZpY2VzLgo+ID4KPiA+IEZpeGVzOiBlYmUzMmMzZTI4MmEgKCJk
cm0vYnJpZGdlOiBzeW5vcHN5cy9kdy1oZG1pOiBFbmFibGUgY2VjIGNsb2NrIikKPiA+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29tPgo+ID4gLS0tCj4g
PiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuYyB8IDcgKysrKysrKwo+
ID4gMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5jCj4gPiBpbmRleCA1NGQ4ZmRhZDM5NWYuLjFhOTZk
YTYwZTM1NyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMv
ZHctaGRtaS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhk
bWkuYwo+ID4gQEAgLTQ4LDYgKzQ4LDkgQEAKPiA+Cj4gPiAjZGVmaW5lIEhETUkxNF9NQVhfVE1E
U0NMSyAgICAzNDAwMDAwMDAKPiA+Cj4gPiArLyogSERNSSBDRUMgbmVlZHMgYSBjbG9jayByYXRl
IG9mIDMya2h6ICovCj4gPiArI2RlZmluZSBIRE1JX0NFQ19DTEtfUkFURSAgICAzMjc2OAo+ID4g
Kwo+ID4gZW51bSBoZG1pX2RhdGFtYXAgewo+ID4gICAgICAgUkdCNDQ0XzhCID0gMHgwMSwKPiA+
ICAgICAgIFJHQjQ0NF8xMEIgPSAweDAzLAo+ID4gQEAgLTMzNDcsNiArMzM1MCwxMCBAQCBzdHJ1
Y3QgZHdfaGRtaSAqZHdfaGRtaV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LAo+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0KTsKPiA+ICAgICAgICAgICAgICAg
ICAgICAgICBnb3RvIGVycl9pYWhiOwo+ID4gICAgICAgICAgICAgICB9Cj4gPiArCj4gPiArICAg
ICAgICAgICAgIHJldCA9IGNsa19zZXRfcmF0ZShoZG1pLT5jZWNfY2xrLCBIRE1JX0NFQ19DTEtf
UkFURSk7Cj4gPiArICAgICAgICAgICAgIGlmIChyZXQpCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgZGV2X3dhcm4oaGRtaS0+ZGV2LCAiQ2Fubm90IHNldCBIRE1JIGNlYyBjbG9jayByYXRlOiAl
ZFxuIiwgcmV0KTsKPiA+ICAgICAgIH0KPiA+Cj4gPiAgICAgICAvKiBQcm9kdWN0IGFuZCByZXZp
c2lvbiBJRHMgKi8KPiA+IC0tCj4gPiAyLjI1LjEKPiA+Cj4gPgo+ID4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IExpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdAo+ID4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo+Cj4g
UGV0ZXIsCj4KPiBPbiBteSA1LjE3LXJjNyB3aXRoIGFwcGxpZWQgcmszNTZ4IFZPUDIgdjggc2Vy
aWVzIC0gdGhpcyBwYXRjaCBtYWtlcyBDRUMgd29ya2luZyBvbiByazM1NjYuCj4gVW5mb3J0dW5h
dGVseSBpdCBicmVha3Mgd29ya2luZyBvayBDRUMgb24gcmszMzk5IHJvY2twaS00Yi4KPgo+IFJl
dmVydGluZyB0aGlzIHBhdGNoIGJyaW5ncyBiYWNrIENFQyBvbiByazMzOTkgLSBidXQgcmszMzY2
IGJlY29tZXMgd2l0aCBub24gd29ya2luZyBDRUMKPgo+IEknbSBub3Qgc3VyZSBob3cgdG8gbW92
ZSBmb3J3YXJkIHdpdGggdGhpcy4uLi4KCkkgd2FzIHdvcnJpZWQgYWJvdXQgdGhhdCwgdGhhbmtz
IGZvciB0ZXN0aW5nIGl0LgpDYW4geW91IHNlbmQgbWUgdGhlIGNlY19jbGsgcmF0ZSBiZWZvcmUg
YW5kIGFmdGVyIHRoaXMgcGF0Y2g/Cgo+Cj4gYnIKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
