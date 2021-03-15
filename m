Return-Path: <SRS0=ms/I=IN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E08AC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 16:39:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8F59964F2A
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 16:39:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8F59964F2A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AkTpafbnS4Zl73jlZ11ro0K84Llb+RrSC4slnwyp7yY=; b=BmldtQBPKJRm7PUixIIotuUhj
	XGqoxI0aBVrsk5Zu2c0aq/DgDME+qN2G/3eeJq5Ma7FgRP2ZIiFsmTNTQP+jc5sxbkFaRQYQ0RU4k
	6eoHHZsPgJgj2Wzo3ms10/Il1NyI8dthSjMSSDKA+XItvf5FvcHyAfMWYGFd8g1pUnZJCWV8SsoVB
	VYjXNmQMkxC376rilLt7aSOQLcRvSdjnKt6wWh4Hob5lwJcsmdAOuzf9SHPfckewKhVM5ukMNrWPz
	BNQcReJCMKhRWEHq2W5Dh6op9y/+xeqqdlTBwA2x2RyFUAymRG/u6zPL3mt6M8cjPSBlcE4CHKM2S
	aiudu3DLw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLqFG-00GNi6-Ts; Mon, 15 Mar 2021 16:39:07 +0000
Received: from mail-vs1-f53.google.com ([209.85.217.53])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLqF0-00GNfS-Qm; Mon, 15 Mar 2021 16:38:52 +0000
Received: by mail-vs1-f53.google.com with SMTP id f1so6529459vsl.0;
 Mon, 15 Mar 2021 09:38:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6+LwVnTq5aoTVvp7lLwT2APEy4pRL3wg/ASDpHleT/s=;
 b=Z43auN3B+DmiQ6WBEgCOcXySwl7GHP2oLneoTBcW/DuKGqYqunhJXOSYLO63tMbIwI
 nvrGfnI8kUcciFSu7A3vkhJWQV0dtFxNNoFJiCZOaFXvaJt3JMa0Pav6u7sNhUP/53yT
 aCuoWuUJUrZlVjMlpV1xCyhkPYGiGspsyXl6PN/nQouHtxLeDDnjtqtRP9/pgfi0guqH
 7/eWNyoMQ64C2aGwenus3X/4QtJKVTJMYHr9YpeoESlRBuogV1ky0rDXIKHRUSfFrA/s
 4im4LU1Z6L4zjPvLoYKTaaxQ5mfw9A3QhlmB3ssGFIaHNMV7LaBC7XfCSsSHGJu9tP6L
 LBKg==
X-Gm-Message-State: AOAM533i0OYv6Z0zG80ziU/RZoeyZnab6c8qnWKBQGYwDpRPr9aychix
 SxaLBVIAMDG85YZUD1GK4tNRejRT3Jix4Bd/TNk=
X-Google-Smtp-Source: ABdhPJzfAqlF9iGvUShaEseAew7ZXcO0CNa4CHm34L7ON9NjOQurRH7m5yhRaLJ1Y/s8808zZcDNFQVOP89G9nuhlnQ=
X-Received: by 2002:a67:ef0e:: with SMTP id j14mr13895505vsr.40.1615826329149; 
 Mon, 15 Mar 2021 09:38:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210313032515.12590-1-cnsztl@gmail.com>
 <20210313032515.12590-2-cnsztl@gmail.com>
 <1f7f1a11-0b9b-b2e4-efbc-193f61d62832@arm.com>
 <CAOP2_TgUQH9H9vuESek7KjStxu=idaBxX=S5Q7_=Mn=D_s-=JA@mail.gmail.com>
 <67b314e7-92b9-8025-1a41-9b7da6ff2249@arm.com>
In-Reply-To: <67b314e7-92b9-8025-1a41-9b7da6ff2249@arm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 15 Mar 2021 17:38:37 +0100
Message-ID: <CAMuHMdX9F0fgi2-N01cck=AvgtByq3sSpdgLrCu5MDrkkc-KXw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] rockchip: rk3399: Add support for FriendlyARM
 NanoPi R4S
To: Robin Murphy <robin.murphy@arm.com>
Cc: CN_SZTL <cnsztl@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, 
 Chen-Yu Tsai <wens@csie.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
 David Bauer <mail@david-bauer.net>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>, 
 Johan Jonker <jbx6244@gmail.com>,
 Michael Trimarchi <michael@amarulasolutions.com>, 
 Marty Jones <mj8263788@gmail.com>, Jensen Huang <jensenhuang@friendlyarm.com>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_163851_120090_EC953181 
X-CRM114-Status: GOOD (  20.29  )
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

SGkgUm9iaW4sCgpPbiBNb24sIE1hciAxNSwgMjAyMSBhdCA1OjMyIFBNIFJvYmluIE11cnBoeSA8
cm9iaW4ubXVycGh5QGFybS5jb20+IHdyb3RlOgo+IE9uIDIwMjEtMDMtMTMgMTM6MjIsIENOX1Na
VEwgd3JvdGU6Cj4gPiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0uY29tPiDkuo4yMDIx
5bm0M+aciDEz5pel5ZGo5YWtIOS4i+WNiDc6NTXlhpnpgZPvvJoKPiA+Pgo+ID4+IE9uIDIwMjEt
MDMtMTMgMDM6MjUsIFRpYW5saW5nIFNoZW4gd3JvdGU6Cj4gPj4+ICsgICAgIGdwaW8tbGVkcyB7
Cj4gPj4+ICsgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJncGlvLWxlZHMiOwo+ID4+PiArICAg
ICAgICAgICAgIHBpbmN0cmwtMCA9IDwmbGFuX2xlZF9waW4+LCA8JnN5c19sZWRfcGluPiwgPCZ3
YW5fbGVkX3Bpbj47Cj4gPj4+ICsgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0
IjsKPiA+Pj4gKwo+ID4+PiArICAgICAgICAgICAgIGxhbl9sZWQ6IGxlZC0wIHsKPiA+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgIGdwaW9zID0gPCZncGlvMSBSS19QQTEgR1BJT19BQ1RJVkVfSElH
SD47Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJuYW5vcGktcjRzOmdyZWVu
OmxhbiI7Cj4gPj4+ICsgICAgICAgICAgICAgfTsKPiA+Pj4gKwo+ID4+PiArICAgICAgICAgICAg
IHN5c19sZWQ6IGxlZC0xIHsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGdwaW9zID0gPCZn
cGlvMCBSS19QQjUgR1BJT19BQ1RJVkVfSElHSD47Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAg
ICBsYWJlbCA9ICJuYW5vcGktcjRzOnJlZDpzeXMiOwo+ID4+PiArICAgICAgICAgICAgICAgICAg
ICAgZGVmYXVsdC1zdGF0ZSA9ICJvbiI7Cj4gPj4+ICsgICAgICAgICAgICAgfTsKPiA+Pj4gKwo+
ID4+PiArICAgICAgICAgICAgIHdhbl9sZWQ6IGxlZC0yIHsKPiA+Pj4gKyAgICAgICAgICAgICAg
ICAgICAgIGdwaW9zID0gPCZncGlvMSBSS19QQTAgR1BJT19BQ1RJVkVfSElHSD47Cj4gPj4+ICsg
ICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJuYW5vcGktcjRzOmdyZWVuOndhbiI7Cj4gPj4+
ICsgICAgICAgICAgICAgfTsKPgo+IE5pdDogKGFwb2xvZ2llcyBmb3Igb3Zlcmxvb2tpbmcgaXQg
YmVmb3JlKSB0aGVyZSBpc24ndCBhbiBvYnZpb3VzCj4gZGVmaW5pdGl2ZSBvcmRlciBmb3IgdGhl
IExFRHMsIGJ1dCB0aGUgb3JkZXIgaGVyZSBpcyBjZXJ0YWlubHkgbm90Cj4gY29uc2lzdGVudCB3
aXRoIGFueXRoaW5nLiBUaGUgbW9zdCBsb2dpY2FsIHdvdWxkIHByb2JhYmx5IGJlIHN5cywgd2Fu
LAoKTG9va3MgbGlrZSBhbHBoYWJldGljYWwgc29ydCBvcmRlciB0byBtZSA7LSkKCj4gbGFuIHNp
bmNlIHRoYXQncyBib3RoIGluIG9yZGVyIG9mIEdQSU8gbnVtYmVyIGFuZCBob3cgdGhleSBhcmUK
PiBwaHlzaWNhbGx5IHBvc2l0aW9uZWQgcmVsYXRpdmUgdG8gZWFjaCBvdGhlciBvbiB0aGUgYm9h
cmQvY2FzZSAoYWx0aG91Z2gKPiB5b3UgY291bGQgYWxzbyBhcmd1ZSBmb3Igd2FuLCBsYW4sIHN5
cyBpbiB0aGF0IHJlZ2FyZCwgZGVwZW5kaW5nIG9uIGhvdwo+IHlvdSBsb29rIGF0IGl0KS4KCkdy
e29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVy
dCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdl
ZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5p
Y2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcg
dG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2Ug
dGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
