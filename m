Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1BF0E77184
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Dec 2024 13:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=njfhKSqxnJaCYPip/vEdNt7rU8u9nSRPfNTUNUOhxPk=; b=0bxs7Xzhz87qBe
	03TCoIFAKGO14YBNoB96xRla5rUT+BC3+HOcagX/4m5FSse2GZDpy3sgSuVJDw5bguV5Y4UhmdN5k
	Tz0kYgw1WhD9eVWh8PgZF3TR8dNvWJCIEwbSThKmVXzw8/S/80Tw+o7La+61wgk22qP0wkn21cNl7
	4Dso65fJUxTippx/p8HUPR/zxiLIa8eofctr3cVXHKHE7SyVHZgtjTwcEy0kxWCuRHi9OouLxyUle
	CpWwOJkveDdhgwPbwJeURUguAQJ3pOP+MPUhFxVnuck/TJ+fuwLVPrhbDNhLBR2YI/NI4xUZvsnoR
	ojpBjZul0zayV8sub5rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOGzl-00000001zx5-1evl;
	Thu, 19 Dec 2024 13:55:17 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOGzi-00000001zwX-0VkD
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Dec 2024 13:55:15 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-6f0054cb797so6206147b3.0
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Dec 2024 05:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734616513; x=1735221313; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dqjglsHNEzFU9vaMiL5RfRpC+S8PcoDfSHitlHm4rHY=;
        b=s2NVqPL3C7HNGk3tSkstqq0JTSsWTgKh8sIxQmE7Vj+CzAiyiF37c+CjR5JdaMOvNT
         TEXmWD5uTXJtKSTOJuuYuZT7Ct89qByCtuI9vyPFm02QLJaaqYU8+kZOLeEYuiDu6Kfb
         ME4EUCC8jD7v9u8yvX/ONTNTnU18NqfbemP2K85bcYut4rLi8AVFiCjYk3V6XgpVNRBl
         Zqsu9MB64FGtoIXz6fbzuggOlVV2noxuqHW6IIWErRP/FtDlRxTm85p4MAKm55oCOC/a
         e+BDHB8us2Da3h3brofOe4eTHJ67EeHja9VIS/Crgal4YwU8mU7J93QArsBF3nxK6RmU
         Pg9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734616513; x=1735221313;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dqjglsHNEzFU9vaMiL5RfRpC+S8PcoDfSHitlHm4rHY=;
        b=X+wlvr3eIp3zEh0JQRzMBLNB5Y8jsn6SG5HWHxtJkx667W97/koA9j+g4iLJW8KLzF
         Jrw9r8IJNEhbkwDpG7Pc2KZcGjvk6+hki3QP7Sj92xsj4QHVffHZPwH9AsnBkD2FkerH
         p+Xs1ifQNaDUt3+YcsdVvnPLAl4bWub2nMNqzVXrKT6BnwcNpdlhbu8789Y8k/s/yQWf
         Ed80fx2sGpKWi2drLeUyrMpcxSX5mVtdTONMSoaXn5DbSaUVzDJQk0frbUkp6vOvzM4P
         a1LS967XDYHc89oqqwuP2mnuT9g8zMlG1H85wlkpSmp63/XtI2pw3ENDGQ28tA5j11m8
         yGvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVIy5hu41CiLWG3y6uh6r1uYI1jet6pNoKD2+slizFsUNpyrJC/BqP+RnXhdWNRC7LDabf68b/+CwW4DbHemw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwmmN0XVfBAUsHgrxGKrnl6lMJ8AhSfn+gXx1gUQoq8SOh8282F
	Ba+GnCznNa8+IgAB/pqvEH0h+JP3rZpigQtwbQ0j7jVBIAB342hHAi3BWEc4OYgLrL3zwyUaRNA
	OnUrhZWRKGJ2JR3Ef3zPjRaWX4vdgcU1k0JcVew==
X-Gm-Gg: ASbGnctFhqg4dgSd+R/tY6bT1/Mei/Zzxlddwdab3JWCUKbNX4FdrWliak8jVw7xFip
	5pGdX6lwyxaMT7dEfp3tShUlxvw6zkl/vI38n/OA=
X-Google-Smtp-Source: AGHT+IEXzGoehdhMl3Q9vXxU+XSlMdQxyfyUpu/ioGXoirnSYyBAN5iDxXWzj6qyDS6IkjSMMPWxu5Uknzpw4GSHDrQ=
X-Received: by 2002:a05:690c:6990:b0:6ef:4fba:8158 with SMTP id
 00721157ae682-6f3e19864e9mr35032897b3.0.1734616512781; Thu, 19 Dec 2024
 05:55:12 -0800 (PST)
MIME-Version: 1.0
References: <20241211143044.9550-1-sebastian.reichel@collabora.com>
 <20241211143044.9550-4-sebastian.reichel@collabora.com> <CAMdYzYqLq=kSC8fiBapRS_8w0s8PaL9Yd46VgM56YbTEmUG1xA@mail.gmail.com>
 <xe2wqm4ktutycxj7x4rskz4pn4cfmoci6zcgfxecmvc5bu7cqi@mqxi3pnehqq3>
 <CAMdYzYpDXHtz_Fq5NJXqTdxVTcJcHkjcjU4-J=zwmE0BWmSsNw@mail.gmail.com>
 <CAPDyKFoW5-U8hLcU-sryuMSP5-E2_yudFZ2-wH8-s62jn4qJ8A@mail.gmail.com> <v4oh6r5lr6eg3rg2poucotbuoddjllfp63lvmf7vuaawe2spvy@f2gv4nvubiw3>
In-Reply-To: <v4oh6r5lr6eg3rg2poucotbuoddjllfp63lvmf7vuaawe2spvy@f2gv4nvubiw3>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 19 Dec 2024 14:54:35 +0100
Message-ID: <CAPDyKFooBYfmWWpy=vw38sw=ANuaadJO4eCRKnq=286vftRPAA@mail.gmail.com>
Subject: Re: [PATCH v5 3/7] pmdomain: rockchip: forward rockchip_do_pmu_set_power_domain
 errors
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
	=?UTF-8?Q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, Chen-Yu Tsai <wens@csie.org>, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, kernel@collabora.com, 
	Dragan Simic <dsimic@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_055514_192007_786E0B0A 
X-CRM114-Status: GOOD (  40.99  )
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

T24gVGh1LCAxMiBEZWMgMjAyNCBhdCAyMDoxNCwgU2ViYXN0aWFuIFJlaWNoZWwKPHNlYmFzdGlh
bi5yZWljaGVsQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiBPbiBUaHUsIERlYyAx
MiwgMjAyNCBhdCAxMjoyNjo0MlBNICswMTAwLCBVbGYgSGFuc3NvbiB3cm90ZToKPiA+IE9uIFRo
dSwgMTIgRGVjIDIwMjQgYXQgMDA6MTEsIFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFpbC5jb20+
IHdyb3RlOgo+ID4gPiBPbiBXZWQsIERlYyAxMSwgMjAyNCBhdCAzOjQ24oCvUE0gU2ViYXN0aWFu
IFJlaWNoZWwKPiA+ID4gPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+
ID4gPiA+IE9uIFdlZCwgRGVjIDExLCAyMDI0IGF0IDAyOjUzOjM0UE0gLTA1MDAsIFBldGVyIEdl
aXMgd3JvdGU6Cj4gPiA+ID4gPiBPbiBXZWQsIERlYyAxMSwgMjAyNCBhdCA5OjMy4oCvQU0gU2Vi
YXN0aWFuIFJlaWNoZWwKPiA+ID4gPiA+IDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29t
PiB3cm90ZToKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gQ3VycmVudGx5IHJvY2tjaGlwX2RvX3Bt
dV9zZXRfcG93ZXJfZG9tYWluIHByaW50cyBhIHdhcm5pbmcgaWYgdGhlcmUKPiA+ID4gPiA+ID4g
aGF2ZSBiZWVuIGVycm9ycyB0dXJuaW5nIG9uIHRoZSBwb3dlciBkb21haW4sIGJ1dCBpdCBkb2Vz
IG5vdCByZXR1cm4KPiA+ID4gPiA+ID4gYW55IGVycm9ycyBhbmQgcm9ja2NoaXBfcGRfcG93ZXIo
KSB0cmllcyB0byBjb250aW51ZSBzZXR0aW5nIHVwIHRoZQo+ID4gPiA+ID4gPiBRT1MgcmVnaXN0
ZXJzLiBUaGlzIHVzdWFsbHkgcmVzdWx0cyBpbiBhY2Nlc3NpbmcgdW5wb3dlcmVkIHJlZ2lzdGVy
cywKPiA+ID4gPiA+ID4gd2hpY2ggdHJpZ2dlcnMgYW4gU0Vycm9yIGFuZCBhIGZ1bGwgc3lzdGVt
IGhhbmcuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFRoaXMgaW1wcm92ZXMgdGhlIGVycm9yIGhh
bmRsaW5nIGJ5IGZvcndhcmRpbmcgdGhlIGVycm9yIHRvIGF2b2lkCj4gPiA+ID4gPiA+IGtlcm5l
bCBwYW5pY3MuCj4gPiA+ID4gPgo+ID4gPiA+ID4gSSB0aGluayB3ZSBzaG91bGQgbWVyZ2UgeW91
ciBwYXRjaCBoZXJlIHdpdGggbXkgcGF0Y2ggZm9yIHJldHVybmluZwo+ID4gPiA+ID4gZXJyb3Jz
IGZyb20gcm9ja2NoaXBfcG11X3NldF9pZGxlX3JlcXVlc3QgWzFdLgo+ID4gPiA+Cj4gPiA+ID4g
SSB3aWxsIGhhdmUgYSBsb29rLgo+ID4gPiA+Cj4gPiA+ID4gPiA+IFJldmlld2VkLWJ5OiBIZWlr
byBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+ID4gPiA+ID4gPiBUZXN0ZWQtYnk6IEhlaWtv
IFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gPiA+ID4gPiA+IFRlc3RlZC1ieTogQWRyaWFu
IExhcnVtYmUgPGFkcmlhbi5sYXJ1bWJlQGNvbGxhYm9yYS5jb20+ICMgT24gUm9jayA1Qgo+ID4g
PiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNo
ZWxAY29sbGFib3JhLmNvbT4KPiA+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+ICBkcml2ZXJzL3Bt
ZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYyB8IDM0ICsrKysrKysrKysrKysrKysrLS0tLS0t
LS0tCj4gPiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMTIgZGVs
ZXRpb25zKC0pCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Bt
ZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYyBiL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAv
cG0tZG9tYWlucy5jCj4gPiA+ID4gPiA+IGluZGV4IGExNjFlZTEzYzYzMy4uOGY0NDBmMjg4M2Ri
IDEwMDY0NAo+ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRv
bWFpbnMuYwo+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRv
bWFpbnMuYwo+ID4gPiA+ID4gPiBAQCAtNTMzLDE2ICs1MzMsMTcgQEAgc3RhdGljIGludCByb2Nr
Y2hpcF9wbXVfZG9tYWluX21lbV9yZXNldChzdHJ1Y3Qgcm9ja2NoaXBfcG1fZG9tYWluICpwZCkK
PiA+ID4gPiA+ID4gICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiA+ID4gPiAgfQo+ID4gPiA+ID4g
Pgo+ID4gPiA+ID4gPiAtc3RhdGljIHZvaWQgcm9ja2NoaXBfZG9fcG11X3NldF9wb3dlcl9kb21h
aW4oc3RydWN0IHJvY2tjaGlwX3BtX2RvbWFpbiAqcGQsCj4gPiA+ID4gPiA+IC0gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJvb2wgb24pCj4gPiA+ID4gPiA+ICtz
dGF0aWMgaW50IHJvY2tjaGlwX2RvX3BtdV9zZXRfcG93ZXJfZG9tYWluKHN0cnVjdCByb2NrY2hp
cF9wbV9kb21haW4gKnBkLAo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGJvb2wgb24pCj4gPiA+ID4gPiA+ICB7Cj4gPiA+ID4gPiA+ICAgICAg
ICAgc3RydWN0IHJvY2tjaGlwX3BtdSAqcG11ID0gcGQtPnBtdTsKPiA+ID4gPiA+ID4gICAgICAg
ICBzdHJ1Y3QgZ2VuZXJpY19wbV9kb21haW4gKmdlbnBkID0gJnBkLT5nZW5wZDsKPiA+ID4gPiA+
ID4gICAgICAgICB1MzIgcGRfcHdyX29mZnNldCA9IHBkLT5pbmZvLT5wd3Jfb2Zmc2V0Owo+ID4g
PiA+ID4gPiAgICAgICAgIGJvb2wgaXNfb24sIGlzX21lbV9vbiA9IGZhbHNlOwo+ID4gPiA+ID4g
PiArICAgICAgIGludCByZXQ7Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ICAgICAgICAgaWYgKHBk
LT5pbmZvLT5wd3JfbWFzayA9PSAwKQo+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgcmV0dXJu
Owo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuIDA7Cj4gPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+ICAgICAgICAgaWYgKG9uICYmIHBkLT5pbmZvLT5tZW1fc3RhdHVzX21hc2spCj4gPiA+
ID4gPiA+ICAgICAgICAgICAgICAgICBpc19tZW1fb24gPSByb2NrY2hpcF9wbXVfZG9tYWluX2lz
X21lbV9vbihwZCk7Cj4gPiA+ID4gPiA+IEBAIC01NTcsMTYgKzU1OCwyMSBAQCBzdGF0aWMgdm9p
ZCByb2NrY2hpcF9kb19wbXVfc2V0X3Bvd2VyX2RvbWFpbihzdHJ1Y3Qgcm9ja2NoaXBfcG1fZG9t
YWluICpwZCwKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gICAgICAgICB3bWIoKTsKPiA+ID4gPiA+
ID4KPiA+ID4gPiA+ID4gLSAgICAgICBpZiAoaXNfbWVtX29uICYmIHJvY2tjaGlwX3BtdV9kb21h
aW5fbWVtX3Jlc2V0KHBkKSkKPiA+ID4gPiA+ID4gLSAgICAgICAgICAgICAgIHJldHVybjsKPiA+
ID4gPiA+ID4gKyAgICAgICBpZiAoaXNfbWVtX29uKSB7Cj4gPiA+ID4gPiA+ICsgICAgICAgICAg
ICAgICByZXQgPSByb2NrY2hpcF9wbXVfZG9tYWluX21lbV9yZXNldChwZCk7Cj4gPiA+ID4gPiA+
ICsgICAgICAgICAgICAgICBpZiAocmV0KQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgICByZXR1cm4gcmV0Owo+ID4gPiA+ID4gPiArICAgICAgIH0KPiA+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gLSAgICAgICBpZiAocmVhZHhfcG9sbF90aW1lb3V0X2F0b21pYyhyb2NrY2hpcF9wbXVf
ZG9tYWluX2lzX29uLCBwZCwgaXNfb24sCj4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgaXNfb24gPT0gb24sIDAsIDEwMDAwKSkgewo+ID4gPiA+ID4gPiAt
ICAgICAgICAgICAgICAgZGV2X2VycihwbXUtPmRldiwKPiA+ID4gPiA+ID4gLSAgICAgICAgICAg
ICAgICAgICAgICAgImZhaWxlZCB0byBzZXQgZG9tYWluICclcycsIHZhbD0lZFxuIiwKPiA+ID4g
PiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgZ2VucGQtPm5hbWUsIGlzX29uKTsKPiA+ID4g
PiA+ID4gLSAgICAgICAgICAgICAgIHJldHVybjsKPiA+ID4gPiA+ID4gKyAgICAgICByZXQgPSBy
ZWFkeF9wb2xsX3RpbWVvdXRfYXRvbWljKHJvY2tjaGlwX3BtdV9kb21haW5faXNfb24sIHBkLCBp
c19vbiwKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGlzX29uID09IG9uLCAwLCAxMDAwMCk7Cj4gPiA+ID4gPiA+ICsgICAgICAgaWYgKHJldCkgewo+
ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgZGV2X2VycihwbXUtPmRldiwgImZhaWxlZCB0byBz
ZXQgZG9tYWluICclcycgJXMsIHZhbD0lZFxuIiwKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgZ2VucGQtPm5hbWUsIG9uID8gIm9uIiA6ICJvZmYiLCBpc19vbik7Cj4gPiA+ID4g
PiA+ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiA+ID4gPiAgICAgICAgIH0KPiA+
ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArICAgICAgIHJldHVybiAwOwo+ID4gPiA+ID4gPiAgfQo+
ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiAgc3RhdGljIGludCByb2NrY2hpcF9wZF9wb3dlcihzdHJ1
Y3Qgcm9ja2NoaXBfcG1fZG9tYWluICpwZCwgYm9vbCBwb3dlcl9vbikKPiA+ID4gPiA+ID4gQEAg
LTU5Miw3ICs1OTgsMTEgQEAgc3RhdGljIGludCByb2NrY2hpcF9wZF9wb3dlcihzdHJ1Y3Qgcm9j
a2NoaXBfcG1fZG9tYWluICpwZCwgYm9vbCBwb3dlcl9vbikKPiA+ID4gPiA+ID4gICAgICAgICAg
ICAgICAgICAgICAgICAgcm9ja2NoaXBfcG11X3NldF9pZGxlX3JlcXVlc3QocGQsIHRydWUpOwo+
ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgfQo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiAtICAg
ICAgICAgICAgICAgcm9ja2NoaXBfZG9fcG11X3NldF9wb3dlcl9kb21haW4ocGQsIHBvd2VyX29u
KTsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIHJldCA9IHJvY2tjaGlwX2RvX3BtdV9zZXRf
cG93ZXJfZG9tYWluKHBkLCBwb3dlcl9vbik7Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICBp
ZiAocmV0IDwgMCkgewo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBjbGtfYnVs
a19kaXNhYmxlKHBkLT5udW1fY2xrcywgcGQtPmNsa3MpOwo+ID4gPiA+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiA+ID4KPiA+ID4gPiA+IExvb2tpbmcgYXQg
aXQsIHdlIHNob3VsZG4ndCByZXR1cm4gZGlyZWN0bHkgZnJvbSBoZXJlIGJlY2F1c2UgdGhlCj4g
PiA+ID4gPiBtdXRleCBuZXZlciBnZXRzIHVubG9ja2VkLgo+ID4gPiA+Cj4gPiA+ID4gWWVzLCB3
ZSBzaG91bGQgZG8gdGhhdCBhZnRlciBwYXRjaCAyLzcgZnJvbSB0aGlzIHNlcmllcyA6KQo+ID4g
Pgo+ID4gPiBUaGF0J3MgZXhjZWxsZW50IQo+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gPiBJbnN0ZWFk
IG9mIHJlcGVhdGluZyBjbGtfYnVsa19kaXNhYmxlIGFuZCByZXR1cm4gcmV0IGZvciBlYWNoIGZh
aWx1cmUsCj4gPiA+ID4gPiB3ZSBjYW4gaW5pdGlhbGl6ZSByZXQgPSAwLCBoYXZlIGEgZ290bzog
b3V0IHBvaW50aW5nIHRvCj4gPiA+ID4gPiBjbGtfYnVsa19kaXNhYmxlLCBhbmQgY2hhbmdlIHJl
dHVybiAwIHRvIHJldHVybiByZXQgYXQgdGhlIGVuZC4KPiA+ID4gPgo+ID4gPiA+IFJpZ2h0IG5v
dyB0aGVyZSBpcyBvbmx5IGEgc2luZ2xlIGNsa19idWxrX2Rpc2FibGUoKSBpbiBhbiBlcnJvcgo+
ID4gPiA+IGNhc2UsIHNvIEkgZGlkIG5vdCB1c2UgdGhlIHR5cGljYWwgZXJyb3IgZ290byBjaGFp
bi4gSSBzdXBwb3NlCj4gPiA+ID4gaXQgbWFrZXMgYSBsb3QgbW9yZSBzZW5zZSB3aXRoIHByb3Bl
ciBlcnJvciBoYW5kbGluZyBmb3IgdGhlIGNhbGxzCj4gPiA+ID4gdG8gcm9ja2NoaXBfcG11X3Nl
dF9pZGxlX3JlcXVlc3QoKS4KPiA+ID4KPiA+ID4gSWYgeW91J2QgbGlrZSwgSSBjYW4gYmFzZSBt
eSB2MiBvbiB0aGlzIHBhdGNoIHNlcmllcyB3aXRoIHRoZSBjaGFuZ2VzCj4gPiA+IEknbSBzdWdn
ZXN0aW5nPwo+ID4KPiA+IEkgbGVhdmUgeW91IGd1eXMgdG8gZGVjaWRlIHRoZSBiZXN0IHdheSBm
b3J3YXJkLCBidXQgcGxlYXNlIGtlZXAgaW4KPiA+IG1pbmQgdGhhdCBmaXhlcy9zdGFibGUgcGF0
Y2hlcyBhcmUgZWFzaWVyIG1hbmFnZWQgaWYgdGhleSBhcmUgYXMKPiA+IHNpbXBsZSBhcyBwb3Nz
aWJsZSBhbmQgd2l0aG91dCByZWx5aW5nIG9uIGNsZWFudXAgcGF0Y2hlcy4gQmV0dGVyIGZpeAo+
ID4gdGhlIHByb2JsZW0gZmlyc3QsIHRoZW4gY2xlYW4gdXAgdGhlIGNvZGUuCj4KPiBJIGhhZCB0
aGlzIG9yZGVyZWQgdGhlIG90aGVyIHdheSBhcm91bmQgaW5pdGlhbGx5IGFuZCBhcyBIZWlrbwo+
IHBvaW50ZWQgb3V0IHRoYXQgbWFrZXMgdGhpbmdzIG1vcmUgY29tcGxpY2F0ZWQgb3ZlcmFsbDoK
Pgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzQ4NjQ1MjkuQTlzMFVY
WU9tUEBkaWVnby8KClJpZ2h0LCBJIGhhdmUgbm8gc3Ryb25nIG9waW5pb25zLCBidXQgbGVhdmUg
dGhlIGRlY2lzaW9uIHRvIHlvdS4KClN0aWxsLCB3ZSBuZWVkIGNvbmZpcm1hdGlvbiBvbiB0aGUg
cmVndWxhdG9yLXBhdGNoIChwYXRjaDEpIGZyb20gTWFyaywKYmVmb3JlIEkgY2FuIGFwcGx5IGFu
eSBvZiB0aGlzLgoKS2luZCByZWdhcmRzClVmZmUKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
