Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61913C55184
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Aug 2026 04:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zIkRpEr1ooB1DUxquWtA4vmXbAFKqoTNhlPDeluk5hE=; b=I64msHXcOmrxBp
	iPo/E3owL/1h+X69y1D7hKmkcM6REGL4ChqJmy6Yx7cMRr6fWdBL0JwKXa8ud2lMo3uVEjnHIgLVZ
	D2F7d2E/CCxkbAgNQ1P/0hKVg0+UfqivDiAAYGMnpgqFrNI3h7cOU7asin7orER/94gOmdGmXLPph
	cwSOzyIrOd0i5Lp8/GU2EXAHln39Cix757RFPcBFaP5p1ojFFp9u5EKPdN7bbTwtZQCmwU6eT7JNQ
	cv0gzcRzL97r/BbNY+zOFnNEbhJCtLP7wHJiPrXyzGEjXf1F3CrT4/w1eXR5JAuWtmwy8+OpIPw13
	2OhPv8gncRC4LcTu/7Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr6uk-00000000zoi-2IoT;
	Tue, 04 Aug 2026 04:38:06 +0000
Received: from mail-vs1-xe32.google.com ([2607:f8b0:4864:20::e32])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr6uh-00000000znx-2rEV
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Aug 2026 04:38:05 +0000
Received: by mail-vs1-xe32.google.com with SMTP id ada2fe7eead31-747355a8565so979694137.3
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Aug 2026 21:38:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785818282; cv=none;
        d=google.com; s=arc-20260327;
        b=KDEhBTbUCif6FZZKObraolbCNS+ZYBJJrDdQa5vLA59Q+yLfu78TxXDXPrGl5SZFIM
         A3ev/0AkQwns5hOUs0lhEhkOL4wSe/t+sEi14ti4MNFKKk49jkK3BBkCF2IR5I+85+hg
         UpbOQzHzxG9kb4LTvj2pOsRrI3H1LML/YgQBziLs5EyU8on4BqeTjvt0KUXy6RnJJmqX
         fVFL40gBz9KlLnmHgfXiDGbEoaEk0KB5pskatStewcw1WPAswfxxDVHhNJgHM7D7HlxX
         62O/GIEQz7VkZZCoZXoxtuc8p0fEs+oNHG5U37ueX4QeUluTyopB9T7cJnLDlBnYbica
         xkMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KCujiFsubPppZdIzZBFgzB0FHL+kaNCYcrxKl9k6kYk=;
        fh=JEDj4BSdMSM2mX1T1mevAuolwIujVTUnQLQHTZiRcAI=;
        b=pHpQ2Z9FecyTM0e32i/mHG1qR5CERfvd1FOY04lV0i35OoNF13VCdp+A2dcWF+gAO5
         IfUHpz1tCnZmcYGSc0DcrJzPZCo4e0EOhnV6XMJQqPnwSyXJgplh0DEt5FyIqmUgKyPf
         dlCDU8+lsIqVL7d1yPegsCHITVb811IoGWjkFbPBkc8FtZQCC9utiZTzH6ttPzfAo5DP
         FbxVLdiW4jYQs5CtcDkXgYW5zXUjH/oYj0mzA/sovj2oqIIhHNAfZbpMRW0EpEbjlSql
         ZE4o0TcL5u9V/dUUCZaSF46S8MjE7AV48sGp4qcyP9SA8arOfNZ57/XO+a145HRgA10E
         5T4A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785818282; x=1786423082; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=KCujiFsubPppZdIzZBFgzB0FHL+kaNCYcrxKl9k6kYk=;
        b=RU0uQx3L3fSegyVk4+7w6tQboaCD7RdwzHHJgP3o7zOQXYvUvevL1f08AikhUt1Dw9
         sT5qnWZbSM/WhwI6yrWvchLwK/lzWe9AKm3vdRXBGy13GCKSDTsdruC0p3Lk6eXEKcZy
         TZOaa+1xoHoLdx2Zd/o1urMRfx+x0zFEhQ2+WbtkKwvUEvZflsVDIsFDWLDFfjajO7UX
         DCVaIK5ZgV7Hrb8JE7qE9C76h+GXaSdD96WKXEgr0c+pfJTfBZH9FAgVyvWM2/CJ0B8p
         QaZ9YCYAFTLcXxFwK/Kk8e6vv2MJL7B2v4iWGtiSFLE47tvMHcPJ+k8UlkJQiXLGEs8p
         oLSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785818282; x=1786423082;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KCujiFsubPppZdIzZBFgzB0FHL+kaNCYcrxKl9k6kYk=;
        b=OU8sO3i8x3Frcqi34whOuxMexFIqFRiMHiS7KFZ83+JhVPjkX5fee6F+6swywF+RTx
         RyNsdUuQBy86BOksxvSu+G7ysEOzin8h6Y9kMOpd/OmlP3cZjew9AqXwy2YPz5JJZ0Y2
         X7VUYTVNXxGfHToeN0R98IICEYo2V03UKFh8Cena/BPHgf2kwt7mY9wONDap66t6WBDH
         aUSbmowjQ3Uddk+k0DAZhy2SLHdYiNmM1hGErTMLwgHHkUPBbF6abTAjEAaacXBw1RoG
         +CQFFOvQH+ZNmwcetYKwIqacxm7eiKZi4b2SUDmmzYm/Ljt+4dLmocmSBFk5/v1tnXep
         ysTg==
X-Forwarded-Encrypted: i=1; AHgh+RrSFEGvoNcPJe6iIuVMGw61RHnmbH0Ewmrt4kjrgSZFR2xpc1J665W6ScSdkCHs0whcYlCBmc3vSZ+ME/Wp0A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzMY0zt3tt1qlt1pFuuSjURTsSh1ST8t5ogTXE5U4xEQpgttDLc
	jF8FE45bdWuJCXsIIHtkeekoeF111isiJF/NCg+mGccRIhjhNaYNXgKf9PiTmLLEo5r89fGapo6
	uWP8hedSXkDvS4sfVqT8bFvmFj7btF+U=
X-Gm-Gg: AR+sD10koOCw5+nT0z5m2W/Yk9e1ePJTkJOjsZYM9me1lXz0YgP8BaYSUZtNZBvzdi9
	5RviGnhhmZqNatnSwh5DLs91wvIPdUZ4ZIra7hqTJI010ii4l3ebJeMnPBbWkOOTzAYSRB3bY+F
	aTXJSrNYmSGKylm0oxE3jB51U9wmp9E/LPZLGCDe+1AvdnhMgkm+I9O9+H+U+/DA0PtLsACInsR
	8iRzRqj0Ui+wDi5+H405SZQiZxzahOyqjTdVk+eKx3cEmuW1YbZpz9MjJPp237m28q0RoLK5kZX
	wnzjS42oQySNs8088CmOth/LhVVRnCZ1jK378Jw6uImUIi/sg0dWHPQ3WmRQcasMJRl7tqZFsRy
	zdipaz1bWuc71VUFmpVOix2lLoiAgaqmUPurKAmcVJWdAauJBgAQ6PUJ+V9j/rqQvLeooDFuzGa
	Z8/0D+tzDMEnegFtFbZfb1DCndjXcpZOwGShYuOH94m2PUSumd
X-Received: by 2002:a05:6102:1492:b0:745:78d4:4856 with SMTP id
 ada2fe7eead31-75b2226b36dmr8916982137.7.1785818282020; Mon, 03 Aug 2026
 21:38:02 -0700 (PDT)
MIME-Version: 1.0
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
 <20260802-submit-acx00-of-dynamic-v1-v1-10-0a53cd9e21cc@gmail.com>
 <05b1e6a2-725e-4b8e-8629-249637bbcb81@lunn.ch> <CADvTj4o0JdjoO+FC4pO=qnjEQ8MRyzQdKp2Hxy9NsPU-gym5OQ@mail.gmail.com>
 <9b8be475-1fde-409c-a82e-be4b2e402650@lunn.ch> <CADvTj4pBovti19MXgQjFpxm=7aRm0sYQz9jxfo8bu3txH94THQ@mail.gmail.com>
 <a9ce53dd-0873-41c0-ad6a-fb42e6cc7aaa@lunn.ch>
In-Reply-To: <a9ce53dd-0873-41c0-ad6a-fb42e6cc7aaa@lunn.ch>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Mon, 3 Aug 2026 22:37:51 -0600
X-Gm-Features: AUfX_my4YsBDZd6K0e5M7YLW68aLI1B4Ub2Wc8OS8k7km2q52f4ciX_OEuUghsE
Message-ID: <CADvTj4qpHU3F0DrEmc0vFi+JiwTNERniiMHKo1LmBd8sg58wJA@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20260803_213803_735394_BA6AEB1C 
X-CRM114-Status: GOOD (  29.28  )
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

T24gTW9uLCBBdWcgMywgMjAyNiBhdCA4OjIy4oCvUE0gQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5u
LmNoPiB3cm90ZToKPgo+ID4gPiBTbyB3aGF0IGknbSB0cnlpbmcgdG8gZG8gd2l0aCBib3RoIG9m
IHRoZXNlIGlzIG1ha2UgaXQgbG9vayBtb3JlIGxpa2UKPiA+ID4gc3RhbmRhcmQgTGludXggYnVp
bGRpbmcgYmxvY2tzLgo+ID4gPgo+ID4gPiBJZiB0aGF0IGlzIG5vdCBwb3NzaWJsZSwgaSB3b3Vs
ZCBhY3R1YWxseSBwdXQgYWxsIHRoaXMgY29kZSBpbnRvIHRoZQo+ID4gPiBQSFkgZHJpdmVyLiBZ
b3UgdGhlbiBoYXZlIGEgcmVnbWFwIHByb3BlcnR5IHRvIGdhaW4gYWNjZXNzIHRvIHRoZSBJMkMK
PiA+ID4gcmVnaXN0ZXJzLgo+ID4KPiA+IEkgdW5kZXJzdGFuZCB0aGUgZ29hbCBvZiB1c2luZyBz
dGFuZGFyZCBMaW51eCBidWlsZGluZyBibG9ja3Mgd2hlcmUgdGhleQo+ID4gZml0LCBidXQgSSBk
byBub3QgdGhpbmsgZm9sZGluZyB0aGVzZSBjb250cm9sIHBhdGhzIGludG8gdGhlIGNvbW1vbiBQ
SFkKPiA+IGRyaXZlciBnaXZlcyB0aGUgcmlnaHQgZGV2aWNlIG1vZGVsIGhlcmUuCj4gPgo+ID4g
VGhlIEFDMjAwIGFuZCBBQzMwMCBleHBvc2UgdGhlIHNhbWUgQ2xhdXNlIDIyIFBIWSBpbnRlcmZh
Y2UsIGJ1dCB0aGVpcgo+ID4gY29udHJvbCBmdW5jdGlvbnMgYXJlIHNlcGFyYXRlIGRldmljZXMg
d2l0aCBkaWZmZXJlbnQgdHJhbnNwb3J0cyBhbmQKPiA+IGxpZmV0aW1lcy4gVGhlIEFDMjAwIGNv
bnRyb2wgZnVuY3Rpb24gaXMgYW4gTUZEIGNoaWxkIGFjY2Vzc2VkIHRocm91Z2gKPiA+IHRoZSBw
YXJlbnQgSTJDIHJlZ21hcC4gVGhlIEFDMzAwIGNvbnRyb2wgZnVuY3Rpb24gaXMgYSBzZXBhcmF0
ZWx5Cj4gPiBhZGRyZXNzZWQgbm9uLVBIWSBNRElPIGRldmljZS4gQSByZWdtYXAgcmVmZXJlbmNl
IG9ubHkgZGVzY3JpYmVzIHRoZQo+ID4gQUMyMDAgdHJhbnNwb3J0OyBpdCBkb2VzIG5vdCByZXBy
ZXNlbnQgdGhlIEFDMzAwIGNvbnRyb2wgZGV2aWNlLgo+ID4KPiA+IEZvbGRpbmcgYm90aCBpbXBs
ZW1lbnRhdGlvbnMgaW50byB0aGUgY29tbW9uIFBIWSBkcml2ZXIgd291bGQgbWFrZSB0aGF0Cj4g
PiBkcml2ZXIgbWFuYWdlIEFDMjAwIE1GRCByZWdpc3RlcnMgYW5kIHJlc291cmNlcyBhcyB3ZWxs
IGFzIGFuIEFDMzAwIE1ESU8KPiA+IGNvbnRyb2wgZW5kcG9pbnQuIFRoYXQgd291bGQgbWl4IHRo
ZSBwYWNrYWdlLXNwZWNpZmljIGNvbnRyb2wgdHJhbnNwb3J0cwo+ID4gd2l0aCB0aGUgb3RoZXJ3
aXNlIGNvbW1vbiBDbGF1c2UgMjIgaW1wbGVtZW50YXRpb24uCj4KPiBHaXZlbiBob3cgbWVzc3kg
dGhpcyBoYXJkd2FyZSBpcywgaSBkb3VidCBpdCBpcyBkaXNjb3ZlcmFibGUuIFdlIGhhdmUKPiBi
ZWVuIHB1c2hpbmcgYmFjayBvbiBoYWNrcyB0byBlbmFibGUgdmFyaW91cyB0aGluZ3MgYmVmb3Jl
IHByb2JlIGluCj4gb3JkZXIgdG8gbWFrZSBpdCBkaXNjb3ZlcmFibGUuIFNvIHlvdSBhcmUgZ29p
bmcgdG8gZW5kIHVwIHB1dHRpbmcgSURzCj4gaW4gRFQgc28gdGhhdCB0aGUgZHJpdmVyIHByb2Jl
cyB3aXRob3V0IGl0IGJlaW5nIGRpc2NvdmVyZWQuIFRoYXQKPiBtZWFucyB5b3UgY2FuIHB1dCBh
bnkgSUQgeW91IHdhbnQgaW4gRFQsIGFuZCB0aGUgZHJpdmVyLiBTbyB5b3UgaGF2ZQo+IHR3byBk
aWZmZXJlbnQgcGh5IGRyaXZlciBzdHJ1Y3RzLCB0d28gZGlmZmVyZW50IHByb2JlIGZ1bmN0aW9u
cywgZXRjLgoKSSBhZ3JlZSB0aGF0IHRoZSBsaW5rIFBIWSBjYW5ub3QgYmUgaWRlbnRpZmllZCBi
eSByZWFkaW5nIGl0cwpyZWdpc3RlcnMgYmVmb3JlIHRoZSBwYWNrYWdlIGNvbnRyb2wgc2VxdWVu
Y2UgaGFzIHJ1bi4gSSBkbyBub3QgYWdyZWUKdGhhdCB0aGlzIG1lYW5zIGFuIGFyYml0cmFyeSBJ
RCBzaG91bGQgYmUgcGxhY2VkIGluIERULCB0aG91Z2guCgpUaGUgRXRoZXJuZXQgUEhZIGJpbmRp
bmcgZXhwbGljaXRseSBkZWZpbmVzCmV0aGVybmV0LXBoeS1pZEFBQUEuQkJCQiBhcyB0aGUgY29y
cmVjdCBjb250ZW50cyBvZiB0aGUgUEhZIGlkZW50aWZpZXIKcmVnaXN0ZXJzLiBJdCBhbHNvIGRv
Y3VtZW50cyB1c2luZyB0aGF0IGNvbXBhdGlibGUgd2hlbiBjbG9ja3MsCnJlc2V0cywgc3VwcGxp
ZXMsIG9yIGFub3RoZXIgaW5pdGlhbGl6YXRpb24gc2VxdWVuY2UgbXVzdCBiZSBhcHBsaWVkCmJl
Zm9yZSB0aG9zZSByZWdpc3RlcnMgY2FuIGJlIHJlYWQuIFRoYXQgaXMgZXhhY3RseSBvdXIgc2l0
dWF0aW9uLCBzbwpldGhlcm5ldC1waHktaWQwMDQ0LjE0MDAgbGV0cyBwaHlsaWIgY3JlYXRlIHRo
ZSBwaHlfZGV2aWNlIHdpdGhvdXQgYW4KaW5pdGlhbCBNRElPIHJlYWQuIE9uY2UgdGhlIHNlbGVj
dGVkIGNvbnRyb2wgcHJvdmlkZXIgaGFzIHBvd2VyZWQgdGhlCmhhcmR3YXJlLCB0aGUgZHJpdmVy
IGNhbiByZWFkIE1JSV9QSFlTSUQxIGFuZCBNSUlfUEhZU0lEMiBhbmQgdmFsaWRhdGUKdGhhdCBJ
RC4KCkJvdGggQUMyMDAgYW5kIEFDMzAwIGV4cG9zZSB0aGUgc2FtZSBsaW5rLXNpZGUgUEhZIElE
IGFuZCByZWdpc3RlcgpsYXlvdXQuIFRoZSBwYWNrYWdlIGNob2ljZSBjaGFuZ2VzIGhvdyB0aGF0
IFBIWSBpcyBpbml0aWFsaXplZCwgbm90CnRoZSBpZGVudGl0eSBvZiB0aGUgbGluayBQSFkgaXRz
ZWxmLiBJbnZlbnRpbmcgc2VwYXJhdGUgSURzIHdvdWxkIHR1cm4KdGhlIGNvbXBhdGlibGUgaW50
byBhIExpbnV4IGRyaXZlciBzZWxlY3RvciBhbmQgd291bGQgZGVzY3JpYmUgdmFsdWVzCndoaWNo
IHRoZSBoYXJkd2FyZSBuZXZlciByZXBvcnRzLgoKVGhlIHBhY2thZ2UgdmFyaWFudCBpcyBkaXNj
b3ZlcmFibGUgaW5kZXBlbmRlbnRseSB0aHJvdWdoIHRoZSBTSUQKY29uZmlndXJhdGlvbiBmaWVs
ZC4gRml4ZWQgYm9hcmRzIGNhbiByZWZlcmVuY2Ugb25lIGNvbnRyb2wgcHJvdmlkZXIsCndoaWxl
IGJvYXJkcyBzaGlwcGVkIHdpdGggZWl0aGVyIHBhY2thZ2UgY2FuIHVzZSBTSUQgdG8gc2VsZWN0
IGJldHdlZW4KdGhlIEFDMjAwIEkyQyBjb250cm9sIHByb3ZpZGVyIGFuZCB0aGUgQUMzMDAgTURJ
TyBjb250cm9sIHByb3ZpZGVyLgoKRm9yIHRoYXQgcmVhc29uLCBJIGRvIG5vdCB0aGluayB0d28g
cGh5X2RyaXZlciBzdHJ1Y3R1cmVzIGFuZCB0d28gUEhZCnByb2JlIGZ1bmN0aW9ucyBtb2RlbCB0
aGUgaGFyZHdhcmUgY29ycmVjdGx5LiBUaGVyZSBpcyBvbmUgY29tbW9uCmxpbmsgUEhZLCBzbyBp
dHMgQ2xhdXNlIDIyIGltcGxlbWVudGF0aW9uIHNob3VsZCByZW1haW4gaW4gb25lIFBIWQpkcml2
ZXIuIFRoZSB0d28gZGlmZmVyZW50IGltcGxlbWVudGF0aW9ucyBiZWxvbmcgYXQgdGhlIGNvbnRy
b2wKZW5kcG9pbnRzLCB3aGVyZSBBQzIwMCBhbmQgQUMzMDAgZ2VudWluZWx5IGRpZmZlciBpbiB0
cmFuc3BvcnQsCnJlc291cmNlcywgYW5kIGxpZmV0aW1lLgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
