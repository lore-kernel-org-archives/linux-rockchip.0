Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFF69C55184
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Aug 2026 18:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBmiwb/7vqqqaTVPZo7jhZvgcwk4lWVQe+U1Vy2PlEM=; b=cNzwOav+frhvjI
	Hgm/kFXNk7mDOd8Bo7EhzSh635XSKsfmrdOyC/bbnxNgp2ERU+Wug37EDDYCG+sIOSMoHlPJGBq6l
	DGrNuoIqePNasFDsUu8Kmf0uNx2qEY43uVF3k7kQzYBfNIMwotciB+r7OwJ5zCCcSZP87xBGgKYxo
	Q9C1+HFQN8sGOVoadgNqjnIYolT2pP7E6c4DFB6gGbrrhdQjYjNStkoVgQE7L0gZLLZGoCXrrH60Y
	Rt8rCur+SIhUI3xHuQUGPSvZAzAANE1MiXhKh12kBLBCFdiHFo+aedGnJamBqMjrA04CIn5FCbomS
	r3IRWmJpwxa8Wvk+Zg+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrJts-00000002cIN-3wom;
	Tue, 04 Aug 2026 18:30:04 +0000
Received: from mail-vs1-xe2a.google.com ([2607:f8b0:4864:20::e2a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrJtq-00000002cGv-03mY
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Aug 2026 18:30:03 +0000
Received: by mail-vs1-xe2a.google.com with SMTP id ada2fe7eead31-758caf52714so23844137.0
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Aug 2026 11:30:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785868201; cv=none;
        d=google.com; s=arc-20260327;
        b=UGc7V6LvCBn+H0o7aNLQJ8M1K+0JSTbZgiC2aLyejMF8nZwHGORPdWzfi3x31LMtWH
         Ec9lrqTiXiyxri4CoercKytoLtEFgQ82u0haHJrnU4tEQLrvS8pSOAXi6XllXuRz9Ot8
         anYCFMdd7XddDBWYRWWr1yXqz4DjSHf9y8K+qGRi2g8p645dNRGeFwXp1kced15v4Div
         JPJGHCBGUkLVZzexyCjp7jCpeZGF5MTs4DbujnkC7cuBBfsEWU2Cm1LWJbIDK9czCaLi
         1T3rBGAInP8udz57RnHjmYTlkdwT+6CNi2ELbI+6pGvD48VtHwUDARs5OPao1bPcLJ3S
         2jOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6Eo5XMI33rsANiXMc677tWslAYQ4Uqg6+HGv1+1GEcY=;
        fh=52NkoNrErVXQxPgIIlI8irEs5xXiAWAorY/3+CQiLOU=;
        b=holXHPEdmwbxWotUsLpK/bAPlCbX9K7wq5jrM9WYXo8nh+IV35Av2z5nfD+JbDDh83
         930QFLxRBR6Cn5w71bPytV9r2P75pSgIKDKJ5OZVwabmdXRpA54FKx7OS8XwW+FJSFf3
         ZpQ/dfWmQKUoHSzMGElg2B7+f13gVaGhVALRs8kR5bbGVWNa1t0KzWoM9xjFgp5hbxg6
         HdQ0dChbQFbtIxgTz4Bt5Pwq5MJKoCWuTdNBR/iUq3/7QiykHm/F8nKp26HgvKrzwUP1
         ffnwSm9Bl2S9EfeonIKZtVC/LgCVP4fwCM9DhtUVzKhmTY1IvJ9kvdKiGx4tHUhNAPxq
         T+Kw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785868201; x=1786473001; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=6Eo5XMI33rsANiXMc677tWslAYQ4Uqg6+HGv1+1GEcY=;
        b=Anq/5ZATWIE7jhOzdawYzmfTImPIFuRDw3tzgDcLXztPYgXgPYv2Kvgj17uWEX2IlO
         hlNN5UnFJO9V5ETPd7dsYaKVNItWJXniu90eas2puHako1PTPqWXtjHxy9UTlm+y+2CQ
         lV81K3yHW2A6P3rI3RgJmnN2/wSiNZXICgiO6DqymWexs+74tE0E4n5ih6bqKVd8H8WX
         HF7jSs1mljskKisC4ytR02qC1DEG7NR+fwWZEHTdNXV9p7/d1fO1plwTFkYWzeJPLtR0
         wVRXTd+/r7OTyCuw5odGUIxCFfniVUUfyefHnTdhVK9SojXq7gPk29D55sryCOVJ1yRP
         9OzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785868201; x=1786473001;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6Eo5XMI33rsANiXMc677tWslAYQ4Uqg6+HGv1+1GEcY=;
        b=Gq8MaBZP5zZ0ZWsuotq1O91ZPp4Fwc9iy6tV7S/K6uz7IcbsLWVptlX0QylzV49It+
         xf2ocJyBdrftTD/87iK3QbxEmeaUzo9Icla7c2/mPnzAmofp1rhez4mxtm1KFk8sTeKU
         l8dsSAaxbFcTt2KbeF49vY/X++LldS2mzYcma+piXj2xreP8NC0Bhb8eBvJ/5K8fODmU
         H3mT+0bsn7l4yq6uDmWUWUpBLC0jTylKaMFOwMClgmBcBly3qWlyyifgHjghsfLYPEy9
         wDMld/RDO8w8MV2RGCbQENQrkO6zV28W5RYEIr+zXwZnfM6g095ltqGwfTMD34HyCPP9
         eemQ==
X-Forwarded-Encrypted: i=1; AHgh+RqhDaxGGmLLq+iSL2c7vGVghOpVPI4H8K5MVpkFSE00F6CMnBL3+EpaOnwoyfUd1cFtwXsaajh6q/ba3E+a+A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6dHia5Mhf5Rw9bxCIXxOZnQLFmRA15dHjTAsNu8o7FDAGbaFx
	T4P4V6ulpwRpd0z1Yr1fRFz/Pmaz2G55gOPkaQEErXWfH2b340QzZiwAcv8UV4OIbYJLKRgCVVJ
	2BXT1uVAnHHTQct2FmKYemykK9d3PZS8=
X-Gm-Gg: AR+sD12m1sIaK3mXu1kArUFA6w8kxNFsVmpvGn4aXaF0FkVHSlozy/87kbrf232Lq/j
	EDYYSeIbJv+cVS4G+FK3t1GOIZrSpcEKvWE4TC9Jq38mYOy9364bMiIB//yy3wsRWwkp8d0EwZy
	xW/c0mjq/cv8mNUA7H7ay+ieaEyFHqJefi8eD4nJNXRphd3RiVP867HhAyazX341ICbCuz4aSNI
	MkZeyps1KkOqrwS2i2IRBOGmRLqOrgh0g6opiVizbV6+oqUBuMM1LgrR5L9Z7vJc6zvoBhSzlY3
	tLMOcniCboeojh1fVSLTHDHzApRx/2PbyrQhqinQ1B8/90UpJ3qexfexQAf54f31oXy6FmHAVHx
	sWHQrkDZYK/wy36uUYYzj5PaoWdYcmtMDFX+AD6Q4OO8W2o2GyOj/iilxq/G4ng5kyGgCo04B0s
	97U5RkQHDp0rG3NvcEZd0ereh5MAiK6JzciiDu
X-Received: by 2002:a05:6102:6892:b0:740:2974:1b19 with SMTP id
 ada2fe7eead31-760e81ffa54mr232158137.4.1785868200546; Tue, 04 Aug 2026
 11:30:00 -0700 (PDT)
MIME-Version: 1.0
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
 <20260802-submit-acx00-of-dynamic-v1-v1-10-0a53cd9e21cc@gmail.com>
 <05b1e6a2-725e-4b8e-8629-249637bbcb81@lunn.ch> <CADvTj4o0JdjoO+FC4pO=qnjEQ8MRyzQdKp2Hxy9NsPU-gym5OQ@mail.gmail.com>
 <9b8be475-1fde-409c-a82e-be4b2e402650@lunn.ch> <CADvTj4pBovti19MXgQjFpxm=7aRm0sYQz9jxfo8bu3txH94THQ@mail.gmail.com>
 <a9ce53dd-0873-41c0-ad6a-fb42e6cc7aaa@lunn.ch> <CADvTj4qpHU3F0DrEmc0vFi+JiwTNERniiMHKo1LmBd8sg58wJA@mail.gmail.com>
 <205e9051-8e43-44bb-a4b5-4ec69a192fa3@lunn.ch> <CADvTj4qmXWbDsc-vigcSrF1N=zpxmZWGp3YaZ9PFcWK551h3mg@mail.gmail.com>
 <fb6f8065-a655-4d53-acfb-8171b2e003dc@lunn.ch>
In-Reply-To: <fb6f8065-a655-4d53-acfb-8171b2e003dc@lunn.ch>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Tue, 4 Aug 2026 12:29:48 -0600
X-Gm-Features: AUfX_myhAv4fr3OX-v7_1toN9rBz9cnAh8mnRXYrH0R-kOg3uw2jZVSUuGWjruc
Message-ID: <CADvTj4pdZN4Jmx0D4Yh0KDPkh_-zJ5iXCM=vUybGn0aFAAqAgg@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20260804_113002_089179_DD8D574D 
X-CRM114-Status: GOOD (  30.86  )
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

T24gVHVlLCBBdWcgNCwgMjAyNiBhdCAxMjowNOKAr1BNIEFuZHJldyBMdW5uIDxhbmRyZXdAbHVu
bi5jaD4gd3JvdGU6Cj4KPiA+ID4gTm8gdGhleSBkb24ndC4gVGhlcmUgYXJlIGV4dHJhIHJlZ2lz
dGVycyBpbiBkaWZmZXJlbnQgYWRkcmVzcyBkb21haW5zLgo+ID4KPiA+IFRoZSBibG9jayBkaWFn
cmFtcyBtYWtlIHRoZSBkaXN0aW5jdGlvbiBjbGVhcmVyLiBCb3RoIGRpYWdyYW1zIGRlcGljdAo+
ID4gYW4gRVBIWSBibG9jayB3aXRoIHRoZSBzYW1lIGludGVybmFsIG9yZ2FuaXphdGlvbjogTUlJ
L1JNSUksIGF1dG8KPiA+IG5lZ290aWF0aW9uLCBhdXRvLU1ESVgsIDEwLzEwMCBUWCBhbmQgUlgg
UENTL1BNQSBibG9ja3MsIExFRCBsb2dpYywKPiA+IGNsb2NrL3Jlc2V0LCBQTEwgYW5kIEVQSFkg
QUZFLgo+Cj4gVGhlIGJsb2NrIGRpYWdyYW0gaXMgYSB2ZW5kb3IgZGlhZ3JhbSwgdGhlIHZlbmRv
ciBjYW4gZHJhdyB3aGF0ZXZlcgo+IGRpYWdyYW0gdGhleSB3YW50LiBXaGF0IGRvZXMgdGhlIE1h
aW5saW5lIExpbnV4IG5ldHdvcmtpbmcgYmxvY2sKPiBkaWFncmFtIGxvb2sgbGlrZT8KCkkgYWdy
ZWUgdGhhdCBhIHZlbmRvciBibG9jayBkaWFncmFtIGlzIG5vdCBub3JtYXRpdmUgZm9yIHRoZSBM
aW51eApkZXZpY2UgbW9kZWwuIEkgY2l0ZWQgaXQgYXMgY29ycm9ib3JhdGluZyBldmlkZW5jZSwg
bm90IGFzIHRoZSBzb2xlCmJhc2lzIGZvciB0aGUgZGVzaWduLgoKVGhlIHN0cm9uZ2VyIGV2aWRl
bmNlIGlzIHRoZSBvYnNlcnZhYmxlIGludGVyZmFjZTogYWZ0ZXIgdGhlIHJlcXVpcmVkCmNvbnRy
b2wgc2VxdWVuY2UsIGJvdGggbGluayBlbmRwb2ludHMgcmVwb3J0IFBIWSBJRCAweDAwNDQxNDAw
IGFuZApwcm92aWRlIHRoZSBzYW1lIGxpbmstc2lkZSBwYWdlZCByZWdpc3RlcnMgYW5kIGJlaGF2
aW9yLiBUaGUgYWRkaXRpb25hbApyZWdpc3RlcnMgYXJlIG5vdCBleHRyYSByZWdpc3RlcnMgYXQg
dGhhdCBDbGF1c2UgMjIgZW5kcG9pbnQuIEFDMjAwCmV4cG9zZXMgdGhlIGNvcnJlc3BvbmRpbmcg
cGFja2FnZSBjb250cm9scyB0aHJvdWdoIGl0cyBNRkQgcmVnbWFwLAp3aGVyZWFzIEFDMzAwIGV4
cG9zZXMgdGhlbSB0aHJvdWdoIGEgc2VwYXJhdGVseSBhZGRyZXNzZWQgbm9uLVBIWSBNRElPCmRl
dmljZS4KClRoZSBMaW51eCBkZXZpY2UgbW9kZWwgZm9sbG93cyB0aG9zZSBhZGRyZXNzYWJsZSBk
ZXZpY2VzIGFuZCB0aGVpcgpkZXBlbmRlbmNpZXMgcmF0aGVyIHRoYW4gdHJlYXRpbmcgYSBwaHlz
aWNhbCBwYWNrYWdlIGFzIG9uZSBpbmRpdmlzaWJsZQpkcml2ZXIuIEkgdGhpbmsgdGhlIHJlbGV2
YW50IExpbnV4IGRpYWdyYW0gaXM6CgogICAgICAgICAgICAgICAgICAgICAgICAgTUFDIC8gcGh5
bGluawogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCBNRElPCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2CiAgICAg
ICAgICAgICAgICAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwogICAgICAgICAgICAgICAg
ICAgIHwgbGluayBwaHlfZGV2aWNlICAgICAgIHwKICAgICAgICAgICAgICAgICAgICB8IGNvbW1v
biBBQ3gwMCBQSFkgICAgICB8CiAgICAgICAgICAgICAgICAgICAgfCBkcml2ZXIgICAgICAgICAg
ICAgICAgfAogICAgICAgICAgICAgICAgICAgICstLS0tLS0tLS0tLSstLS0tLS0tLS0tLSsKICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8CiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCByZXF1aXJlZCBjb250cm9sIHByb3ZpZGVyCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfAogICAgICAgICAgICAgICAgICAgICAgICAgb25lIG9mOgogICAgICAgICAgICAg
ICAgICAgICstLS0tLS0tLS0tLSstLS0tLS0tLS0tLSsKICAgICAgICAgICAgICAgICAgICB8ICAg
ICAgICAgICAgICAgICAgICAgICB8CiAgICAgICAgICArLS0tLS0tLS0tdi0tLS0tLS0tLS0rICAr
LS0tLS0tLS0tdi0tLS0tLS0tLS0rCiAgICAgICAgICB8IEFDMjAwIE1GRCBjaGlsZCAgICB8ICB8
IEFDMzAwIG1kaW9fZGV2aWNlIHwKICAgICAgICAgIHwgVFdJL1JTQiByZWdtYXAgICAgIHwgIHwg
Y29udHJvbCBhZGRyZXNzICAgfAogICAgICAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tKyAgKy0t
LS0tLS0tLS0tLS0tLS0tLS0tKwoKRm9yIEFDMjAwLCB0aGUgc3Vycm91bmRpbmcgTUZEIHRvcG9s
b2d5IGlzIGFkZGl0aW9uYWxseToKCiAgICAgICAgICAgICAgICAgICAgKy0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0rCiAgICAgICAgICBUV0kvUlNCIC0+fCBBQzIwMCBNRkQgY29yZSAgICAgICB8CiAg
ICAgICAgICAgICAgICAgICAgKy0tLS0tLS0tLS0rLS0tLS0tLS0tLS0rCiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8CiAgICAgICAgICAgICAgICAgKy0tLS0tLS0tLS0tLS0rLS0tLS0t
LS0tLS0tLSstLS0tLS0tLS0tKwogICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgfCAgICAg
ICAgICAgICB8ICAgICAgICAgIHwKICAgICAgICAgICAgICBFUEhZIGN0bCAgICAgICBhdWRpbyAg
ICAgICAgICBSVEMgICAgICAgIFRWRQoKT25seSB0aGUgc2VsZWN0ZWQgRVBIWSBjb250cm9sIHBy
b3ZpZGVyIGlzIGNvbm5lY3RlZCB0byB0aGUgbGluawpwaHlfZGV2aWNlLiBXaXRoIGEgZml4ZWQg
QUMyMDAgb3IgQUMzMDAgZGVzY3JpcHRpb24sIHRoYXQgdG9wb2xvZ3kgaXMKZW50aXJlbHkgc3Rh
dGljIGFuZCBkb2VzIG5vdCByZXF1aXJlIENPTkZJR19PRl9EWU5BTUlDLgoKVGhlIGNvbW1vbiBQ
SFkgZHJpdmVyIGFscmVhZHkgZHJpdmVzIHRoZSBQSFkgaW4gdGhlIHBoeWxpYiBzZW5zZTogaXQK
b3ducyB0aGUgbGluay1zaWRlIHJlc2V0IGFuZCBpbml0aWFsaXphdGlvbiwgYXV0by1uZWdvdGlh
dGlvbiwgbGluawpzdGF0dXMsIE1ESS9NREktWCwgYW5hbG9nIHR1bmluZywgaW50ZXJydXB0cywg
c3RhdGlzdGljcywgRUVFLCBMRURzLApXYWtlLW9uLUxBTiBhbmQgc3VzcGVuZC9yZXN1bWUgYmVo
YXZpb3IuIFRoZSBwcm92aWRlciBvd25zIG9ubHkgdGhlCnBhY2thZ2Utc3BlY2lmaWMgb3BlcmF0
aW9uIG5lZWRlZCB0byBtYWtlIHRoYXQgTURJTyBlbmRwb2ludCB1c2FibGUKdGhyb3VnaCB0aGUg
YnVzIHdoaWNoIGFjdHVhbGx5IGV4cG9zZXMgdGhlIHJlbGV2YW50IHJlZ2lzdGVycy4KClRoaXMg
aXMgc2ltaWxhciB0byBvdGhlciBwbGFjZXMgaW4gbWFpbmxpbmUgd2hlcmUgRVBIWSBjbG9ja3Ms
IHJlc2V0cywKcG93ZXIgYW5kIGFkZHJlc3Mgc2VsZWN0aW9uIGFyZSBvdXRzaWRlIHRoZSBsaW5r
LVBIWSBkcml2ZXIsIGluY2x1ZGluZwpkd21hYy1zdW44aSBhbmQgZHdtYWMtcmsuIEl0IGlzIGFs
c28gY29uc2lzdGVudCB3aXRoIHRoZSBnZW5lcmFsIE1GRAptb2RlbCwgd2hlcmUgYSBmdW5jdGlv
biBkcml2ZXIgYWNjZXNzZXMgaXRzIHBvcnRpb24gb2YgYSBwYXJlbnQgcmVnbWFwCndpdGhvdXQg
dGFraW5nIG93bmVyc2hpcCBvZiB0aGUgZW50aXJlIG11bHRpZnVuY3Rpb24gZGV2aWNlLgoKQ09O
RklHX09GX0RZTkFNSUMgaXMgbm90IHdoYXQgbW90aXZhdGVzIHRoaXMgc3BsaXQuIEl0IGlzIG9u
bHkgYW4Kb3B0aW9uYWwgd2F5IHRvIHNlbGVjdCB3aGljaCBvZiB0aGUgdHdvIHByb3ZpZGVyIGRl
dmljZXMgZXhpc3RzIG9uIGEKZHVhbC1zb3VyY2Ugc3lzdGVtLiBJZiBydW50aW1lIHNlbGVjdGlv
biB3ZXJlIHJlbW92ZWQgYW5kIHRoZQpib290bG9hZGVyIGFsd2F5cyBzZWxlY3RlZCB0aGUgcGFj
a2FnZSwgdGhlIExpbnV4IGRpYWdyYW0gYWJvdmUgd291bGQKcmVtYWluIHRoZSBzYW1lLgoKPiBP
LksuIEkndmUgc29tZXdoYXQgaGFkIGVub3VnaCBvZiB0aGlzIGRpc2N1c3Npb24uCj4KPiBGb3Ig
dGhlIE5ldHdvcmtpbmcgcGFydHM6IE5BQ0sKPgo+IFRvIGdldCB0aGF0IHJldm9rZWQsIG1ha2Ug
dGhlIFBIWSBkcml2ZXIgZHJpdmUgdGhlIFBIWS4KCkkgYW0gbm90IGNsZWFyIHdoaWNoIGNvbmNy
ZXRlIG93bmVyc2hpcCBwcm9ibGVtIGluIHRoZSBkaWFncmFtIGFib3ZlCmlzIHJlc29sdmVkIGJ5
IG1vdmluZyB0aGUgcHJvdmlkZXIgaW1wbGVtZW50YXRpb25zIGludG8gdGhlIGxpbmstUEhZCmRy
aXZlci4KClRoZSBsaW5rLVBIWSBkcml2ZXIgYWxyZWFkeSBkcml2ZXMgYWxsIGNvbW1vbiBsaW5r
LVBIWSBmdW5jdGlvbmFsaXR5LgpNYWtpbmcgaXQgZGlyZWN0bHkgYWNjZXNzIHRoZSBvdGhlciBj
b250cm9sIGRldmljZXMgd291bGQgaW5zdGVhZCBtYWtlCm9uZSBkcml2ZXIgYm91bmQgdG8gb25l
IE1ESU8gYWRkcmVzcyBhbHNvIG9wZXJhdGU6CgotIGFuIEFDMjAwIE1GRCBjaGlsZCBhbmQgaXRz
IHBhcmVudCByZWdtYXAgb24gZml4ZWQgQUMyMDAgc3lzdGVtczsgb3IKLSBhbm90aGVyIG1kaW9f
ZGV2aWNlIGF0IGEgZGlmZmVyZW50IGFkZHJlc3Mgb24gZml4ZWQgQUMzMDAgc3lzdGVtcy4KClRo
YXQgZG9lcyBub3QgcmVtb3ZlIGVpdGhlciBkZXZpY2UuIEl0IGJ5cGFzc2VzIHRoZWlyIG5vcm1h
bCBidXMKb3duZXJzaGlwIGFuZCBjb21iaW5lcyBkaWZmZXJlbnQgZGV2aWNlIGxpZmV0aW1lcyBp
bnNpZGUgdGhlIGRyaXZlcgpib3VuZCB0byB0aGUgbGluayBlbmRwb2ludC4KCkl0IGlzIGVzcGVj
aWFsbHkgcHJvYmxlbWF0aWMgZm9yIEFDMjAwIGJlY2F1c2UgdGhlIEFDMjAwIGlzIGFuIE1GRCwg
bm90CmFuIEV0aGVybmV0IFBIWS4gSXRzIHBhcmVudCBjbG9jaywgc3VwcGxpZXMsIGludGVycnVw
dCBjb250cm9sbGVyLApyZWdtYXAgYW5kIGdsb2JhbCBzdGF0ZSBjYW4gYmUgc2hhcmVkIGJ5IGF1
ZGlvLCBSVEMgYW5kIFRWRSBjaGlsZHJlbi4KVGhlIGxpbmstUEhZIGRyaXZlciBzaG91bGQgbm90
IGFzc3VtZSBvd25lcnNoaXAgb2YgdGhhdCBwYXJlbnQgb3IKcGVyZm9ybSBvcGVyYXRpb25zIHdo
aWNoIG1heSBhZmZlY3QgaXRzIHNpYmxpbmcgZnVuY3Rpb25zLgoKSWYgdGhlIG9iamVjdGlvbiBp
cyBzcGVjaWZpY2FsbHkgdG8gdGhlIHByaXZhdGUgcHJvdmlkZXIgaW50ZXJmYWNlLCBJCmFtIG9w
ZW4gdG8gZGlzY3Vzc2luZyB3aGV0aGVyIHNvbWUgb3BlcmF0aW9ucyBjYW4gaW5zdGVhZCB1c2Ug
ZXhpc3RpbmcKY2xvY2ssIHJlc2V0LCBwb3dlci1zZXF1ZW5jaW5nIG9yIGdlbmVyaWMtUEhZIGFi
c3RyYWN0aW9ucy4gVGhhdCB3b3VsZApzdGlsbCBsZWF2ZSB0aGUgQUMyMDAgTUZEIGNoaWxkIGFu
ZCBBQzMwMCBNRElPIGNvbnRyb2wgZGV2aWNlIGFzCnNlcGFyYXRlbHkgb3duZWQgZGV2aWNlcywg
aG93ZXZlci4KCkxpa2V3aXNlLCBpZiB0aGUgb2JqZWN0aW9uIGlzIHNwZWNpZmljYWxseSB0byB0
aGUgTURJTyBPRl9EWU5BTUlDCmNoYW5nZXMsIHRob3NlIGNhbiBiZSByZXZpZXdlZCBvciBuYXJy
b3dlZCBpbmRlcGVuZGVudGx5LiBSZWplY3RpbmcKcnVudGltZSBEVCBzZWxlY3Rpb24gd291bGQg
bWVhbiB0aGF0IGZpcm13YXJlIG11c3QgcmVzb2x2ZSBkdWFsLXNvdXJjZQpzeXN0ZW1zLiBJdCB3
b3VsZCBub3QgcmVtb3ZlIHRoZSBqdXN0aWZpY2F0aW9uIGZvciBzZXBhcmF0ZSBBQzIwMCBhbmQK
QUMzMDAgY29udHJvbCBkcml2ZXJzIG9uIGZpeGVkIHN5c3RlbXMgb3IganVzdGlmeSBkdXBsaWNh
dGluZyB0aGVpcgpjb21tb24gbGluay1QSFkgaW1wbGVtZW50YXRpb24uCgo+IEhpZGUgYXdheSBh
cyBtdWNoIG9mIHRoaXMgYmFkIG5ldHdvcmtpbmcgZGVzaWduIGluIHRoZSBib290bG9hZGVyLgoK
VGhlIGJvb3Rsb2FkZXIgY2FuIGlkZW50aWZ5IHRoZSBwYWNrYWdlLCBwZXJmb3JtIHRoZSBpbml0
aWFsIHBvd2VyLXVwCnNlcXVlbmNlIGFuZCBlbmFibGUgdGhlIHNlbGVjdGVkIHByb3ZpZGVyIG5v
ZGUuIFRoYXQgaXMgZnVsbHkgY29tcGF0aWJsZQp3aXRoIHRoaXMgbW9kZWwsIGJ1dCBpdCBjYW5u
b3QgcmVwbGFjZSB0aGUgTGludXggY29udHJvbCBwYXRoLgoKTGludXggc3RpbGwgbmVlZHMgdG8g
cmVhcHBseSB0aGUgcGFja2FnZSBjb25maWd1cmF0aW9uIGFmdGVyIFBIWSByZXNldCwKc3lzdGVt
IHN1c3BlbmQsIHByb3ZpZGVyIHBvd2VyIGxvc3Mgb3IgZHJpdmVyIHJlcHJvYmUuIEl0IGFsc28g
bmVlZHMgdG8KY29vcmRpbmF0ZSBXYWtlLW9uLUxBTiwgaW50ZXJydXB0cywgTEVEcyBhbmQgcG93
ZXIgbWFuYWdlbWVudCB3aXRoIHRoZQpzZWxlY3RlZCBjb250cm9sIGRldmljZS4gUmVseWluZyBv
biB1bmRvY3VtZW50ZWQgYm9vdGxvYWRlciBzdGF0ZSBmb3IKdGhvc2Ugb3BlcmF0aW9ucyB3b3Vs
ZCBtYWtlIHRoZSBkcml2ZXIgbGVzcyBzZWxmLWNvbnRhaW5lZCBhbmQgbW9yZQpmcmFnaWxlLgoK
RXZlbiB3aGVuIHRoZSBib290bG9hZGVyIHJlc29sdmVzIHRoZSB2YXJpYW50LCBMaW51eCBzdGls
bCBzZWVzIGVpdGhlcgphbiBBQzIwMCBNRkQgY29udHJvbCBmdW5jdGlvbiBvciBhbiBBQzMwMCBN
RElPIGNvbnRyb2wgZW5kcG9pbnQgcGx1cyB0aGUKY29tbW9uIGxpbmsgUEhZLiBUaGUgYm9vdGxv
YWRlciBjYW4gc2VsZWN0IHRoZSBsZWZ0IG9yIHJpZ2h0IGJyYW5jaCBpbgp0aGUgZGlhZ3JhbTsg
aXQgY2Fubm90IG1ha2UgdGhvc2UgZGV2aWNlcyBiZWNvbWUgcmVnaXN0ZXJzIG9mIHRoZSBsaW5r
CnBoeV9kZXZpY2UuCgpBZ2FpbiwgdGhpcyByZW1haW5zIHRydWUgd2l0aCBDT05GSUdfT0ZfRFlO
QU1JQyBkaXNhYmxlZC4gRHluYW1pYyBPRgpoYW5kbGluZyBvbmx5IGFsbG93cyBMaW51eCB0byBt
YWtlIHRoZSBzYW1lIGRldGVybWluaXN0aWMgc2VsZWN0aW9uCmZyb20gU0lEIHdoZW4gZmlybXdh
cmUgaGFzIG5vdCBhbHJlYWR5IGRvbmUgc28uCgo+IFlvdSBhcmUgZnJlZSB0byBjb250aW51ZSB3
b3JraW5nIG9uIHRoZSBNRkQgYW5kIG90aGVyIHBhcnRzIHdoaWNoIGFyZQo+IG5vdCBuZXR3b3Jr
aW5nLCBiZWNhdXNlIGknbSBub3QgYSBNYWludGFpbmVyIHRoZXJlLgoKSSBjYW4gc2VwYXJhdGUg
dGhlIE1GRCwgZml4ZWQgQUMyMDAgbmV0d29ya2luZywgZml4ZWQgQUMzMDAgbmV0d29ya2luZwph
bmQgb3B0aW9uYWwgcnVudGltZS1zZWxlY3Rpb24gd29yayBzbyB0aGF0IGVhY2ggcGFydCBjYW4g
YmUgcmV2aWV3ZWQKb24gaXRzIG93biBtZXJpdHMuCgpIb3dldmVyLCB0aGUgTUZEIGFuZCBuZXR3
b3JraW5nIHBvcnRpb25zIG5lY2Vzc2FyaWx5IG1lZXQgYXQgdGhlIEFDMjAwCkVQSFkgZnVuY3Rp
b24uIEkgZG8gbm90IHRoaW5rIHRoZSBjb3JyZWN0IHdheSB0byBhdm9pZCB0aGF0CmNyb3NzLXN1
YnN5c3RlbSBkZXBlbmRlbmN5IGlzIHRvIG1ha2UgYSBkcml2ZXIgYm91bmQgdG8gYW4gTURJTwpw
aHlfZGV2aWNlIHRha2Ugb3duZXJzaGlwIG9mIHJlZ2lzdGVycyBhbmQgcmVzb3VyY2VzIGJlbG9u
Z2luZyB0byBhbgpNRkQgZGV2aWNlLgoKSSB3b3VsZCB0aGVyZWZvcmUgbGlrZSBjbGFyaWZpY2F0
aW9uIG9uIHdoZXRoZXIgdGhlIE5BQ0sgaXMgYWdhaW5zdDoKCi0gdGhlIGNvbW1vbiBsaW5rLVBI
WSBpbXBsZW1lbnRhdGlvbjsKLSB0aGUgZXhpc3RlbmNlIG9mIHNlcGFyYXRlbHkgYm91bmQgY29u
dHJvbCBkZXZpY2VzOwotIHRoZSBwcml2YXRlIGludGVyZmFjZSBiZXR3ZWVuIHRoZSBQSFkgYW5k
IHRob3NlIGRldmljZXM7IG9yCi0gb25seSB0aGUgb3B0aW9uYWwgQ09ORklHX09GX0RZTkFNSUMg
c2VsZWN0aW9uIG1lY2hhbmlzbS4KClRob3NlIGFyZSBpbmRlcGVuZGVudCBkZXNpZ24gY2hvaWNl
cy4gSW4gcGFydGljdWxhciwgcmVtb3ZpbmcKQ09ORklHX09GX0RZTkFNSUMgZG9lcyBub3QgY29s
bGFwc2UgdGhlIGZpeGVkIEFDMjAwIE1GRCBjaGlsZCBvciBmaXhlZApBQzMwMCBNRElPIGNvbnRy
b2wgZW5kcG9pbnQgaW50byB0aGUgbGluayBwaHlfZGV2aWNlLgoKPiAgICAgQW5kcmV3CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
