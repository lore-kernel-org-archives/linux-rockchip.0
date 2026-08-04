Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2B3AC55172
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Aug 2026 05:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nc5NfpxmISozoGqv+484hgvZn2OjUfep5JeJ33qrt4A=; b=umIP1La6WaNE6q
	urPq2cmGBHSMLfXhAu1d7KTdBn6ZJPdmqve6NatO/x3T6gcmVODCwEz0xgqCdhv4d55fhfe+HdKuA
	27kEP8/8pds85e7pGu5/7M0LTKwhuzj3rBRo+/Q9Fb+GdJqdG6Ro1jP5tu3jbiqVYzru2ZnQMRbru
	aUTjG6y5il6CIfg8xqLUsEMEK0RjUQusVVcoJEhnGLMzdDW7UKNRFkKweHx3jHkOBTJHgtFhxH8lo
	Mehb/Y9XA5QHoStafQCVnDrmiljgegRqWFNIXnSW6W2D/qTb6ifabbNZjwWvd4qSBewCWwCri7iHO
	Gd077v4fzQIsd7v7rBjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr7Jq-0000000114s-2ZRd;
	Tue, 04 Aug 2026 05:04:02 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr7Jo-0000000113t-0gRS
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Aug 2026 05:04:02 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-c15e03c2763so121246666b.0
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Aug 2026 22:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785819838; x=1786424638; darn=lists.infradead.org;
        h=content-type:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=m0K5uL+ffxmjOwUEwo70igju+6SeZRlmphKolSxYy0o=;
        b=q3f9DbpdM16gxf1hAI0GT1agCJrv+y4gtHd4hGo7d2rOXfngPe4SuDPvk4k+EF25Bf
         ps4omyNDzJ3W7EvedXyLtoBM2j1C8cpZcqZrhYbef4eygsoH4nvnzhL6zQUBvT1IlzyV
         qcTsqtrxxZrAFkZmhUEiotTtHVJWdy3KO1s9JqQp73LfKxltirOHubTFIys9+zzNbgQF
         UyoYqhMOp2i5BPDPnGERFx3Yz92i79FAwLtRX0XEp+oiOm3K1zOAxLp/susNXphqtGmY
         Xh4CK4/DqE/MpIag68HASw0P1QHieYfZJ7wPIzvC3v3tFX4Eufjukjixo//USqClje1Z
         lW+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785819838; x=1786424638;
        h=content-type:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=m0K5uL+ffxmjOwUEwo70igju+6SeZRlmphKolSxYy0o=;
        b=ZHO0ddp6UCWvl7ZL/iA0TtPKv4q+8TtY4J6hsOD/XTIAavX0HQGleyWU7J5sVRrmZv
         U/0Mu1gM0+8rye/iruc1k0RvnBBPaxsuP3sK0amIivaffXZb4hfgVTqBSnqrFnlM0N+L
         Jwp1IQDaBgdx2LNvGLhlqjktzfZzPooD83OzRLYNN8ZZMZ+KeLcSUuvFFyvyNqHKPyPr
         m2ildss5ZiH+TyOvUdiYZ7XzXKcfTi3UQz7YUCq7xGiHi6fSucbb1sxNrYlRqIXnC1Nu
         xd5uukoQodOj8TGcDDMYl0DPcVhebM5bIIhbAL4Djcy9r4iHOwH0xoT7qXJvnNCYua3e
         aX5w==
X-Forwarded-Encrypted: i=1; AHgh+Ro4XeHmnvwfuOPuoHBxGq9BDdG+1Gna8QWID/xwzRUKbEbf4R54BTJc4Hd1w49egBXtwJ9Z/tN4G4cDaxNjCw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwxIGA3i9fDBREWL+NELIU7IsMAqvTbXdUH2lqWoECXx8cwvREe
	MQympFpD7s6Bm54lPGdZwwXeIPO3UNvIDZX7Zpkqq2Xu6uq99GQx4UcH
X-Gm-Gg: AR+sD10jap5Ac1Ty58c3DRwyDoyD18R8rkcX14g/ztO7mjj2B6bckEbX9QlwklaCZ55
	fY0iMT5mNx7GOW92mvqGPgWqkii0Ok/aQgm2cyQ0mPwC9P5ZfPGTZQN94dY453wvzKkjsNrNXpp
	uze1jfrmkPV09iPSZcRe4Dnv6aTjmws0WDbwcuVOkKmmigJO9YZOePI2EZqf9KvGW5n4nBGZ2dW
	w3lGZLurXeZwua2PH5oh3PTX4Qj2T0IKWSb/XQ6UT6EsiXgDYkwy4OsLQF6XU0GgZrO64UtcovY
	QKX1OK44TiqFxWKPhfD+Zl+Pdzr+1Vl/joGSw5I3daLFhJoQ+BoqNKAzCJ9fOsysq2UkwrtqlC0
	vt0j+TPq2lGUGUeWJI5IZCCSbkL6O06mVR9X6zmjYiAX9G2u4e0t6lPR7Mg3oRHIkVvNzRIEUTg
	An0ADKViLsIN/mfLP67Cq92rNZi91zMpUAm6PXOXmlxZsmMiVzOsUpc4lMAwr+PjpJuL2Bsh233
	oygTWkgkR3txrjlyBYu23iaglP77NUXXVcK+m+fWGv1OJF1DOsfKEjHAmJRft751vpU/FqwCkas
	yONpXLwbyeRPELxfBRyNnQLo1lc6rtapP4pvjaP2M80H3wTvyu6iTPzo5X58Ribl9SlhziYQXrA
	YwLMS/mCaawIyIsx0ACXvyTY5glU+BJPK8OovIHCMpSdphWl5xRPYJR57FWNPSAyYPx+vwv8GHf
	BExP1r966ooLMYI4QcAu8=
X-Received: by 2002:a17:907:3e07:b0:c12:3cbf:9f6d with SMTP id a640c23a62f3a-c20244fb9a5mr217102666b.1.1785819838130;
        Mon, 03 Aug 2026 22:03:58 -0700 (PDT)
Received: from jernej-laptop.localnet (APN-122-65-17-gprs.simobil.net. [46.122.65.17])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1fd3c90739sm627034766b.14.2026.08.03.22.03.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 22:03:57 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Andre Przywara <andre.przywara@arm.com>,
 James Hilliard <james.hilliard1@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Samuel Holland <samuel@sholland.org>,
 Richard Genoud <richard.genoud@bootlin.com>,
 Maxime Ripard <mripard@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, mfd@lists.linux.dev,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 00/21] net: phy: add X-Powers AC200/AC300 EPHY support
Date: Tue, 04 Aug 2026 07:03:49 +0200
Message-ID: <AGtA6uUwR9yJMX3xYVDz6g@gmail.com>
In-Reply-To: <CADvTj4qCYjQHOQn1jRTHNNL=xeX6z3Dgc-PLwOBUvX34AU6cuA@mail.gmail.com>
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
 <aaec8809-8218-4412-a60d-931406dbf287@arm.com>
 <CADvTj4qCYjQHOQn1jRTHNNL=xeX6z3Dgc-PLwOBUvX34AU6cuA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_220400_268061_36B47485 
X-CRM114-Status: GOOD (  43.55  )
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

RG5lIHBvbmVkZWxqZWssIDMuIGF2Z3VzdCAyMDI2IG9iIDE3OjU3OjE1IFNyZWRuamVldnJvcHNr
aSBwb2xldG5pIMSNYXMgamUgSmFtZXMgSGlsbGlhcmQgbmFwaXNhbChhKToKPiBPbiBNb24sIEF1
ZyAzLCAyMDI2IGF0IDc6MjbigK9BTSBBbmRyZSBQcnp5d2FyYSA8YW5kcmUucHJ6eXdhcmFAYXJt
LmNvbT4gd3JvdGU6Cj4gPgo+ID4gSGkgSmFtZXMsCj4gPgo+ID4gdGhhbmtzIGZvciBzZW5kaW5n
IHRoaXMgdG8gdGhlIGxpc3QsIGJ1dCBhcyBBbmRyZXcgYWxyZWFkeSBtZW50aW9uZWQ6Cj4gPiB0
aGlzIGlzIHF1aXRlIGEgYmVhc3QsIGFuZCB3b3VsZCBuZWVkIHRvIGJlIGJyb2tlbiBkb3duLgo+
ID4gSmVybmVqIGFuZCBJIGNyZWF0ZWQgc29tZSBwYXRjaGVzIGp1c3QgZm9yIHRoZSBBQzIwMCBQ
SFkgb24gdGhlIEg2LAo+ID4gd2hpY2ggSmVybmVqIHJlY2VudGx5IHJldml2ZWQsIGFuZCBJSVVD
LCB3YW50ZWQgdG8gc2VuZCB0byB0aGUgbGlzdC4KPiA+IFRoaXMgd291bGQgcHJvYmFibHkgYmUg
YSBtb3JlIHdvcmthYmxlIHJvdXRlOiBzdGFydCBlYXN5LCB0aGVuIGFkZAo+ID4gc3VwcG9ydCBm
b3IgbW9yZSBTb0NzIChINjE2IGRlcGVuZHMgb24gdGhlIFdJUCBQV00gZHJpdmVyKSBhbmQgbW9y
ZQo+ID4gdmFyaWFudHMgKEFDMzAwKSBsYXRlci4KPiAKPiBXZWxsLCBJIHdhbnRlZCB0byB2YWxp
ZGF0ZSB0aGF0IHRoZSBvdmVyYWxsIGRyaXZlciBkZXNpZ24gaXMgc3VpdGFibGUgZm9yCj4gdGhl
IEg2MTYgd2hpY2ggaGFzIHRvIHN1cHBvcnQgYm90aCBQSFkgdmFyaWFudHMgYXQgcnVudGltZSBl
ZmZlY3RpdmVseQo+IHNpbmNlIHRoYXQgaXMgdGhlIG1vc3QgY29tcGxleCB1c2UgY2FzZSwgSSBh
bHNvIGRvbid0IGhhdmUgYSBINiBib2FyZAo+IHRvIHRlc3Qgd2l0aCBteXNlbGYgYXQgdGhlIG1v
bWVudC4gSSB0aGluayBiZWluZyBhYmxlIHRvIHNlZSBhIG1vcmUKPiBjb21wbGV0ZSBpbXBsZW1l
bnRhdGlvbiBsaWtlIHRoaXMgaXMgaGVscGZ1bCBhcyBpdCBjYW4gYmV0dGVyIGluZm9ybSBob3cK
PiB3ZSBjYW4gdGllIHRoZSBkaWZmZXJlbnQgY29udHJvbCBpbnRlcmZhY2VzIHRvIHRoZSBsaW5r
IFBIWSBpbiBhIHdheSB0aGF0Cj4gd29ya3MgZm9yIHRoZSBtb3JlIGNvbXBsZXggSDYxNiBjYXNl
LgoKTm8uIEFDMjAwIGFuZCBBQzMwMCBhcmUgc2VwYXJhdGUgY2hpcHMuCgpKdXN0IG1ha2luZyBz
b21lIGFydGlmaWNpYWwgY29ubmVjdGlvbiBpbiBEVCwgYmVjYXVzZSBINjE2IHdhZmVyIGlzIG9u
Y2UKY29wYWNrYWdlZCB3aXRoIEFDMjAwIGRpZSBhbmQgYXQgb3RoZXIgdGltZSB3aXRoIEFDMzAw
IGlzIG5vdCBjb3JyZWN0LgpMZXQganVzdCBoYXZlIGJvb3Rsb2FkZXIgcHJvcGVybHkgaWRlbnRp
ZnkgY29wYWNrYWdlZCBjaGlwLCBlbmFibGUgaXQKYW5kIGJlIGRvbmUgd2l0aCBpdC4KCkknbSB3
b3JraW5nIG9uIHByb3BlciBBQzIwMCBzZXJpZXMgYXMgQW5kcmUgbWVudGlvbmVkLiBJIHJlc2Vh
cmNoZWQgYWxsCmZ1bmN0aW9uYWxpdHkgYmVjYXVzZSBJIGRvbid0IHdhbnQgdG8gbWlzcyBhbnl0
aGluZyBpbiBEVCBhbmQgdG8gaGF2ZQpnb29kIGFyZ3VtZW50cyB3aHkgSSBkaWQgdGhpbmcgdGhl
IHdheSBJIGRpZC4gVGhpcyBzZXJpZXMgZG9lc24ndCBjYXJlCm9mIGFueXRoaW5nIGVsc2UgdGhh
biBBQzIwMCBFUEhZLCB3aGljaCBpc24ndCBjb3JyZWN0LiBTb21lIHRoaW5ncyBhcmUKZXZlbiBu
b3QgcHJvcGVybHkgbW9kZWxlZCBhbmQgaXQgd2FzIGFscmVhZHkgZGlzY3Vzc2VkIGluIHByZXZp
b3VzCnJldmlld3MuIEZvciBleGFtcGxlLCBNRElPIFBIWSBub2RlIHNob3VsZCByZWZlcmVuY2Ug
Ym90aCwgY2xvY2sgYW5kCnJlc2V0cy4KCkkgcGxhbiB0byBwb3N0IEFDMjAwIHBhdGNoZXMgd2l0
aCBhdCBsZWFzdCBhdWRpbyBjb2RlYyBpbmNsdWRlZCwKYWxvbmdzaWRlIEVQSFkuIFRWRSBpcyBh
bHNvIHdvcmtpbmcgYnV0IGl0IGhhcyBtb3JlIG9wZW4gcXVlc3Rpb25zLCBzbwppdCB3b24ndCBi
ZSBwYXJ0IG9mIG5leHQgc3VibWlzc2lvbi4KCj4gCj4gPiBXaGljaCBhbHNvIGJyaW5ncyBtZSB0
byBzb21lIGF0dHJpYnV0aW9uIHF1ZXN0aW9uczogSWYgSSB1bmRlcnN0YW5kCj4gPiBjb3JyZWN0
bHksIHRoaXMgaGFzIGJlZW4gd3JpdHRlbiBtb3N0bHkgYnkgc29tZSBMTE0/IEkgdGhpbmsgeW91
IHdvdWxkCj4gPiBuZWVkIGF0IGxlYXN0IHRvIGRpc2Nsb3NlIHRoYXQsIGlmIG5vdCBldmVuIGFk
ZCBhbiBvZmZpY2lhbCB0YWc/Cj4gCj4gU29tZSBwYXRjaGVzIHdlcmUsIHN1cmUsIG15IHVuZGVy
c3RhbmRpbmcgaXMgdGhhdCBpdCdzIG5vdCByZXF1aXJlZCB0bwo+IGV4cGxpY2l0bHkgY2FsbCB0
aGF0IG91dCBidXQgSSBjYW4gYWRkIG1vcmUgaW5mbyBpZiB0aGF0IGhlbHBzLCB0aGlzIHdhcwo+
IHRlc3RlZC92YWxpZGF0ZWQgdXNpbmcgYSBoZWF2aWx5IGF1dG9tYXRlZCBoYXJkd2FyZSBpbiB0
aGUgbG9vcAo+IHRlc3RiZW5jaCBzZXR1cCBvbiBhbiBBQzIwMCBhbmQgQUMzMDAgdmFyaWFudCBI
NjE2IGJvYXJkLgoKWWVzLCB5b3UgaGF2ZSB0byByZXZlYWwgQUkgaW52b2x2ZW1lbnQuCgo+IAo+
ID4gQWxzbyBJIHdvbmRlciBob3cgdGhpcyByZWxhdGVzIHRvIHRoZSBwYXRjaGVzIGZsb2F0aW5n
IGFyb3VuZCBmb3IgYQo+ID4gd2hpbGUgYWxyZWFkeTogaHR0cHM6Ly9naXRodWIuY29tL2plcm5l
anNrL2xpbnV4LTEvY29tbWl0cy9hYzIwMC12NC4KPiA+IFRoaXMgYnJhbmNoIGlzIHJlbGF0aXZl
bHkgbmV3LCBidXQgdGhlIGFjMjAwLXYzIGJyYW5jaCBmb3IgaW5zdGFuY2UgaXMKPiA+IG11Y2gg
b2xkZXIuCj4gCj4gWWVhaCwgcGFydHMgb2YgdGhpcyBhcmUgbG9vc2VseSBiYXNlZCBvZmYgb2Yg
c29tZSBleGlzdGluZyBwYXRjaGVzIHRoYXQKPiB3ZXJlIGZsb2F0aW5nIGFyb3VuZCBsaWtlIHRo
b3NlLCBhbHRob3VnaCBpdCBoYXMgZGl2ZXJnZWQgcXVpdGUgYSBiaXQgYXMKPiB3ZWxsIHNpbmNl
IHRoaXMgc2VyaWVzIGlzIGRlc2lnbmVkIHRvIGhhbmRsZSBib3RoIHBoeSB2YXJpYW50cy4KPiAK
PiBJIGd1ZXNzIEkgc2hvdWxkIGxpbmsgdG8gc29tZSBvZiB0aGUgZWFybGllciB3b3JrIGluIHRo
ZSBjb3ZlciBsZXR0ZXI/CgpIb3dldmVyLCB3aGF0IGJvdGhlciBtZSBtb3JlLCBpcyB0aGF0IG9i
dmlvdXNseSBhIGxvdCBvZiBBQzIwMCB0aGluZ3MKd2VyZSBjb3BpZWQgKGV2ZW4gaWYgb25seSBi
eSBMTE0pIGZyb20gbXkgV0lQIEFDMjAwIGJyYW5jaCB3aXRob3V0IGFueQphdHJpYnV0aW9uIHRv
IGVpdGhlciBBbmRyZSBvciBtZS4KCkFzIEFuZHJlIG1lbnRpb25lZCBpbiBvdGhlciByZXNwb25z
ZSwgbGV0IGRvIGl0IHNlcGFyYXRlbHkgZm9yIEFDMjAwLApBQzMwMCBhbmQgZGV0ZWN0aW9uIGJl
dHdlZW4gdGhlbSAoYmVzdCBpbiBib290bG9hZGVyKS4KCkJlc3QgcmVnYXJkcywKSmVybmVqCgo+
IAo+ID4gT24gOC8zLzI2IDA3OjE0LCBKYW1lcyBIaWxsaWFyZCB3cm90ZToKPiA+ID4gVGhlIEFs
bHdpbm5lciBINjE2L0g2MTggc2Vjb25kYXJ5IEVNQUMgaXMgY29tbW9ubHkgY29ubmVjdGVkIHRv
IGEgRmFzdAo+ID4gPiBFdGhlcm5ldCBQSFkgaW4gYW4gWC1Qb3dlcnMgQUMyMDAgb3IgQUMzMDAg
Y29tcGFuaW9uIHBhY2thZ2UuICBUaGUgdHdvCj4gPiA+IHBhY2thZ2VzIGV4cG9zZSB0aGUgc2Ft
ZSBsaW5rIFBIWSBJRCBhbmQgbGFyZ2VseSBjb21wYXRpYmxlIGxpbmstc2lkZQo+ID4gPiByZWdp
c3RlcnMsIGJ1dCByZXF1aXJlIGRpZmZlcmVudCBjb250cm9sIHBhdGhzIGJlZm9yZSB0aG9zZSBy
ZWdpc3RlcnMgY2FuCj4gPiA+IGJlIGFjY2Vzc2VkOiBBQzIwMCBpcyBpbml0aWFsaXplZCB0aHJv
dWdoIGl0cyBJMkMgTUZELCB3aGlsZSBBQzMwMCB1c2VzIGEKPiA+ID4gbm9uLVBIWSBDbGF1c2Ug
MjIgY29udHJvbCBlbmRwb2ludC4KPiA+ID4KPiA+ID4gU29tZSBINjE2LWZhbWlseSBwcm9kdWN0
cyB3ZXJlIHNoaXBwZWQgd2l0aCBlaXRoZXIgcGFja2FnZSB1bmRlciB0aGUgc2FtZQo+ID4gPiBi
b2FyZCBpZGVudGl0eS4gIEZvciB0aG9zZSBzeXN0ZW1zLCB0aGlzIHNlcmllcyB1c2VzIGEgU0lE
IE5WTUVNIGZpZWxkIHRvCj4gPiA+IHNlbGVjdCB0aGUgY29udHJvbCBwcm92aWRlciBhdCBydW4g
dGltZS4gIFdpdGggQ09ORklHX09GX0RZTkFNSUMsIHRoZSBsaW5rCj4gPiA+IFBIWSBlbmFibGVz
IG9ubHkgdGhlIHNlbGVjdGVkIGZhaWwtbmVlZHMtcHJvYmUgcHJvdmlkZXIsIHNvIGFuIEFDMzAw
IGJvYXJkCj4gPgo+ID4gSnVzdCB0byBicmluZyB0aGF0IHNoYWxsb3cgZGlzY3Vzc2lvbiB3ZSBo
YWQgb24gSVJDIHRvIHRoZSBsaXN0OiBJCj4gPiB3b25kZXIgaWYgdGhpcyBpcyB0aGUgcmlnaHQg
c29sdXRpb24/IEFsdGVybmF0aXZlbHkgSSB3YXMgd29uZGVyaW5nIGlmCj4gPiBqdXN0IHBhdGNo
aW5nIHRoZSBEVCBpbiBVLUJvb3Qgd291bGQgc2ltcGxpZnkgdGhpbmdzLCBhbmQgYWxzbyBoZWxw
Cj4gPiBvdGhlciBEVCB1c2VycyBsaWtlICpCU0Qgb3IgVS1Cb290IChwcm9wZXIpIGl0c2VsZiwg
dG8gbm90IGJvaWwgdGhlCj4gPiBvY2VhbiwgYnV0IGp1c3QgYWxsb3dpbmcgdGhlbSB0byBmb2xs
b3cgYSBzdGFuZGFyZCBEVCBkZXNjcmlwdGlvbi4KPiAKPiBUaGlzIGNhbiBiZSB1c2VkIGVpdGhl
ciB3YXksIENPTkZJR19PRl9EWU5BTUlDIGlzbid0IGEgaGFyZAo+IGRlcGVuZGVuY3kgd2l0aCB0
aGlzIGRlc2lnbiwgYXNpZGUgZnJvbSBhZGRpbmcgQ09ORklHX09GX0RZTkFNSUMKPiBzdXBwb3J0
IGZvciBtZGlvIHRoZSBkeW5hbWljIGVuYWJsZW1lbnQgb2YgdGhlIGNvcnJlY3QgcGh5IGNvbnRy
b2wKPiBkcml2ZXJzIGlzIHJlbGF0aXZlbHkgc2ltcGxlIHdpdGggdGhpcyBhcmNoaXRlY3R1cmUu
Cj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
