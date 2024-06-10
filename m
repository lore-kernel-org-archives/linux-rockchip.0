Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 260F9C27C5E
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jun 2024 11:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ise2hllBpHVU1igG1kHkXjQ9XwjUuQSrzwYU1KYy6qc=; b=s2u9jR0e6ELesd
	HQb+vu4XKGfF9GK01C9b8hfu8L95guxv8f5FuOz95BKrFVrpCC6YFxY4eiT7myGY2aC/t8gaj1l9Z
	O0dl6CciICWZOxvs+HN8+mrjvbhZKBZ5POaKGA42iyJdWIYVPhdYA7Rv/knld6ZVXukRUzUOpwlsk
	9gk/Nek8R9OirK7BbxOoKwJuW4JmZ146YFOKDoSnKWlJn04M8+2BLwdlBUU1sILlEQIkuQQgRCBjh
	NxLH7LklkcOdYpMBYht+krew1RvDv9Tcjjz4VPLHjTLFFGp0K/KZvNjFGeVmBBazscDwZahHPQNK8
	fwou4M2mXgipoTD/rZig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGdTP-00000004qzC-339G;
	Mon, 10 Jun 2024 11:46:03 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGdTN-00000004qyI-13Mu
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Jun 2024 11:46:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 812BA60AF0
	for <linux-rockchip@lists.infradead.org>; Mon, 10 Jun 2024 11:45:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6568CC4AF52
	for <linux-rockchip@lists.infradead.org>; Mon, 10 Jun 2024 11:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718019958;
	bh=LkJbrehovjI8boe5mKT25LVBJmIDKTobkxAiPn5ANrs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=YcdNmjL/Kg19JlWdyGtIGam2DhFIoyzaA+RZ/TSZaBRZBL55Ly52V70toHdLAQK2b
	 k4oRPtSFOd8BC3xTzLxGVb43zwow/i9ZCxS+eLTOxZC4SWjzuhyo+wVLVdYvybjoR2
	 1WGYSOJpPQR5GVIAQZzNXup1O3mXsEp5ZczJPDNxGhDL0u3QZ9YlYNjyDFOtNmBdZK
	 8RPgUP2nj5owfPP8y1zhZl/f0ivnEdS25/nztvMzv8op0xW/6pvuxv/sa3NM05xUMQ
	 L8kPv09i1Vh65awZ5i33977VdFBD2yLXYl2JgwTZMVCzjoW/FPc8gujk3jJZojqMCA
	 fXOtA1fXoTjUg==
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-dfa48f505dfso4682111276.3
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Jun 2024 04:45:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWtQGHZlp+NAQhvFMTnAbqUPKbPn6GsQSP/Vw7Tk0i4FPa9x4rF54GtE+GLohcGOq/NKDZKjYXtzcsdUXa6NoncDwg/5nbezvu3hZRCzc3X5WpR
X-Gm-Message-State: AOJu0Yy3kAhhlJqaiAkyif9l2MwDhRMbrrqX41ek+89SMlM/0E530zV6
	ogHeUl3Rdr7J/j2z3A70hvU55kXroCkwJasWQJsxCEdSXPGKjWjb5IU299su2iNKpdAyLmU4T3g
	MYAmqaFJeEv6dwL7jGmdS7kDupUVNKdrKbUJuUA==
X-Google-Smtp-Source: AGHT+IE9MeVBsZF94aj/YHt5dCD74gzjhxYbl6SkNcdi+ZXk0stj9lwbNuDA0bYmmw/1OtQpee+r5SKCScZprWB34uw=
X-Received: by 2002:a25:901:0:b0:dee:998b:1459 with SMTP id
 3f1490d57ef6-dfaf653d004mr8969753276.39.1718019957648; Mon, 10 Jun 2024
 04:45:57 -0700 (PDT)
MIME-Version: 1.0
References: <20240503151129.3901815-1-l.stach@pengutronix.de>
 <20240503151129.3901815-11-l.stach@pengutronix.de> <CAN6tsi4js9jb3Q2tTKLo=3ueCPsQaezZ-FDyzHjJ14D0-Z7ttg@mail.gmail.com>
In-Reply-To: <CAN6tsi4js9jb3Q2tTKLo=3ueCPsQaezZ-FDyzHjJ14D0-Z7ttg@mail.gmail.com>
From: Robert Foss <rfoss@kernel.org>
Date: Mon, 10 Jun 2024 13:45:46 +0200
X-Gmail-Original-Message-ID: <CAN6tsi5R1TiLnwAz0tDbc=jYODwwpTx=3Am-Jqh1wAqYb_8xgA@mail.gmail.com>
Message-ID: <CAN6tsi5R1TiLnwAz0tDbc=jYODwwpTx=3Am-Jqh1wAqYb_8xgA@mail.gmail.com>
Subject: Re: [PATCH 10/14] drm/bridge: analogix_dp: move macro reset after
 link bandwidth setting
To: Lucas Stach <l.stach@pengutronix.de>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>, 
	Jingoo Han <jingoohan1@gmail.com>, Inki Dae <inki.dae@samsung.com>, 
	Seung-Woo Kim <sw0312.kim@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, kernel@pengutronix.de, 
	patchwork-lst@pengutronix.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_044601_426774_B64C8156 
X-CRM114-Status: GOOD (  19.13  )
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

T24gVHVlLCBNYXkgNywgMjAyNCBhdCAzOjA34oCvUE0gUm9iZXJ0IEZvc3MgPHJmb3NzQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gRnJpLCBNYXkgMywgMjAyNCBhdCA1OjEz4oCvUE0gTHVjYXMg
U3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+ID4KPiA+IFNldHRpbmcgdGhl
IGxpbmsgYmFuZHdpZHRoIG1heSBjaGFuZ2UgdGhlIFBMTCBwYXJhbWV0ZXJzLCB3aGljaCB3aWxs
IGNhdXNlCj4gPiB0aGUgUExMIHRvIGdvIG91dCBvZiBsb2NrLCBzbyBtYWtlIHN1cmUgdG8gYXBw
bHkgdGhlIE1BQ1JPX1JTVCwgd2hpY2gKPiA+IGFjY29yZGluZyB0byB0aGUgY29tbWVudCBpcyBy
ZXF1aXJlZCB0byBiZSBwdWxzZWQgYWZ0ZXIgdGhlIFBMTCBpcyBsb2NrZWQuCj4gPgo+ID4gU2ln
bmVkLW9mZi1ieTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gPiAtLS0K
PiA+ICAuLi4vZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jIHwgMTgg
KysrKysrKysrKy0tLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyks
IDggZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlk
Z2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9h
bmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPiA+IGluZGV4IGI0YTQ3MzExY2ZlOC4uNzM2YjJl
ZDc0NWUxIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9h
bmFsb2dpeF9kcF9jb3JlLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9n
aXgvYW5hbG9naXhfZHBfY29yZS5jCj4gPiBAQCAtMjQzLDYgKzI0MywxMSBAQCBzdGF0aWMgaW50
IGFuYWxvZ2l4X2RwX2xpbmtfc3RhcnQoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHApCj4g
Pgo+ID4gICAgICAgICAvKiBTZXQgbGluayByYXRlIGFuZCBjb3VudCBhcyB5b3Ugd2FudCB0byBl
c3RhYmxpc2gqLwo+ID4gICAgICAgICBhbmFsb2dpeF9kcF9zZXRfbGlua19iYW5kd2lkdGgoZHAs
IGRwLT5saW5rX3RyYWluLmxpbmtfcmF0ZSk7Cj4gPiArICAgICAgIC8qCj4gPiArICAgICAgICAq
IE1BQ1JPX1JTVCBtdXN0IGJlIGFwcGxpZWQgYWZ0ZXIgdGhlIFBMTF9MT0NLIHRvIGF2b2lkCj4g
PiArICAgICAgICAqIHRoZSBEUCBpbnRlciBwYWlyIHNrZXcgaXNzdWUgZm9yIGF0IGxlYXN0IDEw
IHVzCj4gPiArICAgICAgICAqLwo+ID4gKyAgICAgICBhbmFsb2dpeF9kcF9yZXNldF9tYWNybyhk
cCk7Cj4gPiAgICAgICAgIGFuYWxvZ2l4X2RwX3NldF9sYW5lX2NvdW50KGRwLCBkcC0+bGlua190
cmFpbi5sYW5lX2NvdW50KTsKPiA+Cj4gPiAgICAgICAgIC8qIFNldHVwIFJYIGNvbmZpZ3VyYXRp
b24gKi8KPiA+IEBAIC01NjUsMTIgKzU3MCw2IEBAIHN0YXRpYyBpbnQgYW5hbG9naXhfZHBfZnVs
bF9saW5rX3RyYWluKHN0cnVjdCBhbmFsb2dpeF9kcF9kZXZpY2UgKmRwLAo+ID4gICAgICAgICBp
bnQgcmV0dmFsID0gMDsKPiA+ICAgICAgICAgYm9vbCB0cmFpbmluZ19maW5pc2hlZCA9IGZhbHNl
Owo+ID4KPiA+IC0gICAgICAgLyoKPiA+IC0gICAgICAgICogTUFDUk9fUlNUIG11c3QgYmUgYXBw
bGllZCBhZnRlciB0aGUgUExMX0xPQ0sgdG8gYXZvaWQKPiA+IC0gICAgICAgICogdGhlIERQIGlu
dGVyIHBhaXIgc2tldyBpc3N1ZSBmb3IgYXQgbGVhc3QgMTAgdXMKPiA+IC0gICAgICAgICovCj4g
PiAtICAgICAgIGFuYWxvZ2l4X2RwX3Jlc2V0X21hY3JvKGRwKTsKPiA+IC0KPiA+ICAgICAgICAg
LyogSW5pdGlhbGl6ZSBieSByZWFkaW5nIFJYJ3MgRFBDRCAqLwo+ID4gICAgICAgICBhbmFsb2dp
eF9kcF9nZXRfbWF4X3J4X2JhbmR3aWR0aChkcCwgJmRwLT5saW5rX3RyYWluLmxpbmtfcmF0ZSk7
Cj4gPiAgICAgICAgIGFuYWxvZ2l4X2RwX2dldF9tYXhfcnhfbGFuZV9jb3VudChkcCwgJmRwLT5s
aW5rX3RyYWluLmxhbmVfY291bnQpOwo+ID4gQEAgLTYzNyw5ICs2MzYsMTIgQEAgc3RhdGljIGlu
dCBhbmFsb2dpeF9kcF9mYXN0X2xpbmtfdHJhaW4oc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAq
ZHApCj4gPiAgICAgICAgIHU4IGxpbmtfYWxpZ24sIGxpbmtfc3RhdHVzWzJdOwo+ID4gICAgICAg
ICBlbnVtIHBsbF9zdGF0dXMgc3RhdHVzOwo+ID4KPiA+IC0gICAgICAgYW5hbG9naXhfZHBfcmVz
ZXRfbWFjcm8oZHApOwo+ID4gLQo+ID4gICAgICAgICBhbmFsb2dpeF9kcF9zZXRfbGlua19iYW5k
d2lkdGgoZHAsIGRwLT5saW5rX3RyYWluLmxpbmtfcmF0ZSk7Cj4gPiArICAgICAgIC8qCj4gPiAr
ICAgICAgICAqIE1BQ1JPX1JTVCBtdXN0IGJlIGFwcGxpZWQgYWZ0ZXIgdGhlIFBMTF9MT0NLIHRv
IGF2b2lkCj4gPiArICAgICAgICAqIHRoZSBEUCBpbnRlciBwYWlyIHNrZXcgaXNzdWUgZm9yIGF0
IGxlYXN0IDEwIHVzCj4gPiArICAgICAgICAqLwo+ID4gKyAgICAgICBhbmFsb2dpeF9kcF9yZXNl
dF9tYWNybyhkcCk7Cj4gPiAgICAgICAgIGFuYWxvZ2l4X2RwX3NldF9sYW5lX2NvdW50KGRwLCBk
cC0+bGlua190cmFpbi5sYW5lX2NvdW50KTsKPiA+ICAgICAgICAgYW5hbG9naXhfZHBfc2V0X2xh
bmVfbGlua190cmFpbmluZyhkcCk7Cj4gPgo+ID4gLS0KPiA+IDIuMzkuMgo+ID4KPgo+IFRoaXMg
cGF0Y2ggZG9lcyBub3QgYXBwbHkgb24gZHJtLW1pc2MvZHJtLW1pc2MtbmV4dCBhcyBmYXIgYXMg
SSBjYW4gdGVsbC4KClJldmlld2VkLWJ5OiBSb2JlcnQgRm9zcyA8cmZvc3NAa2VybmVsLm9yZz4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
