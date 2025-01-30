Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59D45C0218F
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jan 2025 14:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQNRWepnZGN3Lr61OpFcR7gZZHytFpsu0C2paFLD64A=; b=VUfvM98E8U8L+f
	BiO80FpsJTyK1+6Y/VwMvg9/5hpZj1ZqImEcoiGF6JDngvaHiL+CRtOMUTOm8LGq32+QSo2+ghuxC
	yVqhBIJapxi07Jc7aX1olm6icN3US7ks4cF2+HMv7xkJpRCPq+4+oywIC9aZ7mKnhmH3giX8TI0TU
	hXvaBbp0UzmHUTu0nJS+BVWXwFcmx7BJa126KoIxS0Rypk7xVDFYcamr1D/M4tXw8IvuNVEnvOZj2
	G0MnoigdrEErMktODpSKep/hkuM1SZFWVuXhtzqpd9yBnuEjA8QY9Ix/55M1KwkVfz+Uqm78KjglK
	9VNRaMHaJm4cPRRN5KZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdVxM-000000091f7-1cZ7;
	Thu, 30 Jan 2025 14:55:48 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdVw2-000000091VG-3uz5;
	Thu, 30 Jan 2025 14:54:28 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-ab68d900c01so168455866b.0;
        Thu, 30 Jan 2025 06:54:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738248865; x=1738853665; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qbp4EtOkuC+0iVMNyfHjqvPw/lKMjNnZSdESNc6UztA=;
        b=BrThh7VR/CGjTpkj53gliYLlb3K6plnw/OGhC0UY6/x4aI3TXoy6MVygC4lXqJnWdu
         1+ZGXrr9wdx5abpY/IK1aHH8WJGOi1Rt+f7t8guIT7GfHrpEkgjJDbSGe34OBtVfeiax
         JUSWfHfX8psyOQaM68gv6c8wMEJcFDJXkFyhAOJ21O7x9x4bV0HdgiPnSunZ+i0XQUiC
         DwjsCzt9xKJKcZy7mPsWafPfR2dZywZz9osTOHRuFuA7L9Cmt/NGABPUfqfYk2893LID
         U5sPkQ1a3jjF1d1t4Ch7LA29n+nWsoN4mhtO4tDQhst5dvxLgGc7aqa9qg0HLIeobj67
         WGtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738248865; x=1738853665;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qbp4EtOkuC+0iVMNyfHjqvPw/lKMjNnZSdESNc6UztA=;
        b=uoo3icRrgYQfDP5Kxvt5Iqg6RXxP5BMiPgdl4YdqXQ/2z9v+oV0bbtyxBm18R7Eb/O
         mSitfsxVFqSApvZaRRvH4QH1dcAIF1WFV5KACyAJuospJg7ZpGRMO99si8seMAu/AfwO
         HOjHlobM07MkH+3DO+ec7c3ZbJQHf8OKZdMLhLT/w1WA8TEVmrKDR4853a4m5t4bu1ef
         di7pWoL+vXE6yvsPBeNdGShPCtkt8pcAohhPNQ/71kpysHsKpZwfQr9lP2S9HKCXT+O6
         DSIkdemojMPQYhmfxHzYwaxPmY9fmprSLJN2bXES93VrS0MkpDabeAxEVHETdbZVETC5
         526Q==
X-Forwarded-Encrypted: i=1; AJvYcCW3NICVqKAhaKyjgivg6fD64axbORXO0rRH9R2LEDl4lx6zSWuqC0iTUuC2hA+mHC9rCHhstcOLhduydqVf5Tfs@lists.infradead.org, AJvYcCXoVbHgabLVgS/jr8JJI2j7dbZ9tHGda4q1Rf3sUh3GTHj9nohXAQvxI8dror2U3u7TtgRJjyeuBb7P0OYoR+w=@lists.infradead.org
X-Gm-Message-State: AOJu0YzdxUa009oloTb6eElBOmnV2JzVUXONMxS2r0UMOPdO9ZuT/QhN
	7is+v5NHkYp7ywmFV4vX+BB6/natphiixxmJpCopWJIEhVXF09EQ
X-Gm-Gg: ASbGncsm7GG+1mWnLznNTq2to7w8e6DSYvJNbG0rjP9dy19v/bV4BZVYRqW31kdg/96
	6ZU1zEmX3O6I2Ha6XxPjV+NqyQzdfUYatEqi9bRiGFpMS2UlcMcN9lLLnoQlANVM77Tmr5hP2BR
	LmyuInkXhOaG+RuBG6J4FbS6QJoSTwJAfroIQoNhWkCNM3q8CY4GF61aHI3qVQsMs1MmoZ2P5z7
	LPrkOZXlJC1CcASI1PTw6GK9y/YqzeOAHdSPJ1Z1ZowAR0FU8JxN+SgB6W2YnkNeZzYm0v0A5Id
	wyfESkTbBMDZGYV1wWipxeB7WqSnoIgBdlmqpDT/Dp0L90YXoX4c8oUJOMIS/Rd1foGANgOY
X-Google-Smtp-Source: AGHT+IEscLo+ZglJ4iQ8yhcikhYDyTBbGC16YkQrOwamLjmGj9mpYIbrbWr8u+H0RMfLebwCb6ojRw==
X-Received: by 2002:a17:907:1c13:b0:ab6:8bb8:af2e with SMTP id a640c23a62f3a-ab6e0cc500cmr358429766b.26.1738248864471;
        Thu, 30 Jan 2025 06:54:24 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e4a2fe78sm129297166b.125.2025.01.30.06.54.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jan 2025 06:54:24 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.300.87.4.3\))
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <278CF0E0-7277-40F3-942C-6FA61AA759A0@gmail.com>
Date: Thu, 30 Jan 2025 15:54:10 +0100
Message-Id: <B8B4C7CF-B2C4-48CE-84AD-52DF6002D17B@gmail.com>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <5969581.LvFx2qVVIh@arisu> <CE4343FE-94AA-4F84-8C43-8366013AED84@gmail.com>
 <8541055.T7Z3S40VBb@trenzalore>
 <278CF0E0-7277-40F3-942C-6FA61AA759A0@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>
X-Mailer: Apple Mail (2.3826.300.87.4.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250130_065426_973971_DFDDF088 
X-CRM114-Status: GOOD (  10.80  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@gmail.com>, Diederik de Haas <didi.debian@cknow.org>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VXBkYXRlIHRvIG15IGxhc3QgZW1haWw6IAoKPiBXaWFkb21vxZvEhyBuYXBpc2FuYSBwcnpleiBQ
aW90ciBPbmlzemN6dWsgPHBpb3RyLm9uaXN6Y3p1a0BnbWFpbC5jb20+IHcgZG5pdSAzMCBzdHkg
MjAyNSwgbyBnb2R6LiAxMTo0NjoKPiAKPiAKPiBJ4oCZbSB1c2luZzoKPiBodHRwczovL2dpdGxh
Yi5jb2xsYWJvcmEuY29tL2hhcmR3YXJlLWVuYWJsZW1lbnQvcm9ja2NoaXAtMzU4OC9saW51eC8t
L2NvbW1pdC9iYzQ3YzQ0NWJmZDk1ODYxMTVlOWJjZjVmMjMxYzVhNWM1ZjBmODI4Cj4gaHR0cHM6
Ly9naXRsYWIuY29sbGFib3JhLmNvbS9oYXJkd2FyZS1lbmFibGVtZW50L3JvY2tjaGlwLTM1ODgv
bGludXgvLS9jb21taXQvOWE5ZmQ3OTE1MTNiYzBkMDJjMjI0MmM4OGYyM2I0MWJkNDdkZTMwYQo+
IAo+IEkgc2VlIHRoZXJlIGlzOiBodHRwczovL2dpdGxhYi5jb2xsYWJvcmEuY29tL2RldGxldi9s
aW51eC8tL2NvbW1pdHMvYWRkLXJrdmRlYzItZHJpdmVyLWlvbW11Cj4gTGV0IG1lIHVwZGF0ZSBp
b21tdSBjb2RlIHRvIGFib3ZlIGJyYW5jaCBhbmQgcmVwb3J0IGJhY2sgaGVyZSBob3cgaXQgZ29l
cyBpbiAzNTg4IGFuZCAzNTZ4CgpJIHVwZGF0ZWQgdG8gaHR0cHM6Ly9naXRsYWIuY29sbGFib3Jh
LmNvbS9kZXRsZXYvbGludXgvLS9jb21taXRzL2FkZC1ya3ZkZWMyLWRyaXZlci1pb21tdSBhbmQg
YmFzaWNhbGx5IGkgc2VlIG5vIGNoYW5nZSAodGhlIHNhbWUgaW9tbXUgZXJyb3JzIG9uIDM1Nng7
IDM1ODggYWxsIGNsZWFuKSAgIAoKPiAKPiAKPj4gCj4+IFlvdSBjYW4gYWxzbyBjaGVja291dCBZ
VVZpZXcgKGh0dHBzOi8vZ2l0aHViLmNvbS9JRU5UL1lVVmlldykgdG8gZ2V0IAo+PiBpbmZvcm1h
dGlvbiBvbiBtZWRpYSBmaWxlcyBzdHJ1Y3R1cmUsIGJ1dCBJIGhhdmUgaGFkIGlzc3VlcyB3aXRo
IEhFVkMgc3VwcG9ydCAKPj4gbGF0ZWx5Lgo+IAo+IG9oIGdyZWF0LiB3aWxsIGRvIGFuZCByZXBv
cnQhCj4gCgpIdWggLSBoZXJlIGluIG5lZWQgdG8gc3dpdGNoIHRvIExpbnV4IGFzIG9uIG1heE9T
IGkgaGF2ZSBpc3N1ZSB3aXRoIGZmbXBlZyB2ZXIuIG1pc21hdGNoIGluIFlVVmlldwpXaWxsIHJl
cG9ydCBuZXh0IGRheXPigKYuCiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
