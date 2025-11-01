Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE248CCFA03
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Nov 2025 12:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7+cZuAY1ziVa4ipVE9uZdym717tr9BS3sXtC5PmGz4E=; b=j9bIhpgcFN8dNg
	Vo3T04MhjvYXsDMuZn2eCZOducwGNzWgXQSdajulqZ3KDDQ6prWsN3EcWKw/O4zl1vDDOiJY+sd5S
	gwDHRE8cKnLLicDLyJMf9T7U3IIkOKOB/txhZaGDCop3MUO025NBUQQJSQOJx25pNnsrxBf5KMZ+u
	MfYzMjtEg+N40M/KyfiAJq/7UPqo7x3IHBkWourQIA3aPeE8ee1sNG7L2Ta3YK19b2b6LT/Z0PvyE
	Ym5vBtyDMxPmvB14QxOJTbKELYazDkOPzuVsGKZRMellhurb1DVMaO8GNhGeMABcck7/z6l3/NYD3
	X38Lo/r/lEuxkKjDHKHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFAtI-00000007hz3-31sj;
	Sat, 01 Nov 2025 12:39:32 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFAVC-00000007Rb8-2w2I
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Nov 2025 12:14:40 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-b6cdba2663dso2271829a12.2
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Nov 2025 05:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761999277; x=1762604077; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2ujdLBAXhZY2AOY4FZZ6eP/3+PsXNveO7Mezvnen8AY=;
        b=Z/PfysO3PYXH09lCSeeQl2JH7qxn/PY0cHcRF2GUQOPfI4sbo9z3O4twwaJFolEJPN
         cpsvS2SqKntzy5zYtiP9HyypYYvNjhZ0/2ttzH/WqS8+TJGcNbK8z2WRxrMTl5buG81d
         xWhIKrofXqoWiVW9u2Td7hVZzQBRqKb3i5ajNF447MT1ze6r9MZ+tLU1LNuXzmKOS87f
         TvZB1Ryaqx4jpab4X/CKpP915kY5Ruw5Vn2975RSuejF9/8vKMQ5SX1GI/H8CPSpFXdp
         SHoJiv/ceyyddcgzeRMP47gJFAsctn6zy0r0/5SZka2ZSh0MpNpHEBBITYxXlV4J+H5S
         b2Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761999277; x=1762604077;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2ujdLBAXhZY2AOY4FZZ6eP/3+PsXNveO7Mezvnen8AY=;
        b=TJ+qZnriRfWJO1ghe9QqLYhH4No/s+ykVgtXZvhml0eJZfFXpJWLxPPoXFhfdApTBD
         FqiHrRl4tE/p4XbUmq/gxgy2yHAwe3yleKMpyeZHMl7EG1Z82qsbWOeYey53TU3kgCZt
         3aWWJxH1zFXB1R8Lz9MvRisQUBvvpBc5Hw20ycfbt/CIZZD0qr//ClcNsM5W2TwFAS6c
         HqTOsQ5hNYpWhVNgjlSWOd2M+ILqQ93KMVE4eXqHRFq0daH5bp4wQpNTPVTCADJ5cpO9
         9Hpn/FjCbEFC62bD/Xcrc1sBt0MwnXOuoibOhP62lh3bIeQzMc5FsvPxYitG/6HzD+f5
         SJgw==
X-Forwarded-Encrypted: i=1; AJvYcCXN9dSkAlRtqBK44uQ9CFWa1Agsw8qr42KD9Kbudze4Uyso/3bFxnm0Kl6XpXzMs/t/8jwb0Et/JpE7d+bvgQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8i84TRPebfz31RbIAWWKt9b6mUZ84dbf2vWbeowX7dCl0vRZj
	tu1Vj5gHKarXr0IxFDO026UE/Y/YNMjLIvoMs2Dzfd8VlNRPvPuO3iCGvixbqxugBQk=
X-Gm-Gg: ASbGnctf4g3FgylRWlGGP9xJvEieoTG8p7hCptyY/GHk7+ZKjhP44xQ1MgLUvoqci3v
	aMc7GRUkTId1qIXxjfLjJnhsv/+OUWCYEriB9Dea07kiv3LMnbm18ANxVpII9fz/fP+AsBPqXPb
	E2OCswDTzWGM11dvaJKlUSeJ0mUMUwMl/jfmJ1AoPNtO8su0mf9M2xWp7ZZmdQPyx+RHV1dlpYc
	JGF+zqjwlV4qV4UmorPaRcqrhPBXar0SsSwe99cG16aTQA7RZEPzthZl68V8mq8O7lnDaI2Wuur
	5oEGgij9u9ivEIv4pbb/bOQp/jyiqxbqQYwvUQNAvL5mmQg+8O7lGxz28HecmaxJwQF4rtAojzi
	UJQE8rU7fZb93P+vZrysGYNi2/YrU1ihbzTfFjHN0y5i98/HLisqcuwTF6BQqzqs=
X-Google-Smtp-Source: AGHT+IEeRk+2DxXb5yHODDdJKSDxSfi10vJFhmh11HwS87jb+u5luDPpAWnpSEzbksr4arETIJtz8w==
X-Received: by 2002:a17:903:2343:b0:27e:ef35:2dbf with SMTP id d9443c01a7336-2951a55b4e1mr82703355ad.30.1761999276934;
        Sat, 01 Nov 2025 05:14:36 -0700 (PDT)
Received: from CNSZTL-PC.lan ([2001:df0:a640:1::14])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2952e9a3972sm49654205ad.46.2025.11.01.05.14.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Nov 2025 05:14:36 -0700 (PDT)
Message-ID: <3cba9996-228e-4086-99ba-4a2a00de57ab@gmail.com>
Date: Sat, 1 Nov 2025 20:14:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: fix eMMC corruption on NanoPC-T6
 with A3A444 chips
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Grzegorz Sterniczuk <grzegorz@sternicz.uk>,
 Dragan Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>,
 Jianfeng Liu <liujianfeng1994@gmail.com>
References: <20251017073954.130710-1-cnsztl@gmail.com>
 <08911ae2-fef3-432d-a236-d820c9cb67ac@gmail.com>
 <5af928c4-4b6e-489c-ad39-26cef3dd7473@gmail.com> <10751338.nUPlyArG6x@phil>
From: Tianling Shen <cnsztl@gmail.com>
In-Reply-To: <10751338.nUPlyArG6x@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251101_051438_740574_1DEBB2B4 
X-CRM114-Status: GOOD (  19.45  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpPbiAyMDI1LzExLzEgMTk6NTQsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+IEFt
IE1vbnRhZywgMjcuIE9rdG9iZXIgMjAyNSwgMTg6MzQ6MjUgTWl0dGVsZXVyb3DDpGlzY2hlIE5v
cm1hbHplaXQgc2NocmllYiBUaWFubGluZyBTaGVuOgo+PiArIEppYW5mZW5nCj4+Cj4+IE9uIDIw
MjUvMTAvMjAgMTI6NDQsIFRpYW5saW5nIFNoZW4gd3JvdGU6Cj4+PiBIaSBTaGF3biwKPj4+Cj4+
PiBPbiAyMDI1LzEwLzIwIDk6NTMsIFNoYXduIExpbiB3cm90ZToKPj4+PiBIaSBUaWFubGluZwo+
Pj4+Cj4+Pj4gT24gMjAyNS8xMC8xNyBGcmlkYXkgMTU6MzksIFRpYW5saW5nIFNoZW4gd3JvdGU6
Cj4+Pj4+IEZyb206IEdyemVnb3J6IFN0ZXJuaWN6dWsgPGdyemVnb3J6QHN0ZXJuaWN6LnVrPgo+
Pj4+Pgo+Pj4+PiBTb21lIE5hbm9QQy1UNiBib2FyZHMgd2l0aCBBM0E0NDQgZU1NQyBjaGlwcyBl
eHBlcmllbmNlIEkvTyBlcnJvcnMgYW5kCj4+Pj4+IGNvcnJ1cHRpb24gd2hlbiB1c2luZyBIUzQw
MCBtb2RlLiBEb3duZ3JhZGUgdG8gSFMyMDAgbW9kZSB0byBlbnN1cmUKPj4+Pj4gc3RhYmxlIG9w
ZXJhdGlvbi4KPj4+Pgo+Pj4+IE1heSBJIGFzayB5b3UgdG8gdGVzdCBhbm90aGVyIHBhdGNoIEkg
anVzdCBwb3N0ZWQgdG8gc2VlIGlmIGl0IGZpeGVzCj4+Pj4geW91ciBpc3N1ZT8KPj4+Pgo+Pj4+
IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1tbWMvCj4+Pj4gcGF0
Y2gvMTc2MDkyNDk4MS01MjMzOS0xLSBnaXQtc2VuZC1lbWFpbC1zaGF3bi5saW5Acm9jay1jaGlw
cy5jb20vCj4+Pgo+Pj4gVGhhbmsgeW91IGZvciB0aGUgcGF0Y2ghIEkgd2lsbCBhc2sgbXkgZnJp
ZW5kIHRvIHRlc3QgaXQgYnV0IGhlIHVzZXMKPj4+IHRoaXMgYm9hcmQgYXMgYSBob21lIHJvdXRl
ciwgc28gaXQgbWF5IHRha2UgYSBmZXcgZGF5cyBvciB3ZWVrcyB0bwo+Pj4gcmVwb3J0IHRoZSBy
ZXN1bHQuCj4+Cj4+IEhpIGFsbCwgc29ycnkgZm9yIHRoZSBsYXRlLiBNeSBmcmllbmQgaGFzIHRl
c3RlZCB0aGlzIHBhdGNoIGFuZCBpdCB3b3Jrcwo+PiBmaW5lIGFmdGVyIDUwIHRpbWVzIGRkIG9w
ZXJhdGlvbi4gQSBiaWcgdGhhbmtzIHRvIFNoYXduIQo+IAo+IFNvIEkgZ3Vlc3MsIHdlIGRvbid0
IG5lZWQgdGhlIHBhdGNoIHJlZHVjaW5nIHRoZSBzcGVlZCBhbnltb3JlLCByaWdodD8KClllcyEg
OykKClRoYW5rcywKVGlhbmxpbmcuCgo+IAo+IAo+IFRoYW5rcwo+IEhlaWtvCj4gCj4gCj4+IEFu
ZCBoaSBKaWFuZmVuZywgSSBmb3VuZCB5b3UgbWFkZSBhIHNpbWlsaWFyIHBhdGNoWzFdIGZvciB0
aGUgUk9DSyA1IElUWAo+PiBib2FyZCB0byBsb3dlciBkb3duIHRoZSBtbWMgc3BlZWQsIGNvdWxk
IHlvdSBwbGVhc2UgY2hlY2sgaWYgdGhpcyBwYXRjaAo+PiBhbHNvIGZpeGVzIHlvdXIgaXNzdWU/
Cj4+Cj4+IFRoYW5rcywKPj4gVGlhbmxpbmcuCj4+Cj4+IDEuCj4+IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjUwMjI4MTQzMzQxLjcwMjQ0LTEtbGl1amlhbmZlbmcx
OTk0QGdtYWlsLmNvbS8KPj4KPj4+Cj4+PiBUaGFua3MsCj4+PiBUaWFubGluZy4KPj4+Cj4+Pj4K
Pj4+Pgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBHcnplZ29yeiBTdGVybmljenVrIDxncnpl
Z29yekBzdGVybmljei51az4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogVGlhbmxpbmcgU2hlbiA8Y25z
enRsQGdtYWlsLmNvbT4KPj4+Pj4gLS0tCj4+Pj4+ICAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4LW5hbm9wYy10Ni5kdHNpIHwgMyArLS0KPj4+Pj4gICAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtbmFub3BjLXQ2LmR0c2kgYi8K
Pj4+Pj4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtbmFub3BjLXQ2LmR0c2kK
Pj4+Pj4gaW5kZXggZmFmZWFiZTlhZGY5Li41ZjYzZjM4ZjczMjYgMTAwNjQ0Cj4+Pj4+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW5hbm9wYy10Ni5kdHNpCj4+Pj4+
ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW5hbm9wYy10Ni5kdHNp
Cj4+Pj4+IEBAIC03MTcsOCArNzE3LDcgQEAgJnNkaGNpIHsKPj4+Pj4gICAgICAgIG5vLXNkOwo+
Pj4+PiAgICAgICAgbm9uLXJlbW92YWJsZTsKPj4+Pj4gICAgICAgIG1heC1mcmVxdWVuY3kgPSA8
MjAwMDAwMDAwPjsKPj4+Pj4gLSAgICBtbWMtaHM0MDAtMV84djsKPj4+Pj4gLSAgICBtbWMtaHM0
MDAtZW5oYW5jZWQtc3Ryb2JlOwo+Pj4+PiArICAgIG1tYy1oczIwMC0xXzh2Owo+Pj4+PiAgICAg
ICAgc3RhdHVzID0gIm9rYXkiOwo+Pj4+PiAgICB9Owo+Pj4+Cj4+Pgo+Pgo+Pgo+IAo+IAo+IAo+
IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
