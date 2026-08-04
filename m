Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B089C55184
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Aug 2026 04:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t1KunQmhtedosRijFXUu+rNxnsooqJB3WN3BGCu5PtM=; b=nSM4QW8Igq9hST
	B9FfIA3x/UjXkDDMufb86TeH+wH1N0J3zQrlEYgPoXTneBdc5aEtWQ6/XtXP/Q8/4viRDKE16y5iU
	NJ0qXJ4AmtqC0WIZrBbwSELqlQ33BHdDEkmOlEKyUDKWuYPIk3j27CiGLGvSaWst6zqiuxKnsBqMf
	I73C/svophXoNyqwCT4haVF3Kl/zMZ/3G0es3B+dKcg+bnQYVRWzB1qWSmRpapH/xZnP84nf+LE+x
	d6vfcWMM+m+gJwLpHO4lWW4hS2oir7jpqOF17NYQ/14cBuJhKB1KXq8cuC6GTUYjtYPX8V1gN8nqC
	LVU/i0IPVRTPBSaNiUQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr6p9-00000000zV8-0Eun;
	Tue, 04 Aug 2026 04:32:19 +0000
Received: from mail-vk1-xa30.google.com ([2607:f8b0:4864:20::a30])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr6p6-00000000zUV-33T0
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Aug 2026 04:32:18 +0000
Received: by mail-vk1-xa30.google.com with SMTP id 71dfb90a1353d-5c2c96286f0so2037164e0c.3
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Aug 2026 21:32:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785817935; cv=none;
        d=google.com; s=arc-20260327;
        b=L+Jjfb1CY5vJ3myAJgRVwbKlTP29xD/ZpGopdYwDqRcacNIuajygMHX0ztFDUF9rTM
         SQXw725aKNcFDvnrYiHBUyfOZ6Bb4Iki02b+MUzK9tFzZIej6l7c+w9KRA/jZnyIF+eM
         ZPf/TBy5Um8ueP1L0i4Ipermk8s23YyVD2FEjwn2zEsCRpWvRTKzbxeFepMwhdYE39I6
         76rB3mym5puAMBX+SYVfjIHusSFWXnEzG1xD0ZihIP/Q7L0zTqhtYqUjdFueuKMhqtIi
         hRKWJQ0noweMr1xIVVKxVDwma8cw6ZCPznKwdLb2rgHwJuS07XH+R8II5k1CbpTo1Htj
         DHaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=LUfG70xuwTFgcp+8i3Kan+grkhw/1qDG9gV+zT/fD6Q=;
        fh=mAicGEyWUgQC7+v64Ky5MrWSZR+dJmjg3V93GNOwEuQ=;
        b=aZvxSscXZ50HrAddLoLElx70H/dI1sgq+DdgACVKkwLBP0HuA+JiVYiAeoLdPtCaR3
         DUpnOELdBF+gJcG/bIS2V+s/QMCHHq+eSwDlX5MGnXShIoP7wG812TWTJfJmNnjYFOCV
         q4d1bg8atl2YVrirBxI9Ep0WJmzzuGc53EyWyFtqk2JU4A1vJAHO62bZI+R3YRZUtmq+
         31/7i9We7oyFL0u8qZomXRYdiBfurVX++sc4wT/3C5opOJZ70WniYfzMwcjHTc9ZQd9t
         DObSpELdLbCGrYuU4tf2vGDbjGLOvVvH4Mk+WSnOwrNQuwEm7mYtKI85+TU/rgCYrIET
         6lzA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785817935; x=1786422735; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=LUfG70xuwTFgcp+8i3Kan+grkhw/1qDG9gV+zT/fD6Q=;
        b=d24laNRfvziXRLBWozz6lgb/sQqPhMAih+UKLg+EfTvFIqRBc2B6tUCNL+v0De8d3y
         ErmCYSatsKZizEM/4X2hcouhBt7/wQ8QAeZh/v6vQ2YfScm15AB5F4JJU1fzr8vjyw2b
         +DE9AYIWw1bSBPAYni8Jh0YYZR/0xizHt0bTxqxCk60A87WOT4u5uTd9vhgfxB67f00w
         qmkKkDILNVn1c3APw/4LXZgDhU4lp4qqUCmlV+vx8k8qsfac1mC22f6gCjabPZ6JKfCt
         lXxcbCv2CcPm+LIU2AbLbqyQjaqSvr45mGghw1wSFLtgnXWV33dT+MNMc6miuZm2088Y
         MwbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785817935; x=1786422735;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LUfG70xuwTFgcp+8i3Kan+grkhw/1qDG9gV+zT/fD6Q=;
        b=HpMuDpNqWZqEslDDaKaFxmc69HnPYDlz1saziORzh3SXQ9m7sBvgslfeocCiFD76zT
         0NgRE+6yPoxLJhfbYkHxnYyqiNZnz19T24YA9YLAZaIWrYK5q8UOI3FZB3wUFFK2AbH8
         sjCoX/FwytH6hBUbv3qpZPpkvSZnBFk/BoMuO1Rx7PD9NV/1T8o9o3ls6JTbw8hOBANL
         NxtPerYzxWoCrK8jnndF1+nsWY9QstoHsBlhYeeYFPJYstAMxGj1L7WvLUF+Qx5wHkeG
         CuHmq+1UP86DZDD1J3SrUl+z9UsblyeQ0j9j8vF/Cv7Ku7IOIR7tNOu2WuTtG9Qow4SP
         QAKQ==
X-Forwarded-Encrypted: i=1; AHgh+Ro5HD7hMPkHhBilUpLNxq2GGXtA4JJrOcT9IaWu7Z7m43deLPMKzTtC1/UEODPihXxrWDzGF3gX1r+pecXYQQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxfRqrVTgcDOib3dIxJqH88Z3JcVal9wHNaKjWKUaElHeJrM7yM
	/jRnuR3q68X8fJuTpTKIVMYw+ytISg0FhXgJjlGVWu0RrKdO6btS53NurgMXZ5rsspmhRtNwsCn
	rUa/Kw2AUvlS6lB/tgPN3iCtPQucijE8=
X-Gm-Gg: AR+sD107Wfels8BWr9l3Luq8YjMuweAkwzN0lGoLXH8ATk5buRsv7tsN059GTDlz3Et
	Fm5RS/m9XxjjtlhYQb9K1z7AlPkbywDeDgWwT03UcllSskFAoReNL/sfmgtuqPeql1T6TyLDY54
	4qbqVZfpkfRqIuw5l8We9+Q68f5sNgJAcpOpAk4Z8Os16PrFcG0ZzQXC4FXl70lOoOKlm03Sb/I
	r0heoUsIUou8yMXuE3hzu/Yusib+VtMz7RumlnzRAtdROR39sFnjlOrKKamIxhWIhUGCfUSnbhh
	+YZM2PnjUAwjEt+FuI1hQMFrzki60pws4Nba8SyoyhFEDqOnKF6csrYCkzTa0HGQaHqsKDzW003
	NNimqEBHWCR2M15Q3xya/7ogBCHMs3ccgX5M8k1YwAmDyIPUrJBephdjE4EQBQH5YVtz2bZ3ZFS
	6cljjia4IdI+KeWsGmn3/ZErWBeoMo9Td1jIoq
X-Received: by 2002:a05:6102:15a3:b0:738:be73:55e0 with SMTP id
 ada2fe7eead31-75b237677ffmr8262959137.12.1785817935136; Mon, 03 Aug 2026
 21:32:15 -0700 (PDT)
MIME-Version: 1.0
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
 <20260802-submit-acx00-of-dynamic-v1-v1-10-0a53cd9e21cc@gmail.com>
 <05b1e6a2-725e-4b8e-8629-249637bbcb81@lunn.ch> <CADvTj4o0JdjoO+FC4pO=qnjEQ8MRyzQdKp2Hxy9NsPU-gym5OQ@mail.gmail.com>
 <9b8be475-1fde-409c-a82e-be4b2e402650@lunn.ch> <CADvTj4pBovti19MXgQjFpxm=7aRm0sYQz9jxfo8bu3txH94THQ@mail.gmail.com>
 <CAGb2v64U9ZQxfb7M3VfoGH60iMHL01XDy6tjs8VbFPLfyaJWgw@mail.gmail.com>
In-Reply-To: <CAGb2v64U9ZQxfb7M3VfoGH60iMHL01XDy6tjs8VbFPLfyaJWgw@mail.gmail.com>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Mon, 3 Aug 2026 22:32:04 -0600
X-Gm-Features: AUfX_mzUkHY4di871Z-oeEmg1mv3oYLeo3scVGxNss1cbpF1OmuFzb1N7ZoUB_U
Message-ID: <CADvTj4rCaL+Kf5C_Sd8-p5nJHxF8GR2i8oHFJd1Nz=egx9RcYg@mail.gmail.com>
Subject: Re: [PATCH 10/21] net: phy: add X-Powers AC200 EPHY control driver
To: wens@kernel.org
Cc: Andrew Lunn <andrew@lunn.ch>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Andre Przywara <andre.przywara@arm.com>, Richard Genoud <richard.genoud@bootlin.com>, 
	Maxime Ripard <mripard@kernel.org>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	mfd@lists.linux.dev, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_213216_793349_4EFFC33B 
X-CRM114-Status: GOOD (  44.02  )
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

T24gTW9uLCBBdWcgMywgMjAyNiBhdCA4OjA34oCvUE0gQ2hlbi1ZdSBUc2FpIDx3ZW5zQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCBBdWcgNCwgMjAyNiBhdCAyOjQ14oCvQU0gSmFtZXMg
SGlsbGlhcmQgPGphbWVzLmhpbGxpYXJkMUBnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIE1v
biwgQXVnIDMsIDIwMjYgYXQgMTE6NTfigK9BTSBBbmRyZXcgTHVubiA8YW5kcmV3QGx1bm4uY2g+
IHdyb3RlOgo+ID4gPgo+ID4gPiBPbiBNb24sIEF1ZyAwMywgMjAyNiBhdCAxMDowOTowMUFNIC0w
NjAwLCBKYW1lcyBIaWxsaWFyZCB3cm90ZToKPiA+ID4gPiBPbiBNb24sIEF1ZyAzLCAyMDI2IGF0
IDc6NTHigK9BTSBBbmRyZXcgTHVubiA8YW5kcmV3QGx1bm4uY2g+IHdyb3RlOgo+ID4gPiA+ID4K
PiA+ID4gPiA+ID4gK3N0YXRpYyBpbnQKPiA+ID4gPiA+ID4gK2FjMjAwX2VwaHlfY3RsX3NldF9s
ZWRfb3V0cHV0cyhzdHJ1Y3QgYWN4MDBfZXBoeV9jb250cm9sICpjb250cm9sLAo+ID4gPiA+ID4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGxvbmcgb3V0cHV0cykKPiA+
ID4gPiA+ID4gK3sKPiA+ID4gPiA+ID4gK30KPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ICtzdGF0aWMg
aW50Cj4gPiA+ID4gPiA+ICthYzIwMF9lcGh5X2N0bF9zZXRfbGVkX3BvbGFyaXR5KHN0cnVjdCBh
Y3gwMF9lcGh5X2NvbnRyb2wgKmNvbnRyb2wsCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGJvb2wgYWN0aXZlX2xvdykKPiA+ID4gPiA+ID4gK3sKPiA+ID4gPiA+ID4g
K30KPiA+ID4gPiA+Cj4gPiA+ID4gPiBJJ3ZlIG5vdCBsb29rZWQgaW50byB0aGUgZGV0YWlscywg
YnV0IHRoZXNlIGxvb2sgbGlrZSBwaW5tdXguIERvZXMKPiA+ID4gPiA+IHRoaXMgSTJDIGRldmlj
ZSBoYXZlIGEgR1BJTyBjb250cm9sbGVyPyBDYW4gdGhlc2UgcGlucyBiZSB1c2VkIGZvcgo+ID4g
PiA+ID4gb3RoZXIgdGhpbmdzIHRoYW4gTEVEcz8gTWF5YmUgeW91IHNob3VsZCBiZSBpbXBsZW1l
bnRpbmcgYSBHUElPIGFuZAo+ID4gPiA+ID4gcGlubXV4IGRyaXZlci4gVGhlIEV0aGVybmV0IFBI
WSBkcml2ZXIgY2FuIHRoZW4ganVzdCBzZWxlY3QgdGhlCj4gPiA+ID4gPiBjb3JyZWN0IHBpbm11
eCBjb25maWd1cmF0aW9uLgo+ID4gPiA+Cj4gPiA+ID4gVGhlc2UgZG8gbm90IGFwcGVhciB0byBi
ZSBHUElPIG9yIG11eGFibGUgcGlucy4gVGhlIEFDMjAwCj4gPiA+ID4gZG9jdW1lbnRhdGlvbiBk
ZXNjcmliZXMgdGhlbSBhcyB0aHJlZSBkZWRpY2F0ZWQgRVBIWSBMRUQKPiA+ID4gPiBvdXRwdXRz
OiBsaW5rL2FjdGl2aXR5LCBzcGVlZCwgYW5kIGR1cGxleC4gVGhlIGJpdHMgaW4gU1lTX0VQSFlf
Q1RMMQo+ID4gPiA+IGVuYWJsZSB0aG9zZSBvdXRwdXQgcGFkcywgd2hpbGUgRVBIWV9DVEwgcHJv
dmlkZXMgdGhlaXIgc2hhcmVkCj4gPiA+ID4gcG9sYXJpdHkgc2V0dGluZy4gSSBoYXZlIG5vdCBm
b3VuZCBhbnkgZG9jdW1lbnRlZCBHUElPIGRhdGEKPiA+ID4gPiByZWdpc3RlcnMgb3IgYWx0ZXJu
YXRpdmUgZnVuY3Rpb25zIGZvciB0aGVzZSBwaW5zLgo+ID4gPgo+ID4gPiBTbyB3aGF0IGknbSB0
cnlpbmcgdG8gZG8gd2l0aCBib3RoIG9mIHRoZXNlIGlzIG1ha2UgaXQgbG9vayBtb3JlIGxpa2UK
PiA+ID4gc3RhbmRhcmQgTGludXggYnVpbGRpbmcgYmxvY2tzLgo+ID4gPgo+ID4gPiBJZiB0aGF0
IGlzIG5vdCBwb3NzaWJsZSwgaSB3b3VsZCBhY3R1YWxseSBwdXQgYWxsIHRoaXMgY29kZSBpbnRv
IHRoZQo+ID4gPiBQSFkgZHJpdmVyLiBZb3UgdGhlbiBoYXZlIGEgcmVnbWFwIHByb3BlcnR5IHRv
IGdhaW4gYWNjZXNzIHRvIHRoZSBJMkMKPiA+ID4gcmVnaXN0ZXJzLgo+ID4KPiA+IEkgdW5kZXJz
dGFuZCB0aGUgZ29hbCBvZiB1c2luZyBzdGFuZGFyZCBMaW51eCBidWlsZGluZyBibG9ja3Mgd2hl
cmUgdGhleQo+ID4gZml0LCBidXQgSSBkbyBub3QgdGhpbmsgZm9sZGluZyB0aGVzZSBjb250cm9s
IHBhdGhzIGludG8gdGhlIGNvbW1vbiBQSFkKPiA+IGRyaXZlciBnaXZlcyB0aGUgcmlnaHQgZGV2
aWNlIG1vZGVsIGhlcmUuCj4gPgo+ID4gVGhlIEFDMjAwIGFuZCBBQzMwMCBleHBvc2UgdGhlIHNh
bWUgQ2xhdXNlIDIyIFBIWSBpbnRlcmZhY2UsIGJ1dCB0aGVpcgo+ID4gY29udHJvbCBmdW5jdGlv
bnMgYXJlIHNlcGFyYXRlIGRldmljZXMgd2l0aCBkaWZmZXJlbnQgdHJhbnNwb3J0cyBhbmQKPiA+
IGxpZmV0aW1lcy4gVGhlIEFDMjAwIGNvbnRyb2wgZnVuY3Rpb24gaXMgYW4gTUZEIGNoaWxkIGFj
Y2Vzc2VkIHRocm91Z2gKPiA+IHRoZSBwYXJlbnQgSTJDIHJlZ21hcC4gVGhlIEFDMzAwIGNvbnRy
b2wgZnVuY3Rpb24gaXMgYSBzZXBhcmF0ZWx5Cj4gPiBhZGRyZXNzZWQgbm9uLVBIWSBNRElPIGRl
dmljZS4gQSByZWdtYXAgcmVmZXJlbmNlIG9ubHkgZGVzY3JpYmVzIHRoZQo+ID4gQUMyMDAgdHJh
bnNwb3J0OyBpdCBkb2VzIG5vdCByZXByZXNlbnQgdGhlIEFDMzAwIGNvbnRyb2wgZGV2aWNlLgo+
ID4KPiA+IEZvbGRpbmcgYm90aCBpbXBsZW1lbnRhdGlvbnMgaW50byB0aGUgY29tbW9uIFBIWSBk
cml2ZXIgd291bGQgbWFrZSB0aGF0Cj4gPiBkcml2ZXIgbWFuYWdlIEFDMjAwIE1GRCByZWdpc3Rl
cnMgYW5kIHJlc291cmNlcyBhcyB3ZWxsIGFzIGFuIEFDMzAwIE1ESU8KPiA+IGNvbnRyb2wgZW5k
cG9pbnQuIFRoYXQgd291bGQgbWl4IHRoZSBwYWNrYWdlLXNwZWNpZmljIGNvbnRyb2wgdHJhbnNw
b3J0cwo+ID4gd2l0aCB0aGUgb3RoZXJ3aXNlIGNvbW1vbiBDbGF1c2UgMjIgaW1wbGVtZW50YXRp
b24uCj4gPgo+ID4gVGhlIGN1cnJlbnQgc3BsaXQgdXNlcyBzdGFuZGFyZCBzdWJzeXN0ZW1zIHdo
ZXJldmVyIHRoZXkgcHJvdmlkZSBhCj4gPiBtYXRjaGluZyBhYnN0cmFjdGlvbjogTUZELCByZWdt
YXAsIE1ESU8gZGV2aWNlcywgY2xvY2tzLCByZWd1bGF0b3JzLAo+ID4gTlZNRU0sIGRldmljZSBs
aW5rcywgYW5kIHRoZSBQSFkgTEVEIGZyYW1ld29yay4gVGhlIG5hcnJvdyBwcml2YXRlCj4gPiBp
bnRlcmZhY2UgY292ZXJzIG9ubHkgdGhlIGNvbXBvdW5kIG9wZXJhdGlvbiB3aGljaCB0aG9zZSBm
cmFtZXdvcmtzCj4gPiBjYW5ub3QgZXhwcmVzczogY2FsaWJyYXRpbmcsIGFkZHJlc3NpbmcsIGNv
bmZpZ3VyaW5nLCBhbmQgc2VxdWVuY2luZyB0aGUKPiA+IHBhY2thZ2UgY29udHJvbCBibG9jayBi
ZWZvcmUgdGhlIENsYXVzZSAyMiBpbnRlcmZhY2UgYmVjb21lcyB1c2FibGUuCj4gPgo+ID4gVGhl
IGxpbmsgYWRkcmVzcyBpcyBhbiBpbXBvcnRhbnQgZXhhbXBsZS4gSXQgaXMgZGVmaW5lZCBvbmNl
IGJ5Cj4gPiBwaHlkZXYtPm1kaW8uYWRkci4gQUMyMDAgbXVzdCBwcm9ncmFtIHRoYXQgdmFsdWUg
dGhyb3VnaCBpdHMgSTJDIGNvbnRyb2wKPiA+IGludGVyZmFjZSwgd2hpbGUgQUMzMDAgbXVzdCB2
YWxpZGF0ZSBpdCBhZ2FpbnN0IHRoZSBhZGRyZXNzIG9mIGl0cyBNRElPCj4gPiBjb250cm9sIGVu
ZHBvaW50LiBHZW5lcmljIFBIWSBvcGVyYXRpb25zIGRvIG5vdCBjYXJyeSBhIGNvbnN1bWVyIE1E
SU8KPiA+IGFkZHJlc3MuIEVuY29kaW5nIGl0IGluIGEgcGh5cyBzcGVjaWZpZXIgb3IgY29udHJv
bC1ub2RlIHByb3BlcnR5IHdvdWxkCj4gPiBkdXBsaWNhdGUgdGhlIFBIWSBub2RlJ3MgcmVnIHZh
bHVlLiBHaXZpbmcgdGhlIGNvbW1vbiBQSFkgZHJpdmVyIGEgcmF3Cj4gPiByZWdtYXAgYXZvaWRz
IHBhc3NpbmcgdGhlIGFkZHJlc3Mgb25seSBieSBtb3ZpbmcgdGhlIHByb3ZpZGVyLXNwZWNpZmlj
Cj4gPiBpbXBsZW1lbnRhdGlvbiBhY3Jvc3MgdGhlIGRyaXZlciBib3VuZGFyeS4KPiA+Cj4gPiBU
aGUgTEVEIHBhZC1lbmFibGUgYW5kIHBvbGFyaXR5IGJpdHMgYXJlIHNpbWlsYXJseSBwYXJ0IG9m
IHRoZSBwYWNrYWdlCj4gPiBjb250cm9sIGZ1bmN0aW9uLiBUaGV5IGNvbnRyb2wgZGVkaWNhdGVk
IEVQSFkgb3V0cHV0cyByYXRoZXIgdGhhbiBHUElPcwo+ID4gb3IgbXV4YWJsZSBwaW5zLiBUaGUg
Y29tbW9uIFBIWSBkcml2ZXIgc3RpbGwgb3ducyB0aGUgUEhZIExFRCBzZW1hbnRpY3MsCj4gPiB3
aGlsZSB0aGUgc2VsZWN0ZWQgY29udHJvbCBkcml2ZXIgcGVyZm9ybXMgdGhlIHBhY2thZ2Utc3Bl
Y2lmaWMgcmVnaXN0ZXIKPiA+IGFjY2Vzcy4KPiA+Cj4gPiBGb3IgdGhvc2UgcmVhc29ucywgSSB0
aGluayBrZWVwaW5nIHRoZSB0cmFuc3BvcnQtc3BlY2lmaWMgY29udHJvbCBkcml2ZXJzCj4gPiBh
bmQgdGhlIGNvbW1vbiBDbGF1c2UgMjIgUEhZIGRyaXZlciBzZXBhcmF0ZSBpcyB0aGUgY2xlYW5l
ciBkaXZpc2lvbi4KPgo+IEkgdGhpbmsgd2hhdCBBbmRyZXcgaXMgc2F5aW5nIGlzIHRoYXQgeW91
IGNhbiBleHBvc2UgdGhlIHJlZ21hcCBmcm9tIHRoZQo+IE1GRCBub2RlLCB3aGljaCB5b3UgdGhl
biByZWZlcmVuY2UgZnJvbSB0aGUgUEhZIG5vZGUgd2l0aCBhIGN1c3RvbSBwaGFuZGxlLgo+Cj4g
SW4gdGhlIFBIWSBkcml2ZXIsIHRoZSBmaXJzdCB0aGluZyB0byBkbyBpcyByZXRyaWV2ZSB0aGUg
c3lzY29uLCBhbmQgaWYgaXQKPiBpcyBub3QgYXZhaWxhYmxlIHlldCwgcmV0dXJuIC1FUFJPQkVf
REVGRVIuIFRoZW4geW91IHByb2dyYW0gYWxsIHRoZSBiaXRzCj4geW91IGN1cnJlbnRseSBkbywg
anVzdCB3aXRob3V0IGdvaW5nIHRocm91Z2ggYSBsYXllciBvZiByZWRpcmVjdGlvbi4KPiBZb3Ug
Y2FuIGZldGNoIHRoZSBQSFkgYWRkcmVzcyB0byBwcm9ncmFtIGZyb20gdGhlIGRldmljZSB0cmVl
LiBUaGUgZG93bnNpZGUKPiB0byBkb2luZyBhbGwgdGhlIHNldHVwIGluIHRoZSBQSFkgZHJpdmVy
IGlzIHRoYXQgdGhlIFBIWSBub2RlIGhhcyB0byBoYXZlCj4gdGhlIFBIWSBJRCBpbiB0aGUgY29t
cGF0aWJsZSwgYXMgaXQgaXMgbm8gbG9uZ2VyIGdlbmVyaWMuIEJ1dCB5b3UgYWxyZWFkeQo+IGhh
dmUgdGhhdC4KCkkgYWdyZWUgdGhhdCBkaXJlY3QgcmVnbWFwIGFjY2VzcyB3b3VsZCBiZSByZWFz
b25hYmxlIGZvciBhbgpBQzIwMC1vbmx5IGRyaXZlciwgYnV0IEkgZG8gbm90IHRoaW5rIGl0IGlz
IGEgZ29vZCBmaXQgZm9yIHRoZQpjb21iaW5lZCBBQzIwMC9BQzMwMCBjYXNlLgoKVGhlIHByb3Bv
c2VkIHBoYW5kbGUgb25seSBtb2RlbHMgQUMyMDAuIEFDMzAwIGhhcyBubyBjb3JyZXNwb25kaW5n
Ck1GRCByZWdtYXA6IGl0cyBjb250cm9sIGJsb2NrIGlzIGEgc2VwYXJhdGUgbm9uLVBIWSBDbGF1
c2UgMjIKZW5kcG9pbnQsIHdpdGggaXRzIG93biBjbG9jaywgcmVndWxhdG9yIGFuZCBzZXF1ZW5j
aW5nIHJlcXVpcmVtZW50cy4KRm9sZGluZyBldmVyeXRoaW5nIGludG8gdGhlIGxpbmstUEhZIGRy
aXZlciB3b3VsZCB0aGVyZWZvcmUgc3RpbGwKcmVxdWlyZSB0d28gdHJhbnNwb3J0LXNwZWNpZmlj
IGltcGxlbWVudGF0aW9ucyAtLSByYXcgQUMyMDAgSTJDCnJlZ21hcCBhY2Nlc3MgYW5kIHJhdyBB
QzMwMCBNRElPIGFjY2VzcyAtLSBwbHVzIGNvbmRpdGlvbmFsIHJlc291cmNlCmFjcXVpc2l0aW9u
IGFuZCBjbGVhbnVwLiBJdCB3b3VsZCByZW1vdmUgdGhlIGZ1bmN0aW9uLXBvaW50ZXIgY2FsbHMs
CmJ1dCBtZXJlbHkgcmVwbGFjZSB0aGVtIHdpdGggQUMyMDAvQUMzMDAgYnJhbmNoZXMgdGhyb3Vn
aG91dCB0aGUKY29tbW9uIGRyaXZlci4KClRoaXMgYWxzbyBtYXR0ZXJzIGZvciBib2FyZHMgc2hh
cmluZyBvbmUgYm9hcmQgaWRlbnRpdHkgYnV0CmNvbnRhaW5pbmcgZWl0aGVyIHBhY2thZ2UsIGFz
IHNlbGVjdGVkIGJ5IFNJRC4gRml4ZWQgYm9hcmRzIGNhbgpyZWZlcmVuY2Ugb25lIGNvbnRyb2wg
cHJvdmlkZXIsIHdoaWxlIHZhcmlhbnQgYm9hcmRzIGNhbiByZWZlcmVuY2UKYm90aCBhbmQgbGV0
IHRoZSBjb21tb24gbGluay1QSFkgZHJpdmVyIHNlbGVjdCBleGFjdGx5IG9uZS4gVGhlCnNlbGVj
dGVkIHByb3ZpZGVyIHRoZW4gb3ducyBpdHMgdHJhbnNwb3J0LXNwZWNpZmljIHJlc291cmNlcyBh
bmQKbGlmZXRpbWUuIFRoYXQgYXZvaWRzIG1ha2luZyBhbiBNRElPIFBIWSBkcml2ZXIgZGlyZWN0
bHkgbWFuYWdlIGFuCkkyQyBNRkQgZnVuY3Rpb24gb24gb25lIHN5c3RlbSBhbmQgYSBzZWNvbmQg
TURJTyBkZXZpY2Ugb24gYW5vdGhlci4KClRoZSBjb250cm9sIGludGVyZmFjZSBpcyBhbHNvIHVz
ZWQgZm9yIG1vcmUgdGhhbiBpbml0aWFsIHByb2JlLiBJdApwYXJ0aWNpcGF0ZXMgaW4gc3VzcGVu
ZC9yZXN1bWUgYW5kIHJlc2V0IHNlcXVlbmNpbmcsIGludGVyZmFjZS1tb2RlCmNoYW5nZXMgb25j
ZSB0aGUgTUFDIGF0dGFjaGVzLCBhbmQgcGFja2FnZSBMRUQtcGFkIGNvbmZpZ3VyYXRpb24uCkNv
bnNlcXVlbnRseSwgZXhwb3NpbmcgYSByYXcgcmVnbWFwIHdvdWxkIG5vdCByZWR1Y2UgdGhpcyB0
byBhCm9uZS10aW1lIHJlZ2lzdGVyIHNldHVwOyB0aGUgY29tbW9uIGRyaXZlciB3b3VsZCBzdGls
bCBuZWVkCnBhY2thZ2Utc3BlY2lmaWMgaW1wbGVtZW50YXRpb25zIG9mIGFsbCB0aG9zZSBvcGVy
YXRpb25zLgoKVGhlIFBIWSBhZGRyZXNzIHNob3VsZCBub3QgYmUgcmVhZCBmcm9tIGZpcm13YXJl
IGFnYWluLiBUaGUgTURJTyBjb3JlCmhhcyBhbHJlYWR5IHBhcnNlZCByZWcsIGFuZCB0aGUgYXV0
aG9yaXRhdGl2ZSBhZGRyZXNzIGlzCnBoeWRldi0+bWRpby5hZGRyLiBQYXNzaW5nIHRoYXQgYWRk
cmVzcyB0byB0aGUgc2VsZWN0ZWQgcHJvdmlkZXIKYXZvaWRzIGR1cGxpY2F0aW5nIG9yIGluZGVw
ZW5kZW50bHkgaW50ZXJwcmV0aW5nIHRoZSBmaXJtd2FyZQpkZXNjcmlwdGlvbi4gU2ltaWxhcmx5
LCB0aGUgZm9yY2VkIGV0aGVybmV0LXBoeS1pZDAwNDQuMTQwMApjb21wYXRpYmxlIGlzIHJlcXVp
cmVkIGluIGVpdGhlciBkZXNpZ24gYmVjYXVzZSB0aGUgaWRlbnRpZmljYXRpb24KcmVnaXN0ZXJz
IGFyZSBpbmFjY2Vzc2libGUgdW50aWwgdGhlIHBhY2thZ2UgY29udHJvbCBibG9jayBoYXMgYmVl
bgppbml0aWFsaXplZDsgaXQgaXMgbm90IGEgY29uc2VxdWVuY2Ugb2YgdXNpbmcgYSBzZXBhcmF0
ZSBjb250cm9sCmRyaXZlci4KCkFsc28sIEFDMjAwIGlzIGFuIEkyQyBNRkQgcmF0aGVyIHRoYW4g
YSBzeXNjb24uIEV4cG9zaW5nIGl0cyByZWdtYXAgYXMKYSBzeXNjb24gc29sZWx5IHNvIGFub3Ro
ZXIgYnVzIGRldmljZSBjYW4gcGVyZm9ybSByYXcgYWNjZXNzZXMgd291bGQKYmx1ciB0aGUgb3du
ZXJzaGlwIG9mIHRoZSBBQzIwMCBmdW5jdGlvbi4KClRoZSBwcml2YXRlIGludGVyZmFjZSBpcyBp
bnRlbnRpb25hbGx5IG5hcnJvdzogaXQgY29udGFpbnMgb25seSB0aGUKb3BlcmF0aW9ucyB3aG9z
ZSBpbXBsZW1lbnRhdGlvbiBkaWZmZXJzIGJldHdlZW4gdGhlIHR3byBwYWNrYWdlcywKd2hpbGUg
YWxsIG5vcm1hbCBDbGF1c2UgMjIgYmVoYXZpb3IgcmVtYWlucyBpbiBvbmUgc2hhcmVkIFBIWSBk
cml2ZXIuCkdpdmVuIHRoZSBBQzIwMC1vbmx5LCBBQzMwMC1vbmx5IGFuZCBydW50aW1lLXNlbGVj
dGVkIGJvYXJkCmNvbmZpZ3VyYXRpb25zLCBJIHRoaW5rIHRoYXQgc2VwYXJhdGlvbiBwcm92aWRl
cyBhIGNsZWFuZXIgYm91bmRhcnkKdGhhbiBtb3ZpbmcgYm90aCBjb250cm9sIGJhY2tlbmRzIGlu
dG8gdGhlIGNvbW1vbiBsaW5rLVBIWSBkcml2ZXIuCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
