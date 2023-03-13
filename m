Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97ECCC6FD19
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 19:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2p8hk5/SXd5xmY1feRXPpkDxlEZ+c/nhNahK4peNtw=; b=QMfOOYOJLsfUhJ
	ft7Ky+K/rTlZTD7jS1omJsFqaVrNDnClXXf5p00/gdEk3zMRksYvur0KVQBBVMbBMGpid9UtSlB5a
	g6EVtG0/t1NDBH6qlPwH31Q08YCshP1LKlz9LM3Myo103w0t750s0bDqpAklaWftbKyCnngpTN8I1
	exJi7/r+abPZPll7j9wrelMQ2jS2LlNG6yr9hLMSoLBM0y6ihGuEFS2hmWmmIWslsO7ci6ZfabKNs
	dLmWfElXSBGeUJ/h5VCBUfq2iC/cSHVafWR9Bs15YYj+Kplxnj0nl529rhh8dyAI94pHsWJHayUeX
	N6NdQ5KBcRsnJvi+u29w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbo46-007Yx3-7B; Mon, 13 Mar 2023 19:42:38 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbo44-007Ywe-BV
	for linux-rockchip@lists.infradead.org; Mon, 13 Mar 2023 19:42:37 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-176eae36feaso14949047fac.6
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Mar 2023 12:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678736555;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:subject:cc:to:from:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cReS7UeRVzisQnmuqlt0zhzds2h4+MiCa5V5+WGY//k=;
        b=nF+fLI99IPygWFlaeCMM/NgZk4QyTYVbPCu/2a5KY7GX9waLZoBN87FyWGo3bkxuCR
         n6TK3k8bnwAsjmAnwpLBKneaYwEtGL0+L8hrdPES2zmgLycedqiKGsEsuWVpnXJXZfzB
         qSlyBLj/uY1pFVFkDCW1pwJ7Cbs3cDhIAVYN2cKmSSsImAqvCfkKVIw6jHIYK/mrcHp1
         AuqqqKvotrPljTkANGoFKAqhoyofYvpzpWR1pO3XqmP7rwqDjH/sHcKi/INfkpsIjhSD
         0rPR2H6kRPcNzjad7Iu8pCgl1VQaf6O2jdW0pcnIqrn8SzMMaXF9EEk32mpcezleqU7l
         68Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678736555;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:subject:cc:to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cReS7UeRVzisQnmuqlt0zhzds2h4+MiCa5V5+WGY//k=;
        b=sVPBjIZaCZ5ZHXaJ8wtiDlVjVEjBG5Cm5DipVOFHtsZLSf+0S/Z/kcEfqQP+MqJywY
         Rlbm7mS1z+nxSEaJr9RokOWn/fFdC7n6QayuqSbT/H3qc45HMSd/2qN9Le58hGfxn10O
         yBp63juPKiA68hWaYTCo+tr5kAFFoGre0t+a4TtoYVVa6T30sSUt/B5ZqCPrlh3Jq/Q8
         1mwC7ANnDJeFWau3P+Jfzsc6yD6jahKrHKurwRJm4ZVJbul6ObAXOFU/wwqCyosLwRPk
         9s1GG74oSihjLOyTyiSuKR3DbCDdgtSRhPnZnY+q7v87CZ2lUNg3lGYuk5264TX7D1qj
         pAww==
X-Gm-Message-State: AO0yUKXdttVrQPepmcs6tD8Qc8r++YctjrlR4oSAv4k+4KCEGupgqqiO
	n56mKi7FWr+8MFE6w/Usisitrne4hTA=
X-Google-Smtp-Source: AK7set/kI7lS+zhtZ/eOkQBps9A2LiikyGKGA6ii9XidVlgwJ14z0ZW0pS1xze4OWrmvqRyt5rOC1w==
X-Received: by 2002:a05:6870:1686:b0:172:289a:dd1a with SMTP id j6-20020a056870168600b00172289add1amr22385511oae.47.1678736555168;
        Mon, 13 Mar 2023 12:42:35 -0700 (PDT)
Received: from neuromancer. (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id t3-20020a056870048300b001730afaeb63sm337519oam.19.2023.03.13.12.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 12:42:34 -0700 (PDT)
Message-ID: <640f7caa.050a0220.7e478.2265@mx.google.com>
X-Google-Original-Message-ID: <ZA92Jvai0l4vUG+s@neuromancer.>
Date: Mon, 13 Mar 2023 14:14:46 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Cc: linux-bluetooth@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, alistair@alistair23.me,
	luiz.dentz@gmail.com, johan.hedberg@gmail.com, marcel@holtmann.org,
	heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 2/3 V4] Bluetooth: hci_h5: btrtl: Add support for
 RTL8821CS
References: <20230228152205.133582-1-macroalpha82@gmail.com>
 <20230228152205.133582-3-macroalpha82@gmail.com>
 <CADcbR4+Onb6RM7grPrqRL8Rth0mbFXykRmPq8R1QxYRGaHQHtA@mail.gmail.com>
 <CADcbR4L6b9D1FJx9u1jFvZ6jhixNs3_Ky+Mu0rHwtXZ6ATO-Eg@mail.gmail.com>
 <CA+E=qVdjvYn2qPCP+9EaS=90DT_uEVSk0z04tU3DL0X8NumUAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+E=qVdjvYn2qPCP+9EaS=90DT_uEVSk0z04tU3DL0X8NumUAQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_124236_417589_AC0F0770 
X-CRM114-Status: GOOD (  35.69  )
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

T24gTW9uLCBNYXIgMTMsIDIwMjMgYXQgMTE6MzY6MjFBTSAtMDcwMCwgVmFzaWx5IEtob3J1emhp
Y2sgd3JvdGU6Cj4gT24gTW9uLCBNYXIgMTMsIDIwMjMgYXQgMTE6MTLigK9BTSBDaHJpcyBNb3Jn
YW4gPG1hY3JvYWxwaGE4MkBnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IEkgZm91bmQgdGhlIGZp
eCwgc2ltcGx5IHB1dCBjaGFuZ2luZyB0aGUgY29tcGF0aWJsZSBmcm9tCj4gPiByZWFsdGVrLHJ0
bDg4MjJjcy1idCB0byByZWFsdGVrLHJ0bDg3MzJicy1idCBmaXhlcyBpdCAoYmVjYXVzZSBpdCBz
ZXRzCj4gPiB0aGUgIkg1X0lORk9fV0FLRVVQX0RJU0FCTEUiIGZsYWcpLiBJcyBpdCB0b28gbGF0
ZSBmb3IgYSBWNSwgb3Igc2hvdWxkCj4gPiBJIHN1Ym1pdCB0aGlzIGFzIGEgZml4IHRvIHRoZSBk
ZXZpY2V0cmVlIGFuZCBkZXZpY2V0cmVlIGRvY3VtZW50YXRpb24/Cj4gCj4gQnV0IGlzIGl0IGFj
dHVhbGx5IGNvbXBhdGlibGUgd2l0aCBydGw4NzIzYnMtYnQgdGhvdWdoPyBJIHRoaW5rIHlvdQo+
IG1heSBuZWVkIHRvIGFkZCBhbiBlbnRyeSBmb3IgODgyMWNzIHRvIHJ0bF9ibHVldG9vdGhfb2Zf
bWF0Y2ggaW4KPiBoY2lfaDUuYwoKVGhlIGNvbXBhdGlibGUgc3RyaW5nIHdvdWxkIGJlIGFuIGV4
YWN0IGNvcHkgb2Ygd2hhdCBpcyBwcmVzZW50IGZvcgpydGw4NzIzYnMtYnQuIFByZXZpb3VzbHkg
SSB3YXMgYWR2aXNlZCBieSB0aGUgZGV2aWNldHJlZSB0ZWFtIHRvIGp1c3QKdXNlIGEgZmFsbGJh
Y2sgc3RyaW5nIHJhdGhlciB0aGFuIGFkZCBhIGR1cGxpY2F0ZSBlbnRyeSB0byB0aGUgZHJpdmVy
LApzbyB0aGF0J3Mgd2hhdCBJIGRpZC4gVGhlIGRyaXZlciBpdHNlbGYgY2FuIGRldGVjdCB0aGUg
ZGlmZmVyZW5jZQpiZXR3ZWVuIHRoZSA4ODIxY3MgYW5kIDg3MjNicyBhbmQgbG9hZCB0aGUgYXBw
cm9wcmlhdGUgZmlybXdhcmUuCgpUZWNobmljYWxseSB0aGUgcnRsODgyMmNzLWJ0IGFsc28gd29y
a3MgYXMgbG9uZyBhcyB5b3Ugb25seSB3YW50IHRvCiJ0ZXN0IiB0aGUgZHJpdmVyIGFuZCBub3Qg
dXNlIGl0LiBJdCdzIHRoZSBwb3dlciBtYW5hZ2VtZW50IHN0dWZmCnRoYXQgY2F1c2VzIGl0IHRv
IGZhaWwgcm91Z2hseSA5IG91dCBvZiBldmVyeSAxMCB0aW1lcyB5b3UgdHJ5IHRvCnVzZSBpdCBm
b3IgbW9yZSB0aGFuIHNpbXBsZSBwYWlyaW5nIChJIHRlc3RlZCAzIGRpZmZlcmVudCBjb250cm9s
bGVycwp3aXRoIHRoZSBuZXcgY29tcGF0aWJsZSBzdHJpbmcgZm9yIGEgdG90YWwgb2YgNyB0ZXN0
cyBhbmQgaXQgd29ya3MKY29uc2lzdGVudGx5IG5vdykuCgpJZiB5b3UncmUgb2theSB3aXRoIHRo
ZSBjb21wYXRpYmxlIHN0cmluZyBjaGFuZ2UsIEknbGwgdXBkYXRlIGl0IGFuZApyZXN1Ym1pdCB0
aGlzIGFzIGEgVjUuIEl0IHNob3VsZG4ndCByZXF1aXJlIGEgY2hhbmdlIHRvIHRoZSBkcml2ZXIs
Cm9ubHkgdGhlIGJpbmRpbmcuCgpUaGFuayB5b3UuCgo+IAo+ID4gVGhhbmsgeW91Lgo+ID4KPiA+
IE9uIEZyaSwgTWFyIDEwLCAyMDIzIGF0IDEwOjI14oCvQU0gQ2hyaXMgTW9yZ2FuIDxtYWNyb2Fs
cGhhODJAZ21haWwuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gSSBzaHVkZGVyIHRvIGJyaW5nIHRo
aXMgdXAgbm93LCBidXQgSSdtIGVuY291bnRlcmluZyBhIG5ldyBidWcgYW5kCj4gPiA+IG1pZ2h0
IGhhdmUgdG8gd2l0aGRyYXcgdGhpcy4KPiA+ID4KPiA+ID4gSSdtIHJlY2VpdmluZyBlcnJvcnMg
aW4gZG1lc2cgb2YgdGhlIGZvbGxvd2luZywgYW5kIEkgY2FuJ3Qgc2VlbSB0bwo+ID4gPiBmaWd1
cmUgb3V0IHRoZSByb290IGNhdXNlOgo+ID4gPiBCbHVldG9vdGg6IGhjaTA6IE91dC1vZi1vcmRl
ciBwYWNrZXQgYXJyaXZlZAo+ID4gPgo+ID4gPiBBbnkgdGhvdWdodHMgb24gd2hhdCBtaWdodCBj
YXVzZSBpdD8KPiA+ID4gVGhhbmsgeW91Lgo+ID4gPgo+ID4gPiBPbiBUdWUsIEZlYiAyOCwgMjAy
MyBhdCA5OjIy4oCvQU0gQ2hyaXMgTW9yZ2FuIDxtYWNyb2FscGhhODJAZ21haWwuY29tPiB3cm90
ZToKPiA+ID4gPgo+ID4gPiA+IEZyb206IENocmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFp
bC5jb20+Cj4gPiA+ID4KPiA+ID4gPiBSVEw4ODIxQ1MgaXMgYSBXaUZpICsgQmx1ZXRvb3RoIGNv
bWJvIGNoaXAgZnJvbSBSZWFsdGVrIHRoYXQgcHJvdmlkZXMKPiA+ID4gPiBXaUZpIEEvQi9HL04v
QUMgb3ZlciBhbiBTRElPIGludGVyZmFjZSBhbmQgQmx1ZXRvb3RoIDQuMiBvdmVyIGEgVUFSVAo+
ID4gPiA+IGludGVyZmFjZS4KPiA+ID4gPgo+ID4gPiA+IE5vdGUgdGhhdCB0aGUgZmlybXdhcmUg
dGhpcyB3YXMgdGVzdGVkIHdpdGggd2FzIGZpcm13YXJlIHZlcnNpb24KPiA+ID4gPiAweDc1Yjhm
MDk4Lgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgTW9yZ2FuIDxtYWNyb21v
cmdhbkBob3RtYWlsLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgZHJpdmVycy9ibHVldG9vdGgv
YnRydGwuYyB8IDggKysrKysrKysKPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9u
cygrKQo+ID4gPiA+Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvYmx1ZXRvb3RoL2J0cnRs
LmMgYi9kcml2ZXJzL2JsdWV0b290aC9idHJ0bC5jCj4gPiA+ID4gaW5kZXggNjljM2ZlNjQ5Y2E3
Li43Mjk0N2QzMTlmYTYgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ibHVldG9vdGgvYnRy
dGwuYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvYmx1ZXRvb3RoL2J0cnRsLmMKPiA+ID4gPiBAQCAt
MTI4LDYgKzEyOCwxNCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGlkX3RhYmxlIGljX2lkX3RhYmxl
W10gPSB7Cj4gPiA+ID4gICAgICAgICAgIC5md19uYW1lICA9ICJydGxfYnQvcnRsODgyMWNfZncu
YmluIiwKPiA+ID4gPiAgICAgICAgICAgLmNmZ19uYW1lID0gInJ0bF9idC9ydGw4ODIxY19jb25m
aWciIH0sCj4gPiA+ID4KPiA+ID4gPiArICAgICAgIC8qIDg4MjFDUyAqLwo+ID4gPiA+ICsgICAg
ICAgeyBJQ19JTkZPKFJUTF9ST01fTE1QXzg4MjFBLCAweGMsIDB4OCwgSENJX1VBUlQpLAo+ID4g
PiA+ICsgICAgICAgICAuY29uZmlnX25lZWRlZCA9IHRydWUsCj4gPiA+ID4gKyAgICAgICAgIC5o
YXNfcm9tX3ZlcnNpb24gPSB0cnVlLAo+ID4gPiA+ICsgICAgICAgICAuaGFzX21zZnRfZXh0ID0g
dHJ1ZSwKPiA+ID4gPiArICAgICAgICAgLmZ3X25hbWUgID0gInJ0bF9idC9ydGw4ODIxY3NfZncu
YmluIiwKPiA+ID4gPiArICAgICAgICAgLmNmZ19uYW1lID0gInJ0bF9idC9ydGw4ODIxY3NfY29u
ZmlnIiB9LAo+ID4gPiA+ICsKPiA+ID4gPiAgICAgICAgIC8qIDg3NjFBICovCj4gPiA+ID4gICAg
ICAgICB7IElDX0lORk8oUlRMX1JPTV9MTVBfODc2MUEsIDB4YSwgMHg2LCBIQ0lfVVNCKSwKPiA+
ID4gPiAgICAgICAgICAgLmNvbmZpZ19uZWVkZWQgPSBmYWxzZSwKPiA+ID4gPiAtLQo+ID4gPiA+
IDIuMzQuMQo+ID4gPiA+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
