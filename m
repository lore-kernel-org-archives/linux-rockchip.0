Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAC50C4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Apr 2024 12:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WDWkXalBom3+PuQZYDef0U9De96z7B9Vz36+/719GYY=; b=OqI5sdaFBcinUebuOuSzqUgFXy
	qd0M0cABhpBw0cxoeiO7Q45h9AN9THf9JSq53241NIQc+m4m6YaULhkYZWSoiP3haclGwyg8Lin1E
	fpyuuud9B6rfkzkLr0cVEP6435ApLRCIJFp8QlA/aqrI2beXQBeTv0aWPZmFOoqOV18x8PmT6k5DV
	vgSiEtef4P3TYYcEQFrk9bfn7v4qBETkRD9D4tT4mrCbGPSMxA481H+6iuHllQGyG6q6cBL58eGz2
	EyrIDaQGGOiQb/DP8x39949odrvEON4gKd/5efKDfu/BXcyameS7Vx2xEmhQ7RPdSXMuif6PaoVSQ
	eMKVmC0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzbzk-000000047SP-047W;
	Wed, 24 Apr 2024 12:45:04 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzbzd-000000047R7-3xWY;
	Wed, 24 Apr 2024 12:44:59 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a5873c52f10so317335466b.0;
        Wed, 24 Apr 2024 05:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713962695; x=1714567495; darn=lists.infradead.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NBtTsZ2nj+w+rOBShYNHrv35fSs6tv0ZSqBr205SbEI=;
        b=A3P9l5chxDVklUIHk2K39Pz1J8+7zirXA11IdeIhi8HXsbAfLa14m5z/FGDrhFo2gu
         gzmjaJ8ik9ZAshhyfafafJPvJ3PBi/jcORM0Ih11Atew2EcL8A+H5N9ort82L0DAAg5D
         yif3SWkZvQYyyevksj7fdT13Vche6ObqKb6EoY79EFwpfFH3uiVbjCgxt98xFfIzgg2C
         j6kpIk6qh2W5Qy7YFj1UdvFhRvqgz3ed+F3Nwsp5wYc1T2FyruurWdGoabz1Fdn6/Xgr
         IMfEryCZg1VJoPXQupmg0j6MDRxvt33mTs8iBx5I+LDxyFPZALiUzegElrNimHQRyiur
         QW3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713962695; x=1714567495;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NBtTsZ2nj+w+rOBShYNHrv35fSs6tv0ZSqBr205SbEI=;
        b=j/h5QznZI9heo+Y4e42hHV5szhQugd8gECYdTG7g3jJUoPC7cyNY+Yg1sBQYXIm80V
         r0VgxVC555e90wNhxv/e1R4MKTjyWiVsWpLy9s/WpmXeKVrhvXeYw7h+6VACwFazQIFx
         myM4HiTLNnmWOWMpJ3jSopQh2y4xlTdxWDSeEsb4geiZ5ekMbLtLarYGoO8Pfxtn9adB
         313y/ZQVEIYt+WPpiiwd3hT8pQMpsE+F6jwtyPaxYrwoEQBNi+sMwQtVmJoI5R11crYk
         904J3Slo9ueQ67GNE6Vro/MPb59aGD9+11s7RlKjcKY1iBJVypLOY1r+XJSvHw5UTti3
         2VFw==
X-Forwarded-Encrypted: i=1; AJvYcCWEluU+4PbMRjOvVF9G9XHn8MDCowJ5kgtTKtaUcMn7xkAfwrbeOnxNTdebdfT7xefujiUTRmQYQIOcyE8mUGCIS888VCHAcLjBbxpy5PmBKQyES33Iu2s2G+0dgXNC5f3iQw+jjeyfzwnSSqF9PTplhXLUbMvBZ1jFHRL2eqkma0pwbEmpNj/+9FrkvJXrDHBnhlzUIrmSxJuMtcNF8g==
X-Gm-Message-State: AOJu0YzxDZKUSEdEMcOI83LluyupQosNhpemzAm9gghhYg+RBHBQ7hmd
	KGPFptRc6Zzu0m/p6JYt/Wyz7Zet+CGJwJW4ykVJVl0fNpBCM3vZjOAEXsyWNmdX59qNJ+o/j5M
	OJEpHUgfKgZ6FgWAQeBV7x7AHxVk=
X-Google-Smtp-Source: AGHT+IHd5n4O533BDSAcLLsV1GUmPQzG7lIU7zyOhhof8PSEyoKk7yoD0RI0ZjEBxo/6Qi19WfkxFFSIHjno1HQIUho=
X-Received: by 2002:a17:906:474a:b0:a58:8fc0:fbca with SMTP id
 j10-20020a170906474a00b00a588fc0fbcamr1389900ejs.45.1713962694994; Wed, 24
 Apr 2024 05:44:54 -0700 (PDT)
MIME-Version: 1.0
References: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
 <ZihNbtiVDkxgUDGk@surfacebook.localdomain> <sbkymvjmrufouqqscpmrui5kcd466gj6yn2bqwf3lhfk55mjos@n4ydx6wzyq4k>
 <CAHp75VfEvifLjPRQ+xsKipjwXA-APR7m_au6OJjafeXp6Wiyxg@mail.gmail.com>
In-Reply-To: <CAHp75VfEvifLjPRQ+xsKipjwXA-APR7m_au6OJjafeXp6Wiyxg@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 24 Apr 2024 15:44:19 +0300
Message-ID: <CAHp75VdqcYn9RDVf63N7HL=nQLvFRt8cSO3EfbzAxLKNkwF-Kg@mail.gmail.com>
Subject: Re: [PATCH 00/18] i2c: remove printout on handled timeouts
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Andy Shevchenko <andy.shevchenko@gmail.com>, linux-i2c@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-rpi-kernel@lists.infradead.org, linux-tegra@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_054458_010153_62B1B353 
X-CRM114-Status: GOOD (  30.69  )
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

T24gV2VkLCBBcHIgMjQsIDIwMjQgYXQgMzo0MeKAr1BNIEFuZHkgU2hldmNoZW5rbwo8YW5keS5z
aGV2Y2hlbmtvQGdtYWlsLmNvbT4gd3JvdGU6Cj4gT24gV2VkLCBBcHIgMjQsIDIwMjQgYXQgMTI6
MDDigK9QTSBXb2xmcmFtIFNhbmcKPiA8d3NhK3JlbmVzYXNAc2FuZy1lbmdpbmVlcmluZy5jb20+
IHdyb3RlOgo+ID4gT24gV2VkLCBBcHIgMjQsIDIwMjQgYXQgMDM6MDg6MTRBTSArMDMwMCwgQW5k
eSBTaGV2Y2hlbmtvIHdyb3RlOgo+ID4gPiBXZWQsIEFwciAxMCwgMjAyNCBhdCAwMToyNDoxNFBN
ICswMjAwLCBXb2xmcmFtIFNhbmcga2lyam9pdHRpOgo+ID4gPiA+IFdoaWxlIHdvcmtpbmcgb24g
YW5vdGhlciBjbGVhbnVwIHNlcmllcywgSSBzdHVtYmxlZCBvdmVyIHRoZSBmYWN0IHRoYXQKPiA+
ID4gPiBzb21lIGRyaXZlcnMgcHJpbnQgYW4gZXJyb3Igb24gSTJDIG9yIFNNQnVzIHJlbGF0ZWQg
dGltZW91dHMuIFRoaXMgaXMKPiA+ID4gPiB3cm9uZyBiZWNhdXNlIGl0IG1heSBiZSBhbiBleHBl
Y3RlZCBzdGF0ZS4gVGhlIGNsaWVudCBkcml2ZXIgb24gdG9wCj4gPiA+ID4ga25vd3MgdGhpcywg
c28gbGV0J3Mga2VlcCBlcnJvciBoYW5kbGluZyBvbiB0aGlzIGxldmVsIGFuZCByZW1vdmUgdGhl
Cj4gPiA+ID4gcHJpbm91dHMgZnJvbSBjb250cm9sbGVyIGRyaXZlcnMuCj4gPiA+ID4KPiA+ID4g
PiBMb29raW5nIGZvcndhcmQgdG8gY29tbWVudHMsCj4gPiA+Cj4gPiA+IEkgZG8gbm90IHNlZSBh
biBlcXVpdmFsZW50IGNoYW5nZSBpbiBJwrJDIGNvcmUuCj4gPgo+ID4gVGhlcmUgc2hvdWxkbid0
IGJlLiBUaGUgY29yZSBuZWl0aGVyIGtub3dzIGlmIGl0IGlzIG9rYXkgb3Igbm90LiBUaGUKPiA+
IGNsaWVudCBkcml2ZXIga25vd3MuCj4gPgo+ID4gPiBJSVJDIGluIG91ciBjYXNlIChEVyBvciBp
ODAxIG9yIGlTTVQpIHdlIG9mdGVuIGhhdmUgdGhpcyBtZXNzYWdlIGFzIHRoZSBvbmx5Cj4gPgo+
ID4gT2Z0ZW4/IEhvdyBvZnRlbj8KPgo+IE9uY2UgaW4gYSBjb3VwbGUgb2YgbW9udGhzIEkgYXNz
dW1lLiBMYXN0IHRpbWUgaXQgd2FzIGEgZmV3IHdlZWtzIGFnbwo+IHRoYXQgdGhlcmUgd2FzIGEg
cmVwb3J0IGFuZCB0aGV5IHBvaW50ZWQgdG8gdGhpcyB2ZXJ5IG1lc3NhZ2Ugd2hpY2gKPiB3YXMg
aGVscGZ1bC4KPgo+ID4gPiBvbmUgdGhhdCBwb2ludHMgdG8gdGhlIGlzc3VlcyAob24gbm9uLWRl
YnVnIGxldmVsKSwgaXQgd2lsbCBiZSBtdWNoIGhhcmRlciB0bwo+ID4gPiBkZWJ1ZyBmb3Igb3Vy
IGN1c3RvbWVycyB3aXRoIHRoaXMgZ29pbmcgYXdheS4KPiA+Cj4gPiBUaGUgcHJvcGVyIGZpeCBp
cyB0byBwcmludCB0aGUgZXJyb3IgaW4gdGhlIGNsaWVudCBkcml2ZXIuIE1heWJlIHRoaXMKPiA+
IG5lZWRzIGEgaGVscGVyIGZvciBjbGllbnQgZHJpdmVycyB3aGljaCB0aGV5IGNhbiB1c2UgbGlr
ZToKPiA+Cj4gPiAgICAgICAgIGkyY19yZXBvcnRfZXJyb3IoY2xpZW50LCByZXR2YWwsIGZsYWdz
KTsKPiA+Cj4gPiBUaGUgb3RoZXIgdGhpbmcgd2hpY2ggaXMgYWxzbyBtb3JlIGhlbHBmdWwgSU1P
IGlzIHRoYXQgd2UgaGF2ZQo+ID4gdHJhY2VfZXZlbnRzIGZvciBfX2kyY190cmFuc2Zlci4gVGhl
cmUsIHlvdSBjYW4gc2VlIHdoYXQgd2FzIGhhcHBlbmluZwo+ID4gb24gdGhlIGJ1cyBiZWZvcmUg
dGhlIHRpbWVvdXQuIEl0IGNhbiBlYXNpbHkgYmUgdGhhdCwgaWYgZGV2aWNlIFgKPiA+IHRpbWVz
IG91dCwgaXQgd2FzIGJlY2F1c2Ugb2YgdGhlIHRyYW5zZmVyIGJlZm9yZSB0byBkZXZpY2UgWSB3
aGljaCBsb2Nrcwo+ID4gdXAgdGhlIGJ1cy4gQSBzaW1wbGUgIkJ1cyB0aW1lZCBvdXQiIG1lc3Nh
Z2Ugd2lsbCBub3QgaGVscCB5b3UgYSBsb3QKPiA+IHRoZXJlLgo+Cj4gVGhlIHRyYWNlIGV2ZW50
cyBhcmUgZ29vZCB0byBoYXZlLCBub3Qgc3VyZSBpZiBwcm9kdWN0aW9uIGtlcm5lbHMgaGF2ZQo+
IHRoZW0gZW5hYmxlZCwgdGhvdWdoLgoKQWgsIGFuZCB0byBhY2NlbnQgb24gdGhlIHVzZWZ1bG5l
c3Mgb2YgdGhlIG1lc3NhZ2UgdGhhdCBoYXBwZW5zIGJlZm9yZQpvbmUgdGhpbmtzIGFib3V0IGVu
YWJsaW5nIHRyYWNlIGV2ZW50cy4gSG93IHVzdWFsIGlzIHRoYXQgd2UgX2V4cGVjdF8Kc29tZXRo
aW5nIHRvIGZhaWw/IERlZXBlciBkZWJ1Z2dpbmcgdXN1YWxseSBoYXBwZW5zIGFmdGVyIHdlIGhh
dmUKbm90aWNlZCB0aGUgaXNzdWUuIEknbSBub3Qgc3VyZSBpZiB0aGVyZSBpcyBhbiBlcXVpdmFs
ZW50IHRvIHNpZ25hbAphYm91dCBhIHByb2JsZW0gd2l0aG91dCBleHBlY3RpbmcgaXQgdG8gaGFw
cGVuLiBJcyB0aGF0IC1FVElNRURPVVQKYmVpbmcgY29udmVydGVkIHRvIHNvbWUgbWVzc2FnZSBz
b21ld2hlcmU/Cgo+ID4gQW5kLCBrZWVwIGluIG1pbmQgdGhlIGZhbHNlIHBvc2l0aXZlcyBJIG1l
bnRpb25lZCBpbiB0aGUgY292ZXJsZXR0ZXIuCgoKCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5k
eSBTaGV2Y2hlbmtvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
