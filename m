Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6FE9C47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jan 2024 10:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NghJ+x4jd4I3eIgoIsJlhewa+V0xbQfoKt6ddNjiHuo=; b=TRSg7jKn4/zz8l
	iuKogbtS2zxXgCMOGRZBxd7gqS0eWAtzyatdF4O+z+CR745AiaS68VZqA+fv+L8Al6IISEXE/RrOt
	rv1DAK4ZCnc2JFJEs0BGm4FN6wIEnVWsthZSRWUbYMiDhr4GTYQtvHF3qTdDAiu1Xz0nrmX1p0Xg6
	vBXebC+aSIpkGS0byYp4wcIx0U239eNOn7CT9nNII8PmJ0tuG5oWIrYcPbod788ONFv+e9SAAIjZO
	F+Mp/OEi8UXJIf8CuAHxFFFuoRvVOCupNDMn8aiN5icIT+g0b9/8Fnxlqto5ZITuqPtrKJhbBU1wM
	8/erp4RFreb6bUuVdFTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV87A-00000002roe-2taK;
	Wed, 31 Jan 2024 10:46:44 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV781-00000002XNf-0umY;
	Wed, 31 Jan 2024 09:43:34 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a364b5c5c19so191402566b.1;
        Wed, 31 Jan 2024 01:43:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706694210; x=1707299010; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ITZ+rt9x0Q01XZlNJE668LMM3xiQ7k41PpzKoiIe8e0=;
        b=WNlT3e40hUjqfdrbY2GrBT4n9C0TM0jSflKGX04oIkhdJPq5wudUBiUztfIexwT6WE
         +7HBeJPHiuXacruoOZr5yK89tLLw/w30pE/466E7UAWwQF144H2N8SZndfrXTNGLTgFO
         CQMINdFp7Zg08NHe5xtbM+yz4hraG52XjnfL6YGFp/oMgJmw22hHAOk+V0ktbLYXLwRb
         9F3K9av2CDntyTsYcsmOQnv4ju0y5Ga38ycLwnwvEi4qKWpAALDISvKjqAynrwpZXDbJ
         bm1qGjdVzB0Xq+XKYnfD3uywHJ+UuYAvd5KMlmnFsa1KXzxzUJNzKnTLVBnj/bug0GoJ
         0ZRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706694210; x=1707299010;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ITZ+rt9x0Q01XZlNJE668LMM3xiQ7k41PpzKoiIe8e0=;
        b=w0Zg7vGmDlyDgka6A8T/FOuQ0GLZMqYKrf9IfrLPd0vvRZJSZjuKYDDXdIxTzWViJh
         CYPnOlvz5NCl3zImdp79nICB5IBRnE21rdiFAZ/OOHWvwiwXza/HxVaWqQG7o18F0nTx
         ctqjuaMNk8J8rKGQme1hyAL9wpmEP0iqLWXSGGSLrKHl9feK//8dJIZrncvK/dS9QSnh
         O3ObIhpSwPvD81oAwprcb42D33U0C9wzmCrOzrX0M7Ld96QnyXAQBO7wdSfFIRQPsfJz
         tq3adXbAx8gxH2yAl8Vj92xCDnWk9KI+jU+PMpM0zCYSThLOfB4rZAKGTsWNa1sUqmkS
         obfg==
X-Gm-Message-State: AOJu0YxQmBsQltQSnJL1DY8LiL+wvatLZGrc5en8zA3HLpIERNAnedgu
	wTzdJTZGCV9cd/AqPHv2SsM0DcAHcd9HuadWoddSFUgAnkmUuw8dS4HGQ5zmMkKauvBOVYM5m4N
	KFiXDcM2vUErLyWTjzZKFCykx8Co=
X-Google-Smtp-Source: AGHT+IFpsyjOS9LQ+92/QbFeJKa7OgI/Xrx823sBS/pUCO7DlGoclan6W3wa/VSYWWIQT9HAx2L9ylTJRzjkGRtzT44=
X-Received: by 2002:a17:906:2c19:b0:a36:8711:ee35 with SMTP id
 e25-20020a1709062c1900b00a368711ee35mr415520ejh.40.1706694210472; Wed, 31 Jan
 2024 01:43:30 -0800 (PST)
MIME-Version: 1.0
References: <20240130-rk-dts-additions-v2-0-c6222c4c78df@gmail.com>
 <20240130-rk-dts-additions-v2-2-c6222c4c78df@gmail.com> <8115ab382115f66aa01dd3d00aaae474@manjaro.org>
In-Reply-To: <8115ab382115f66aa01dd3d00aaae474@manjaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 31 Jan 2024 13:43:19 +0400
Message-ID: <CABjd4YyP0trjBi+Djau-n69vg6-s2SdPWwmWK9fT626sKST8EA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] arm64: dts: rockchip: enable temperature driven
 fan control on Rock 5B
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_014333_316277_6380FFE3 
X-CRM114-Status: GOOD (  21.83  )
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

T24gV2VkLCBKYW4gMzEsIDIwMjQgYXQgOTowOOKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPiB3cm90ZToKPgo+IEhlbGxvIEFsZXhleSwKPgo+IFNvbWUgbm90ZXMgYmVsb3cs
IHBsZWFzZSBoYXZlIGEgbG9vay4KPgo+IE9uIDIwMjQtMDEtMzAgMTk6MjEsIEFsZXhleSBDaGFy
a292IHdyb3RlOgo+ID4gVGhpcyBlbmFibGVzIHRoZXJtYWwgbW9uaXRvcmluZyBvbiBSYWR4YSBS
b2NrIDVCIGFuZCBsaW5rcyB0aGUgUFdNCj4gPiBmYW4gYXMgYW4gYWN0aXZlIGNvb2xpbmcgZGV2
aWNlIG1hbmFnZWQgYXV0b21hdGljYWxseSBieSB0aGUgdGhlcm1hbAo+ID4gc3Vic3lzdGVtLCB3
aXRoIGEgdGFyZ2V0IFNvQyB0ZW1wZXJhdHVyZSBvZiA2NUMgYW5kIGEgbWluaW11bS1zcGluCj4g
PiBpbnRlcnZhbCBmcm9tIDU1QyB0byA2NUMgdG8gZW5zdXJlIGFpcmZsb3cgd2hlbiB0aGUgc3lz
dGVtIGdldHMgd2FybQo+Cj4gSSdkIHN1Z2dlc3QgdGhhdCB5b3UgcmVwbGFjZSAidGVtcGVyYXR1
cmUgZHJpdmVuIGZhbiBjb250cm9sIiB3aXRoCj4gImFjdGl2ZSBjb29saW5nIiBpbiB0aGUgcGF0
Y2ggc3ViamVjdC4gIE1vcmUgY29uY2lzZSBhbmQgcmVhZHMgYmV0dGVyLgoKQWdyZWVkLCB0aGFu
a3MhCgo+ID4gQWNrZWQtYnk6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0BsaW5hcm8u
b3JnPgo+ID4gU2lnbmVkLW9mZi1ieTogQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZ21haWwuY29t
Pgo+ID4gLS0tCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01
Yi5kdHMgfCAzNAo+ID4gKysrKysrKysrKysrKysrKysrKysrKysrLQo+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAzMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4gPiBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4gPiBpbmRleCBh
MGUzMDNjM2ExZGMuLmI0ODVlZGVlZjg3NiAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4gPiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+ID4gQEAgLTUyLDcgKzUyLDcgQEAg
bGVkX3JnYl9iIHsKPiA+Cj4gPiAgICAgICBmYW46IHB3bS1mYW4gewo+ID4gICAgICAgICAgICAg
ICBjb21wYXRpYmxlID0gInB3bS1mYW4iOwo+ID4gLSAgICAgICAgICAgICBjb29saW5nLWxldmVs
cyA9IDwwIDk1IDE0NSAxOTUgMjU1PjsKPiA+ICsgICAgICAgICAgICAgY29vbGluZy1sZXZlbHMg
PSA8MCAxMjAgMTUwIDE4MCAyMTAgMjQwIDI1NT47Cj4gPiAgICAgICAgICAgICAgIGZhbi1zdXBw
bHkgPSA8JnZjYzV2MF9zeXM+Owo+ID4gICAgICAgICAgICAgICBwd21zID0gPCZwd20xIDAgNTAw
MDAgMD47Cj4gPiAgICAgICAgICAgICAgICNjb29saW5nLWNlbGxzID0gPDI+Owo+ID4gQEAgLTE3
Myw2ICsxNzMsMzQgQEAgJmNwdV9sMyB7Cj4gPiAgICAgICBjcHUtc3VwcGx5ID0gPCZ2ZGRfY3B1
X2xpdF9zMD47Cj4gPiAgfTsKPiA+Cj4gPiArJnBhY2thZ2VfdGhlcm1hbCB7Cj4gPiArICAgICBw
b2xsaW5nLWRlbGF5ID0gPDEwMDA+Owo+ID4gKwo+ID4gKyAgICAgdHJpcHMgewo+ID4gKyAgICAg
ICAgICAgICBwYWNrYWdlX2ZhbjA6IHBhY2thZ2UtZmFuMCB7Cj4gPiArICAgICAgICAgICAgICAg
ICAgICAgdGVtcGVyYXR1cmUgPSA8NTUwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGh5
c3RlcmVzaXMgPSA8MjAwMD47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgdHlwZSA9ICJhY3Rp
dmUiOwo+ID4gKyAgICAgICAgICAgICB9Owo+ID4gKyAgICAgICAgICAgICBwYWNrYWdlX2ZhbjE6
IHBhY2thZ2UtZmFuMSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgdGVtcGVyYXR1cmUgPSA8
NjUwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGh5c3RlcmVzaXMgPSA8MjAwMD47Cj4g
PiArICAgICAgICAgICAgICAgICAgICAgdHlwZSA9ICJhY3RpdmUiOwo+ID4gKyAgICAgICAgICAg
ICB9Owo+ID4gKyAgICAgfTsKPiA+ICsKPiA+ICsgICAgIGNvb2xpbmctbWFwcyB7Cj4gPiArICAg
ICAgICAgICAgIG1hcDAgewo+Cj4gU2hvdWxkIGJlICJtYXAxIiBpbnN0ZWFkIG9mICJtYXAwIi4g
IFRoZXJlJ3MgYWxyZWFkeSAibWFwMCIKPiBkZWZpbmVkIGZvciAicGFja2FnZV90aGVybWFsIiBp
biB0aGUgUkszNTg4KHMpIGR0c2kgZmlsZS4KCkluZGVlZC4gSSBnb3Qgb3ZlcnplYWxvdXMgcmVu
YW1pbmcgZXZlcnl0aGluZyB0byBiZSB6ZXJvLWJhc2VkLgoKPiA+ICsgICAgICAgICAgICAgICAg
ICAgICB0cmlwID0gPCZwYWNrYWdlX2ZhbjA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNv
b2xpbmctZGV2aWNlID0gPCZmYW4gVEhFUk1BTF9OT19MSU1JVCAxPjsKPiA+ICsgICAgICAgICAg
ICAgfTsKPiA+ICsgICAgICAgICAgICAgbWFwMSB7Cj4KPiBTaG91bGQgYmUgIm1hcDIiIGluc3Rl
YWQgb2YgIm1hcDEiLgoKTm90ZWQsIHRoYW5rcyEKCj4gPiArICAgICAgICAgICAgICAgICAgICAg
dHJpcCA9IDwmcGFja2FnZV9mYW4xPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBjb29saW5n
LWRldmljZSA9IDwmZmFuIDEgVEhFUk1BTF9OT19MSU1JVD47Cj4KPiBTaG91bGQgYmUgImNvb2xp
bmctZGV2aWNlID0gPCZmYW4gMiBUSEVSTUFMX05PX0xJTUlUPjsiCj4gKGkuZS4sICIyIFRIRVJN
QUxfTk9fTElNSVQiIGluc3RlYWQgb2YgIjEgVEhFUk1BTF9OT19MSU1JVCIpLgo+Cj4gVGhlIGZp
cnN0IGZhbiBzcGVlZCBpcyBhbHJlYWR5IGNvdmVyZWQgYnkgdGhlIGZpcnN0IGNvb2xpbmcgbWFw
Lgo+IFRoZSBzZWNvbmQgY29vbGluZyBtYXAgdGFrZXMgb3ZlciBmcm9tIHRoZSBzZWNvbmQgZmFu
IHNwZWVkLgoKTWFrZXMgc2Vuc2UsIHdpbGwgYWRqdXN0LCB0aGFuayB5b3UhCgpCZXN0IHJlZ2Fy
ZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
