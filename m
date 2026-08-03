Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF6FFC55184
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 16:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FhBP/EAaJjWPSOvyVM+iDvJJ8mcTZLm/60XHQW6V7qo=; b=I397QbDenJgC0i
	uQcvQH6BJnGK87Vy+LWODCOVh/luZgNrTDqJ8FT7xPeXNpfpfovxMEQbqcfKk2k0ZG2uj6YwQrpqu
	hVTW3sjJnL0YuybTpIzaC2e8KPA8x1Td8cSzYOCta6VHqQ2LwNTfwYgt4H7ek6JEvhIChHGINAUGN
	oauJQjcNFRqg5KX47Tqh6QO2JDCFcrJs5sN2CJEGFeNfvfwtCvHksfcQK26ubCxKOLEVOpsn9nlYQ
	KG0staG1eJpSoCm2NbnfMlQWK6fBTlklsD+ur+Xhas368xciFvHKFvCmq7Ebhm+3NQKEPTGIz/ynO
	Bx1GEavo0qR+kbJivRnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqvE6-000000001EN-2Pg9;
	Mon, 03 Aug 2026 16:09:18 +0000
Received: from mail-ua1-x934.google.com ([2607:f8b0:4864:20::934])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqvE3-000000001CH-11GS
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 16:09:16 +0000
Received: by mail-ua1-x934.google.com with SMTP id a1e0cc1a2514c-9770fffa5a6so784277241.3
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Aug 2026 09:09:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785773354; cv=none;
        d=google.com; s=arc-20260327;
        b=SHty3gp5bO9TUUsfKgTWrvvzpssO/Uv2spNst0jUfZr27n9m2Ix/pMwYAmEQiNZU7R
         VynIPUeKIOR/ZgOoF6wEVdzDQSX/qFS+XN9xfvoOg6OlxgTPd59drCtbaOhTsDyyPYhs
         LGS4cBXM13IwVCipHZI9d/yydNdKHhdSnD5d/SeFB526B3VTQla4kVOD4W8hiuMPxgFQ
         stZkkXnxlOLAk8NEV+Oj+jI7TqfbB71u3rHV6S3XbJK3vOadldi5pSPRGm5fayrQOSlY
         6cMHjTuSo+5729ST6viLu9UZotzqyv1sP8LuZTb/f55/ZXbr8Z4zel9TbmEBuXmUoLzQ
         nd0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=kPUuUdXNlj9HGEt2H/gq9i9+yKMP/RfrBRw+r1bpfmE=;
        fh=KPVnh4DfwFNPb6iPMpEfwkKd4uTI0SgHxq+pvXUdj28=;
        b=Qds6BJhQRVBmccaYbWgnRHRrKnVhKQN+9bPLnPvhu3xuq15lhna4bDNgMNveAjJ8dX
         tb7tSpcebcuSvcJ8F+LHhvTI+G06VI7pLTLAYkM4zytA6wKZpIQxDB1Q7ByZ34BZGMLr
         ngkB3cmjEwckLa3yDBKk7tV769JnWivV7zERGrB94TiY92DH9Bde4nVcRmJ6C16XIyHP
         ZdR/WxiIl5vw/bcpC+eX5Q5LHXG0NomQLEZN/ACeYvc5eT4dOVEcFEjYFRmAlRP8YOb0
         +JDYxWv70C/eDec2tOeD3guHUvxOxepsFG4CukAWspWhZz+XxmoS/hMUTSzVJsK+odpo
         XpcA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785773354; x=1786378154; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=kPUuUdXNlj9HGEt2H/gq9i9+yKMP/RfrBRw+r1bpfmE=;
        b=lQ+MW7/oKFokt2VfPS18YVXVAYwNABmZAzMcb9fxVzSBS9ETPy01DRS30b3qpNmnPu
         X++CuwIh/w7gHmYFxCnS1xYt09x/XfhXKPEw+Sx/XZBvlBbtw+rGRdss7sKBHV/QhkC7
         LriRaUdlJVV8i0GfpIGcvYkK50qwmA7BcQJwupf3ELuZYC3Jnsduair5X0QNm9PvoyWb
         sMZFHmdNQLLmEbwtYPlwLeL+TIryyKCphS+3VbEWQ6lBLX6/T9fqRaJHnT8QqTUAXzM4
         c7TW2uVs2iavJIa79MojKFzcvWG/NzyJoZ5K56ZpWWnxcIFO/WtejiJunZvhmusZSy/V
         /zJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785773354; x=1786378154;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kPUuUdXNlj9HGEt2H/gq9i9+yKMP/RfrBRw+r1bpfmE=;
        b=GBCsE99sipG3V8r3CzFFmYHNzE1mnVBiEDj52VdhQbkyep1i+JxnwyEL6iXFR4lHSh
         LhL9UTjwcorIH5Ql32cke8Wc7QI/jbQcfNKwhx5nnv6Uqc13Z3xRZw4mthI3ejRgzx77
         cVhf0yBttkIw+AVUyPsrdYeRQiK8uSMj1BOY2jDp1Kn8cstxI2A6L9rOc2EpJBlhQBFn
         to/5WxFvdFihZsmPs16oE77+/sgeLdUYFUVhuv+4r9I1BoTX8GQnarpiDYyb39nVLvWa
         gMCHUVJPy/BzlXHgM6Dimr57eGP3aqenDkWJkqONIRsKmnlkbHlW/HN4caGEwYyD7lt1
         PQFA==
X-Forwarded-Encrypted: i=1; AHgh+RruhdqxIxZOUbev2NZYPCxdK6J7YQ06qR56fY/d60YKuH8e2lkjI+IaeNosjDfXcnIm6WtxWHDMNLIMKyMFLw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8o5sY2tawNegGwcnaQnijNLebib2XYtZEOi96hiTYgGOQA6l7
	Oju/CzzLtIimVQeq3D3nfVolpe1EW02hRzQIfXhx7SzuPX+FggptKj4F80wikiMViSLhaM6YnF5
	MG+u93Jbj/btdUZXPRMxpRrsrOlfWOfU=
X-Gm-Gg: AR+sD12JF1NSJpTZaBpaqR/DTXls+GmY2TZdvgCP4kn0L1RMxlDF6ffC6zStff8LcGj
	xRoNjD/Iq4k9EuUjIusz0WW8S220LaqmCwW8rvrl2IsUXhv0y379EmdljPQt0TUYgkGn8bOcWde
	cGaxbz7ujQy1WhfdlIdMu6rHzX66yDJ1dr2uxh/ASK8O5CQk6LQa52eTcFu9eMLzxLNvuabP45I
	votp3C43arONqhy6Bws48cldjd86pWe9HG0sN1hj8KjQdyWeyl7ajyD5mBnh2xVWNq9j5aVp99c
	zXJjQWKXGAZ/XmQVJCXHu8VLEbOe+NAqw+RKfukW5etXff0CTIKw9z5zJ4qXsZk6Oa4M+GsJ2fz
	4a+NWLb2POYrpInhb33styl1EMRJURi/nDoxr9ptDd4ilD7HZ4XUL0OBVC/pY/W7E83SiGpmUSe
	m+PCkzl3sl8tfp5y6OCU0GI8NKSxdbW1f0ZaQV
X-Received: by 2002:a05:6102:15a3:b0:738:be73:55e0 with SMTP id
 ada2fe7eead31-75b237677ffmr7059647137.12.1785773353603; Mon, 03 Aug 2026
 09:09:13 -0700 (PDT)
MIME-Version: 1.0
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
 <20260802-submit-acx00-of-dynamic-v1-v1-10-0a53cd9e21cc@gmail.com> <05b1e6a2-725e-4b8e-8629-249637bbcb81@lunn.ch>
In-Reply-To: <05b1e6a2-725e-4b8e-8629-249637bbcb81@lunn.ch>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Mon, 3 Aug 2026 10:09:01 -0600
X-Gm-Features: AUfX_mx9mt9dbVrMmCFnN7qHq2KVIXtx4IDcN-1su1pyV_2ANjujEXVMup0YQWo
Message-ID: <CADvTj4o0JdjoO+FC4pO=qnjEQ8MRyzQdKp2Hxy9NsPU-gym5OQ@mail.gmail.com>
Subject: Re: [PATCH 10/21] net: phy: add X-Powers AC200 EPHY control driver
To: Andrew Lunn <andrew@lunn.ch>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>, 
	Richard Genoud <richard.genoud@bootlin.com>, Maxime Ripard <mripard@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Jose Abreu <joabreu@synopsys.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	mfd@lists.linux.dev, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_090915_295202_1F3EAFB7 
X-CRM114-Status: GOOD (  17.10  )
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

T24gTW9uLCBBdWcgMywgMjAyNiBhdCA3OjUx4oCvQU0gQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5u
LmNoPiB3cm90ZToKPgo+ID4gK3N0YXRpYyBpbnQKPiA+ICthYzIwMF9lcGh5X2N0bF9zZXRfbGVk
X291dHB1dHMoc3RydWN0IGFjeDAwX2VwaHlfY29udHJvbCAqY29udHJvbCwKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgbG9uZyBvdXRwdXRzKQo+ID4gK3sKPiA+ICt9
Cj4KPiA+ICtzdGF0aWMgaW50Cj4gPiArYWMyMDBfZXBoeV9jdGxfc2V0X2xlZF9wb2xhcml0eShz
dHJ1Y3QgYWN4MDBfZXBoeV9jb250cm9sICpjb250cm9sLAo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgYm9vbCBhY3RpdmVfbG93KQo+ID4gK3sKPiA+ICt9Cj4KPiBJJ3ZlIG5vdCBs
b29rZWQgaW50byB0aGUgZGV0YWlscywgYnV0IHRoZXNlIGxvb2sgbGlrZSBwaW5tdXguIERvZXMK
PiB0aGlzIEkyQyBkZXZpY2UgaGF2ZSBhIEdQSU8gY29udHJvbGxlcj8gQ2FuIHRoZXNlIHBpbnMg
YmUgdXNlZCBmb3IKPiBvdGhlciB0aGluZ3MgdGhhbiBMRURzPyBNYXliZSB5b3Ugc2hvdWxkIGJl
IGltcGxlbWVudGluZyBhIEdQSU8gYW5kCj4gcGlubXV4IGRyaXZlci4gVGhlIEV0aGVybmV0IFBI
WSBkcml2ZXIgY2FuIHRoZW4ganVzdCBzZWxlY3QgdGhlCj4gY29ycmVjdCBwaW5tdXggY29uZmln
dXJhdGlvbi4KClRoZXNlIGRvIG5vdCBhcHBlYXIgdG8gYmUgR1BJTyBvciBtdXhhYmxlIHBpbnMu
IFRoZSBBQzIwMApkb2N1bWVudGF0aW9uIGRlc2NyaWJlcyB0aGVtIGFzIHRocmVlIGRlZGljYXRl
ZCBFUEhZIExFRApvdXRwdXRzOiBsaW5rL2FjdGl2aXR5LCBzcGVlZCwgYW5kIGR1cGxleC4gVGhl
IGJpdHMgaW4gU1lTX0VQSFlfQ1RMMQplbmFibGUgdGhvc2Ugb3V0cHV0IHBhZHMsIHdoaWxlIEVQ
SFlfQ1RMIHByb3ZpZGVzIHRoZWlyIHNoYXJlZApwb2xhcml0eSBzZXR0aW5nLiBJIGhhdmUgbm90
IGZvdW5kIGFueSBkb2N1bWVudGVkIEdQSU8gZGF0YQpyZWdpc3RlcnMgb3IgYWx0ZXJuYXRpdmUg
ZnVuY3Rpb25zIGZvciB0aGVzZSBwaW5zLgoKVGhlcmVmb3JlLCBpbXBsZW1lbnRpbmcgYSBHUElP
IGNvbnRyb2xsZXIgd291bGQgZXhwb3NlIGNhcGFiaWxpdGllcwp0aGUgaGFyZHdhcmUgZG9lcyBu
b3QgaGF2ZSwgYW5kIGEgcGlubXV4IGRyaXZlciB3b3VsZCBvbmx5IHByb3ZpZGUKYSBzaW5nbGUg
Zml4ZWQgZnVuY3Rpb24uIFRoZSBjYWxsYmFja3MgZXhpc3QgYmVjYXVzZSB0aGUgTEVEIGZ1bmN0
aW9uCmJlbG9uZ3MgdG8gdGhlIFBIWSwgd2hpbGUgdGhlIHBhZC1lbmFibGUgYW5kIHBvbGFyaXR5
IHJlZ2lzdGVycyBhcmUKcmVhY2hlZCB0aHJvdWdoIHRoZSBBQzIwMCBJMkMgcmVnbWFwIHJhdGhl
ciB0aGFuIHRoZSBQSFnigJlzIE1ESU8KcmVnaXN0ZXJzLgoKPgo+ID4gK3N0YXRpYyBpbnQgYWMy
MDBfZXBoeV9jdGxfcG93ZXJfb2ZmX2xvY2tlZChzdHJ1Y3QgYWMyMDBfZXBoeV9jdGwgKnByaXYp
Cj4gPiArewo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgaW50IGFjMjAwX2VwaHlfY3RsX3Bvd2Vy
X29mZihzdHJ1Y3QgYWN4MDBfZXBoeV9jb250cm9sICpjb250cm9sKQo+ID4gK3sKPgo+ID4gK30K
PiA+ICsKPiA+ICtzdGF0aWMgaW50IGFjMjAwX2VwaHlfY3RsX3Bvd2VyX29uKHN0cnVjdCBhY3gw
MF9lcGh5X2NvbnRyb2wgKmNvbnRyb2wsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB1bnNpZ25lZCBpbnQgcGh5X2FkZHIpCj4gPiArewo+ID4gK30KPgo+IFRoZXNlIGxvb2sg
bGlrZSBhIHJlZ3VsYXRvcj8gVGhlIHBoeWxpYiBjb3JlIGhhcyBzdXBwb3J0IGZvcgo+IHJlZ3Vs
YXRvcnMuCgpUaGUgZXh0ZXJuYWwgc3VwcGxpZXMgYXJlIGFscmVhZHkgcmVwcmVzZW50ZWQgYXMg
cmVndWxhdG9ycy4gVGhlc2UgY2FsbGJhY2tzCmRvIG1vcmUgdGhhbiBlbmFibGUgYSBzdXBwbHk6
IHRoZXkgc2VxdWVuY2UgdGhlIHBhY2thZ2UgY2xvY2ssIHJlc2V0IGFuZApzaHV0ZG93biBjb250
cm9scywgdGhlbiBwcm9ncmFtIHRoZSBQSFkgYWRkcmVzcywgY2FsaWJyYXRpb24gYW5kIGludGVy
ZmFjZQpzdGF0ZSByZXF1aXJlZCBiZWZvcmUgdGhlIG5vcm1hbCBDbGF1c2UgMjIgZW5kcG9pbnQg
YmVjb21lcyB1c2FibGUuCgo+IE1heWJlIHRha2UgYSBzdGVwIGJhY2sgYW5kIGxvb2sgYXQgdGhl
IG92ZXJhbGwgYXJjaGl0ZWN0dXJlLCBhbmQgaG93Cj4gTGludXggY2FuIHJlcHJlc2VudCB0aGVz
ZSBibG9ja3MuCj4KPiAgICAgICAgIEFuZHJldwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
