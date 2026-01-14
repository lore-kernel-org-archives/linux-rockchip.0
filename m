Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48636D39014
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 19:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5skF5Z1gNdwSNit3u7J0dI5EX0HuAHTTLZS8tvrJX0=; b=vDobqa6dzyeaQ7
	14kOGOU6TQbLNYdMGXzIQ06E1dLG2z57L/0Wg5ezgsDUAzQp9StQWVHt8TbH6QXkr37NbzFuJ3owF
	dtnFy2dCFWrH50O7p5YF7h0isgcAg+NrF8FXkme6674wnKiEAMVmZxylCWpx9+Mw1Z4S/e4jV8Jeu
	W/luooUVMv5DVWME9gdlyBcH3BzlZ9fRWhOc2tKGSYepduh5Ox+szyr+KoAOu7mqp+WREFt4HG7ZL
	hRcs39TSicgdp0bFrO/FBkg8pNB7OPJe7Zs1cCiiD9myyj6Z7hj5e2skuFtA0+A10Bw4LLj+3zQO/
	ZtSbIR+djPt844axlEOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg6ti-0000000AXeF-21X9;
	Wed, 14 Jan 2026 19:51:18 +0000
Received: from mail-oa1-x2e.google.com ([2001:4860:4864:20::2e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg6tf-0000000AXcf-2y7W
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 19:51:16 +0000
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-3fa139e5d90so59842fac.3
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 11:51:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768420273; x=1769025073; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KmkX++zqRoXmQufKUjRGX+1ajYsTgPtGYI1EAO7VUfk=;
        b=aN47h6npK21eNOmf9IKfEIqINDdSLwRln3C+4NA3uLmaICbAfCqQIbmz+a0EHBgG5g
         HC2Futaa2bcx/JyOmkEGyr2Jju0E5NEh18keE5FU3eAIA2JwDZQa9KMKZAQdpRKigKuY
         EpGfuyRup+3dfEPwmV7tfs34bbTXTieoDcqLaw6fzU7hlXRUPX30LpJWKTv3wbuw0kBK
         ++ZRzuMnU3TbFP1kDLn00CIPsRpvyskx60jwXzm82qHhn+xs38d+MbgfF/DIYI1knkQZ
         K4kpQCx9BV3y/1qzQ6okoteGr8Hem2TavWHE1MieC5/iDwijgXdPMK5IdomuNGvB2R8B
         CxCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768420273; x=1769025073;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KmkX++zqRoXmQufKUjRGX+1ajYsTgPtGYI1EAO7VUfk=;
        b=j1/nV225Lpz6Dj/ztW2X024cDveDdYNgJnb061OEdAvE0isbjSSyJGDH9iHoZE9eB+
         ynR+Y2GSnHi/FKRuQA3IacdZRzMJHfGlDMjoKIpZzu4HHgzcEX4ukmk8H0F12z8BOXrn
         cvWveKYNuB3uyqoTQbG+YZ7bhjNIPKbUhXheCyjqDtsuF0tyXsiVF4GgJhPmYhleiJyp
         13HBYeAU6I6HJPVpdLOdOXDQ9osJSb0TBO6MYr0UBVF+5UvEAeoZmoJHbNthPgc4yB3S
         IQCgJR9mQ8e32u6sUnUScZ/oEIgkUgBaMnnAZSpjrLYsb2W0AyBcDwODCmeZ8MZzUaFR
         aIDg==
X-Forwarded-Encrypted: i=1; AJvYcCUfs5tON1GwV7kvIlIECmNal8ucsbTEQO0uk44KJI5SEntYkb70sCzFyDMqoqarSEC+7wl0yJyV/t8g2Jj8sA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxqMW30PA86LAaLj6IgOUBXTJJ7/o0CFQal+BrnC8wbhhzpm32m
	EjiaoAZh4IhM3ovX7/Gg5Zhp76I0XLt/g8v2XP6enXF9l+JpJ3Ap/FbL4XnRHdZnSq9kSTdR4Pu
	qjaYmjz8SZTfmGUqxm1mZ3EytC5wvWkc=
X-Gm-Gg: AY/fxX6BypxX0U1DPnpCMXElqdoKHaCsmJVNitVttlqvhS3P2SijqdkuE8y6AfZmXhq
	1zEhIcHFt62C6o3Wfm8VA1wgp75Clzbu8VlGY55rCPMqmCufNZ/wm6om7W4i132YJ87aUalIQrC
	/jdSy92KH0rAqAJUsDFN1/nN6xPgBuEtHcadTR8vUtQt1xE0ymuzsTFS5tyQTyXWRPHxM9HqjBP
	D5B0pDMdDTCMv1zbJObJk9qjsavFNR9DGfej8tqQKw/bThqhlQnRVCPx8JBVeVt3sFhr71dCW7r
	QT8UuS6mTzZ2vJVdAYBps2E486g=
X-Received: by 2002:a4a:bb09:0:b0:65f:5b63:2bd with SMTP id
 006d021491bc7-661006092bemr2099962eaf.16.1768420273146; Wed, 14 Jan 2026
 11:51:13 -0800 (PST)
MIME-Version: 1.0
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
 <67ccb8f6-f9bd-4266-b79a-b688bd6d030b@rock-chips.com> <8536413c-8687-4d75-befb-8f25e54838bf@rock-chips.com>
 <6934ae0d-16c5-436f-97f6-c11d304ca51d@rock-chips.com>
In-Reply-To: <6934ae0d-16c5-436f-97f6-c11d304ca51d@rock-chips.com>
From: Marco Schirrmeister <mschirrmeister@gmail.com>
Date: Wed, 14 Jan 2026 20:51:02 +0100
X-Gm-Features: AZwV_QhkpvCh021_8aZe2zj5NJEjyP2doG40Uc8dVAbqe8HO8DzZyH15qQIvC28
Message-ID: <CAGJh8eDXT43_PfmUbShL4Hysfkd21R=sCerRNe_AGQANbwvSPA@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] mmc: dw_mmc-rockchip: Add stability quirk for
 NanoPi R76S
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	heiko@sntech.de, ulf.hansson@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_115115_842216_4F5A6777 
X-CRM114-Status: GOOD (  20.24  )
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

SGVsbG8gU2hhd24sCgpPbiBXZWQsIEphbiAxNCwgMjAyNiBhdCA5OjA44oCvQU0gU2hhd24gTGlu
IDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gRXhjZXB0IGZvciB0aGUgcGF0
Y2ggbWVudGlvbmVkIGFib3ZlIGZvciBmaXhpbmcgdGhlIGhvdC1wbHVnIHByb2JsZW0KPiB3aGlj
aCB5b3UgY29uZmlybWVkIHRvIHdvcmsgZmluZS4gSSBsb29rZWQgdGhlIGNvZGUgYSBiaXQgYW5k
IHNlZQo+IGEgcG90ZW50aWFsIHByb2JsZW0gcmVsYXRlZCB0byB0aGUgcnVudGltZSBzdXNwZW5k
ICsgcG93ZXItZG9tYWluLgo+IFBsZWFzZSBjaGVjayB0aGUgcGF0Y2ggdG8gc2VlIGlmIGl0IGZp
eGVzIHlvdXIgcHJvYmxlbToKCkkgdGVzdGVkIHlvdXIgcGF0Y2ggYW5kIHRoZSBpc3N1ZSBpcyBz
dGlsbCBwcmVzZW50LiBGb3IgdmVyaWZpY2F0aW9uIEkgZGlkCmFkZCBzb21lIGRlYnVnIHN0YXRl
bWVudHMgYW5kIGp1c3QgdG8gc2VlIHdoYXQgaXQgc2F2ZXMgYW5kIHJlc3RvcmVzLgoKVGhlIHN5
bWJvbHMgYXJlIHRoZXJlLgpyb290QG5hbm9waS1yNzZzIH4jIGdyZXAgZHdfbWNpX3JvY2tjaGlw
X3J1bnRpbWUgL3Byb2Mva2FsbHN5bXMKZmZmZjgwMDA4MGJmMjdhMCB0IGR3X21jaV9yb2NrY2hp
cF9ydW50aW1lX3N1c3BlbmQKZmZmZjgwMDA4MGJmMjljMCB0IGR3X21jaV9yb2NrY2hpcF9ydW50
aW1lX3Jlc3VtZQoKIyBkbWVzZyBvdXRwdXQKW1dlZCBKYW4gMTQgMjA6MTM6NDYgMjAyNl0gRTIy
MGQ6IFJlc3RvcmluZyBwaGFzZXM6IHNhbXBsZT0yMzEsIGRydj0xODAKW1dlZCBKYW4gMTQgMjA6
MTM6NDYgMjAyNl0gbW1jX2hvc3QgbW1jMTogQnVzIHNwZWVkIChzbG90IDApID0gNDAwMDAwSHoK
W1dlZCBKYW4gMTQgMjA6MTM6NDcgMjAyNl0gbW1jX2hvc3QgbW1jMTogQnVzIHNwZWVkIChzbG90
IDApID0gMTk4MDAwMDAwSHoKW1dlZCBKYW4gMTQgMjA6MTM6NDcgMjAyNl0gZHdtbWNfcm9ja2No
aXAgMmEzMTAwMDAubW1jOiBTdWNjZXNzZnVsbHkKdHVuZWQgcGhhc2UgdG8gMjMyCltXZWQgSmFu
IDE0IDIwOjEzOjQ4IDIwMjZdIEUyMjBkOiBTYXZpbmcgcGhhc2VzOiBzYW1wbGU9MjMxLCBkcnY9
MTgwCltXZWQgSmFuIDE0IDIwOjEzOjQ4IDIwMjZdIEUyMjBkOiBSZXN0b3JpbmcgcGhhc2VzOiBz
YW1wbGU9MjMxLCBkcnY9MTgwCltXZWQgSmFuIDE0IDIwOjEzOjQ4IDIwMjZdIG1tY19ob3N0IG1t
YzE6IEJ1cyBzcGVlZCAoc2xvdCAwKSA9IDQwMDAwMEh6CltXZWQgSmFuIDE0IDIwOjEzOjQ4IDIw
MjZdIG1tY19ob3N0IG1tYzE6IEJ1cyBzcGVlZCAoc2xvdCAwKSA9IDE5ODAwMDAwMEh6CltXZWQg
SmFuIDE0IDIwOjEzOjQ4IDIwMjZdIGR3bW1jX3JvY2tjaGlwIDJhMzEwMDAwLm1tYzogU3VjY2Vz
c2Z1bGx5CnR1bmVkIHBoYXNlIHRvIDIzMQpbV2VkIEphbiAxNCAyMDoxMzo0OCAyMDI2XSBFMjIw
ZDogU2F2aW5nIHBoYXNlczogc2FtcGxlPTIzMSwgZHJ2PTE4MAoKQmFzZWQgb24gdGhpcywgaXQg
bWFrZXMgbWUgYmVsaWV2ZSB0aGF0IHBvd2VyIHRvIHRoZSBzZCBjYXJkIGlzIGNvbXBsZXRlbHkg
Y3V0CmFuZCB3aGVuIGl0IHdha2VzIHVwIGFuZCBrbm93cyBob3cgdG8gY29udGludWUsIGl0IHN0
aWxsIG11c3QgZ28gdGhyb3VnaCB0aGUKcmV0cmFpbmluZyBwaGFzZS4KCj4gLS0tIGEvZHJpdmVy
cy9tbWMvaG9zdC9kd19tbWMtcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvbW1jL2hvc3QvZHdf
bW1jLXJvY2tjaGlwLmMKPiBAQCAtMzYsNiArMzYsOCBAQCBzdHJ1Y3QgZHdfbWNpX3JvY2tjaGlw
X3ByaXZfZGF0YSB7Cj4gICAgICAgICAgaW50ICAgICAgICAgICAgICAgICAgICAgZGVmYXVsdF9z
YW1wbGVfcGhhc2U7Cj4gICAgICAgICAgaW50ICAgICAgICAgICAgICAgICAgICAgbnVtX3BoYXNl
czsKPiAgICAgICAgICBib29sICAgICAgICAgICAgICAgICAgICBpbnRlcm5hbF9waGFzZTsKPiAr
ICAgICAgIGludCAgICAgICAgICAgICAgICAgICAgIHNhbXBsZV9waGFzZTsKPiArICAgICAgIGlu
dCAgICAgICAgICAgICAgICAgICAgIGRydl9waGFzZTsKPiAgIH07Cj4KPiAgIC8qCj4gQEAgLTU3
Myw5ICs1NzUsNDMgQEAgc3RhdGljIHZvaWQgZHdfbWNpX3JvY2tjaGlwX3JlbW92ZShzdHJ1Y3QK
PiBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgICAgICAgZHdfbWNpX3BsdGZtX3JlbW92ZShw
ZGV2KTsKPiAgIH0KPgo+ICtzdGF0aWMgaW50IGR3X21jaV9yb2NrY2hpcF9ydW50aW1lX3N1c3Bl
bmQoc3RydWN0IGRldmljZSAqZGV2KQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2ID0gdG9fcGxhdGZvcm1fZGV2aWNlKGRldik7Cj4gKyAgICAgICBzdHJ1Y3QgZHdf
bWNpICpob3N0ID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7Cj4gKyAgICAgICBzdHJ1Y3Qg
ZHdfbWNpX3JvY2tjaGlwX3ByaXZfZGF0YSAqcHJpdiA9IGhvc3QtPnByaXY7Cj4gKwo+ICsgICAg
ICAgaWYgKHByaXYtPmludGVybmFsX3BoYXNlKSB7Cj4gKyAgICAgICAgICAgICAgIHByaXYtPnNh
bXBsZV9waGFzZSA9IHJvY2tjaGlwX21tY19nZXRfcGhhc2UoaG9zdCwgdHJ1ZSk7Cj4gKyAgICAg
ICAgICAgICAgIHByaXYtPmRydl9waGFzZSA9IHJvY2tjaGlwX21tY19nZXRfcGhhc2UoaG9zdCwg
ZmFsc2UpOwo+ICsgICAgICAgfQo+ICsKPiArICAgICAgIHJldHVybiBkd19tY2lfcnVudGltZV9z
dXNwZW5kKGRldik7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgZHdfbWNpX3JvY2tjaGlwX3J1bnRp
bWVfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikKPiArewo+ICsgICAgICAgc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldiA9IHRvX3BsYXRmb3JtX2RldmljZShkZXYpOwo+ICsgICAgICAgc3Ry
dWN0IGR3X21jaSAqaG9zdCA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOwo+ICsgICAgICAg
c3RydWN0IGR3X21jaV9yb2NrY2hpcF9wcml2X2RhdGEgKnByaXYgPSBob3N0LT5wcml2Owo+ICsg
ICAgICAgaW50IHJldDsKPiArCj4gKyAgICAgICByZXQgPSBkd19tY2lfcnVudGltZV9yZXN1bWUo
ZGV2KTsKPiArICAgICAgIGlmIChyZXQpCj4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4g
Kwo+ICsgICAgICAgaWYgKHByaXYtPmludGVybmFsX3BoYXNlKSB7Cj4gKyAgICAgICAgICAgICAg
IHJvY2tjaGlwX21tY19zZXRfcGhhc2UoaG9zdCwgdHJ1ZSwgcHJpdi0+c2FtcGxlX3BoYXNlKTsK
PiArICAgICAgICAgICAgICAgcm9ja2NoaXBfbW1jX3NldF9waGFzZShob3N0LCBmYWxzZSwgcHJp
di0+ZHJ2X3BoYXNlKTsKPiArICAgICAgICAgICAgICAgbWNpX3dyaXRlbChob3N0LCBNSVNDX0NP
TiwgTUVNX0NMS19BVVRPR0FURV9FTkFCTEUpOwo+ICsgICAgICAgfQo+ICsKPiArICAgICAgIHJl
dHVybiByZXQ7Cj4gK30KPiArCj4gICBzdGF0aWMgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgZHdf
bWNpX3JvY2tjaGlwX2Rldl9wbV9vcHMgPSB7Cj4gICAgICAgICAgU1lTVEVNX1NMRUVQX1BNX09Q
UyhwbV9ydW50aW1lX2ZvcmNlX3N1c3BlbmQsCj4gcG1fcnVudGltZV9mb3JjZV9yZXN1bWUpCj4g
LSAgICAgICBSVU5USU1FX1BNX09QUyhkd19tY2lfcnVudGltZV9zdXNwZW5kLCBkd19tY2lfcnVu
dGltZV9yZXN1bWUsIE5VTEwpCj4gKyAgICAgICBSVU5USU1FX1BNX09QUyhkd19tY2lfcm9ja2No
aXBfcnVudGltZV9zdXNwZW5kLAo+IGR3X21jaV9yb2NrY2hpcF9ydW50aW1lX3Jlc3VtZSwgTlVM
TCkKPiAgIH07Cj4KPiAgIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGR3X21jaV9yb2Nr
Y2hpcF9wbHRmbV9kcml2ZXIgPSB7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
