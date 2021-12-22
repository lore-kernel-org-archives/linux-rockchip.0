Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1D48C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 19:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLv5FTOmjDruzU6giRhv1js7NujWYOHlXXXnX1V9H4g=; b=d+8BtMUVZU1McA
	5hPvwzsp3w6Q2B/e/6w65jdEZ1EqQUhiKr2Fc97ccTgWfaAPU3fwj9iVizSpbVa5C75h41fexduCF
	q10zXQ+VK9zqLi10xqpIg1+RrGjSCxqOPjgK0owcErmGAGhjsYbWYYORuh2p0biOK10Y2sWot8lgb
	J6yX/vAdRAPRhCi+9m6wwLrReUMSjd7XbPHiWE9uFfyCfpg0dSvMl/GuYpC/SEqgwpA0g+K3HGfUV
	x39+aLib/AsQhiZ/QIpNINg+BTv30IN6Kp/n/1xWnmqttGaKivm37rSql4Ymj/0v6UwrU6xdRk/KN
	9TiReWwnz9QTmxz8Dx4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n07jo-00BHP7-S4; Wed, 22 Dec 2021 19:57:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n07jc-00BHNJ-LU; Wed, 22 Dec 2021 19:57:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2825B61CEF;
 Wed, 22 Dec 2021 19:57:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86B0BC36AEA;
 Wed, 22 Dec 2021 19:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640203031;
 bh=vo+ANnKfigzQzAo0jwVxZr3VvLPILGV+V4D2g0cDOJo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HHxrgtCPmPXHz+fCsXIxU9gvKpwFtUl+/sSit1hSB20LIHQ0CwUG3DRvyzyF/+Xtl
 azm9i3QIznjWoESMqSvLxexoV8svAkhCsYMXGAi8pOSW5oiuIAxNwdp1ec72dJVz8G
 MLrDwB1cidAo4xb9BWLkgAd3zHcnWF6FI/si3e/ldQGCmUms38Y+sPqNbIkRAlUPiy
 G2RKLFyVo5Q6wd19UREl48K9GCiAQl/39sD6uTfngJMKMGOtDtuB4pxLarScPqU3eQ
 XLvJxu9SZ9h7oJfIzvWhiMZEA0X3f7yHru9faCoNYn9F+kk042poC7ta0bMs4QQcvu
 XxSoT5DsqB9Nw==
Received: by mail-ed1-f47.google.com with SMTP id x15so12931686edv.1;
 Wed, 22 Dec 2021 11:57:11 -0800 (PST)
X-Gm-Message-State: AOAM530XjTsNpIa3Iho7ngs5IJcyp/FfEMfxBd7pShYEadD+5Fhqnjoz
 pukMHkE447ExWX1FU8OR1w+lRmfPMMWlpP5PJg==
X-Google-Smtp-Source: ABdhPJzwsbCZWdVn8cOcu5PGCVl4Axi+Ni8kjsGL4ubCS8dZgY8gPy7zwXj1bZMZYLolMdf6vi/pSdQRIPwxu9a9uQc=
X-Received: by 2002:a17:906:229b:: with SMTP id
 p27mr3667056eja.264.1640203029841; 
 Wed, 22 Dec 2021 11:57:09 -0800 (PST)
MIME-Version: 1.0
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <20211222104736.GZ6003@pengutronix.de>
 <CAL_Jsq+jhaE7DWNu1=n9JX+oNp8XRW7mNi--8moDU6RYNyBgBw@mail.gmail.com>
 <8156864.jFcTpQmkuZ@diego>
In-Reply-To: <8156864.jFcTpQmkuZ@diego>
From: Rob Herring <robh@kernel.org>
Date: Wed, 22 Dec 2021 15:56:57 -0400
X-Gmail-Original-Message-ID: <CAL_JsqJqXHcSQEw9rz1PDk++WUf_Pgh7S09Z2UGOQUxvT6ftGA@mail.gmail.com>
Message-ID: <CAL_JsqJqXHcSQEw9rz1PDk++WUf_Pgh7S09Z2UGOQUxvT6ftGA@mail.gmail.com>
Subject: Re: [PATCH 08/22] dt-bindings: display: rockchip: dw-hdmi: use "ref"
 as clock name
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, 
 Sascha Hauer <kernel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_115712_802741_F31FD795 
X-CRM114-Status: GOOD (  26.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gV2VkLCBEZWMgMjIsIDIwMjEgYXQgMzo0MCBQTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cm90ZToKPgo+IEFtIE1pdHR3b2NoLCAyMi4gRGV6ZW1iZXIgMjAyMSwgMTQ6NTI6
NTEgQ0VUIHNjaHJpZWIgUm9iIEhlcnJpbmc6Cj4gPiBPbiBXZWQsIERlYyAyMiwgMjAyMSBhdCA2
OjQ3IEFNIFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gPiA+
Cj4gPiA+IE9uIFR1ZSwgRGVjIDIxLCAyMDIxIGF0IDEwOjMxOjIzQU0gLTA0MDAsIFJvYiBIZXJy
aW5nIHdyb3RlOgo+ID4gPiA+IE9uIE1vbiwgRGVjIDIwLCAyMDIxIGF0IDEyOjA2OjE2UE0gKzAx
MDAsIFNhc2NoYSBIYXVlciB3cm90ZToKPiA+ID4gPiA+ICJ2cGxsIiBpcyBhIG1pc25vbWVyLiBB
IGNsb2NrIGlucHV0IHRvIGEgZGV2aWNlIHNob3VsZCBiZSBuYW1lZCBhZnRlcgo+ID4gPiA+ID4g
dGhlIHVzYWdlIGluIHRoZSBkZXZpY2UsIG5vdCBhZnRlciB0aGUgY2xvY2sgdGhhdCBkcml2ZXMg
aXQuIE9uIHRoZQo+ID4gPiA+ID4gcmszNTY4IHRoZSBzYW1lIGNsb2NrIGlzIGRyaXZlbiBieSB0
aGUgSFBMTC4KPiA+ID4gPiA+IFRvIGZpeCB0aGF0LCB0aGlzIHBhdGNoIHJlbmFtZXMgdGhlIHZw
bGwgY2xvY2sgdG8gcmVmIGNsb2NrLgo+ID4gPiA+Cj4gPiA+ID4gVGhlIHByb2JsZW0gd2l0aCB0
aGlzIHNlcmllcyBpcyBpdCBicmVha3MgYW4gb2xkIGtlcm5lbCB3aXRoIG5ldyBkdC4gWW91Cj4g
PiA+ID4gY2FuIHBhcnRpYWxseSBtaXRpZ2F0ZSB0aGF0IHdpdGggc3RhYmxlIGtlcm5lbCBiYWNr
cG9ydCwgYnV0IElNTyBrZWVwaW5nCj4gPiA+ID4gdGhlIG9sZCBuYW1lIGlzIG5vdCBhIGJ1cmRl
biB0byBtYWludGFpbi4KPiA+ID4KPiA+ID4gQXMgc3VnZ2VzdGVkIEkgb25seSByZW1vdmVkIHZw
bGwgZnJvbSB0aGUgYmluZGluZyBkb2N1bWVudCwgYnV0IG5vdCBmcm9tCj4gPiA+IHRoZSBjb2Rl
LiBUaGUgY29kZSBzdGlsbCBoYW5kbGVzIHRoZSBvbGQgYmluZGluZyBhcyB3ZWxsLgo+ID4KPiA+
IFRoZSBwcm9ibGVtIGlzIHVwZGF0aW5nIHJrMzM5OS5kdHNpLiBUaGF0IGNoYW5nZSB3b24ndCB3
b3JrIHdpdGggb2xkCj4gPiBrZXJuZWxzIGJlY2F1c2UgdGhleSB3b24ndCBsb29rIGZvciAncmVm
Jy4gU2luY2UgeW91IHNob3VsZG4ndCBjaGFuZ2UKPiA+IGl0LCB0aGUgYmluZGluZyBuZWVkcyB0
byBjb3ZlciBib3RoIHRoZSBvbGQgYW5kIG5ldyBjYXNlcy4KPgo+IGlzICJuZXdlciBkdCB3aXRo
IG9sZCBrZXJuZWwiIHJlYWxseSBhIGNhc2UgdGhlc2UgZGF5cz8KCkkndmUgaGFkIGNvbXBsYWlu
dHMgYWJvdXQgaXQuIEluIHBhcnRpY3VsYXIgZnJvbSBTVVNFIGZvbGtzIHRoYXQgd2VyZQpzaGlw
cGluZyBuZXcgZHRicyB3aXRoIG9sZCAoc3RhYmxlKSBrZXJuZWxzLgoKPiBJIGRvIHVuZGVyc3Rh
bmQgdGhlIG5ldyBrZXJuZWwgb2xkIGR0IGNhc2UgLSBmb3IgZXhhbXBsZSB3aXRoIHRoZQo+IGR0
YiBiZWluZyBwcm92aWRlZCBieSBmaXJtd2FyZS4KClllcywgc28gdXBkYXRlIHlvdXIgZmlybXdh
cmUgdGhhdCBjb250YWlucyBhIG5ld2VyIGR0YiBhbmQgdGhlbiB5b3UKc3RvcCBib290aW5nIG9y
IGEgZGV2aWNlIHN0b3BzIHdvcmtpbmcuCgo+IEJ1dCB3aGljaCB1c2VyIHdvdWxkIGdldCB0aGUg
aWRlYSBvZiB1cGRhdGluZyBvbmx5IHRoZSBkZXZpY2V0cmVlCj4gd2hpbGUgc3RheWluZyB3aXRo
IGFuIG9sZGVyIGtlcm5lbD8KCkFueSBzeW5jaHJvbml6YXRpb24gYmV0d2VlbiBmaXJtd2FyZSBh
bmQgT1MgdXBkYXRlcyBpcyBhIHByb2JsZW0uCgpSb2IKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
