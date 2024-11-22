Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 074F5E65D2F
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Nov 2024 08:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjVbKtbTyTb5PMNk06hxbThi9qo+PuxwmUAdznYId30=; b=nla0gM6/Bhzys1
	lI6uvOVbfoHXaS0Rly/heMuuLKOt1gFrG715omuBExhUTpXixOesqlNCyOt1NBBsWYwzDr712Wj0S
	IrTGp0PcpCnK+ZC+OyJY6cIVJUqJkuUmQ+4pGTNaRO+POGIpy6KeoQSIcNDqrJJLpIiIs1527mb9c
	XxZYCdsLiqx7STHEyll0K3QIm7a1go+UXzZo0beKplMu1naLEpR8SPo+/ISWSnCU/hxFq4BZUaP1F
	N+nCkgpJgZE6UsQplaME/kgPm/s9yOpXQfBdDBQazNtFt5FKY0l4M90ymnja/yj0tl1QlLh8Ctzoc
	+8sd5MG9ufe+65rFrVwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEPAT-00000001wS9-1Ez9;
	Fri, 22 Nov 2024 08:37:33 +0000
Received: from mail-yw1-f178.google.com ([209.85.128.178])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEP9W-00000001wJQ-0Mvu;
	Fri, 22 Nov 2024 08:36:35 +0000
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-6ee745e3b2bso22258757b3.0;
        Fri, 22 Nov 2024 00:36:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732264591; x=1732869391;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gAZGdYy0kLNz/HWKiT5Wenkd6deM0b7lB87bgXf3/+U=;
        b=TILB2CEkt46HMSL7Zp+7zrUlcOGUIoQjjRVKJaBybyibl6Cj279CVsVmYxwk72In+J
         Um+9AJF/YhZuE5tSioGFajEqtvPHpqmbTZ/Z6KvqpEufknT/z01y/b02HdS43Ey9+6ZY
         u/2z7X7ndVPmI2PPqioHeZwc/F9HtL8xUHzqQXcI0HiiVOlkTHW64Qz/ClcgYefaw6nm
         WyacEtlE7tk8t9bR/9Zu58aGG+/OBjYPvSv3SQFBxZjzIo26mte94sCcOJ1Cv97uWju4
         /H6P9h+Nd5u5re4KuuoQfuR65aRVOG8bhInaV9OwEbt/bohZnPCFv7bqegkAtVoqqlRj
         Z9jw==
X-Forwarded-Encrypted: i=1; AJvYcCVgYdcnv3Nl7eTBWzIHvQ+3c/YlahTCc91d4YVMZ/hZr2KN1NhXC6qOMyEgppoaUw+bsSArgJXN+/syJIDzrJ6Z@lists.infradead.org, AJvYcCXHAvO+/Ke7AYanvfTieFWFY+wanJh9tZsN6lg5I0EY3hMRXx/OVl81peV+G/zUFpWOZg0vylbAMY4hBIi+jWk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzMEu5eo9FInLgcV8lfpgmZ23aceOQYfy6aHRL41wDgfUIqNs5a
	/f7jrT8iJ6jdIHpKbxokNvZXh/SjJ9P+KKxltvVqGYFpIkbT07Yu2P4arHnI
X-Gm-Gg: ASbGncv38qxJUuGhWO/PzU2R1KIM30apmW2rdaFVBIURhO+q+8HRIpa2axZQyasyG6D
	pC7UsxhCPP5AbSVlXaRwjmkLllqcOJKqbP5TuOQB7dZqoKe5V+WqRtrvNCH01lYuTaW/USykO+1
	63W0PJ8JuyxRUFJ7H5D0i0NovCZlBn7V2s8MZ05b3nEhepo/sY/vLkWLWkYgjif/5oOeqT1IF2k
	0qfUFFexWFRHyaCR/rK4LufQUzDkgylmzBx/nnBgWOYDGvVuLMvwleuOf8LlHiYDjvg5YZsVXy8
	08UtfjJ18+IUfXTg
X-Google-Smtp-Source: AGHT+IGUtyxA6bHM3Tk/VbkIoPAjYzFnDu6Efq4waRa4NIr9slwpWucFtUdSLQ82l5dVwW17jfViSQ==
X-Received: by 2002:a05:690c:4804:b0:6dd:f81a:80fb with SMTP id 00721157ae682-6eee08a9753mr17000657b3.1.1732264590909;
        Fri, 22 Nov 2024 00:36:30 -0800 (PST)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com. [209.85.128.178])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6eee008cd94sm3543707b3.95.2024.11.22.00.36.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2024 00:36:29 -0800 (PST)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-6ee745e3b2bso22258487b3.0;
        Fri, 22 Nov 2024 00:36:28 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVMtqI1c2VWzB4IEQIDtVZ9NUN2Zik0bgtI9p2TgFA3oBu+eE30jh8imv+KPxHDVAWJWakz/vQ+DD9AQUx7RNs=@lists.infradead.org, AJvYcCXBcRHUqScAxfnPQB0f5ktuuMgwqXS8jLsc+edDKGB7hUZbp/SI3hPGdhlfpWVzsEG1X/T+1GOj7ZBefJLdHC8G@lists.infradead.org
X-Received: by 2002:a05:690c:7084:b0:6e2:2684:7f62 with SMTP id
 00721157ae682-6eecd25bc15mr55712747b3.8.1732264588474; Fri, 22 Nov 2024
 00:36:28 -0800 (PST)
MIME-Version: 1.0
References: <20241018151016.3496613-1-arnd@kernel.org> <20241104172950.GA741087@thelio-3990X>
In-Reply-To: <20241104172950.GA741087@thelio-3990X>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 22 Nov 2024 09:36:16 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXrrCiLm2sQmpegtVHV8X5AUp-8E5BejDxRpMbeAfHhvQ@mail.gmail.com>
Message-ID: <CAMuHMdXrrCiLm2sQmpegtVHV8X5AUp-8E5BejDxRpMbeAfHhvQ@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: avoid 64-bit division
To: Nathan Chancellor <nathan@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241122_003634_125305_976BAFED 
X-CRM114-Status: GOOD (  27.02  )
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
Cc: Simona Vetter <simona@ffwll.ch>, Arnd Bergmann <arnd@kernel.org>, Algea Cao <algea.cao@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBOb3YgNCwgMjAyNCBhdCA2OjMw4oCvUE0gTmF0aGFuIENoYW5jZWxsb3IgPG5hdGhh
bkBrZXJuZWwub3JnPiB3cm90ZToKPiBPbiBGcmksIE9jdCAxOCwgMjAyNCBhdCAwMzoxMDoxMFBN
ICswMDAwLCBBcm5kIEJlcmdtYW5uIHdyb3RlOgo+ID4gRnJvbTogQXJuZCBCZXJnbWFubiA8YXJu
ZEBhcm5kYi5kZT4KPiA+Cj4gPiBEaXZpZGluZyBhIDY0LWJpdCBpbnRlZ2VyIHByZXZlbnRzIGJ1
aWxkaW5nIHRoaXMgZm9yIDMyLWJpdCB0YXJnZXRzOgo+ID4KPiA+IEVSUk9SOiBtb2Rwb3N0OiAi
X19hZWFiaV91bGRpdm1vZCIgW2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcGRybS5r
b10gdW5kZWZpbmVkIQo+ID4KPiA+IEFzIHRoaXMgZnVuY3Rpb24gaXMgbm90IHBlcmZvcm1hbmNl
IGNyaXRpY2lhbCwganVzdCBVc2UgdGhlIGRpdl91NjQoKSBoZWxwZXIuCj4gPgo+ID4gRml4ZXM6
IDEyOGE5YmY4YWNlMiAoImRybS9yb2NrY2hpcDogQWRkIGJhc2ljIFJLMzU4OCBIRE1JIG91dHB1
dCBzdXBwb3J0IikKPiA+IFNpZ25lZC1vZmYtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIu
ZGU+Cj4KPiBSZXZpZXdlZC1ieTogTmF0aGFuIENoYW5jZWxsb3IgPG5hdGhhbkBrZXJuZWwub3Jn
Pgo+Cj4gQ2FuIHNvbWVvbmUgcGxlYXNlIHBpY2sgdGhpcyB1cD8gSXQgaXMgc3RpbGwgYnJva2Vu
IGluIG5leHQtMjAyNDExMDQuLi4KPgo+IGh0dHBzOi8vc3RvcmFnZS50dXhzdWl0ZS5jb20vcHVi
bGljL2NsYW5nYnVpbHRsaW51eC9jb250aW51b3VzLWludGVncmF0aW9uMi9idWlsZHMvMm9OdkpG
Umo4dGtEaWViNlZmck1mNHJoMUtuL2J1aWxkLmxvZwo+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2NrY2hpcC5jIHwgMiArLQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2NrY2hpcC5jIGIvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9ja2NoaXAuYwo+ID4gaW5kZXggOWM3OTZl
ZTRjMzAzLi5jOGIzNjJjYzJiOTUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvZHdfaGRtaV9xcC1yb2NrY2hpcC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvZHdfaGRtaV9xcC1yb2NrY2hpcC5jCj4gPiBAQCAtODIsNyArODIsNyBAQCBzdGF0aWMg
dm9pZCBkd19oZG1pX3FwX3JvY2tjaGlwX2VuY29kZXJfZW5hYmxlKHN0cnVjdCBkcm1fZW5jb2Rl
ciAqZW5jb2RlcikKPiA+ICAgICAgICAgICAgICAgICogY29tbWVudCBpbiBya19oZHB0eF9waHlf
cG93ZXJfb24oKSBmcm9tCj4gPiAgICAgICAgICAgICAgICAqIGRyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMKPiA+ICAgICAgICAgICAgICAgICovCj4gPiAt
ICAgICAgICAgICAgIHBoeV9zZXRfYnVzX3dpZHRoKGhkbWktPnBoeSwgcmF0ZSAvIDEwMCk7Cj4g
PiArICAgICAgICAgICAgIHBoeV9zZXRfYnVzX3dpZHRoKGhkbWktPnBoeSwgZGl2X3U2NChyYXRl
LCAxMDApKTsKPiA+ICAgICAgIH0KPiA+ICB9Cgpub3JlcGx5QGVsbGVybWFuLmlkLmF1IGhhcyBq
dXN0IHRvbGQgbWUgdGhpcyBidWlsZCBpc3N1ZSBpcyBub3cgdXBzdHJlYW06CgogICAgRkFJTEVE
IGxpbnVzL202OGstYWxsbW9kY29uZmlnL202OGstZ2NjOC4xIEZyaSBOb3YgMjIsIDA1OjM0CiAg
ICBodHRwOi8va2lzc2tiLmVsbGVybWFuLmlkLmF1L2tpc3NrYi9idWlsZHJlc3VsdC8xNTI3NzI0
Mi8KCiAgICBDb21taXQ6ICAgTWVyZ2UgdGFnICdkcm0tbmV4dC0yMDI0LTExLTIxJyBvZgpodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2tlcm5lbAogICAgICAgICAgICAgIDI4ZWI3
NWUxNzhkMzg5ZDMyNWYxNjY2ZTQyMmJjMTNiYmJiOTgwNGMKICAgIENvbXBpbGVyOiBtNjhrLWxp
bnV4LWdjYyAoR0NDKSA4LjEuMCAvIEdOVSBsZCAoR05VIEJpbnV0aWxzKSAyLjMwCgogICAgRVJS
T1I6IG1vZHBvc3Q6ICJfX3VkaXZkaTMiCltkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBkcm0ua29dIHVuZGVmaW5lZCEKCkFwcGx5aW5nIHRoaXMgcGF0Y2ggZml4ZXMgaXQsIHNvCkFj
a2VkLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0QGxpbnV4LW02OGsub3JnPgoKRG8gd2Ug
cmVhbGx5IG5lZWQgKzUgd2Vla3MgdG8gYXBwbHkgYSBmaXggZm9yIGEgcmVwb3J0ZWQgYnVpbGQg
aXNzdWU/ClRoYW5rcyEKCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAg
ICAgR2VlcnQKCi0tCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXgg
YmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNh
dGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQK
d2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBv
ciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0t
IExpbnVzIFRvcnZhbGRzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
