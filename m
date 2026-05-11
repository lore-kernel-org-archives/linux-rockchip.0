Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2DDACD37AC
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 May 2026 04:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r5ZXK5o1bHOtZPNykiFU7T0qxYWnNn6PnhSwZFK0/bA=; b=ICuqDA+YdOs26g
	KWrlGqR9f/HMF/LYP9KVu+se/Y6Y5FAA/Sp+CuDjRJXbtu7VUWW/yw4QK/ruanQS4V0hLBZmZCObj
	LZc8jqEm2mWFD7qsyp9dJGZ+tDAgy1z2rWHya9Yln5S6Zv+h6TgB7zg7WvniCHtvJgE0ot0iSjoGa
	Y+prr6z12HWAZNDZ71uRW3fBxMcNS9yPpoUkIki3oZnOYZSuTfkRIbFEtEnH58b5TlmyMKXlOAv5G
	ImzIkOGG8XAD5ClVBJ8bROJLlSGCX8ioEuYT6J0cjJk8dXWjKaYzmcuxRTXQMILD8nKUqpn5LbEWB
	6gw/YO8X/W0xq8pWwYNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMI9p-0000000CFpG-2JOx;
	Mon, 11 May 2026 04:22:17 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMI9n-0000000CFoK-2dZ6
	for linux-rockchip@lists.infradead.org;
	Mon, 11 May 2026 04:22:16 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-2ba3e3c4f87so35181095ad.3
        for <linux-rockchip@lists.infradead.org>; Sun, 10 May 2026 21:22:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778473334; cv=none;
        d=google.com; s=arc-20240605;
        b=bTTUHg/pJ4voSVnPhPu6ZMBIeKhN+45wxqS1qFIn75x+u0K5LxB9iKGVrspVfgxKlA
         j39b7W82XhnZta8oyC6frTfTVZV+JAoU50nB8ziOvYD/pKHnqJdh73PKjgYXRMsMFsxa
         P+p3p8CSbfGBLr2YqNOH2CxAqbfYNmeACi9m2zFwFkCLDQlW+ewo5xX7Qad34x11Oj27
         kCYynzjP1x9HMr38Ex5pEuxXHCVw7Rf72C+ur7sN2rp1/gojKuGTLa7K8Ndi5pRgbrtD
         Xir7G+XS9h0YI9x7DXmJA5n6XLGzpvE/44r4S4Pnpr6k+565lTonvK97Rc6RqW5hKM1q
         GmOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=OeHacbZXrsMU4ngrgTltuf0nP+fevY8eP/EXHUfGj+Q=;
        fh=CLW2X/OlBzkWGXxfWFQkCRhNue1qhiRIHpL1tHNtg/M=;
        b=ExyzqwcV+V1nsL1reFGzDknr14untdMKb3yaLRi9KH6E0EjtOjJr6a/GZERqOWSof3
         g2L10CT+F1pVA0qdBgcyRtnAtdgGkVBZc70H9IdwpmWuCTgpOVvdb2gqHQ5q2GKk6wz8
         fkCsFj94H47HqVuzzNnA5LPf3riSZd9Jst0G/26Btzh4Fg8f2nA6YCoc9X6lr3NtFjxF
         gs+dL8FdLZSc8/e9EV0RLbHG7qQhpopKfRHSSFRCs9M0enPMq2cTv0zxKhLmsuH+85sT
         Z3mwO2PphKu62DfLbbDtfiKWQVTlgXH3CaPBNmQLdX/mSbknckmreJL3CF5JI0M4DCR3
         GUew==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778473334; x=1779078134; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OeHacbZXrsMU4ngrgTltuf0nP+fevY8eP/EXHUfGj+Q=;
        b=Qd6Jl5wwWalIAgYGBUvpTVVF8lZrLrrz300qj/Qg9dGBCVZW3bft2anacsNTLr7WxO
         nMS+NsTjweI371vca8fpXyR34RnfbxFm8kh/pQlmacYo0zVdlMjH3/Q3Q0QpM5XJ7am3
         /P8iAHyEUQxzRA13GnQFKUx+ti7DZ927c6ya5gWs5KTvzrYSf8stUSQGrqsy4RgHgj9T
         i+8xNBAqWsk4C9+Po8qF1IZXLHgbpdJnbwvZoKQn0VhhRghFmZwt5hw1MYRXFi6VvC56
         aIYl8y+7Me96t4+brJWRS1T9mq+nb0fWuksaeBaH5+1At0nVN9uHImKak9qxJhyUu60m
         gu5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778473334; x=1779078134;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OeHacbZXrsMU4ngrgTltuf0nP+fevY8eP/EXHUfGj+Q=;
        b=A1uYdRk7tl3FU8wockp4E0Ie96z5PRF2DzZRpCPUIKJdPyLLN57J/81rO/xXX0WZlr
         o0v25AsdgRQS/+VhBIciu1gAFbRy5f9wBPdfVqghG3IdQ0be9YIHLSbIjv+sfYEDduPB
         g0+KSz5JF0h0vFPArk/deXTrjZQ246v9Vlj0sPNhNq/eLqWi0pY4NogbEUOWmlRhzvZx
         jmOHs+1R6B+h4Zz41QzLW5JBgXVAwt9vFerGHoqWKQrvNGi7IR8eueiIudUTaNSh5upf
         h3Cu9clKTAJN/X0I4k4ypKw28tZWgYuOH3HHz28vjt/aZvjLQvk+ELjgJuD3YlFgfxFd
         iwRw==
X-Forwarded-Encrypted: i=1; AFNElJ9tWjRIZ7pcX6wuXVCvfksOH4PxUzZSazTVpFjaemNNXZc81YPq/oqraLvIXi03lx23dJd7FosEsFPWxeD7tw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwZGrPEDsNBG7SgXZXH/YF+4eS6SLFfBkXbmQP227yVpWt7J9v/
	PfD9r2x1dQlUYuzZcigcovQgaEzQssCoItVG2XF6aDUe5vyyg89Hw5akFbHD4Fw/ajEiKmwGvrn
	qNlCKSp1eeHv8LCLKNogstfmUka9ifMY=
X-Gm-Gg: Acq92OFLUtjeEdyzbk4U1aB56LMNDk1EHUQ94ap88xeS/UAOpyz6BmZD9AEPhJiAQBd
	ge4GQMJha2bt8f107sL8w4A7dPrpHXbZqC6DQYUcgQFMONhnMqHmH09Lal1fCBKMJBSMej4alR0
	DoUEw0gu7N09KIsG4XRGb5mNRdDgpcPbSdK7BDYIWYoiDOu8de/m90Ds+2VE1XMGVVsd0qQj7MT
	YcCGrX/sy0arpCnF5yTcAdLG31EVkA/6vctoXa9WBXm4eREqTK6t9EECoaCze5bJhNU9qyUwaHN
	e5gcVx29YWYw3C6G1+0XusqIBGYQbXQ4XAaPaw/D1sxuA/Xd2VFiSKQj4AE=
X-Received: by 2002:a17:903:13ce:b0:2b4:62bd:ee3 with SMTP id
 d9443c01a7336-2ba79c2cfffmr234513675ad.33.1778473334534; Sun, 10 May 2026
 21:22:14 -0700 (PDT)
MIME-Version: 1.0
References: <20260423042831.21114-1-phucduc.bui@gmail.com> <20260423042831.21114-2-phucduc.bui@gmail.com>
 <20260423-ingenious-psychedelic-jaybird-40bb4d@quoll> <CAABR9nGH4yZcgyzm=wNYVHB2vLhojZJSHKOC6dSeQPm0rbh4KQ@mail.gmail.com>
 <ce219aa2-0bb1-4a74-b40d-bd753f1a22dd@kernel.org> <CAABR9nHaGBU9KAWJZrnBy8HO0Waccp8CCGmBdKJ3QOEb8WZsXA@mail.gmail.com>
 <20260505211006.GA3875657-robh@kernel.org>
In-Reply-To: <20260505211006.GA3875657-robh@kernel.org>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Mon, 11 May 2026 11:22:00 +0700
X-Gm-Features: AVHnY4Ilmsly8mVMu2VKK2pF9rv7AIJO9kq9XO5ctET-fhRje978uj2nKP4vMgU
Message-ID: <CAABR9nHEVsS_Tf6Y7AXnLJwsDahwn+o1vS5dd27m4QLQAixL_A@mail.gmail.com>
Subject: Re: [PATCH 2/2] ASoC: dt-bindings: drop redundant wakeup-source definitions
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Joseph Chen <chenjh@rock-chips.com>, Chris Zhong <zyw@rock-chips.com>, 
	Zhang Qing <zhangqing@rock-chips.com>, David Rau <David.Rau.opensource@dm.renesas.com>, 
	Animesh Agarwal <animeshagarwal28@gmail.com>, devicetree@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_212215_675310_A0D8392E 
X-CRM114-Status: GOOD (  23.74  )
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

SGkgUm9iLCBLcnp5c3p0b2YsCgpPbiBXZWQsIE1heSA2LCAyMDI2IGF0IDQ6MTDigK9BTSBSb2Ig
SGVycmluZyA8cm9iaEBrZXJuZWwub3JnPiB3cm90ZToKPgo+IElmIHRoaXMgd2FzIGEgcHJvYmxl
bSwgdGhlbiBpdCBwcm9iYWJseSB3b3VsZCBoYXZlIGJlZW4gZml4ZWQgYWxyZWFkeQo+IGJlY2F1
c2UgaXQgZ2VuZXJhdGVzIGEgd2FybmluZy4gQW4gSTJDIGRldmljZSBwcm9iYWJseSBpc24ndCBh
bGwgdGhhdAo+IGNvdXBsZWQgdG8gU29DIHBvd2VyIHN0YXRlcywgc28gYm9vbGVhbiBpcyBwcm9i
YWJseSBhbHdheXMgZ29pbmcgdG8gYmUKPiB1c2VkIGhlcmUuIEJ1dCBtYXliZSBub3QuCj4KPiBJ
ZiB3ZSBkbyBhbnkgY2xlYW51cCBoZXJlLCBJIHRoaW5rIHRoYXQgc2hvdWxkIGhhdmUgZXhhY3Rs
eSAxIGxvY2F0aW9uCj4gdGhhdCByZWFkcyB0aGlzIHByb3BlcnR5IGluc3RlYWQgb2YgNzcuIFBl
cmhhcHMgdGhlIGRyaXZlciBjb3JlIGNhbiBqdXN0Cj4gaGFuZGxlIGV2ZXJ5dGhpbmcgYW5kIGRy
aXZlcnMgZG9uJ3QgaGF2ZSB0byBkZWFsIHdpdGggaXQuCj4KClllcywgdGhlIEkyQyBjb3JlIGFs
cmVhZHkgaGFuZGxlcyB0aGUgJ3dha2V1cC1zb3VyY2UnIHByb3BlcnR5IGNlbnRyYWxseTsKdGhl
cmVmb3JlLCBpbmRpdmlkdWFsIGRldmljZSBkcml2ZXJzIGRvIG5vdCBuZWVkIHRvIGltcGxlbWVu
dCB0aGVpcgpvd24gaGFuZGxpbmcuCgpXaGlsZSBubyBJMkMgZGV2aWNlcyBjdXJyZW50bHkgdXRp
bGl6ZSB0aGUgJ3BoYW5kbGUtYXJyYXknIHR5cGUgZm9yCnRoaXMgcHJvcGVydHksCndlIHNob3Vs
ZCBlbnN1cmUgdGhlIGluZnJhc3RydWN0dXJlIGlzIGZ1dHVyZS1wcm9vZi4gSW4gY2FzZXMgd2hl
cmUgYQpwaGFuZGxlIGlzIHVzZWQsCmFkZGl0aW9uYWwgZmlybXdhcmUtbGV2ZWwgaGFuZGxpbmcg
bWlnaHQgYmUgcmVxdWlyZWQgZGVwZW5kaW5nIG9uIHRoZQpTb0MgYXJjaGl0ZWN0dXJlLApzaW1p
bGFyIHRvIGhvdyB0aGUgbV9jYW4gZHJpdmVyIG9wZXJhdGVzIG9uIFRJIFNvQ3MuCgpSZWZlcmVu
Y2VzIGZvciB0aGF0IGltcGxlbWVudGF0aW9uIGNhbiBiZSBmb3VuZCBoZXJlOgpGaXJtd2FyZTog
aHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjcuMS1yYzIvc291cmNlL2RyaXZlcnMv
ZmlybXdhcmUvdGlfc2NpLmMKRFRTOiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92
Ny4xLXJjMi9zb3VyY2UvYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1hbTYyYTctc2suZHRzCgpU
byBhZGRyZXNzIHRoaXMgYW5kIGFsaWduIHRoZSBjb2RlIHdpdGggdGhlIGNvcmUgc2NoZW1hLCBJ
IGhhdmUKcHJldmlvdXNseSBzdWJtaXR0ZWQgcGF0Y2hlcwp0byB0cmFuc2l0aW9uIHRoZSBJMkMg
Y29yZSBhbmQgY2xlYW4gdXAgdGhlIG1fY2FuIGRyaXZlcjoKCkkyQyBjb3JlIHBhdGNoOgpodHRw
czovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA1MDUwNDMxNDUuMzMyODQtMS1waHVjZHVjLmJ1
aUBnbWFpbC5jb20vCm1fY2FuIHBhdGNoOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAy
NjA1MDQwNTA3MDIuMzQwMTMtMS1waHVjZHVjLmJ1aUBnbWFpbC5jb20vCgoKPiBJdCdzIHJlYWxs
eSBvdXRzaWRlIHRoZSBzY29wZSBvZiBhIGRldmljZSBiaW5kaW5nIHdoYXQgaXMgdXNlZCBmb3IK
PiB3YWtldXAtc291cmNlIGFzIHRoYXQgZGVwZW5kcyBvbiB0aGUgcGxhdGZvcm0uIFNvIEkgdGhp
bmsganVzdAo+ICd3YWtldXAtc291cmNlOiB0cnVlJyBpbiBkZXZpY2UgYmluZGluZ3MgaXMgZmlu
ZS4gSSBkb24ndCB0aGluayB3ZSBoYXZlCj4gdG8gY2hhbmdlIGFsbCB0aGUgZXhpc3RpbmcgY2Fz
ZXMgZWl0aGVyLCBidXQgdGhlIHBhdGNoZXMgYXJlIGFscmVhZHkKPiB3cml0dGVuIHNvIEkgZG9u
J3QgaGF2ZSBhbiBpc3N1ZSBhcHBseWluZyB0aGVtLgoKVW5kZXJzdG9vZC4gSSB3aWxsIHVwZGF0
ZSB0aGUgY29tbWl0IG1lc3NhZ2Ugd29yZGluZyBpbiB0aGUgbmV4dAp2ZXJzaW9uLgoKQmVzdCBy
ZWdhcmRzLApQaHVjCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
