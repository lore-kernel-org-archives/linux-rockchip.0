Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91DECC52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 11:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zs37zxa76Ll79sSHW/6qqdnX40/lAmwlswbupakAT54=; b=NIkaSCg7iOhktY
	l5vf7gZwl3sHK4K+J1WYB8ML+D8r4kROhcBcQ74jlZE6+ZiOiBfjDTI9D4nyIyDj/vg5y9S2r2I0L
	a7QOBtnKJ5a3LePlA7BTTJDAeLiwTNW9Mj0ayLcfSFl4j123RKHxAffcSWqP3QuxYeyvwpBvBp4bQ
	Gyh9LZ/y+bSqsojPOtKJcGwb3q7lXktjoE54FVMhKcBmMW84BG1zTgDrTgiquKPnPvdk+jl2LoV0Y
	vNIZ1Y6q+0iCheIEbGYI5+2fAmQkarzyQkVkuIyWfP2EMy656sTizRRE+MM8m1AvcyNEOXkkaB+Dr
	jbZ+OFrXMZuRTcYKtMkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shSYW-0000000GX6c-3q9v;
	Fri, 23 Aug 2024 11:34:12 +0000
Received: from mail-yb1-f171.google.com ([209.85.219.171])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shSXh-0000000GWkg-3qLd;
	Fri, 23 Aug 2024 11:33:23 +0000
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-e13d5cbc067so1882664276.2;
        Fri, 23 Aug 2024 04:33:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724412799; x=1725017599;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LMEH/Ww3lGUsG6S84gzaZZHFTkxZjOmIG5r+YsgcND4=;
        b=LeHRxbG4C8pDxEd5BAzKG7padtsQas3mlrb+HFMwk06Gu6O3KYPcwE2EGBCJvq1Tfq
         niMladW1BcCpx/4rxrFHT6ZN7VeLJB0pslHsB5FhKIUsCYc2yaJ73f7Sd5ON+BraNJre
         9kuY4ftZii2t7BA/i/31iZsa1D1aniyvsK1dTqXfD8NNkwzOxYDOScVjz5Xdt67e6y0l
         FSUGpPF2+7WvE/izpxuT7O+FUaYE8Z9LdYDlrCYpmzAiDWra1yh8+0jhFXbVZ4sHA3g1
         YalGQ+dtGOrQlkyw/Mq3Mz0N0lpfbXltPCuks0MTzhKh+4tuEqxaosqIQkvP8VfiQDf6
         emog==
X-Forwarded-Encrypted: i=1; AJvYcCVMXAGMdANgZmd8wMgTtsgqi4oOuPqDHhYz2z7nlIzN6WXtxenHc2xNGBR2m//COJdXmREnWjly6sXHv3TubS8=@lists.infradead.org, AJvYcCXMXzP6brISPnbDTNwUsGFUR8qmjTUI9liQWZ+CosRHFEXP1OOigzs3iMbKk2NvyzwURSPXApKl2CyRkQ172r4S@lists.infradead.org
X-Gm-Message-State: AOJu0Yzzw3SWlnkNIJ7H45cx2aOuoncf6ZSxgUYNeDUFWTZnhN1hR/z7
	yQMJfdWz9riBhCWE2KuHUI/yx9UsC9OxB2AyhYM6u5ODp3fOJy6EuhEZaDii
X-Google-Smtp-Source: AGHT+IEzf0FZ7v0E/V6dUpK9kYxLKE8mBHF/tJUfVQrBySqmmI9kwDtgXUbQ9weDPOpEQEJSH1IQIw==
X-Received: by 2002:a05:6902:100b:b0:e0b:c297:8a1c with SMTP id 3f1490d57ef6-e17a83d4af2mr2526166276.15.1724412799234;
        Fri, 23 Aug 2024 04:33:19 -0700 (PDT)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com. [209.85.128.175])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e178e43fda0sm646417276.4.2024.08.23.04.33.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Aug 2024 04:33:19 -0700 (PDT)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-6b59a67ba12so18245757b3.1;
        Fri, 23 Aug 2024 04:33:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVA5lKME61+GuKg32AuM0zW7dKedbyqRi5Jw+POV+Ehb5FvUu3c5O8XebN3AbOactsaRCJjJ/APqRKrQmdP8urQ@lists.infradead.org, AJvYcCWHrKysA/Xpar8b4bzzPDxQhNTsLu91ZKGNX6Q3oXJ7TnccLZmQBcKF73zJpK2VSAoVeha5TwMEGW0dOJ2VDg0=@lists.infradead.org
X-Received: by 2002:a05:690c:2845:b0:6c1:699f:cf8 with SMTP id
 00721157ae682-6c625e27412mr19164117b3.14.1724412798745; Fri, 23 Aug 2024
 04:33:18 -0700 (PDT)
MIME-Version: 1.0
References: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org> <20240818173014.122073-3-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240818173014.122073-3-krzysztof.kozlowski@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Aug 2024 13:33:06 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXT2r8mTOye5S4JKZbXcBmavwrP96oe5aVnORm8UUqONA@mail.gmail.com>
Message-ID: <CAMuHMdXT2r8mTOye5S4JKZbXcBmavwrP96oe5aVnORm8UUqONA@mail.gmail.com>
Subject: Re: [PATCH 3/5] dt-bindings: clock: renesas,cpg-clocks: add top-level constraints
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Serge Semin <fancer.lancer@gmail.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Charles Keepax <ckeepax@opensource.cirrus.com>, 
	Richard Fitzgerald <rf@opensource.cirrus.com>, Heiko Stuebner <heiko@sntech.de>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Magnus Damm <magnus.damm@gmail.com>, patches@opensource.cirrus.com, 
	Elaine Zhang <zhangqing@rock-chips.com>, 
	Gabriel Fernandez <gabriel.fernandez@foss.st.com>, linux-mips@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_043321_974463_D4D52687 
X-CRM114-Status: GOOD (  14.78  )
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

T24gU3VuLCBBdWcgMTgsIDIwMjQgYXQgNzozMOKAr1BNIEtyenlzenRvZiBLb3psb3dza2kKPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4gUHJvcGVydGllcyB3aXRoIHZh
cmlhYmxlIG51bWJlciBvZiBpdGVtcyBwZXIgZWFjaCBkZXZpY2UgYXJlIGV4cGVjdGVkIHRvCj4g
aGF2ZSB3aWRlc3QgY29uc3RyYWludHMgaW4gdG9wLWxldmVsICJwcm9wZXJ0aWVzOiIgYmxvY2sg
YW5kIGZ1cnRoZXIKPiBjdXN0b21pemVkIChuYXJyb3dlZCkgaW4gImlmOnRoZW46Ii4gIEFkZCBt
aXNzaW5nIHRvcC1sZXZlbCBjb25zdHJhaW50cwo+IGZvciBjbG9ja3MgYW5kIGNsb2NrLW91dHB1
dC1uYW1lcy4KPgo+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRv
Zi5rb3psb3dza2lAbGluYXJvLm9yZz4KClJldmlld2VkLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4g
PGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgppLmUuIHdpbGwgcXVldWUgaW4gcmVuZXNhcy1jbGsg
Zm9yIHY2LjEyLgoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBH
ZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5
b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlv
bnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hl
biBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBz
b21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExp
bnVzIFRvcnZhbGRzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
