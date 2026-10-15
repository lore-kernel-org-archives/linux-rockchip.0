Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A609BCC6B33
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 15:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzVPslcpM8OjOaLyZgaSJrFLdV6P3SSc83aIR52rkWU=; b=bBIgU7tn0Q8Ehd
	e6fdJY5KbKkIEweJ2WSh7t5OKmPFIKaXwhQ2/W+ueLBBig+LqSdRxDdsrTfjehrCDVm5slVEk+uvv
	5hecA8JqDDF84LBSswMVM/aLe+v12EXK5lzYy3D0k388kuodqf/FNT2Oe1JzB2AGs2lRTroZMPtBz
	i5VQBgmR0zSqc8cnBrziRpiXvXMg3f92wmov/NLoBmZqqOyhFMy51qV4eWhrio0TciOuVp1WhC98v
	vDaE8u+hgBab62Bc28sDhQAQkoX5EFfaj55pzW6aabhTdJQ/Zmaz1r0laQpUrxAXSymx1XAFZ8wr3
	+u9yRxJ9DBjb0duGzyYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHMyt-00000000UZN-3rT7;
	Thu, 15 Oct 2026 15:02:55 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHMy2-00000000ThR-2pF8
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 15:02:06 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-383b4a3755fso1123911a91.3
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2026 08:02:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792076521; cv=none;
        d=google.com; s=arc-20260327;
        b=fuyXmE14fiF86JeqPA9lnJ2jFP2HAFsM9RyRgCgyHC0+KH1P8iLF0EBCaVp7LPexB9
         lR1TGjw/GQtFezsGQUb1MOTrXQy7hZPMa6GvVbE04tN3OcnCNdkHLqm8HEUTxNd6mYqz
         ja8ZcDtnvBD+SUL0RMZPPfQi/J44B7zpv9qX5gc/oBQ0ac0WpjIW3M3NZWcg0jgvb+M4
         wKP0chw9NJ9rTdqIgVovm1v15+ZVqlvbSoyoOK7A99w/M+cRNZjrHHj1WDPUp4d1Or1V
         KrMSkN4Cs1o7Km/s2xYcWs/8okODo2xPGJ1OzpxyRwdGD4H3/EbhgE3UzA3H3d+RiePa
         7Qwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bNojCwSPIlR/KkOgGy6v/7yjRMePElwktJq6dhAQ7/A=;
        fh=74FloT41kXT29vbAR6DCXP0v6dFkO5buDh0sfuZ8btg=;
        b=WMfVCkTR5CO4XQjob7zQ2z7Q+gQWUS9EyKmsm/w0cc8vzInapXdjmX49441+q9NpPs
         ezKrM1ttX1XHY+Fv6pCt+BbfxVXZDF9uQI5oG6mIqsm+Xydc/ctbXH19RuXeNTCOjr1Z
         XYT0PbhxNiVWQjkU2Z29Ubo2SiMqUyUb+nrUkhTJ2VyiRBwMuA1v44fpBXMjBzuT7TM2
         ckLpkl8E1v259GYPW2Tbcw9quRolD6AKRmVi/IN4KMFR3eKNhWsg1HS9pZPyTqlO1tyY
         pwSuYRlAm75WRrd8p/ARUmlu42h0McDAXdLRUPiMQLUj+JVLG8h3bBNXg1JQoY8ZgLpv
         gQZg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792076521; x=1792681321; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=bNojCwSPIlR/KkOgGy6v/7yjRMePElwktJq6dhAQ7/A=;
        b=Qbr9/321uQg/O6dtc4QL/4EMlghPC9659aNmNzKR68pAuxqDKEp25Q5JbCSTY16AU/
         eL7SVQP0kkzo5NHoa50+oJVi+iTd1+k86E3+7qsLov90Ze+FwvHDiaF2DvQLN1Qj0RNF
         2+MBy0PySgaJId6PH4I5IwktwrNliZLHnGTbmQAiP7ySAaQRGPy3CxDw6Z9xEpkAXWs4
         0RNiH1thOCyEpfKQg6d+STgXs1oNPIrmL0dLrt4DiQhX7bOUVPo/ZSYQ0e4zZSbHumbo
         FkGH4ankEuKzloBYIdSXbFyz1o5WqoOaUWrl7GUBdZrYCSSsPYn4DkXPP5wqXek1WiHs
         fvEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792076521; x=1792681321;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bNojCwSPIlR/KkOgGy6v/7yjRMePElwktJq6dhAQ7/A=;
        b=HCS82yZWiWkjekPgRo+oBXJk0ah5rJiXpaO7GH/O9M+1ITAtpO7gilbxeMVtEKHGMe
         +jAtifqC6yaITNBUMw6UKH9F5p72nqERMSdz3+Yno73lH0N9H1uJXPSAoYcACy02xS2g
         vJSHHRQveZiw8avao26lkwUyYpxJ4MhxrOEaeD1uYeeyEyKRgAiaUjWgS58sET1ExfIU
         I2DIk3jW2gSwh/6NPzVpZGWVP5eauAzbfX+pAvHrRCL8vvNp7FF/h+wAB4FkwWPbq3b0
         A50KTEFYkodObAshiO6fgbfrVGIXJbNPQVUV6akQ9HihyM+iAlzD8wDT490ly3Az6DPq
         QOXw==
X-Forwarded-Encrypted: i=1; AKwUvBzg6MGXJW1o+Z8fSXE/pUdtrK8SjT517YZIAo0TlyjfW71fGPRuwZx8Bk49L5AMCfg+QtCmTGya6u1Ii5BGNQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYLG0XXl88HDZv9Mvdkv/YfykzWLZNb6r4nkJGbdmzpQTywnXdM4
	jlREHgxUG8merzVc9ByL07F/o9KkA3DBCIZFgKzC9TkSAPhwd/9NmHOGlVS8WrN3WMy6p02ItPi
	7NR4R/XXB8euihgv4dVWKPoaPayZd6VI=
X-Gm-Gg: AYBFou3E6b9RDI4Nx+vRjAI3sptJBu/guOus+xxTFiNwYktiisp2PYAdJy0LTdCtt4c
	i0plIIKmfsj5cH0teJRCbirwr6lZQWPBNDSaZUXhPQdAp24JIUnk4fuYnhjiELzSgYunXsHAPWK
	tSaJKQiAdBChSUwF+7UC89GE+VtxThGveeRNboAOA9MpcNIsocC5lTPXWnLDukTWAn3NyEaSVqw
	A+t5oVn6z4ocjvx9SqT+QZefKs+WKiyDyfbTitvFh9V6ceKEpu8xp7YEpADgk0znqZh9O2Ut1rH
	Yr4z6vPZgI1PYEolSUOR9CqTQ+ISKzmW7fbPrzf7RGbFRjUXSZk4CYiAs/Skaih3UgEi20Sc5rL
	8rbe37UIUdkiZ6Ajoa4INWgcFyLF7a4CgWZpAHk+Li2H+jbQOsMkIE8yWFyBedALr31s+
X-Received: by 2002:a17:90b:4d0b:b0:3ab:1285:dfd6 with SMTP id
 98e67ed59e1d1-3ac6f2952e2mr5293396a91.38.1792076520686; Thu, 15 Oct 2026
 08:02:00 -0700 (PDT)
MIME-Version: 1.0
References: <20261014-nanopi-m6-improvements-v1-0-e713f71eb4d3@gmail.com>
 <20261014-nanopi-m6-improvements-v1-1-e713f71eb4d3@gmail.com> <d7db7de5-4972-4dd0-85a3-e310dcabc41e@rock-chips.com>
In-Reply-To: <d7db7de5-4972-4dd0-85a3-e310dcabc41e@rock-chips.com>
From: Joachim Eastwood <joachim.eastwood@gmail.com>
Date: Thu, 15 Oct 2026 17:01:48 +0200
X-Gm-Features: AclHuK_kT3T7rBZ4r_lp0uxm1snQeoydsZmEkfjppf8MxTDec8cdMHuYYUHsJEU
Message-ID: <CAPSPb=vTtNfm8oJu1p5znaW=Z2argekQgmXdVAo2OWD_33A-+g@mail.gmail.com>
Subject: Re: [PATCH 1/9] arm64: dts: rockchip: rk3588s-nanopi: fix sd min/max voltage
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Diederik de Haas <diederik@cknow-tech.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_080202_862058_AF59C0A0 
X-CRM114-Status: GOOD (  12.09  )
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

SGkgU2hhd24sCgpPbiBUaHUsIDE1IE9jdCAyMDI2IGF0IDA0OjI2LCBTaGF3biBMaW4gPHNoYXdu
LmxpbkByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBIaSBKb2FjaGltLAo+Cj4g5ZyoIDIwMjYv
MTAvMTUg5pif5pyf5ZubIDA6MzMsIEpvYWNoaW0gRWFzdHdvb2QgdmlhIEI0IFJlbGF5IOWGmemB
kzoKPiA+IEZyb206IEpvYWNoaW0gRWFzdHdvb2QgPGpvYWNoaW0uZWFzdHdvb2RAZ21haWwuY29t
Pgo+ID4KPiA+IFRoaXMgcmVndWxhdG9yIGlzIG9ubHkgYSBzaW1wbGUgcG93ZXIgc3dpdGNoIGFu
ZCBjYW5ub3QgY2hhbmdlIHRoZQo+ID4gb3V0cHV0IHZvbHRhZ2UuCj4gPgo+Cj4gSXQgd291bGQg
YmUgYmV0dGVyIGlmIHlvdSBjb3VsZCBwdXQgdGhlIHNjaGVtYXRpY2ludG8gdGhlIGNvdmVyIGxl
dHRlcgo+IHNvIGZvbGtzIGNvdWxkIGNoZWNrIGl0IGVhc2lseS4KCldpbGwgZG8uCgo+IGh0dHBz
Oi8vd2lraS5mcmllbmRseWVsZWMuY29tL3dpa2kvaW1hZ2VzLzgvODUvTmFub1BpX002XzI0MDVf
U0NILlBERgo+Cj4gUmV2aWV3ZWQtYnk6IFNoYXduIExpbiA8U2hhd24ubGluQHJvY2stY2hpcHMu
Y29tPgoKVGhhbmtzIGZvciB0aGUgcmV2aWV3cy4KCgpiZXN0IHJlZ2FyZHMsCkpvYWNoaW0gRWFz
dHdvb2QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
