Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5940AC53219
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 11:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9apNAsdBQQnn0+1wafR6CMB2GlCEWR3upasP9CZuiqE=; b=AxE7q6r3Pgun00
	ga8DBjxq8ve7lI0YoK8KNZlybaWVww3zic93EEROtI4krcvXA1EIPtMpnit7g2G+olk5FTiU2Ztkm
	XMZDzlTD0BHUZTnoG/O79bHnM7/NgQdI+S2tksYVykLbRmzJjQ9c+b0/80zT5g9toTqbMPHnaBBS9
	HkgF7AZfDwv0bxXmiItmQxEIzIgZeAs0VUrkfXvbc/BmMXJa22UsrCS8RkXodh0PycA1ek5a0dZNq
	yVBJdGR9lGg4vDXhr7T68X/ZwdF4HAQuo74GRUx7kMh9nAHNyLw5AvzKKfhqxfvkql1KguLe5UdkZ
	dJTig0hHPYvU32qcz2pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wofwm-000000054Rm-3JpV;
	Tue, 28 Jul 2026 11:26:08 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wofwj-000000054QX-3dVq
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Jul 2026 11:26:07 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-c1c26d7e951so532708066b.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jul 2026 04:26:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785237963; cv=none;
        d=google.com; s=arc-20260327;
        b=cnsd2LHI2fvWIe8OHLBjjhBGqNmXTzFydwui+oqwVjtbHn6b9mJywTzoLsvlyttdHr
         9miGllTFMsC10FOwU003e7VFTKALja106dISHGhhTO7Gbm19vDq5XsxfCGFU5k0nCYlc
         kbRoM9PULsWmA6GPuxszc184fs/CAjd9ZxUX953CWd6SpOHoRG2wwp2GmK/m/R/wv/bn
         QS/brCyDOYRUZJfEcPWzNBkW/0eIYunBYFwAkOGJrs63McKtj12o7jwVrDLm6gJ74g/a
         pDGaY2GeqvhKrwKenH2+IhpSevRCoPB28fmvUq6z0sX/x4W99rd4GcugKUc2pz650c5O
         zvQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Lek6cL4/AbRQCXtH33ScvBhO9kuHePx/FpqKIeX9tRE=;
        fh=2r0nT2UAS3iuzhRuxSMcaJq0/WuV4f8HzWH9QVBsr4k=;
        b=kYjPyNJGEVc6xzzKvHqrVRnI98gBYCUw3iWT/sBbqs31FeU77umt0Xq+ahGBd7R/6c
         PZqR9ZxflkKMMgkrIXNnJbBmJ6O+h8kf2a0jSoiSL66zMCf10ILQk0Oyj8h/w+CcgF2t
         b2lr0Bkn2xBzq1OFpnd1aOBZVcFNvGj/cKzOCfBVIUhjc+4JKg+6hquUvjs2lZZYU0fA
         iVucgAaitXpDfuup0QyRvyW3x/KCBi5Ba2Wv1TWFEhO9/0tH8vbc0QZ6idkGZAR9nrEd
         c2XF7AsjIrQXMYvqemdcDQ8JnpDE0sIqutW3n74IQsMGQBAMQezp6cwhFNfcfeLlUazL
         V38g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1785237963; x=1785842763; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Lek6cL4/AbRQCXtH33ScvBhO9kuHePx/FpqKIeX9tRE=;
        b=FMQFNXRFF8s/mT14EzzXJqMQ307ry//ox2eO7DLEH3301nQCYsDphxJLiTijvoo/eI
         c9KN1cPYNXrO5xQkItZJt2A0bs9uvZI/AbrbkD64D0BDTD9VeNy0BzuCV9yEifwzcbdb
         I2BxXMIYBqre4ji2vtmyhJJcX2Sj9Ko2rkUld/JMhKQPT6/l05CaclxlkUwjp6/ATREd
         jCzCmEjX5Dx16GVfT0XhujJwraK84n0ubTaIxZ/00GYRCI49TmnG92VX7pjDDifczs+V
         WRGROfyMVLdb6lQ79AZ7nhZsX8lvoEdKz0Gxp6HoWQoaKHWhCrN3Ul8Uxtf4R9KNN2N0
         9pDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785237963; x=1785842763;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Lek6cL4/AbRQCXtH33ScvBhO9kuHePx/FpqKIeX9tRE=;
        b=eoR+9RNEa3nKtuF6JXgg1UbI6k5E8eDjWaDAGoSOtSFuuNVHwcheyE4k6CR5lqQ15y
         0OXUWxhagn0twxFMK0eRc6IXVFNwARzIbAMvswxQzKmlktyXsD7RY9+rdcfOlDk9JexQ
         XmbAdqSnGnp5Hn2OqqoPBxC+N2P5PbTVjbH3aSQfnS4hQD6QO0Tmxhe1QsbYjRgla5fe
         xUVTJ8BnKfKK9kiuQ2zNdQU+cpJEjMx+KX0GJiHJWthRXkkxRyTLJGWChMiOtS8/Anli
         WlKlUcLjrlBLghcgD7eUN/JSQCLUp8/uR6rqq9yGdMh2eW2jgfpUS6B+WnAG71CR/R3n
         XeZw==
X-Forwarded-Encrypted: i=1; AHgh+Rr5UGIxnmU/qoMDBqzCi/VIDwEJH003uMAQ+I6RhMpmiShrSx/aD9i9F3N0aiZoGCH3kFm/XC64AIhByYjkLg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxPvqmqB4X0fUkcuNUeWPhJS/LIWlcx/Idi2q9hH4OhtgfeiK1x
	aohnjcw8HKjnN2IE/in/WQPF/r8mts5gdbuwxF6WtqDVcVNHL8QROhC7schOl3Y+jq0Hj6zcyzg
	y3D73lFJb+NQ7ik7fw1V5Vx/YBugqft6LRflLjDgxnA==
X-Gm-Gg: AR+sD13Y2Kapk9AAnS3X8hOtLpvGvgfhUqLnsOEF5X6Bv9EwzdWiTZN4TatOX+zGHib
	T3qJcxINHUOgoaggv3KO4l++HAClv1ODlraXTnpNmcJC7EGvdrThSjO+O36Mcq5ey14Kl3tzuGA
	BPTPsTIbYfVedwk5uub+BSejRpJBNErVplw5s53CTkiAODu+cw4GnVIRNnXEN077BmU6WDemnVE
	pr2H8sYH6IjeivBBqFSIPLPLBEyt8R9xH6M128vK4mjg5GIxEPe28mt1KS41Mo=
X-Received: by 2002:a17:907:c80e:b0:c12:34ed:da14 with SMTP id
 a640c23a62f3a-c1f72504745mr91551666b.64.1785237963102; Tue, 28 Jul 2026
 04:26:03 -0700 (PDT)
MIME-Version: 1.0
References: <20260723-rk3588-fracpll-v2-0-3adfb9dda235@flipper.net>
In-Reply-To: <20260723-rk3588-fracpll-v2-0-3adfb9dda235@flipper.net>
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 28 Jul 2026 15:25:47 +0400
X-Gm-Features: AUfX_mxMy4BRnDAVX9M9UW7_BMaDykpALH1nDWvPyZtvog3_VcfjLyQR3l2_74U
Message-ID: <CAKTNdwHcJvpjkG741j-bCTePb5n0wiu53eHctT8qfP4NdVCqVQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Fix RK3576/RK3588 fractional PLL rate calculation
To: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Brian Masney <bmasney@redhat.com>, Heiko Stuebner <heiko@sntech.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Finley Xiao <finley.xiao@rock-chips.com>, 
	Elaine Zhang <zhangqing@rock-chips.com>, Detlev Casanova <detlev.casanova@collabora.com>, 
	Sugar Zhang <sugar.zhang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>
Cc: Dragan Simic <dsimic@manjaro.org>, Liang Chen <cl@rock-chips.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, linux-clk@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_042605_926990_6AB36184 
X-CRM114-Status: GOOD (  17.53  )
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

SGkgSGVpa28sCgpPbiBUaHUsIEp1bCAyMywgMjAyNiBhdCAyOjIy4oCvUE0gQWxleGV5IENoYXJr
b3YgPGFsY2hhcmtAZmxpcHBlci5uZXQ+IHdyb3RlOgo+Cj4gRnJhY3Rpb25hbCBQTEwgcmF0ZSBy
ZWNhbGN1bGF0aW9uIGZvciBSSzM1NzYvUkszNTg4IGRvZXNuJ3QgY29ycmVzcG9uZCB0bwo+IHdo
YXQgdGhlIGhhcmR3YXJlIGFjdHVhbGx5IGRvZXMgZHVlIHRvIHR3byBpc3N1ZXM6IHdyb25nIGRl
bm9taW5hdG9yIGZvcgo+IHRoZSBmcmFjdGlvbmFsIGNvbXBvbmVudCwgYW5kIHdyb25nIHNpZ25l
ZG5lc3Mgb2YgdGhlIGZyYWN0aW9uYWwKPiBjb21wb25lbnQuIFRoZSByZXN1bHQgaXMgdGhlIGtl
cm5lbC12aXNpYmxlIFBMTCByYXRlIGJlaW5nIG9mZiBieSBhYm91dAo+IDIgTUh6IGZvciB0aGUg
dHdvIGFmZmVjdGVkIFBMTCByYXRlcyB2cy4gd2hhdCB0aGUgaGFyZHdhcmUgcHJvZHVjZXMuCj4K
PiBXaGlsZSB0aGlzIGZpeGVzIGEgcmVhbCBidWcgaXQncyBub3QgYSByZWdyZXNzaW9uLCBhcyB0
aGUgaXNzdWUgd2FzCj4gaW50cm9kdWNlZCBpbiB0aGUgc2FtZSBjb21taXQgdGhhdCBhZGRlZCB0
aGUgUkszNTc2L1JLMzU4OCBzdXBwb3J0Lgo+Cj4gTm90ZSB0aGF0IHRoZXJlIGlzIGEgc2VwYXJh
dGUgdW5yZWxhdGVkIGlzc3VlIHdpdGggdGhlIHJhdGUgdGFibGUsIG5hbWVseQo+IHRoZSAyMjU2
MDAwMDAwIEh6IGVudHJ5IGN1cnJlbnRseSBsZWFkcyB0byBhIFZDTyBmcmVxdWVuY3kgb2YgNDUx
MiBNSHosCj4gd2hpY2ggaXMganVzdCBhYm92ZSB0aGUgVFJNLXN0YXRlZCBtYXhpbXVtIG9mIDQ1
MDAgTUh6LiBBbHNvIG11bHRpcGxlCj4gZW50cmllcyBpbiB0aGUgdGFibGUgZW5kIHVwIHdpdGgg
RnZjbyA8IDMgR0h6LCB3aGljaCBhY2NvcmRpbmcgdG8gdGhlCj4gVFJNIGxlYWRzIHRvIGEgUExM
IHBlcmlvZCBqaXR0ZXIgb2YgKy0yJSB2cy4gdGhlICstMSUgZm9yIEZ2Y28gPiAzIEdIei4KPiBU
byBiZSByZXZpc2l0ZWQgYW5kIG9wdGltaXplZCBzZXBhcmF0ZWx5Lgo+Cj4gU2lnbmVkLW9mZi1i
eTogQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZmxpcHBlci5uZXQ+Cj4gLS0tCj4gQ2hhbmdlcyBp
biB2MjoKPiAtIFNwbGl0IG91dCB0aGUgZGVub21pbmF0b3IgZml4IGludG8gaXRzIG93biBwYXRj
aCAodGhhbmtzIEhlaWtvKQo+IC0gUmV3b3JkIHRoZSBjb21taXQgZGVzY3JpcHRpb24gZm9yIGNs
YXJpdHkgKHRoYW5rcyBRdWVudGluIGFuZCBTZWJhc3RpYW4pCj4gLSBBZGQgcmVsZXZhbnQgY2xv
Y2sgZGVyaXZhdGlvbiBmb3JtdWxhcyBhbmQga2V5IGNvbnN0cmFpbnRzIGRpcmVjdGx5IGludG8K
PiAgIGEgY29kZSBjb21tZW50IGZvciBlYXNpZXIgZnV0dXJlIHJlZmVyZW5jZQo+IC0gTGluayB0
byB2MTogaHR0cHM6Ly9wYXRjaC5tc2dpZC5saW5rLzIwMjYwNzIxLXJrMzU4OC1mcmFjcGxsLXYx
LTEtYjI4OWJmMTdjZjE3QGZsaXBwZXIubmV0CgpXaGF0IGRvIHlvdSB0aGluayAtIGlzIHRoaXMg
Z29vZCBmb3IgNy4zPwoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
