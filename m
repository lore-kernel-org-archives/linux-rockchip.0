Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B28ABCD8C8C
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Jun 2026 11:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6RVwEtcOsvtqSAQpm3yp7LOfv+THAKejplzXfRm8aE=; b=glwCay8H4MFznZ
	seL5DIg9cKZ8nl2FpP34d/UHNRA0jGafFGHRvlm+0AUG+Ky/eVwrnbt0THKEJr1SyFa9a6kNMPKrx
	UopUxdcic8N9cz5jwr9aSUraeQNcqm6H6cbtsx6Wxf/Ndh/6hDeCxm3O0lVOrCBLlcKdpSs8TmXrf
	SE1dVryrFh0zxKzEbY5fKEOzXPwVJ+M69qA37VgKN/QuPkUJ8ybGu3CxpIp/6YO13PXAUFqkh5ZFw
	PcLSdwLz+j/dlj8qkbb4VqveoPrXYuYjgUsYqHVimkphBan+XVIkz4rYT/hvzJ5a/GxdAIWsTef/6
	Q2UUbsTMK2N5etvq/EVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWC8K-00000002E9M-2FxK;
	Sun, 07 Jun 2026 11:57:40 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWC8H-00000002E89-2JGd
	for linux-rockchip@lists.infradead.org;
	Sun, 07 Jun 2026 11:57:39 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-7e6e21c47e6so1493634a34.1
        for <linux-rockchip@lists.infradead.org>; Sun, 07 Jun 2026 04:57:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780833456; cv=none;
        d=google.com; s=arc-20240605;
        b=CN95q0ftg9ILh9bq3I3GZcyghunkBB7sKqCy++Vk4SONJqFAEb625jqxjeHsf4OkaT
         KPoq/EX+wKgP0DnUeExoWnF+qMhpTepQpu/nyUqkSQdQJzInrtnKXBXC0nHTKfarv7DO
         JPezl23DXVD/bJyjEoOMAOz4Bz2R1hb7T3x9E6mk7fgQ84pOKIwbUpyuHntGWfe8ktDz
         eZhigYcoIbi/uGl+vU4HsDfSIHFvns9+VANW/M2c3SgYb75mrlDe/tkp6xcuqMYfNRSu
         lpEHbaHp1KMA6v8muOId3cxJzofUNBcAIjGjF3gP4KV0Or9kzblppN5yEBDgzwK+RtSW
         6FTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=j9h3BEv4ybPahVYDpfjJtvwrAcdt2dlCFy6zwAbCCRw=;
        fh=9c4FTN50hV2ICCUKmBlfqksQag1ZGkDYlOgaLdZnKtE=;
        b=W1BXEXs3IjD9ayowhKMuPFAPxt1q/WF0tFN+UBvbusp349qaeQ61QsJWB/AjBwjhi5
         KdpPlurBQwEfpRCnyHC1oFvpjjL7PrwQ+kbzZZic27uOZhKo202W9tDCpul970LsEQqn
         ITM4DkROzaWBRxMj+dQYmc8Bl7TLHDE7vi59z9OAT/tRH54YLPPG3bQRYG0/xJwytPL8
         ejJcE9+a8xhWJbyK2M1tLLndG6E/fLOhZ8vCojx+CwF3N7A+d7eUKpVK/AEnQTbhQV1B
         8raWFxG/K9aR4/zJqlWmrRdKZcn87voYMvzf021/S6+Cbm0NiJ3Fkr1lsTs23RGNBczO
         vP1A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780833456; x=1781438256; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j9h3BEv4ybPahVYDpfjJtvwrAcdt2dlCFy6zwAbCCRw=;
        b=K+WAYoTJ1NzwyOnoA7+UqoPhIn2xJi77qkfiHkkhyPfjvxAhwVX6guq8Nz2ZblFo7m
         GVqa/YvGVtZBiCplMLFOO1z5jqHjH2LkhtMWpTX7MsahzSO5jH9bZPjnC/uwraNDyybW
         sTANotNSuGz0LpVr1rZ4ek4UaryTv4fTMZvx9Wn9JetM6JBc2DAH9J2p8X+AdzN+SJ6J
         r+AEFWNuOLvOPELzHhqHGdzXYOABMa/0iVgL02DR1c5WCKZ+0OmIvGuV2RMHchE2iUvR
         j8ascfNKWHADfGEkcPYaB94Zk2QADLAt53wQ/LNIbO7Hy6NEUakgtMXY7fu/RQzq6ymL
         aW6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780833456; x=1781438256;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j9h3BEv4ybPahVYDpfjJtvwrAcdt2dlCFy6zwAbCCRw=;
        b=CW/pOw2Lpv2OvrridJqfCBK9VNfFaNCkJp5tKprWwuvd5dRiqXsKo2qD+irsTU/MMr
         6YvcLv0zuEeGVfrleLdZ1cGwWICUgSfbCwomjRnL6mJS7jIXIO3IbousFQcBZKPBgNio
         r6pvQxeB8VgKtcKcelieOn/15rK0FczichNj6USifl5GE9Bh0AQP9kALopKxO7MLh319
         Kdz1i3S7xjV+ougrYJn5PxYH7i3Z9DfRB0z5EpOcjM2GRYDLzBoZZwXWohteEdj2qtou
         VZALVvTv89oppJzHLjzDumeFrVHFDDV5zHt+OXR+rfzym+G0ICpYB7zhq0cUCJcfpFtV
         wJiw==
X-Forwarded-Encrypted: i=1; AFNElJ/aYDC+VdWsRgC7F0eHryBQyO0ScdaMsmNqNaF7zh0CdjqJAQh6MKsgEDSfUD1mBV8ni0SmlRpRzaYsz+9+nw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyggwPKA7NbnP2VMjNIRyBwvEiY69TgOuZL/T6yuvZwd2mZ6NBq
	J3ly6LIw+EVTZq889aBGgiRscYTunduxCpcv33cBWTOYXwohXzuNqHrl6f6U08714Ib9cq73RXi
	LvUE9lRiye0PnCXZ52WgRjjIpECkELwo=
X-Gm-Gg: Acq92OFELrO562A/W5kGoWaApFOMIJE16Oelqf2ggWfofq//IF/hD+jCs/fmP7RNKT0
	cxc7E1jm/fNdJYGKAlOYthDfo8Z5mqlJO59hjC7XERLYwmWMf38OTZkdtfv1U4pd4jg5+OrJnR+
	BDSc6p1FX/Y5/UbdcD0NyjGQ4/XS1Bw8mgRQnHkrJ7099kxJ0OtOpT01oqC1s65RWeoKlyMOUDi
	mlXCqiFJvl1PRbWp11eWeA+jek/CeOTRP0sP4Ph75goEpZ9Jols0Ou/FBrUHsqSASfqcFsN7/ml
	hyl0xPJ0fmBpdKnFpqk=
X-Received: by 2002:a05:6820:4b10:b0:69e:3e2a:a83f with SMTP id
 006d021491bc7-69e68b1b89dmr5965848eaf.9.1780833455855; Sun, 07 Jun 2026
 04:57:35 -0700 (PDT)
MIME-Version: 1.0
References: <20260604123224.192543-2-diogompaissilva@gmail.com> <5277524.h16uAIiOU7@phil>
In-Reply-To: <5277524.h16uAIiOU7@phil>
From: Diogo Silva <diogompaissilva@gmail.com>
Date: Sun, 7 Jun 2026 13:57:24 +0200
X-Gm-Features: AVVi8CeS1DNJb0AdX_LRZZVsQf_W_fU1VPXBidKJmKeVdQ9Na8oOOSQePlAqJH8
Message-ID: <CAJpoHp41+mLPWsu0EpCHkNz_z3=+tGqfh0cDKEaCWxwoYOm_Jw@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: dsi: Open-code drm_simple_encoder_init()
To: Heiko Stuebner <heiko@sntech.de>
Cc: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260607_045737_601791_D515E34E 
X-CRM114-Status: GOOD (  26.39  )
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

SGV5IEhlaWtvLAoKPiB0aGlzIGRlc2NyaXB0aW9uIGlzIG1pc3NpbmcgYSByYXRpb25hbGUuCj4K
PiBMb29raW5nIGF0IHRoZSBkcm0gZ2l0IGhpc3RvcnksIEkgZ3Vlc3MgaGVyZSB5b3UgY291bGQg
YWRkIGEgc2Vjb25kCj4gcGFyYWdyYXBoLCB3aXRoIHNvbWV0aGluZyBsaWtlOgo+Cj4gLS0tLS0t
LS0tLS0gODwgLS0tLS0tLS0tLS0KPiBUaGUgaGVscGVycyBoYXZlIGJlZW4gZGVwcmVjYXRlZCBm
b3IgeWVhcnMgYXMgdGhleSBvbmx5IGFkZCBhbiBhbgo+IGludGVybWVkaWF0ZSBsYXllciBiZXR3
ZWVuIGF0b21pYyBtb2Rlc2V0dGluZyBhbmQgdGhlIERSTSBkcml2ZXIuCj4gLS0tLS0tLS0tLS0g
ODwgLS0tLS0tLS0tLS0KPgo+IFNoYW1lbGVzc2x5IHN0b2xlbiBmcm9tIHRoZSBUb2RvIGl0ZW0g
Oy0pCgpUcnVlLiBJIHdpbGwgYWRkIHRoZSByYXRpb25hbGUgdGhlbi4KCj4gQW55IHJlYXNvbiBm
b3Igb25seSBjaGFuZ2luZyB0aGUgRFNJIGRyaXZlcj8KPgo+IExvb2tpbmcgYXQgWzBdIGEgbnVt
YmVyIG9mIHRoZSBSb2NrY2hpcCBkcml2ZXJzIHVzZSB0aGUgc2FtZSBwYXR0ZXJuOgo+IC0gZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJvY2tjaGlwLmMKPiAtIGRyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jCj4gLSBkcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvZHctbWlwaS1kc2ktcm9ja2NoaXAuYwo+IC0gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3
LW1pcGktZHNpMi1yb2NrY2hpcC5jCj4gLSBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRt
aS1yb2NrY2hpcC5jCj4gLSBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2Nr
Y2hpcC5jCj4gLSBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcmszMDY2X2hkbWkuYwo+IC0gZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2x2ZHMuYwo+IC0gZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JvY2tjaGlwX3JnYi5jCj4KPiBZb3UgY2FuIGp1c3QgZG8gYWxsIFJvY2tjaGlw
IG9uZXMgLSBldmVuIGluIG9uZSBwYXRjaCBJIHRoaW5rIDotKSAuCgpZZXMsIGluZGVlZC4gSSB3
YW50ZWQgdG8gc2VuZCBhIHRpbnkgcGF0Y2ggdG8gY2hlY2sgaWYgYWxsIG15CmNvbmZpZ3VyYXRp
b25zIHdlcmUgb2ssIGJ1dCBzaW5jZSBpdCBsb29rcyBsaWtlIHRoZXkgYXJlLCBJIHdpbGwgYWRk
IHRoZQpvdGhlciByb2NrY2hpcCBkcml2ZXJzIHRoYXQgaGF2ZSB0aGUgZGVwcmVjYXRlZCBmdW5j
dGlvbnMuCgpUaGFua3MsCkRpb2dvCgpPbiBTdW4sIDcgSnVuIDIwMjYgYXQgMTI6NTksIEhlaWtv
IFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+Cj4gSGkgRGllZ28sCj4KPiBBbSBE
b25uZXJzdGFnLCA0LiBKdW5pIDIwMjYsIDE0OjMyOjI1IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21t
ZXJ6ZWl0IHNjaHJpZWIgRGlvZ28gU2lsdmE6Cj4gPiBSZW1vdmUgdGhlIGRlcGVuZGVuY3kgb24g
ZHJtX3NpbXBsZV9rbXNfaGVscGVyIGJ5IG9wZW4tY29kaW5nIHRoZQo+ID4gZHJtX3NpbXBsZV9l
bmNvZGVyX2luaXQgY2FsbC4KPgo+IHRoaXMgZGVzY3JpcHRpb24gaXMgbWlzc2luZyBhIHJhdGlv
bmFsZS4KPgo+IExvb2tpbmcgYXQgdGhlIGRybSBnaXQgaGlzdG9yeSwgSSBndWVzcyBoZXJlIHlv
dSBjb3VsZCBhZGQgYSBzZWNvbmQKPiBwYXJhZ3JhcGgsIHdpdGggc29tZXRoaW5nIGxpa2U6Cj4K
PiAtLS0tLS0tLS0tLSA4PCAtLS0tLS0tLS0tLQo+IFRoZSBoZWxwZXJzIGhhdmUgYmVlbiBkZXBy
ZWNhdGVkIGZvciB5ZWFycyBhcyB0aGV5IG9ubHkgYWRkIGFuIGFuCj4gaW50ZXJtZWRpYXRlIGxh
eWVyIGJldHdlZW4gYXRvbWljIG1vZGVzZXR0aW5nIGFuZCB0aGUgRFJNIGRyaXZlci4KPiAtLS0t
LS0tLS0tLSA4PCAtLS0tLS0tLS0tLQo+Cj4gU2hhbWVsZXNzbHkgc3RvbGVuIGZyb20gdGhlIFRv
ZG8gaXRlbSA7LSkKPgo+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEaW9nbyBTaWx2YSA8ZGlvZ29tcGFp
c3NpbHZhQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9k
dy1taXBpLWRzaS1yb2NrY2hpcC5jIHwgOSArKysrKysrLS0KPgo+IEFueSByZWFzb24gZm9yIG9u
bHkgY2hhbmdpbmcgdGhlIERTSSBkcml2ZXI/Cj4KPiBMb29raW5nIGF0IFswXSBhIG51bWJlciBv
ZiB0aGUgUm9ja2NoaXAgZHJpdmVycyB1c2UgdGhlIHNhbWUgcGF0dGVybjoKPiAtIGRyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9hbmFsb2dpeF9kcC1yb2NrY2hpcC5jCj4gLSBkcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYwo+IC0gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3
LW1pcGktZHNpLXJvY2tjaGlwLmMKPiAtIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBp
LWRzaTItcm9ja2NoaXAuYwo+IC0gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9j
a2NoaXAuYwo+IC0gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9ja2NoaXAu
Ywo+IC0gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JrMzA2Nl9oZG1pLmMKPiAtIGRyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9sdmRzLmMKPiAtIGRyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9yZ2IuYwo+Cj4gWW91IGNhbiBqdXN0IGRvIGFsbCBSb2NrY2hpcCBvbmVz
IC0gZXZlbiBpbiBvbmUgcGF0Y2ggSSB0aGluayA6LSkgLgo+Cj4KPiBUaGFua3MKPiBIZWlrbwo+
Cj4gWzBdIGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y3LjEtcmM2L0EvaWRlbnQv
ZHJtX3NpbXBsZV9lbmNvZGVyX2luaXQKPgo+Cj4gPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLXJvY2tjaGlwLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvZHctbWlwaS1kc2ktcm9ja2NoaXAuYwo+ID4gaW5kZXggMzU0N2Q5MWIyNWQzLi5hMDli
MzgyZDIwOGUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlw
aS1kc2ktcm9ja2NoaXAuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1p
cGktZHNpLXJvY2tjaGlwLmMKPiA+IEBAIC0yNSw3ICsyNSw2IEBACj4gPiAgI2luY2x1ZGUgPGRy
bS9kcm1fbWlwaV9kc2kuaD4KPiA+ICAjaW5jbHVkZSA8ZHJtL2RybV9vZi5oPgo+ID4gICNpbmNs
dWRlIDxkcm0vZHJtX3ByaW50Lmg+Cj4gPiAtI2luY2x1ZGUgPGRybS9kcm1fc2ltcGxlX2ttc19o
ZWxwZXIuaD4KPiA+Cj4gPiAgI2luY2x1ZGUgInJvY2tjaGlwX2RybV9kcnYuaCIKPiA+Cj4gPiBA
QCAtODI1LDYgKzgyNCwxMCBAQCBzdGF0aWMgdm9pZCBkd19taXBpX2RzaV9lbmNvZGVyX2VuYWJs
ZShzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIpCj4gPiAgICAgICBjbGtfZGlzYWJsZV91bnBy
ZXBhcmUoZHNpLT5ncmZfY2xrKTsKPiA+ICB9Cj4gPgo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
ZHJtX2VuY29kZXJfZnVuY3MgZHdfbWlwaV9kc2lfZW5jb2Rlcl9mdW5jcyA9IHsKPiA+ICsgICAg
IC5kZXN0cm95ID0gZHJtX2VuY29kZXJfY2xlYW51cCwKPiA+ICt9Owo+ID4gKwo+ID4gIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgZHJtX2VuY29kZXJfaGVscGVyX2Z1bmNzCj4gPiAgZHdfbWlwaV9kc2lf
ZW5jb2Rlcl9oZWxwZXJfZnVuY3MgPSB7Cj4gPiAgICAgICAuYXRvbWljX2NoZWNrID0gZHdfbWlw
aV9kc2lfZW5jb2Rlcl9hdG9taWNfY2hlY2ssCj4gPiBAQCAtODQwLDcgKzg0Myw5IEBAIHN0YXRp
YyBpbnQgcm9ja2NoaXBfZHNpX2RybV9jcmVhdGVfZW5jb2RlcihzdHJ1Y3QgZHdfbWlwaV9kc2lf
cm9ja2NoaXAgKmRzaSwKPiA+ICAgICAgIGVuY29kZXItPnBvc3NpYmxlX2NydGNzID0gZHJtX29m
X2ZpbmRfcG9zc2libGVfY3J0Y3MoZHJtX2RldiwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZHNpLT5kZXYtPm9mX25vZGUpOwo+
ID4KPiA+IC0gICAgIHJldCA9IGRybV9zaW1wbGVfZW5jb2Rlcl9pbml0KGRybV9kZXYsIGVuY29k
ZXIsIERSTV9NT0RFX0VOQ09ERVJfRFNJKTsKPiA+ICsgICAgIHJldCA9IGRybV9lbmNvZGVyX2lu
aXQoZHJtX2RldiwgZW5jb2RlciwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZk
d19taXBpX2RzaV9lbmNvZGVyX2Z1bmNzLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgRFJNX01PREVfRU5DT0RFUl9EU0ksIE5VTEwpOwo+ID4gICAgICAgaWYgKHJldCkgewo+ID4g
ICAgICAgICAgICAgICBEUk1fRVJST1IoIkZhaWxlZCB0byBpbml0aWFsaXplIGVuY29kZXIgd2l0
aCBkcm1cbiIpOwo+ID4gICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4KPgo+Cj4KPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
