Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C73E6F30955
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 12:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SelOiNHHaNoBdJfbnwnsZq0jnZ6F11FdL1WwBc2zjig=; b=voMadgqPQ/tQO5
	ibZip7xLUvT9N7ysiylYAnJOIvXR2tPxXfRCnsA0PFzYFynpiZVWQ87LQvIMggRa9Zaw8sAOcmrkC
	cOoeE00o/hbYq9FdooqvI+o50DkxhQpZwyPCxuB5+T0KUUuLcIZK97Zj/EcBtF0o2u16Xd6JtUHmp
	cwG24vg4uDilZ5h5E4oXjiK3F+zsqLlSu/7NcqM/4Kg5Z06FVVNPtEKqrEEGEzfzcHr8s3wLfkSBf
	RZD97k1qkcDEm9A5O+sFJzwRr7IDoA84aulz2S2AMu/yDhQzYSXlG5Hx3nXDLaB9HmyWaM4ZFdfyv
	VmzuJUAhQcoVvkixuLtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy84e-00000001nw4-2GOY;
	Thu, 05 Mar 2026 12:45:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy84d-00000001nvD-1rsV
	for linux-rockchip@bombadil.infradead.org;
	Thu, 05 Mar 2026 12:45:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=7/B3L3Xu38pLEI9aWzEuoVdxX7Qp2NIDeM+Gg1/xjBI=; b=ZiWMPTi+cUlqdbd1qu71+Y8gRj
	T0IhLmXTyT8aTSCnDEh2h5WoEHE3U6b22IZIKZgF7xwBZfR20Qop1iLgdDDLrCQ7HyqlTFA8URJlz
	4X7IwFsG1ATKsK8CE+rct7ySzeP2aEnC13U6RkSwsfIAF/d4sgKrUL4fPXuJEkDcLSk46zSgJZYn6
	O33XDACzPTxz5rGgvW5Nzrq0BTmlcCZd7Uoar8FyhC1Sse5WUuSXl2X1Egx5ILu/iZQXtAUi6HuPe
	rgHtFC/PMlfXfAbG42/XyUblieU97ZJ3VH2Dj4c0JH/7arrH1TcLg6/aWNsRPnfd165HB3RAIUqHJ
	JEPmoFtw==;
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy84W-00000006kxe-045w
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Mar 2026 12:45:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 98A9D43FCF
	for <linux-rockchip@lists.infradead.org>; Thu,  5 Mar 2026 12:44:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7734BC2BCC7
	for <linux-rockchip@lists.infradead.org>; Thu,  5 Mar 2026 12:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772714694;
	bh=7/B3L3Xu38pLEI9aWzEuoVdxX7Qp2NIDeM+Gg1/xjBI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=OtqYMvb5oPxe5sMzeuWM/p9QhfY79P8WSa8Oc0dmxSoFCqAxC+CeiyJ4NR/CKYXp5
	 2pWsVJ/8dTjJPaOTsMOrLWg9QrWyIT17qWYKoWkp2uev1+hKn84FX5s0QnjAl8bNE/
	 7JpPIBkXPhGvuxF9NkQde6xY7s3+z78cNibHOOJcW8DPll2R+OOPS/ZPgglANmm0bm
	 z+fq9gwNqWVY2cpjU7AjP46t/Fi3qyyprLoCv6ETr3JC7/UsdbQoEj4fnlA7mjJ3u9
	 kpBnTLkqR3bbedcx3T7TtOd2iumdT2sN3/QFxWt88OY6wGjq0mmb5qwwhn72EVc8bD
	 zEhwMty5ybC+w==
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-64ad46a44easo7001846d50.0
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2026 04:44:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXrL3krR7gioSlOWzWP9eppAGKgz8ePJ9p+F4lkWLpvhIJhc6guOCLryrHlXhz9K4RLsTAjJKIEEncN8wtBEQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxMVT00x0iyplHbipq85edqksI0M6f4OyC6CIT+5N9G2Ry3f4d1
	FtjAdul5A9DqfOkhAUQAJeES0J7G81OP2bE/MKsEHyEn4n8gTuwz1yzKJl5d/iWnHcoZkXGYPGO
	Mq9pz9gNn48zdh2dNiKR4HKYbSbDkkB0=
X-Received: by 2002:a05:690e:1a12:b0:649:5a6e:bc88 with SMTP id
 956f58d0204a3-64cf9bac208mr3552462d50.46.1772714693758; Thu, 05 Mar 2026
 04:44:53 -0800 (PST)
MIME-Version: 1.0
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-19-vladimir.oltean@nxp.com> <CAD++jLnCtu20rXcg7sMVLBi24EohscJoz0kN46XJaKPJt00O2w@mail.gmail.com>
In-Reply-To: <CAD++jLnCtu20rXcg7sMVLBi24EohscJoz0kN46XJaKPJt00O2w@mail.gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Thu, 5 Mar 2026 13:44:42 +0100
X-Gmail-Original-Message-ID: <CAD++jL=m+cEcqy1i2H0tdeBa3Sy76myGAR9HdBqrT4u-x5v50A@mail.gmail.com>
X-Gm-Features: AaiRm53u9phsGhzUDeKiqEnTp_X3DfbqaQ7dJ0SVurbn78IH1263DExaHPtG4YM
Message-ID: <CAD++jL=m+cEcqy1i2H0tdeBa3Sy76myGAR9HdBqrT4u-x5v50A@mail.gmail.com>
Subject: Re: [PATCH phy-next 18/22] pinctrl: tegra-xusb: include PHY provider header
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-can@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-ide@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org, 
	netdev@vger.kernel.org, spacemit@lists.linux.dev, 
	UNGLinuxDriver@microchip.com, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_124456_471320_3C2BEC18 
X-CRM114-Status: GOOD (  12.51  )
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

T24gVGh1LCBNYXIgNSwgMjAyNiBhdCAxOjQz4oCvUE0gTGludXMgV2FsbGVpaiA8bGludXN3QGtl
cm5lbC5vcmc+IHdyb3RlOgo+IE9uIFdlZCwgTWFyIDQsIDIwMjYgYXQgNzowMOKAr1BNIFZsYWRp
bWlyIE9sdGVhbiA8dmxhZGltaXIub2x0ZWFuQG54cC5jb20+IHdyb3RlOgo+Cj4gPiBUaGUgdGVn
cmEteHVzYiBwaW5jdHJsIGRyaXZlciBpcyBhbHNvIGEgUEhZIHByb3ZpZGVyIChjYWxscwo+ID4g
ZGV2bV9waHlfY3JlYXRlKCkgZm9yIFBDSWUgYW5kIFNBVEEpLiBIb3dldmVyLCBhY2NvcmRpbmcg
dG8gVmlub2QgS291bCwKPiA+IGhhdmluZyBQSFkgcHJvdmlkZXIgZHJpdmVycyBvdXRzaWRlIG9m
IGRyaXZlcnMvcGh5LyBpcyBkaXNjb3VyYWdlZCwKPiA+IGFsdGhvdWdoIGl0IHdvdWxkIGJlIGRp
ZmZpY3VsdCBmb3IgbWUgdG8gYWRkcmVzcyBhIHByb3BlciBtb3ZlbWVudCBoZXJlLgo+ID4KPiA+
IEluY2x1ZGUgdGhlIHByaXZhdGUgcHJvdmlkZXIgQVBJIGhlYWRlciBmcm9tIGRyaXZlcnMvcGh5
LywgYnV0IGxlYXZlIGEKPiA+IEZJWE1FIGluIHBsYWNlLiBJdCB3aWxsIGhhdmUgdG8gYmUgbW92
ZWQsIGV2ZW50dWFsbHkuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogVmxhZGltaXIgT2x0ZWFuIDx2
bGFkaW1pci5vbHRlYW5AbnhwLmNvbT4KPgo+IEZhaXIgZW5vdWdoLCBpcyB0aGlzIGEgcmVncmVz
c2lvbiBzbyBJIHNob3VsZCBtZXJnZSBpdCBmb3IgZml4ZXMKPiBvciBqdXN0IGEgbm9udXJnZW50
IGZpeCB0aGF0IEkgY2FuIGFwcGx5IGZvciBuZXh0PwoKU29ycnkgSSByZWFsaXplZCBpdCBuZWVk
cyB0byBnbyBpbiB3aXRoIHRoZSBzZXJpZXMuClJldmlld2VkLWJ5OiBMaW51cyBXYWxsZWlqIDxs
aW51c3dAa2VybmVsLm9yZz4KCllvdSBjYW4gdGFrZSBpdCBmcm9tIGhlcmUuCgpZb3VycywKTGlu
dXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
