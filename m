Return-Path: <SRS0=ms/I=IN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CFDEC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 16:53:23 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3331864F33
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 16:53:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3331864F33
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n/rpebOf1L4Wh6dLMYCnYJt3I5ZajbqoqZ5RlWhN1sg=; b=NmdyCV6Xr0rb/V53MH8q888EE
	y5Iu3VhwoHf8A0SyHJ38faZ+kOEXLgmVkp2+NHXgwIniR0hp9O/DdRMyPavBXJcDOPr1dbkrvT/z+
	0JaCu85QMkgXuzUrrHxhlimPbsuOuwAqWXLfGZpqj/UxogOtJvZ009Ye4ZUbvYa05mCw8CsECZaXC
	Z4zmsUCpb1akHCasaoG+1t9Tu6zcjQY4MItAN4++iq6w6sXw8v12lUJZAChitMMBVXKvnx8aF/pEG
	/+eqeQb8dpHLnx+L44QOxfuMUIrTHhy4rAYTMj4qKS+QXZ5LwXGnLFhI3SErx923iXxDugm64/69G
	ECJbKZ5Xg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLqSz-00GOvS-Jb; Mon, 15 Mar 2021 16:53:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLqSl-00GOtt-HQ; Mon, 15 Mar 2021 16:53:08 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lLqSI-0001JB-1E; Mon, 15 Mar 2021 17:52:34 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>
Cc: CN_SZTL <cnsztl@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Chen-Yu Tsai <wens@csie.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 David Bauer <mail@david-bauer.net>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <uwe@kleine-koenig.org>,
 Johan Jonker <jbx6244@gmail.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 Marty Jones <mj8263788@gmail.com>, Jensen Huang <jensenhuang@friendlyarm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 kernel test robot <lkp@intel.com>
Subject: Re: [PATCH v3 2/2] rockchip: rk3399: Add support for FriendlyARM
 NanoPi R4S
Date: Mon, 15 Mar 2021 17:52:32 +0100
Message-ID: <17376355.sWSEgdgrri@diego>
In-Reply-To: <CAMuHMdX9F0fgi2-N01cck=AvgtByq3sSpdgLrCu5MDrkkc-KXw@mail.gmail.com>
References: <20210313032515.12590-1-cnsztl@gmail.com>
 <67b314e7-92b9-8025-1a41-9b7da6ff2249@arm.com>
 <CAMuHMdX9F0fgi2-N01cck=AvgtByq3sSpdgLrCu5MDrkkc-KXw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_165306_488265_C03F0B34 
X-CRM114-Status: GOOD (  15.36  )
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

QW0gTW9udGFnLCAxNS4gTcOkcnogMjAyMSwgMTc6Mzg6MzcgQ0VUIHNjaHJpZWIgR2VlcnQgVXl0
dGVyaG9ldmVuOgo+IEhpIFJvYmluLAo+IAo+IE9uIE1vbiwgTWFyIDE1LCAyMDIxIGF0IDU6MzIg
UE0gUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4gd3JvdGU6Cj4gPiBPbiAyMDIx
LTAzLTEzIDEzOjIyLCBDTl9TWlRMIHdyb3RlOgo+ID4gPiBSb2JpbiBNdXJwaHkgPHJvYmluLm11
cnBoeUBhcm0uY29tPiDkuo4yMDIx5bm0M+aciDEz5pel5ZGo5YWtIOS4i+WNiDc6NTXlhpnpgZPv
vJoKPiA+ID4+Cj4gPiA+PiBPbiAyMDIxLTAzLTEzIDAzOjI1LCBUaWFubGluZyBTaGVuIHdyb3Rl
Ogo+ID4gPj4+ICsgICAgIGdwaW8tbGVkcyB7Cj4gPiA+Pj4gKyAgICAgICAgICAgICBjb21wYXRp
YmxlID0gImdwaW8tbGVkcyI7Cj4gPiA+Pj4gKyAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8Jmxh
bl9sZWRfcGluPiwgPCZzeXNfbGVkX3Bpbj4sIDwmd2FuX2xlZF9waW4+Owo+ID4gPj4+ICsgICAg
ICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ID4+PiArCj4gPiA+Pj4gKyAg
ICAgICAgICAgICBsYW5fbGVkOiBsZWQtMCB7Cj4gPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAg
IGdwaW9zID0gPCZncGlvMSBSS19QQTEgR1BJT19BQ1RJVkVfSElHSD47Cj4gPiA+Pj4gKyAgICAg
ICAgICAgICAgICAgICAgIGxhYmVsID0gIm5hbm9waS1yNHM6Z3JlZW46bGFuIjsKPiA+ID4+PiAr
ICAgICAgICAgICAgIH07Cj4gPiA+Pj4gKwo+ID4gPj4+ICsgICAgICAgICAgICAgc3lzX2xlZDog
bGVkLTEgewo+ID4gPj4+ICsgICAgICAgICAgICAgICAgICAgICBncGlvcyA9IDwmZ3BpbzAgUktf
UEI1IEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4gPj4+ICsgICAgICAgICAgICAgICAgICAgICBsYWJl
bCA9ICJuYW5vcGktcjRzOnJlZDpzeXMiOwo+ID4gPj4+ICsgICAgICAgICAgICAgICAgICAgICBk
ZWZhdWx0LXN0YXRlID0gIm9uIjsKPiA+ID4+PiArICAgICAgICAgICAgIH07Cj4gPiA+Pj4gKwo+
ID4gPj4+ICsgICAgICAgICAgICAgd2FuX2xlZDogbGVkLTIgewo+ID4gPj4+ICsgICAgICAgICAg
ICAgICAgICAgICBncGlvcyA9IDwmZ3BpbzEgUktfUEEwIEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4g
Pj4+ICsgICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJuYW5vcGktcjRzOmdyZWVuOndhbiI7
Cj4gPiA+Pj4gKyAgICAgICAgICAgICB9Owo+ID4KPiA+IE5pdDogKGFwb2xvZ2llcyBmb3Igb3Zl
cmxvb2tpbmcgaXQgYmVmb3JlKSB0aGVyZSBpc24ndCBhbiBvYnZpb3VzCj4gPiBkZWZpbml0aXZl
IG9yZGVyIGZvciB0aGUgTEVEcywgYnV0IHRoZSBvcmRlciBoZXJlIGlzIGNlcnRhaW5seSBub3QK
PiA+IGNvbnNpc3RlbnQgd2l0aCBhbnl0aGluZy4gVGhlIG1vc3QgbG9naWNhbCB3b3VsZCBwcm9i
YWJseSBiZSBzeXMsIHdhbiwKPiAKPiBMb29rcyBsaWtlIGFscGhhYmV0aWNhbCBzb3J0IG9yZGVy
IHRvIG1lIDstKQoKeWVwIC4uLiBsZWQtMCwgbGVkLTEsIGxlZC0yIGxvb2tzIHByZXR0eSBzb3J0
ZWQgOy0pCgpHZW5lcmFsbHkgSSdkIHByZWZlciBzb3J0aW5nIGJ5IG5vZGUtbmFtZXMgLi4uIGVz
cGVjaWFsbHkgYXMgdGhlIHBoYW5kbGUKaXMgc29ydCBvZiBvcHRpb25hbCBmb3IgbW9zdCB0aGlu
Z3MgLSBhbmQgdGhleSBzb21ldGltZXMgY29tZSBhbmQgZ28KaW4gZHQtZmlsZXMuCgoKSGVpa28K
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
