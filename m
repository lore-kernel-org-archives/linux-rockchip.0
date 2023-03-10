Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17DF8C64EC4
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 16:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kN8mjGQM5oAUG2QdsEMlBgZJdYwvL3YL1mjnEf3Y3YI=; b=vE23h/b0pmUm4z
	tvREjcaBxr8JEiRiH08K/kE+j8qJJiFZMiXuEnX5PEixAH7yNbqA8XIrSibl07Nrv9tydMF1RC6kM
	VmrsT/D1D45P7VttZOa0pwkeh4tyoZgUKv4ckIpvPw0MIxl10C3mUIdSAmgRnK2c3NN8Z322zbsYR
	pjF2qIdfTdnFwgVieeMHDMu2rb5Mn+OJeL251QsGDx+K9Do6BFdR3HTc1dd0GZ7ZBwU7Tvsxh72/e
	G94llURzbeh414PtGN64aj3c7hzdjzvvf8MOXYy5o6FuiKpo7YcQurSNapBGqqpUDPBiarcqHA2dP
	ZEHBhx4knLZ/tvspJSSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pafZJ-00FIMf-L2; Fri, 10 Mar 2023 16:26:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pafZI-00FIM7-PD
	for linux-rockchip@bombadil.infradead.org; Fri, 10 Mar 2023 16:26:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=J2PgjZ/8V+cl158bxCaGpHbEL4XOy790DRH6Lk1TPsw=; b=VGO/kf8rjF/Y9axeigFeDTGaSC
	WD4p5YpSb239s+2K7L4qo7B0Qlvv4hWMS6ecZavl9xOvXCK/FTzw9rVoygqK+uodH6OkWwi/ym0pO
	r7oJXZOIeAjSIbaZ7JIhQkXyqgl3g3PkZmue0H0WN1rCSjM8g1fQ1rKzD3Ha84EaDrjagsmjX8N3I
	zqHZ/zhLk/lo17RhH3DHrVeROxGpCKxNYFq2W/WXhwp5xCQyIQgBEh0DpXED6262Mn83+uWZsToEZ
	PO9DuLCEUdlZT+G23r7AeiFPYbhBVn0hP6X+b1aHzcmHRaCullQiZEHoLnpXXWmeHMQUf2EqbJcad
	suDmHaQw==;
Received: from mail-oa1-x32.google.com ([2001:4860:4864:20::32])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pafZB-000W64-1u
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Mar 2023 16:26:07 +0000
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-176e43eb199so6403351fac.7
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Mar 2023 08:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678465552;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J2PgjZ/8V+cl158bxCaGpHbEL4XOy790DRH6Lk1TPsw=;
        b=Xxw16YGU5lxrcjb5M6HshOp/QA5ymHzLVHjdQZtkgIjUGbYt2QchROnfQhAo7Lm6uI
         leE6pxcrAaHKTwovkDDHUzAz8WGRrZ+6EjucH2MxbLxgrALXjPsiiVe2kQTM4s6MM7k7
         vYdi5XVp4bVXirH0sDVistEAYELS062s4havTYcEPZhGNItohNt6+x5x4gVNKQ4x9/4r
         vQHyjqYwRCZTuRU4LZeCerajPNsHpOMtB4td29wJjeMMbCLGleTmYuuw974i5rGWXGz3
         gpCQ/ihsXu/XHFwL9W7N/4O5RXnWUBn7L1r188DmAFjYMkm3a3X6nyoJUbBcVdm21uyT
         lyNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678465552;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J2PgjZ/8V+cl158bxCaGpHbEL4XOy790DRH6Lk1TPsw=;
        b=fOiVhNTKOtNo8mibRii1QYfIiZFDW06/PS7fJhhldhwpqYMxIAlFxerq7i3gf0vbhQ
         5v5U9Cczbj7N69t5Ku4gOsBxo9L5Z1YNuc9y07Nc7vtVgwfGQugn9VOe23l8x1SCfgLQ
         V29kqylXtrb3z58I5jCmpCHe6p+iFE/WDAfbnbjJrPttJ/zSO7Vymq8pp1BESc4Por13
         LQ3O615JoRl4kFlDjpDBXxM+sHTUp1jlEDGJT/tUHPQOokx8qikM9vQujTLsQnp54udO
         JGND8Xkh0en6n+NqANN7eLxmlKbL+w/Pv3pwmfk8SMfdtTDt70Wam0NFb9lc0qUnnFZ8
         MN0g==
X-Gm-Message-State: AO0yUKXSKHxrGMnuRq9Wkl/2/07HjOl3/u2Nf3avJgvjkpq0RA2/k4kb
	YKKx58j9z0wcoRjJylGXGnhgeNFfjpYFYex7Mtg=
X-Google-Smtp-Source: AK7set8oNerOfLCLDaZ3iQ7XsqoUVqgWXVGvLlrdF8Cd7tCykN6/WBCkpJzhIUKJp6K6SkElX7hOPSaujWIfJvliH58=
X-Received: by 2002:a05:6870:8c28:b0:16d:fb8e:3ba with SMTP id
 ec40-20020a0568708c2800b0016dfb8e03bamr8932410oab.0.1678465552612; Fri, 10
 Mar 2023 08:25:52 -0800 (PST)
MIME-Version: 1.0
References: <20230228152205.133582-1-macroalpha82@gmail.com> <20230228152205.133582-3-macroalpha82@gmail.com>
In-Reply-To: <20230228152205.133582-3-macroalpha82@gmail.com>
From: Chris Morgan <macroalpha82@gmail.com>
Date: Fri, 10 Mar 2023 10:25:41 -0600
Message-ID: <CADcbR4+Onb6RM7grPrqRL8Rth0mbFXykRmPq8R1QxYRGaHQHtA@mail.gmail.com>
Subject: Re: [PATCH 2/3 V4] Bluetooth: hci_h5: btrtl: Add support for RTL8821CS
To: linux-bluetooth@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	alistair@alistair23.me, anarsoul@gmail.com, luiz.dentz@gmail.com, 
	johan.hedberg@gmail.com, marcel@holtmann.org, heiko@sntech.de, 
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
	Chris Morgan <macromorgan@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_162602_020209_DA5D82BB 
X-CRM114-Status: GOOD (  17.55  )
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

SSBzaHVkZGVyIHRvIGJyaW5nIHRoaXMgdXAgbm93LCBidXQgSSdtIGVuY291bnRlcmluZyBhIG5l
dyBidWcgYW5kCm1pZ2h0IGhhdmUgdG8gd2l0aGRyYXcgdGhpcy4KCkknbSByZWNlaXZpbmcgZXJy
b3JzIGluIGRtZXNnIG9mIHRoZSBmb2xsb3dpbmcsIGFuZCBJIGNhbid0IHNlZW0gdG8KZmlndXJl
IG91dCB0aGUgcm9vdCBjYXVzZToKQmx1ZXRvb3RoOiBoY2kwOiBPdXQtb2Ytb3JkZXIgcGFja2V0
IGFycml2ZWQKCkFueSB0aG91Z2h0cyBvbiB3aGF0IG1pZ2h0IGNhdXNlIGl0PwpUaGFuayB5b3Uu
CgpPbiBUdWUsIEZlYiAyOCwgMjAyMyBhdCA5OjIy4oCvQU0gQ2hyaXMgTW9yZ2FuIDxtYWNyb2Fs
cGhhODJAZ21haWwuY29tPiB3cm90ZToKPgo+IEZyb206IENocmlzIE1vcmdhbiA8bWFjcm9tb3Jn
YW5AaG90bWFpbC5jb20+Cj4KPiBSVEw4ODIxQ1MgaXMgYSBXaUZpICsgQmx1ZXRvb3RoIGNvbWJv
IGNoaXAgZnJvbSBSZWFsdGVrIHRoYXQgcHJvdmlkZXMKPiBXaUZpIEEvQi9HL04vQUMgb3ZlciBh
biBTRElPIGludGVyZmFjZSBhbmQgQmx1ZXRvb3RoIDQuMiBvdmVyIGEgVUFSVAo+IGludGVyZmFj
ZS4KPgo+IE5vdGUgdGhhdCB0aGUgZmlybXdhcmUgdGhpcyB3YXMgdGVzdGVkIHdpdGggd2FzIGZp
cm13YXJlIHZlcnNpb24KPiAweDc1YjhmMDk4Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgTW9y
Z2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ibHVldG9vdGgv
YnRydGwuYyB8IDggKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvYmx1ZXRvb3RoL2J0cnRsLmMgYi9kcml2ZXJzL2JsdWV0
b290aC9idHJ0bC5jCj4gaW5kZXggNjljM2ZlNjQ5Y2E3Li43Mjk0N2QzMTlmYTYgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ibHVldG9vdGgvYnRydGwuYwo+ICsrKyBiL2RyaXZlcnMvYmx1ZXRvb3Ro
L2J0cnRsLmMKPiBAQCAtMTI4LDYgKzEyOCwxNCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGlkX3Rh
YmxlIGljX2lkX3RhYmxlW10gPSB7Cj4gICAgICAgICAgIC5md19uYW1lICA9ICJydGxfYnQvcnRs
ODgyMWNfZncuYmluIiwKPiAgICAgICAgICAgLmNmZ19uYW1lID0gInJ0bF9idC9ydGw4ODIxY19j
b25maWciIH0sCj4KPiArICAgICAgIC8qIDg4MjFDUyAqLwo+ICsgICAgICAgeyBJQ19JTkZPKFJU
TF9ST01fTE1QXzg4MjFBLCAweGMsIDB4OCwgSENJX1VBUlQpLAo+ICsgICAgICAgICAuY29uZmln
X25lZWRlZCA9IHRydWUsCj4gKyAgICAgICAgIC5oYXNfcm9tX3ZlcnNpb24gPSB0cnVlLAo+ICsg
ICAgICAgICAuaGFzX21zZnRfZXh0ID0gdHJ1ZSwKPiArICAgICAgICAgLmZ3X25hbWUgID0gInJ0
bF9idC9ydGw4ODIxY3NfZncuYmluIiwKPiArICAgICAgICAgLmNmZ19uYW1lID0gInJ0bF9idC9y
dGw4ODIxY3NfY29uZmlnIiB9LAo+ICsKPiAgICAgICAgIC8qIDg3NjFBICovCj4gICAgICAgICB7
IElDX0lORk8oUlRMX1JPTV9MTVBfODc2MUEsIDB4YSwgMHg2LCBIQ0lfVVNCKSwKPiAgICAgICAg
ICAgLmNvbmZpZ19uZWVkZWQgPSBmYWxzZSwKPiAtLQo+IDIuMzQuMQo+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
