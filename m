Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E2CDC77B73
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 19:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRm3szQBaeIf28w49BBi9jVRPpVi6qfD6Eh/wSDFkHM=; b=GrD2y/NZrJR8GO
	+P1n9zAnjJWRqmqzhmuy0Z7ekmqb/H+VUYtfqH3vwM58pshVTSkDdNPPhFhcOV3EzLEM+Q/Zz+WUD
	06dfTZqRSJBKF1EuBx3TBHO51G45QgSisfalTtv7LySGIUmIHNUZ8D76Woq1ZZYPQsbjYym719Lvb
	nipt/XVjgc6QKowN0pwZeON3qPbH6A46SJKEZ+xmLaZ9EN/KBMrZf9cFQNb86VSESxRKehlmL8DOC
	gvIztF9pQBB2Yp+KJRczoNW2TvWOIbXp7sOeqbnsylFNwguVxu1JGR3+/ZBiYkQPmvoZ6zow3Gy/v
	8Gx4n45LCcuq+jfvc9sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptvFb-002QCF-2G;
	Tue, 02 May 2023 19:01:23 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptvFX-002Q9Z-0P;
	Tue, 02 May 2023 19:01:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 23FB062810;
	Tue,  2 May 2023 19:01:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12C38C433A7;
	Tue,  2 May 2023 19:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683054076;
	bh=prkycoKFrtYOB9sqzJph1/Wh7+dUYl73V0ySsrK86tE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=rf/Ymu/EiSQOPePfJMJv1847ZBWRjnjneowURtOqNMODuCRTfcl2GQ0h/jO2AdmCs
	 leEyX7R6GR2dka6/IsiyySID/QcvyxsSv7fNtmEEy0Cm9A6hC1sqxMJ+9jfUBya5xj
	 ODLup2MnZzYCOUMdIZzoCrk5OSl4AOnL/7/DJbtkd5lptoW7/0YbgOkcgOH14mk6Au
	 qACeCdnoaBW8B9rF8o7n7shq7gT7w0jQTaVjP3mXHg69IyA+TLldeHm4Y1C5mj86Z3
	 uRYRPp4016gJq/2Xf9LklNYOIaWs99spKYSrk9MtOv6rk+8yKfvzOFwqXzWomFJ/+X
	 cezzz3yUhjKtA==
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-4f00d41df22so30189113e87.1;
        Tue, 02 May 2023 12:01:15 -0700 (PDT)
X-Gm-Message-State: AC+VfDyG1CQwfwF5bTh/IltplGzpBM/o5QGv0LT4De8A8KsyI85aJvr8
	Whv4V/Cic/aAclh67qew4f4m2UJmmnGZaAL7Dw==
X-Google-Smtp-Source: ACHHUZ4aQAyOb+PGJ7PQfIp0PiLUMh7I0dBEHOyVsVppKRO7n40/yktfmotxwSexv0gCD3XVcEmYB9ah5iQIzUMa54Q=
X-Received: by 2002:a05:6512:3b07:b0:4eb:412e:b06a with SMTP id
 f7-20020a0565123b0700b004eb412eb06amr237890lfv.22.1683054074001; Tue, 02 May
 2023 12:01:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220328000915.15041-1-ansuelsmth@gmail.com> <CAFr9PXkgrRe-=E=GhNnZ4w1x_FMb97-_RmX6ND1vEd74_TbZSw@mail.gmail.com>
 <4ff4f171-c5f8-87af-aad1-5e7686292288@microchip.com> <45bc13a8-1442-2dd3-b9ea-1ed2f5962bac@arm.com>
In-Reply-To: <45bc13a8-1442-2dd3-b9ea-1ed2f5962bac@arm.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 2 May 2023 14:01:01 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL7t47x-5U6STynwW-+4wJUhs_R9wuaQ0YOgX59aJ=vew@mail.gmail.com>
Message-ID: <CAL_JsqL7t47x-5U6STynwW-+4wJUhs_R9wuaQ0YOgX59aJ=vew@mail.gmail.com>
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
To: Robin Murphy <robin.murphy@arm.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>, Daniel Palmer <daniel@0x0f.com>, 
	Ansuel Smith <ansuelsmth@gmail.com>, Claudiu Beznea <Claudiu.Beznea@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Santiago Esteban <Santiago.Esteban@microchip.com>, 
	Cristian Birsan <Cristian.Birsan@microchip.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, DTML <devicetree@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-actions@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-omap@vger.kernel.org, 
	linux-amlogic@lists.infradead.org, linux-arm-kernel@axis.com, 
	linux-aspeed@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org, 
	chrome-platform@lists.linux.dev, linux-renesas-soc@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	kernel@dh-electronics.com, linux-mediatek@lists.infradead.org, 
	openbmc@lists.ozlabs.org, linux-tegra@vger.kernel.org, linux-oxnas@groups.io, 
	linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_120119_261549_AB48403C 
X-CRM114-Status: GOOD (  20.64  )
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

T24gVHVlLCBBcHIgMjUsIDIwMjMgYXQgMTE6MjHigK9BTSBSb2JpbiBNdXJwaHkgPHJvYmluLm11
cnBoeUBhcm0uY29tPiB3cm90ZToKPgo+IE9uIDI5LzAzLzIwMjIgOTo1MCBhbSwgTmljb2xhcyBG
ZXJyZSB3cm90ZToKPiA+IEFuc3VlbCwgQWxsLAo+ID4KPiA+IE9uIDI4LzAzLzIwMjIgYXQgMTA6
NTUsIERhbmllbCBQYWxtZXIgd3JvdGU6Cj4gPj4gSGkgQW5zdWVsCj4gPj4KPiA+PiBPbiBNb24s
IDI4IE1hciAyMDIyIGF0IDA5OjA5LCBBbnN1ZWwgU21pdGggPGFuc3VlbHNtdGhAZ21haWwuY29t
PiB3cm90ZToKPiA+Pj4KPiA+Pj4gSGksCj4gPj4+IGFzIHRoZSB0aXRsZSBzYXksIHRoZSBpbnRl
bnRpb24gb2YgdGhpcyAiInNlcmllcyIiIGlzIHRvIGZpbmFsbHkKPiA+Pj4gY2F0ZWdvcml6ZQo+
ID4+PiB0aGUgQVJNIGR0cyBkaXJlY3RvcnkgaW4gc3ViZGlyZWN0b3J5IGZvciBlYWNoIG9lbS4K
PiA+Pgo+ID4+IFdoaWxlIEkgYWdyZWUgd2l0aCB0aGlzIGNoYW5nZSBhbmQgdGhpbmsgaXQncyBm
b3IgdGhlIGdvb2QgKGJyb3dzaW5nCj4gPj4gdGhlIEFSTSBkdHMgZGlyZWN0b3J5IGF0IHRoZSBt
b21lbnQgaXMgZnJ1c3RyYXRpbmcuLikgSSB0aGluawo+ID4+IGJ1aWxkcm9vdCBhbmQgb3RoZXJz
IG5lZWQgdG8gYmUgdG9sZCBhYm91dCB0aGlzIGFzIGl0J2xsIHBvdGVudGlhbGx5Cj4gPj4gYnJl
YWsgdGhlaXIga2VybmVsIGJ1aWxkIHNjcmlwdGluZyBmb3IgQVJNIGFuZCBwcm9iYWJseSBtZXNz
ZXMgdXAgdGhlCj4gPj4gY29uZmlncyB0aGV5IGhhdmUgZm9yIGV4aXN0aW5nIGJvYXJkcy4KPiA+
Cj4gPiBUaGlzIGFzcGVjdCBtdXN0bid0IGJlIHVuZGVyZXN0aW1hdGVkIGFuZCBJIGFudGljaXBh
dGUgbG90cyBvZiBpc3N1ZXMKPiA+IGR1cmluZyBhIGxvbmcgdGltZSBvbiB0aGlzIHBhcnRpY3Vs
YXIgdG9waWMgb2YgImJ1aWxkIHN5c3RlbXMiLgo+ID4KPiA+IEFub3RoZXIgYXNwZWN0IGlzIENJ
IGFuZCBwdWJsaWMgb3IgcHJpdmF0ZSB0ZXN0aW5nIGZhcm1zIHdlIGFsbCBoYXZlCj4gPiBydW5u
aW5nLgo+Cj4gWWV0IGFub3RoZXIgaXMgaWYgdGhpcyBhZmZlY3RzIHdoYXQgYG1ha2UgZHRic19p
bnN0YWxsYCBkb2VzIChJIGRvbid0Cj4ga25vdyBmb3Igc3VyZSwgYnV0IEknZCBiZSBpbmNsaW5l
ZCB0byBzdXNwZWN0IGl0IG1pZ2h0KS4gU29tZSBkaXN0cm9zCj4gdXNlIHRoYXQgdG8gZGVsaXZl
ciB0aGUgRFRCcyBhcyBwYXJ0IG9mIHRoZWlyIGtlcm5lbCBwYWNrYWdlLCBzbyBpZgo+IHBhdGhz
IHN1ZGRlbmx5IGNoYW5nZSBpdCBjb3VsZCBicmVhayBlbmQgdXNlcnMnIGJvb3Rsb2FkZXIgc2V0
dXBzIHRvby4KCkluZGVlZCwgdGhpcyBjYW1lIHVwIGxhc3QgdGltZS4gVHVybnMgb3V0IEkgaGFk
IGFscmVhZHkgaW1wbGVtZW50ZWQKc3VwcG9ydCB0byBtYWludGFpbiB0aGUgZmxhdCBpbnN0YWxs
LiBJIGp1c3QgcmUtd3JvdGUgaXQgc2luY2UKTWFrZWZpbGUuZHRiaW5zdCBjaGFuZ2VkIGNvbXBs
ZXRlbHkgc2luY2UgdGhlbi4KClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
