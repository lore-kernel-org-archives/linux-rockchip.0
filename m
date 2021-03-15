Return-Path: <SRS0=ms/I=IN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F5EC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 18:14:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 40ED564F0F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 18:14:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 40ED564F0F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vbry1jQDTkRKqIf/Rh4UVQOQlamSvrL+Iz/nbtvFjWA=; b=Q6pDcTxGJFjRGHk8GEhhB3kT2
	co3doBWArZ+kbJyNTWcVmKyEF8YSFS39fJR2y7C/5Jwc0iDANLvYnl1uLKwtoe7bxHZaFQ03QeR4Q
	xd/CFmpamMI9Za/HN2lP35ovrV0NlK+p12oXbh8tfSUmmfawjpqmxQcUVWwtXO/zKB9dzT5YfXUMV
	7t9uF0GlphIz8tuTSGtLW0Nek70V5hM3R09+NbXUkK54okgFwl+x82VFinYhkEifWHjvc6CalmKuF
	OG8NS1rqLU1w7agzvYaF5P9HFHclZhGN8GNC6WCx7Yq2/8ZOGIgcL/uiXzCsFwuCJAZ89of9/YuOA
	L4JiLk+uw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLrjE-00GfGE-Uj; Mon, 15 Mar 2021 18:14:08 +0000
Received: from mail-vk1-f180.google.com ([209.85.221.180])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLrj0-00GfCx-Dj; Mon, 15 Mar 2021 18:13:57 +0000
Received: by mail-vk1-f180.google.com with SMTP id f11so3025222vkl.9;
 Mon, 15 Mar 2021 11:13:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5ttnIf4YpTk5H8GW6m3wchGnU61LNhA8jE6rda8jNi0=;
 b=kEAS0+W555HZ88yGUb0KGninG8sOynYc7KWI2h8pdukr655AoXGIeSnBgBE0HVv/g9
 90E0nF3woXx0vnMJUlXY+QQoQjdTgfFiXqjYjWneCO+d4j8m1N5igp24EJNzLr6J970F
 eavKJxWdfaiVBefnBMFF3FROaa0xeW9x4pYRejQkStbswnA2UUTzmlmQbFm1+zBcXtEa
 45ECgNXDwrAOpuSbyY+DZDZs3UkUxKotjGXJEW5PAOThCpR5tmPB3KEjjVA4C2NX6E7a
 Nby3dXNxtibPwSMs8VRJYagnBRDwqlNdPlmTEWukwRNAQUlFeYrR1XYo85jyAEACwXuG
 xKWw==
X-Gm-Message-State: AOAM5338mu0r2opSH9gN+/6sw6BHDhXgXm6bzaIp3vXKLKr4ZZ7Xpsf/
 dKonBWwG6fV8xFrQvnGrLTfH09dVezDjpjQ6sKk=
X-Google-Smtp-Source: ABdhPJxmHPKCl6/KoLKCjWWHH1nzlyZhAfvkJCSsrW+k5JNup2itpowFYOpAeB2fpNRiP5LlvOmVxUysr23ztte+kQo=
X-Received: by 2002:ac5:cbee:: with SMTP id i14mr5887786vkn.1.1615832033240;
 Mon, 15 Mar 2021 11:13:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210313032515.12590-1-cnsztl@gmail.com>
 <67b314e7-92b9-8025-1a41-9b7da6ff2249@arm.com>
 <CAMuHMdX9F0fgi2-N01cck=AvgtByq3sSpdgLrCu5MDrkkc-KXw@mail.gmail.com>
 <17376355.sWSEgdgrri@diego>
In-Reply-To: <17376355.sWSEgdgrri@diego>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 15 Mar 2021 19:13:41 +0100
Message-ID: <CAMuHMdWYrS=YT7F7erM-e6xhDME4judx-T7rdFGi7CpW1_iqkg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] rockchip: rk3399: Add support for FriendlyARM
 NanoPi R4S
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Robin Murphy <robin.murphy@arm.com>, CN_SZTL <cnsztl@gmail.com>, 
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>, 
 Chen-Yu Tsai <wens@csie.org>, David Bauer <mail@david-bauer.net>, 
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
X-CRM114-CacheID: sfid-20210315_181355_295620_0B09334C 
X-CRM114-Status: GOOD (  21.65  )
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

SGkgSGVpa28sCgpPbiBNb24sIE1hciAxNSwgMjAyMSBhdCA1OjUyIFBNIEhlaWtvIFN0w7xibmVy
IDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+IEFtIE1vbnRhZywgMTUuIE3DpHJ6IDIwMjEsIDE3
OjM4OjM3IENFVCBzY2hyaWViIEdlZXJ0IFV5dHRlcmhvZXZlbjoKPiA+IE9uIE1vbiwgTWFyIDE1
LCAyMDIxIGF0IDU6MzIgUE0gUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4gd3Jv
dGU6Cj4gPiA+IE9uIDIwMjEtMDMtMTMgMTM6MjIsIENOX1NaVEwgd3JvdGU6Cj4gPiA+ID4gUm9i
aW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4g5LqOMjAyMeW5tDPmnIgxM+aXpeWRqOWF
rSDkuIvljYg3OjU15YaZ6YGT77yaCj4gPiA+ID4+Cj4gPiA+ID4+IE9uIDIwMjEtMDMtMTMgMDM6
MjUsIFRpYW5saW5nIFNoZW4gd3JvdGU6Cj4gPiA+ID4+PiArICAgICBncGlvLWxlZHMgewo+ID4g
PiA+Pj4gKyAgICAgICAgICAgICBjb21wYXRpYmxlID0gImdwaW8tbGVkcyI7Cj4gPiA+ID4+PiAr
ICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmbGFuX2xlZF9waW4+LCA8JnN5c19sZWRfcGluPiwg
PCZ3YW5fbGVkX3Bpbj47Cj4gPiA+ID4+PiArICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAi
ZGVmYXVsdCI7Cj4gPiA+ID4+PiArCj4gPiA+ID4+PiArICAgICAgICAgICAgIGxhbl9sZWQ6IGxl
ZC0wIHsKPiA+ID4gPj4+ICsgICAgICAgICAgICAgICAgICAgICBncGlvcyA9IDwmZ3BpbzEgUktf
UEExIEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4gPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGxh
YmVsID0gIm5hbm9waS1yNHM6Z3JlZW46bGFuIjsKPiA+ID4gPj4+ICsgICAgICAgICAgICAgfTsK
PiA+ID4gPj4+ICsKPiA+ID4gPj4+ICsgICAgICAgICAgICAgc3lzX2xlZDogbGVkLTEgewo+ID4g
PiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGdwaW9zID0gPCZncGlvMCBSS19QQjUgR1BJT19B
Q1RJVkVfSElHSD47Cj4gPiA+ID4+PiArICAgICAgICAgICAgICAgICAgICAgbGFiZWwgPSAibmFu
b3BpLXI0czpyZWQ6c3lzIjsKPiA+ID4gPj4+ICsgICAgICAgICAgICAgICAgICAgICBkZWZhdWx0
LXN0YXRlID0gIm9uIjsKPiA+ID4gPj4+ICsgICAgICAgICAgICAgfTsKPiA+ID4gPj4+ICsKPiA+
ID4gPj4+ICsgICAgICAgICAgICAgd2FuX2xlZDogbGVkLTIgewo+ID4gPiA+Pj4gKyAgICAgICAg
ICAgICAgICAgICAgIGdwaW9zID0gPCZncGlvMSBSS19QQTAgR1BJT19BQ1RJVkVfSElHSD47Cj4g
PiA+ID4+PiArICAgICAgICAgICAgICAgICAgICAgbGFiZWwgPSAibmFub3BpLXI0czpncmVlbjp3
YW4iOwo+ID4gPiA+Pj4gKyAgICAgICAgICAgICB9Owo+ID4gPgo+ID4gPiBOaXQ6IChhcG9sb2dp
ZXMgZm9yIG92ZXJsb29raW5nIGl0IGJlZm9yZSkgdGhlcmUgaXNuJ3QgYW4gb2J2aW91cwo+ID4g
PiBkZWZpbml0aXZlIG9yZGVyIGZvciB0aGUgTEVEcywgYnV0IHRoZSBvcmRlciBoZXJlIGlzIGNl
cnRhaW5seSBub3QKPiA+ID4gY29uc2lzdGVudCB3aXRoIGFueXRoaW5nLiBUaGUgbW9zdCBsb2dp
Y2FsIHdvdWxkIHByb2JhYmx5IGJlIHN5cywgd2FuLAo+ID4KPiA+IExvb2tzIGxpa2UgYWxwaGFi
ZXRpY2FsIHNvcnQgb3JkZXIgdG8gbWUgOy0pCj4KPiB5ZXAgLi4uIGxlZC0wLCBsZWQtMSwgbGVk
LTIgbG9va3MgcHJldHR5IHNvcnRlZCA7LSkKCkFjdHVhbGx5IEkgaGFkICJsYW4sIHN5cywgd2Fu
IiBpbiBtaW5kIDstKQoKPiBHZW5lcmFsbHkgSSdkIHByZWZlciBzb3J0aW5nIGJ5IG5vZGUtbmFt
ZXMgLi4uIGVzcGVjaWFsbHkgYXMgdGhlIHBoYW5kbGUKPiBpcyBzb3J0IG9mIG9wdGlvbmFsIGZv
ciBtb3N0IHRoaW5ncyAtIGFuZCB0aGV5IHNvbWV0aW1lcyBjb21lIGFuZCBnbwo+IGluIGR0LWZp
bGVzLgoKVGhlIG5vZGUgbmFtZXMgYXJlIHNvcnRlZCwgdG9vLCBhcyB5b3UndmUganVzdCBwb2lu
dGVkIG91dC4uLgoKUGVyc29uYWxseSwgSSdtIG5vdCBzbyBmb25kIG9mIHRoZSA8Zm9vPi0ldSBu
b2RlIG5hbWVzLCBhbmQgcHJlZmVyCjxmb28+LTxmdW5jdGlvbj4uICBXaXRoIHRoZSBmb3JtZXIs
IGl0J3Mgd2F5IHRvbyBlYXN5IHRvIGhhdmUgYSBzaWxlbnQKb3ZlcnJpZGUgaW4geW91ciAuZHRz
KGkpIHN0YWNrLgpDZnIuIGNvbW1pdCA0NWY1ZDVhOWUzNGQzZmU0ICgiYXJtNjQ6IGR0czogcmVu
ZXNhczogcjhhNzc5OTU6IGRyYWFrOgpGaXggYmFja2xpZ2h0IHJlZ3VsYXRvciBuYW1lIikKCkdy
e29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVy
dCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdl
ZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5p
Y2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcg
dG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2Ug
dGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
