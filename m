Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB6DDC55196
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 18:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayo9WGjKoVAqSiqIdYpUT+0Ra1lj029lDCp5kZDuBUc=; b=qXYejZTVjzhlOy
	7h5JaVC+GGT2UXdp59QiU/WoQxp9P0S7CxG+lM+Uj2wta6fiq2hcLS6lqD79k4q5A5OqnwUkaU1I0
	+839UNC5ooyjTQcp/M1WlxYjIDTmsv19z4QhmZNq1WUXMt9DQ3qp4GDKxqkOi1Fi1n+PdKwVQlC9z
	GNdRrUlPN6bJJqg/O5YF1Ht8rVbvWT0W85qEoAERsmNBjfKNqtOlw6I05YUDtm7TqCykVwofJ97NY
	1pPI9ikYcTM2OWz6DXhbC8OVKo+Gj3PfQz4GdSRBrA44UFKXvzOfxELgqCglN2ysKM3kLl8nENHML
	P8Dk2sXBrTqTHykj/LSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqxfA-00000000ORo-3955;
	Mon, 03 Aug 2026 18:45:24 +0000
Received: from mail-ua1-x92e.google.com ([2607:f8b0:4864:20::92e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqxf7-00000000OQv-40af
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 18:45:23 +0000
Received: by mail-ua1-x92e.google.com with SMTP id a1e0cc1a2514c-977258a75d9so2210658241.3
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Aug 2026 11:45:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785782720; cv=none;
        d=google.com; s=arc-20260327;
        b=Qnqs0I19EKHIXCfnXqmJTZbV93fkoP0QkKkMUXDuMvopxO73feo6d7AFoFTlRdiMOx
         vtutaudZpszW/Vd5B6w4llJyu31/6bxkqbKVGr/HanmHV4GDwhgDKneckNxgyWleXbCh
         n7m3cdVbDHRr3EtZgRx/pM04ADe+U0F8aNh7kGFHt0SCpIR2Yc5v/XhzkdES1msuHleI
         HDK/a1Rgd7oZ0b816EjZY5cQGw0Dll0947n9Ml3ccYY4xtowUytyp6tn3X57+0MxYkF5
         fD/esNmnoAvxMZQpDR/tA70wFOvBDEJpEkL76NRY3roqpJR3yMBlsShsVgaPW2DSLN/i
         FeiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=lhCHZs/g7TB5oMS7PG09o+GsecOnKpnv54KT75DfOGo=;
        fh=5RJeTiq5B7ee0KQSz5EUVg0u0lTzTe5kskfwJP/22aQ=;
        b=lP6pOv/6l2qpwSmHcstCQQNu75s3fn/ChMfCCQZG9xb0jKo9tsVLoMOGd4p0Fyin6C
         EvwayY97J3q19HsTvZ6gYCGWIQ44VjuafZp17ZqyzYK8RICDYAZn+np/g5kTXNAEcNL0
         6/HHeZMszuLQA0jOno1js0mi9jX+hr09fX5fE1JE1g+fJqgNUiN6nbOYGaSxi7etKfzZ
         GdrPFRf2pMKM/6iUpz9Brvj54msXLga1WYqk33F2ojXbTDFU8fKCf6+zqOweNu+mHa7/
         CmhzFOwWUjjG/rrfisBpkD7eU5UVaIsDyZ34H+AV/pQA8fAAeT5KqFdyF56UHsYugmew
         npaQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785782720; x=1786387520; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=lhCHZs/g7TB5oMS7PG09o+GsecOnKpnv54KT75DfOGo=;
        b=Ka46xBVjznqzQELk0b7MRuHXylkVoPzCKHzloFRY9rpBhHNcNYhXomcb8ZJ9iMPj7b
         YpgmJhwvG+ixTgowKJw4ev5t+TTAgtkupDufdo0zIfeMXJ6f9BgfF+JfSt8Nu8Nin6Wt
         ifi4MjbEThNbdPVgTVJAFkzmfiPo22NmafvtGRcpCKtdPJDzePBiJ7Ho6uymBDN/shbU
         KzKKZLQ1OWydTfBQIQQQ79PEievqQYsJUkZj25UxQnV7sq+WROthM/JjtfJ57i9e645c
         eNBJiIhnslGy8AbkRS/hB3zFxJjADo8dB3Wy2zl5u4Ial2bvzbLb8ru7rSmmej1m3HJC
         9rsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785782720; x=1786387520;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lhCHZs/g7TB5oMS7PG09o+GsecOnKpnv54KT75DfOGo=;
        b=WPqeQdxaNuN4EhaMUi2HZ0spR/una8Lw7yZ9UqWpaogM5/EvSYUkELDbywhYbHikKq
         JTJZxI55bh6beH8EtGeFoqVvEV03vF8PGxVN+tJwSCpvO3sGoz4VhAckkWznz9FWoIj0
         dUPM+ctLsejqrNGiJ8LrcFgQh6qZBo1U4lGd1eWiUc7l40X45/sbtx0yBs/YgJY0KzV/
         KlDi4Nuk4DOw0SDhW2mIKlZ2izT3+dT8y3KruHwZk9XvwZhEeG6+vcVzMxJGbTCSot1o
         Te+UNwxaEZrI2JD6wTlqk/CF7PqEPCekJ0K3eQkFFe3SMydbyOHaixgz4ghclNoTCr8w
         15yA==
X-Forwarded-Encrypted: i=1; AHgh+Roc5vgqTp05x2wE3yW0Xd/ZinvExFHjS6JPUhhUKmOFSWunzN3TWbL1Rh9zECrmZGy1UbpkYZVTm/37hqanLg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxq+DVjMGqy824Ggy4zsBS0tLihgEC4u+jf7ryEpFkl9o/9Rl1p
	QqhObvfQcKfoHIDxFRBCc1gBZ4d3bwqm8eHy4IWFeBBGU5lPMhrJL0nN5ZJfgsKLhGtkGSmwSMI
	1mPaNS19xMtM6p81J6Hw8qX1D6t7eBfM=
X-Gm-Gg: AR+sD102OGAVsezYR/j7tppEM6RKxWUbLde4y93rEt7K/6r0Fhap8l8VcW6dkbgtqJj
	Q3MR4MvZfN2yJJoIVNlsiB8x9kFyAigqVB9szAT8+lkGW6FtQd8nDffAb4ZnuoYHuIAd/hKoBpB
	2opK5Hoxq65ofQgCP15GtKVjT4cX7dQkeh/OhP3agpTOi1GZbINpbPZ6Pjkl3qeFk92nqUMcwuh
	nBo55kdRZrahIPcJiz+iJTxTQ4GDq7fGoXJbdSV9DuqzHf6SoydVIN+xvuplWn34yGquBT9gZ0V
	nKYcYs470+cdhyznqGtgDF87vfxuls6sXclHUw98mo584ddRpv5Cj5F+cCBzfmuJMRxLzJoVRXB
	fJ2/ujA6Z83TW2OfaINtGltEiT9MUmJKbG6SYH9C59Il/OMR5HfiUb31qQ5UebjIeVUB1ZG/Yrk
	ozrgPEGsgPW+hBl3lVT9BcsX5IJcwgOyCfZVMr
X-Received: by 2002:a05:6102:fa5:b0:74a:b492:3a62 with SMTP id
 ada2fe7eead31-75b21e6b74emr8853495137.4.1785782720194; Mon, 03 Aug 2026
 11:45:20 -0700 (PDT)
MIME-Version: 1.0
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
 <20260802-submit-acx00-of-dynamic-v1-v1-10-0a53cd9e21cc@gmail.com>
 <05b1e6a2-725e-4b8e-8629-249637bbcb81@lunn.ch> <CADvTj4o0JdjoO+FC4pO=qnjEQ8MRyzQdKp2Hxy9NsPU-gym5OQ@mail.gmail.com>
 <9b8be475-1fde-409c-a82e-be4b2e402650@lunn.ch>
In-Reply-To: <9b8be475-1fde-409c-a82e-be4b2e402650@lunn.ch>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Mon, 3 Aug 2026 12:45:07 -0600
X-Gm-Features: AUfX_mxrC1O9cxNBLhvxxOGulQcP38PJEIX9XeOzWBEdBf_aYCt8UZQ5evY-RxY
Message-ID: <CADvTj4pBovti19MXgQjFpxm=7aRm0sYQz9jxfo8bu3txH94THQ@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20260803_114522_017259_061E0EBC 
X-CRM114-Status: GOOD (  26.21  )
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

T24gTW9uLCBBdWcgMywgMjAyNiBhdCAxMTo1N+KAr0FNIEFuZHJldyBMdW5uIDxhbmRyZXdAbHVu
bi5jaD4gd3JvdGU6Cj4KPiBPbiBNb24sIEF1ZyAwMywgMjAyNiBhdCAxMDowOTowMUFNIC0wNjAw
LCBKYW1lcyBIaWxsaWFyZCB3cm90ZToKPiA+IE9uIE1vbiwgQXVnIDMsIDIwMjYgYXQgNzo1MeKA
r0FNIEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4gd3JvdGU6Cj4gPiA+Cj4gPiA+ID4gK3N0
YXRpYyBpbnQKPiA+ID4gPiArYWMyMDBfZXBoeV9jdGxfc2V0X2xlZF9vdXRwdXRzKHN0cnVjdCBh
Y3gwMF9lcGh5X2NvbnRyb2wgKmNvbnRyb2wsCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB1bnNpZ25lZCBsb25nIG91dHB1dHMpCj4gPiA+ID4gK3sKPiA+ID4gPiArfQo+ID4g
Pgo+ID4gPiA+ICtzdGF0aWMgaW50Cj4gPiA+ID4gK2FjMjAwX2VwaHlfY3RsX3NldF9sZWRfcG9s
YXJpdHkoc3RydWN0IGFjeDAwX2VwaHlfY29udHJvbCAqY29udHJvbCwKPiA+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBib29sIGFjdGl2ZV9sb3cpCj4gPiA+ID4gK3sKPiA+ID4g
PiArfQo+ID4gPgo+ID4gPiBJJ3ZlIG5vdCBsb29rZWQgaW50byB0aGUgZGV0YWlscywgYnV0IHRo
ZXNlIGxvb2sgbGlrZSBwaW5tdXguIERvZXMKPiA+ID4gdGhpcyBJMkMgZGV2aWNlIGhhdmUgYSBH
UElPIGNvbnRyb2xsZXI/IENhbiB0aGVzZSBwaW5zIGJlIHVzZWQgZm9yCj4gPiA+IG90aGVyIHRo
aW5ncyB0aGFuIExFRHM/IE1heWJlIHlvdSBzaG91bGQgYmUgaW1wbGVtZW50aW5nIGEgR1BJTyBh
bmQKPiA+ID4gcGlubXV4IGRyaXZlci4gVGhlIEV0aGVybmV0IFBIWSBkcml2ZXIgY2FuIHRoZW4g
anVzdCBzZWxlY3QgdGhlCj4gPiA+IGNvcnJlY3QgcGlubXV4IGNvbmZpZ3VyYXRpb24uCj4gPgo+
ID4gVGhlc2UgZG8gbm90IGFwcGVhciB0byBiZSBHUElPIG9yIG11eGFibGUgcGlucy4gVGhlIEFD
MjAwCj4gPiBkb2N1bWVudGF0aW9uIGRlc2NyaWJlcyB0aGVtIGFzIHRocmVlIGRlZGljYXRlZCBF
UEhZIExFRAo+ID4gb3V0cHV0czogbGluay9hY3Rpdml0eSwgc3BlZWQsIGFuZCBkdXBsZXguIFRo
ZSBiaXRzIGluIFNZU19FUEhZX0NUTDEKPiA+IGVuYWJsZSB0aG9zZSBvdXRwdXQgcGFkcywgd2hp
bGUgRVBIWV9DVEwgcHJvdmlkZXMgdGhlaXIgc2hhcmVkCj4gPiBwb2xhcml0eSBzZXR0aW5nLiBJ
IGhhdmUgbm90IGZvdW5kIGFueSBkb2N1bWVudGVkIEdQSU8gZGF0YQo+ID4gcmVnaXN0ZXJzIG9y
IGFsdGVybmF0aXZlIGZ1bmN0aW9ucyBmb3IgdGhlc2UgcGlucy4KPgo+IFNvIHdoYXQgaSdtIHRy
eWluZyB0byBkbyB3aXRoIGJvdGggb2YgdGhlc2UgaXMgbWFrZSBpdCBsb29rIG1vcmUgbGlrZQo+
IHN0YW5kYXJkIExpbnV4IGJ1aWxkaW5nIGJsb2Nrcy4KPgo+IElmIHRoYXQgaXMgbm90IHBvc3Np
YmxlLCBpIHdvdWxkIGFjdHVhbGx5IHB1dCBhbGwgdGhpcyBjb2RlIGludG8gdGhlCj4gUEhZIGRy
aXZlci4gWW91IHRoZW4gaGF2ZSBhIHJlZ21hcCBwcm9wZXJ0eSB0byBnYWluIGFjY2VzcyB0byB0
aGUgSTJDCj4gcmVnaXN0ZXJzLgoKSSB1bmRlcnN0YW5kIHRoZSBnb2FsIG9mIHVzaW5nIHN0YW5k
YXJkIExpbnV4IGJ1aWxkaW5nIGJsb2NrcyB3aGVyZSB0aGV5CmZpdCwgYnV0IEkgZG8gbm90IHRo
aW5rIGZvbGRpbmcgdGhlc2UgY29udHJvbCBwYXRocyBpbnRvIHRoZSBjb21tb24gUEhZCmRyaXZl
ciBnaXZlcyB0aGUgcmlnaHQgZGV2aWNlIG1vZGVsIGhlcmUuCgpUaGUgQUMyMDAgYW5kIEFDMzAw
IGV4cG9zZSB0aGUgc2FtZSBDbGF1c2UgMjIgUEhZIGludGVyZmFjZSwgYnV0IHRoZWlyCmNvbnRy
b2wgZnVuY3Rpb25zIGFyZSBzZXBhcmF0ZSBkZXZpY2VzIHdpdGggZGlmZmVyZW50IHRyYW5zcG9y
dHMgYW5kCmxpZmV0aW1lcy4gVGhlIEFDMjAwIGNvbnRyb2wgZnVuY3Rpb24gaXMgYW4gTUZEIGNo
aWxkIGFjY2Vzc2VkIHRocm91Z2gKdGhlIHBhcmVudCBJMkMgcmVnbWFwLiBUaGUgQUMzMDAgY29u
dHJvbCBmdW5jdGlvbiBpcyBhIHNlcGFyYXRlbHkKYWRkcmVzc2VkIG5vbi1QSFkgTURJTyBkZXZp
Y2UuIEEgcmVnbWFwIHJlZmVyZW5jZSBvbmx5IGRlc2NyaWJlcyB0aGUKQUMyMDAgdHJhbnNwb3J0
OyBpdCBkb2VzIG5vdCByZXByZXNlbnQgdGhlIEFDMzAwIGNvbnRyb2wgZGV2aWNlLgoKRm9sZGlu
ZyBib3RoIGltcGxlbWVudGF0aW9ucyBpbnRvIHRoZSBjb21tb24gUEhZIGRyaXZlciB3b3VsZCBt
YWtlIHRoYXQKZHJpdmVyIG1hbmFnZSBBQzIwMCBNRkQgcmVnaXN0ZXJzIGFuZCByZXNvdXJjZXMg
YXMgd2VsbCBhcyBhbiBBQzMwMCBNRElPCmNvbnRyb2wgZW5kcG9pbnQuIFRoYXQgd291bGQgbWl4
IHRoZSBwYWNrYWdlLXNwZWNpZmljIGNvbnRyb2wgdHJhbnNwb3J0cwp3aXRoIHRoZSBvdGhlcndp
c2UgY29tbW9uIENsYXVzZSAyMiBpbXBsZW1lbnRhdGlvbi4KClRoZSBjdXJyZW50IHNwbGl0IHVz
ZXMgc3RhbmRhcmQgc3Vic3lzdGVtcyB3aGVyZXZlciB0aGV5IHByb3ZpZGUgYQptYXRjaGluZyBh
YnN0cmFjdGlvbjogTUZELCByZWdtYXAsIE1ESU8gZGV2aWNlcywgY2xvY2tzLCByZWd1bGF0b3Jz
LApOVk1FTSwgZGV2aWNlIGxpbmtzLCBhbmQgdGhlIFBIWSBMRUQgZnJhbWV3b3JrLiBUaGUgbmFy
cm93IHByaXZhdGUKaW50ZXJmYWNlIGNvdmVycyBvbmx5IHRoZSBjb21wb3VuZCBvcGVyYXRpb24g
d2hpY2ggdGhvc2UgZnJhbWV3b3JrcwpjYW5ub3QgZXhwcmVzczogY2FsaWJyYXRpbmcsIGFkZHJl
c3NpbmcsIGNvbmZpZ3VyaW5nLCBhbmQgc2VxdWVuY2luZyB0aGUKcGFja2FnZSBjb250cm9sIGJs
b2NrIGJlZm9yZSB0aGUgQ2xhdXNlIDIyIGludGVyZmFjZSBiZWNvbWVzIHVzYWJsZS4KClRoZSBs
aW5rIGFkZHJlc3MgaXMgYW4gaW1wb3J0YW50IGV4YW1wbGUuIEl0IGlzIGRlZmluZWQgb25jZSBi
eQpwaHlkZXYtPm1kaW8uYWRkci4gQUMyMDAgbXVzdCBwcm9ncmFtIHRoYXQgdmFsdWUgdGhyb3Vn
aCBpdHMgSTJDIGNvbnRyb2wKaW50ZXJmYWNlLCB3aGlsZSBBQzMwMCBtdXN0IHZhbGlkYXRlIGl0
IGFnYWluc3QgdGhlIGFkZHJlc3Mgb2YgaXRzIE1ESU8KY29udHJvbCBlbmRwb2ludC4gR2VuZXJp
YyBQSFkgb3BlcmF0aW9ucyBkbyBub3QgY2FycnkgYSBjb25zdW1lciBNRElPCmFkZHJlc3MuIEVu
Y29kaW5nIGl0IGluIGEgcGh5cyBzcGVjaWZpZXIgb3IgY29udHJvbC1ub2RlIHByb3BlcnR5IHdv
dWxkCmR1cGxpY2F0ZSB0aGUgUEhZIG5vZGUncyByZWcgdmFsdWUuIEdpdmluZyB0aGUgY29tbW9u
IFBIWSBkcml2ZXIgYSByYXcKcmVnbWFwIGF2b2lkcyBwYXNzaW5nIHRoZSBhZGRyZXNzIG9ubHkg
YnkgbW92aW5nIHRoZSBwcm92aWRlci1zcGVjaWZpYwppbXBsZW1lbnRhdGlvbiBhY3Jvc3MgdGhl
IGRyaXZlciBib3VuZGFyeS4KClRoZSBMRUQgcGFkLWVuYWJsZSBhbmQgcG9sYXJpdHkgYml0cyBh
cmUgc2ltaWxhcmx5IHBhcnQgb2YgdGhlIHBhY2thZ2UKY29udHJvbCBmdW5jdGlvbi4gVGhleSBj
b250cm9sIGRlZGljYXRlZCBFUEhZIG91dHB1dHMgcmF0aGVyIHRoYW4gR1BJT3MKb3IgbXV4YWJs
ZSBwaW5zLiBUaGUgY29tbW9uIFBIWSBkcml2ZXIgc3RpbGwgb3ducyB0aGUgUEhZIExFRCBzZW1h
bnRpY3MsCndoaWxlIHRoZSBzZWxlY3RlZCBjb250cm9sIGRyaXZlciBwZXJmb3JtcyB0aGUgcGFj
a2FnZS1zcGVjaWZpYyByZWdpc3RlcgphY2Nlc3MuCgpGb3IgdGhvc2UgcmVhc29ucywgSSB0aGlu
ayBrZWVwaW5nIHRoZSB0cmFuc3BvcnQtc3BlY2lmaWMgY29udHJvbCBkcml2ZXJzCmFuZCB0aGUg
Y29tbW9uIENsYXVzZSAyMiBQSFkgZHJpdmVyIHNlcGFyYXRlIGlzIHRoZSBjbGVhbmVyIGRpdmlz
aW9uLgoKPgo+ICAgICAgICBBbmRyZXcKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
