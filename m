Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEC5CC7618E
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Apr 2023 22:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rDvRJuvliANjNBp0XXV5bRE8TfcJwKSRbV5gRd5mtIM=; b=mRqzQrZDVJcNY7
	bFrl9lPfdbrLwiWs9kBn+seVn4We4IN0JhPp/6UYtsj+4Pltd7pSE8eYrogKi8Hb6N2GAYsX9CZr7
	pKEc9xBLO7+G3USUTuwoThnN0TZ1LfRHiUNuG1C4Yr23KN78CT1LFuMhf1jdA1KI8qqCQt8fTeXDV
	8BPjKqiJbLvsDjhgBS88RuBlivSQoiUEDXltuMJJhWsoHU8Vagk08kvbEch8jctUEzvBgcFquWcb+
	2oriUEBSTJmnyZ1855aLHkoYbdonE2fcZBvRyt3IYRlLOfQy7FEDtGJVr1HmpnhsEAN1AmKO8dZTF
	CXKTWuoCUxCw5czygPdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pr4bX-00HGmS-2g;
	Mon, 24 Apr 2023 22:24:15 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pr4bR-00HGkK-19;
	Mon, 24 Apr 2023 22:24:11 +0000
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-74dd7f52f18so1440544985a.0;
        Mon, 24 Apr 2023 15:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682375046; x=1684967046;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=29IkbevyZ1JNfaYOQPn+HUpDLJ8b+PXRIDIYtEtvSPw=;
        b=IenoMxH48zII5fB58Gv60rUYDA9EtMMTbp/ZPDsVe6TBLDWwJpDQNL0U/+HtpDrCsX
         fYcOvs90TmBzvujQKZgX1eQmTxHrD8IQ8eq3PJOqaDLWqpZdTwfMfBvVmqcqO28ToIw7
         /P7xxKrOhgtS2jNLZBQf3OSYmuIwjEkZ1S/W3qfD2WGO2+JW+Io3zDwpMSpXDXbRTpHh
         uitadTIFC1oliUm/1Zh59RVMfDNq9tD4dKeTBpg9+/lExxyEH32RZcEQz0uV3npjXStN
         Fms3lNhl1J8Rm6im79IxUzwKmWZ7e0Mj4EIC16F0L0FGCYsa066ivIKjU382HCqCopQ+
         ujLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682375046; x=1684967046;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=29IkbevyZ1JNfaYOQPn+HUpDLJ8b+PXRIDIYtEtvSPw=;
        b=jLGTgiw3xeuJAdXOiIpnxXYoFMeDiiV7uGbCCd+RU/AL1G7OIv6/D1uCi61ak8QPoM
         x7D52eTL+nKJNOCTgCmaKjFgCh8EmwcIwjvf5i67lGRZ4PJfale0nwYzAwjEYZfoutFi
         M9Fm9fjhZ34fR4HmD8d4vhQkzjK+pDZSz/RkYxrSa3hLlOfz8I2sw5NRnsC4bZWfpoiQ
         shkQRnBtyluv3dndO65VxDiGXOmyy8j1dxNWYL0ikwr62Ks7Kw7J+GZHoTTinTI/lZJI
         sAh+E20wuVOjclHn5LJeXhmP4mEoxUth3yHqhWb1y93JHarN6uPfIOJopgR0iD7eD7Kr
         58yg==
X-Gm-Message-State: AAQBX9d+LlIYT1IoPenuH/Ox0O90DySR3aa4bzuQKkrwJ9mDsM58kUCr
	tNEI37Y9K/BhGzwk3GJIWBbsQ5D6HTuwaP1k3xQ=
X-Google-Smtp-Source: AKy350ZaN4hyLvIPAT5s597oFwGJxWUglXzPuWB3KyxTTdt5lEGprQ4ln3wBEVVlH0j6U9Xj73/XDG6Es3m1QFoaTr0=
X-Received: by 2002:a05:6214:5195:b0:5ef:512d:2d47 with SMTP id
 kl21-20020a056214519500b005ef512d2d47mr22906279qvb.19.1682375046222; Mon, 24
 Apr 2023 15:24:06 -0700 (PDT)
MIME-Version: 1.0
References: <20220328000915.15041-1-ansuelsmth@gmail.com> <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain> <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
From: Ansuel Smith <ansuelsmth@gmail.com>
Date: Tue, 25 Apr 2023 00:23:54 +0200
Message-ID: <CA+_ehUw3eAEHRsi1ATSKeK4jtX+EoVSwUodNL3bcpTJaX-r9cA@mail.gmail.com>
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
To: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-omap@vger.kernel.org, 
	linux-amlogic@lists.infradead.org, linux-arm-kernel@axis.com, 
	linux-aspeed@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org, 
	chrome-platform@lists.linux.dev, linux-renesas-soc@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	kernel@dh-electronics.com, linux-mediatek@lists.infradead.org, 
	openbmc@lists.ozlabs.org, linux-tegra@vger.kernel.org, linux-oxnas@groups.io, 
	linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org, 
	Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_152409_400405_5C1516AF 
X-CRM114-Status: GOOD (  55.93  )
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

SWwgZ2lvcm5vIG1hciAyNSBhcHIgMjAyMyBhbGxlIG9yZSAwMDoxMCBSb2IgSGVycmluZwo8cm9i
aCtkdEBrZXJuZWwub3JnPiBoYSBzY3JpdHRvOgo+Cj4gT24gVHVlLCBNYXIgMjksIDIwMjIgYXQg
ODoyN+KAr0FNIEFuc3VlbCBTbWl0aCA8YW5zdWVsc210aEBnbWFpbC5jb20+IHdyb3RlOgo+ID4K
PiA+IE9uIFR1ZSwgTWFyIDI5LCAyMDIyIGF0IDAzOjIwOjE4UE0gKzAyMDAsIEtyenlzenRvZiBL
b3psb3dza2kgd3JvdGU6Cj4gPiA+IE9uIDI4LzAzLzIwMjIgMDI6MDksIEFuc3VlbCBTbWl0aCB3
cm90ZToKPiA+ID4gPiBIaSwKPiA+ID4gPiBhcyB0aGUgdGl0bGUgc2F5LCB0aGUgaW50ZW50aW9u
IG9mIHRoaXMgIiJzZXJpZXMiIiBpcyB0byBmaW5hbGx5IGNhdGVnb3JpemUKPiA+ID4gPiB0aGUg
QVJNIGR0cyBkaXJlY3RvcnkgaW4gc3ViZGlyZWN0b3J5IGZvciBlYWNoIG9lbS4KPiA+ID4gPgo+
ID4gPiA+IFRoZSBtYWluIHJlYXNvbiBmb3IgdGhpcyBpcyB0aGF0IGl0IGJlY2FtZSB1bnByYWN0
aWNhbCB0byBoYW5kbGUgMjYwMAo+ID4gPiA+IGR0cyBmaWxlcyBhbmQgdHJ5IHRvIGV2ZW4gdW5k
ZXJzdGFuZC9lZGl0L2NoZWNrIHRoZSBzaXR1YXRpb24gZm9yIGEKPiA+ID4gPiBzcGVjaWZpYyB0
YXJnZXQuCj4gPiA+ID4KPiA+ID4gPiBJbiBhcm02NCB3ZSBhbHJlYWR5IGhhdmUgdGhpcyBraW5k
IG9mIHNlcGFyYXRpb24gYW5kIEkgaG9uZXN0bHkgdGhpbmsKPiA+ID4gPiB0aGF0IHRoaXMgd2Fz
IG5ldmVyIHByb3Bvc2VkIGZvciBBUk0gZHVlIHRvIHRoZSBmYWN0IHRoYXQgdGhlcmUgYXJlCj4g
PiA+ID4gMjYwMCsgZmlsZXMgdG8gc29ydCBhbmQgdGhlIGZhY3QgdGhhdCBpdCB3aWxsIGJlIGEg
bWVzcyB0byBtZXJnZSB0aGlzCj4gPiA+ID4gZW50aXJlbHkgYnV0IElNSE8gd2l0aCBhIGxpdHRs
ZSBiaXQgb2YgZWZmb3J0IHdlIGNhbiBmaW5hbGx5IHNvbHZlIHRoaXMKPiA+ID4gPiBwcm9ibGVt
IGFuZCBoYXZlIGEgd2VsbCBvcmdhbml6ZWQgZGlyZWN0b3J5IGp1c3QgbGlrZSBhcm02NC4KPiA+
ID4gPgo+ID4gPiA+IFNvbWUgcHJlcmVxdWlzaXRlIG9uIGhvdyB0aGlzIHdvcmsgd2FzIGRvbmU6
Cj4gPiA+ID4gLSBUaGlzIGNvbWVzIGVudGlyZWx5IGZyb20gYSBweXRob24gc2NyaXB0IGNyZWF0
ZWQgYnkgbWUgZm9yIHRoZSB0YXNrLgo+ID4gPiA+ICAgbGlua2VkIGhlcmUgWzFdCj4gPiA+ID4g
LSBJIGhhZCB0byBtYW51YWxseSBjYXRlZ29yaXplIGFsbCB0aGUgZGlmZmVyZW50IGFyY2ggaW4g
dGhlIG1ha2VmaWxlCj4gPiA+ID4gICBiYXNlZCBvbiB0aGUgb2VtLiBJIHNlYXJjaGVkIGV2ZXJ5
IGFyY2ggb24gdGhlIGludGVybmV0IHRyeWluZyB0bwo+ID4gPiA+ICAgdW5kZXJzdGFuZCB0aGUg
Y29ycmVjdCBvZW0uIEkgaG9wZSB0aGV5IGFyZSBjb3JyZWN0IGJ1dCBJIHdvdWxkIGxvdmUKPiA+
ID4gPiAgIHNvbWUgY29tbWVudHMgYWJvdXQgdGhlbS4KPiA+ID4gPiAtIFRoaXMgY3VycmVudCAi
InNlcmllcyIiIGlzIGFsbCBzcXVhc2hlZCBpbiBvbmUgYmlnIGNvbW1pdCB0byBiZXR0ZXIKPiA+
ID4gPiAgIHJlY2VpdmUgY29tbWVudHMgZm9yIHRoaXMuIFRoZSBmaW5hbCB2ZXJzaW9uIGlkZWFs
bHkgd291bGQgaGF2ZSBhbGwKPiA+ID4gPiAgIGNoYW5nZXMgaW4gc2VwYXJhdGUgY29tbWl0cy4g
VGhlIHNjcmlwdCBjYW4gYWxyZWFkeSBkbyB0aGlzLCBpdCdzIGp1c3QKPiA+ID4gPiAgIGNvbW1l
bnRlZC4KPiA+ID4gPgo+ID4gPiA+IEhlcmUgaXMgYSBsaXN0IG9mIHNvbWUgZGlzY292ZXJpZXMg
d2hpbGUgZG9pbmcgYWxsIHRoZSBzb3J0aW5nLgo+ID4gPiA+IFRoZXNlIGFyZSB0b3RhbGx5IGFk
ZGl0aW9uYWwgcmVhc29uIHdoeSB3ZSBuZWVkIHRoaXMuCj4gPiA+ID4KPiA+ID4gPiBXaGlsZSBj
cmVhdGluZyB0aGUgc2NyaXB0IEkgZGlzY292ZXJlZCBzb21lIGZ1bm55IHRoaW5nczoKPiA+ID4g
PiAtIFdlIGhhdmUgb3JwaGFuIGR0cyEgVGhlcmUgYXJlIGR0cyB0aGF0IGFyZSBuZXZlciBjb21w
aWxlZCBhbmQgYXJlCj4gPiA+ID4gICB0aGVyZSBqdXN0IGZvciByZWZlcmVuY2UuIFdlIHdvdWxk
IG5ldmVyIGhhdmUgbm90aWNlZCB0aGlzIHdpdGhvdXQgdGhpcwo+ID4gPiA+ICAgY2hhbmdlIGFu
ZCBwcm9iYWJseSBub2JvZHkgbm90aWNlZCBpdC4gVGhleSBhcmUgY3VycmVudGx5IGFsbCBsaXN0
ZWQKPiA+ID4gPiAgIGluIHRoZSBweXRob24gc2NyaXB0Lgo+ID4gPiA+IC0gV2UgaGF2ZSBkdHNp
IHNoYXJlZCBhY3Jvc3MgZGlmZmVyZW50IG9lbS4gTXkgY3VycmVudCBzb2x1dGlvbiBmb3IgdGhl
bQo+ID4gPiA+ICAgaXM6IE5PVCBTT1JUIFRIRU0gYW5kIGxlYXZlIHRoZW0gaW4gdGhlIGdlbmVy
aWMgZGlyZWN0b3J5IGFuZCBjcmVhdGUgYQo+ID4gPiA+ICAgbGluayBpbiBlYWNoIG9lbSBkdHMg
dGhhdCBwb2ludHMgdG8gdGhlc2UgZHRzaS4gVGhpcyBpcyB0byB0cnkgaW4KPiA+ID4gPiAgIGV2
ZXJ5IHdheSBwb3NzaWJsZSB0byBza2lwIGFueSBhZGRpdGlvbmFsIGNoYW5nZXMgdG8gdGhlIGR0
cy4KPiA+ID4gPiAgIEN1cnJlbnQgZHRzaSB0aGF0IHN1ZmZlcnMgZnJvbSB0aGlzIGFyZSBvbmx5
IDMuIChsaXN0ZWQgaW4gdGhlIHNjcmlwdCkKPiA+ID4gPiAtIGFybTY0IGR0cyBhbmQgZHRzaSBy
ZWZlcmVuY2UgQVJNIGR0cy4gT2J2aW91c2x5IHRoaXMgY2hhbmdlIHdvdWxkIGNhdXNlCj4gPiA+
ID4gICBicm9rZW4gaW5jbHVkZSBmb3IgdGhlc2Ugc3BlY2lhbCBkdHNpLiBUaGUgc2NyaXB0IGNy
ZWF0ZXMgYSBkZXBlbmRlbmN5Cj4gPiA+ID4gICB0YWJsZSBvZiB0aGUgZW50aXJlIGFybTY0IGRp
cmVjdG9yeSBhbmQgZml4IGV2ZXJ5IGJyb2tlbiBkZXBlbmRlbmN5Cj4gPiA+ID4gICAoaG9waW5n
IHRoZXkgYWxsIHVzZSBhIHNhbmUgaW5jbHVkZSBsb2dpYy4uLiByZWdleCBpcyB1c2VkIHRvIHBh
cnNlCj4gPiA+ID4gICBhbGwgdGhlIGRpZmZlcmVudCBkZXBlbmRlbmN5KQo+ID4gPiA+Cj4gPiA+
ID4gU28gaW4gc2hvcnQgdGhlIHNjcmlwdCBkb2VzIHRoZSBmb2xsb3dpbmcgc3RlcHM6Cj4gPiA+
ID4gMS4gRW51bWVyYXRlIGFsbCB0aGUgYWN0aW9uIHRvIGRvLi4uIChkdHMgdG8gbW92ZSwgc2Nh
biBkZXBlbmRlbmN5IGZvcgo+ID4gPiA+ICAgIHRoZSBkdHMuLi4pCj4gPiA+ID4gMi4gR2VuZXJh
dGUgdGhlIGFybTY0IGRlcGVuZGVuY3kKPiA+ID4gPiAzLiBDcmVhdGVzIHRoZSBNYWtlZmlsZQo+
ID4gPiA+IDQuIEdlbmVyYXRlIHRoZSBNYWtlZmlsZXMgZm9yIHRoZSBjdXJyZW50IG9lbQo+ID4g
PiA+IDUuIE1vdmUgYWxsIHRoZSByZWxhdGVkIGR0cyBhbmQgZHRzaSBmb3IgdGhlIGN1cnJlbnQg
b2VtCj4gPiA+ID4gNi4gQ2hlY2sgYnJva2VuIGRlcGVuZGVuY3kgYW5kIGZpeCB0aGVtIGJ5IGVk
aXRpbmcgdGhlIGR0cyBhbmQgd3JpdGluZwo+ID4gPiA+ICAgIHRoZSBjb3JyZWN0IGluY2x1ZGUg
KG9yIGZpeCBhbnkgc3ltYm9saWMgbGluaykKPiA+ID4gPgo+ID4gPiA+IFRoaXMgaXMgYW4gb3V0
cHV0IHRoYXQgZGVzY3JpYmVzIGFsbCB0aGUgdGhpbmdzIGRvbmUgYnkgdGhlIHNjcmlwdCBbMl0K
PiA+ID4gPgo+ID4gPiA+IEkgcmVhbGx5IGhvcGUgSSBkaWRuJ3QgY29tbWl0IGFueSBsb2dpYyBt
aXN0YWtlIGluIHRoZSBzY3JpcHQgYnV0IG1vc3QKPiA+ID4gPiBvZiB0aGUgd29yayBzaG91bGQg
YmUgZG9uZS4KPiA+ID4gPgo+ID4gPgo+ID4gPiArQ2MgQXJuZCBhbmQgT2xvZiwKPiA+ID4KPiA+
ID4gQW5zdWVsLAo+ID4gPiBUaGFua3MgZm9yIHlvdSBwYXRjaC4gUGxlYXNlIGNjIHRoZSBTb0Mg
bWFpbnRhaW5lcnMgaW4gc3VjaCBzdWJtaXNzaW9ucy4KPiA+ID4gSXQgc2VlbXMgdGhhdCB5b3Ug
Z290IHNvbWUgcXVpdGUgbmljZSBkaXNjdXNzaW9uLCBidXQgc3RpbGwgdGhlIGNvcmUKPiA+ID4g
Zm9sa3MgYXJlIG5vdCBDY2VkLCBzbyBubyBvbmUgd291bGQgYmUgYWJsZSB0byB0YWtlIHlvdXIg
cGF0Y2guLi4KPiA+ID4KPiA+Cj4gPiBJIGhhZCBzb21lIHByb2JsZW0gd2l0aCBnbWFpbCBhbmQg
c2VuZGluZyBtYWlsIHRvbyBtdWNoIHVzZXJzLiBJIHB1dCBSb2IKPiA+IGFuZCBZb3UgYW5kIGFs
bCB0aGUgdmFyaW91cyBsaXN0IHRvIHRyeSB0byB3b3JrYXJvdW5kIHRoZSAiZ21haWwgc3BhbQo+
ID4gcHJvdGVjdGlvbiIKPiA+Cj4gPiA+IEkgYW0gcHJldHR5IHN1cmUgd2Ugd2VyZSBkaXNjdXNz
aW5nIHN1Y2ggc3BsaXQgaWRlYSBpbiB0aGUgcGFzdCBhbmQgaXQKPiA+ID4gZGlkIG5vdCBnZXQg
dHJhY3Rpb24sIGJ1dCBJIGNhbm5vdCByZWNhbGwgdGhlIGV4YWN0IGRpc2N1c3Npb24uCj4gPiA+
Cj4gPgo+ID4gSSB0aGluayB0aGUgbWFpbiBpc3N1ZSBoZXJlIGlzIGhvdyB0byBoYW5kbGUgYm90
IGFuZCBob3cgcHJvYmxlbWF0aWMgaXMKPiA+IHRvIG1lcmdlIHRoaXMuIEFzIHdyaXR0ZW4gaW4g
dGhlIGNvdmVyIGxldHRlciB0aGUgZmluYWwgdmVyc2lvbiBvZiB0aGlzCj4gPiBzaG91bGQgYmUg
YSBiaWcgc2VyaWVzIG9mIDUwKyBwYXRjaCB3aXRoIGV2ZXJ5IGNvbW1pdCBzcGVjaWZpYyB0byBl
YWNoCj4gPiBvZW0uIEluIHRoZW9yeSB3ZSBzaG91bGQgYmUgYWJsZSB0byBtZXJnZSB0aGUgZGlm
ZmVyZW50IG9lbSBzZXBhcmF0ZWx5Cj4gPiBhbmQgdHJ5IHRvIGF0IGxlYXN0IHN0YXJ0IHRoZSBj
YXRlZ29yaXphdGlvbi4KPiA+IEFub3RoZXIgaWRlYSBJIGdvdCB0byBhdCBsZWFzdCBoYXZlIGEg
Im1pZ3JhdGlvbiBwYXRoIiBpcyB0byBjb252ZXJ0Cj4gPiBldmVyeSBkdHMgaW4gdGhlIGR0cy8g
ZGlyZWN0b3J5IHRvIGEgc3ltYm9saWMgbGluayB0aGF0IHRhcmdldCB0aGUgZHRzCj4gPiBpbiB0
aGUgY29ycmVjdCBvZW0uIEJ1dCBJIGFzc3VtZSB0aGF0IHdvdWxkIGZpeCBvbmx5IHBhcnQgb2Yg
dGhlIHByb2JsZW0KPiA+IGFuZCBnaXQgYW0gd2lsbCBzdGlsbCBiZSBwcm9ibGVtYXRpYy4KPgo+
IEkgaGF2ZSBhIHNjcmlwdFsxXSB0aGF0IGRvZXMgdGhlIGNvbnZlcnNpb24gd3JpdHRlbiB0aGUg
bGFzdCB0aW1lIHRoaXMKPiBjYW1lIHVwLiBKdXN0IGhhdmUgdG8gYWdyZWUgb24gZGlyZWN0b3J5
IG5hbWVzLiBJIHRoaW5rIHRoZSBlYXNpZXN0Cj4gd291bGQgYmUgZm9yIEFybmQvT2xvZiB0byBy
dW4gaXQgYXQgdGhlIGVuZCBvZiBhIG1lcmdlIHdpbmRvdyBiZWZvcmUKPiByYzEuCj4KPiBJJ20g
dmVyeSBtdWNoIGluIGZhdm9yIG9mIHRoaXMgaGFwcGVuaW5nIGVzcGVjaWFsbHkgYmVmb3JlICph
bnkqCj4gb3ZlcmxheXMgYXJlIGFkZGVkIHRvIGFkZCB0byB0aGUgbWVzcyAoaXQncyBwcm9iYWJs
eSBhbHJlYWR5Cj4gaGFwcGVuZWQpLgo+Cj4gUm9iCj4KPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsLzIwMTgxMjA0MTgzNjQ5LkdBNTcxNkBib2d1cy8KCkhpIFJvYiwKdGhhbmtzIGZv
ciByZWNvdmVyaW5nIHRoaXMuIEkgcmVtZW1iZXIgYWxzbyBwcm92aWRpbmcgYSBzY3JpcHQuCgpB
bnl3YXkgY29uc2lkZXJpbmcgdGhlIGFtb3VudCBvZiBzdHVmZiB0byBtb3ZlLCBJIGZlZWwgbGlr
ZSBzb21lCk9FTSBtaWdodCBiZSBwcm9ibGVtYXRpYyB0byBtb3ZlIGR1ZSB0byByZWJhc2UgYW5k
IG1lcmdpbmcgcHJvYmxlbXMuCgpXZSBzaG91bGQgY29uc2lkZXIgYWNjZXB0aW5nIG1vdmluZyBv
bmx5IHNvbWUgYW5kIGtlZXAgb3RoZXIKaW4gdGhlIHVuc29ydGVkIHBhdGguIEFuZCBtb3ZlIHRo
ZW0gYXQgdGhlIGZpcnN0IHRpbWUgcG9zc2libGUgd2l0aAp0aGUgaGVscCBvZiB0aGUgbWFpbnRh
aW5lcnMuCgpPbmUgbWFpbiBibG9ja2VyIG9mIHRoaXMgaXMgc29tZSBxY29tIGR0cyB0aGF0IGFy
ZSBsaW5rZWQgdG8gYXJtNjQKZGlyZWN0b3J5LCBzbyBmb3Igc29tZSBkdHMgc3BlY2lhbCBjYXJl
IGlzIG5lZWRlZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
