Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE20DCAC5B0
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Sep 2025 13:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VEZC3IMvxvi7lQMW3DzxNbrJl0UPOW9vUMX6PDgW7RU=; b=a53XIashrufxn/
	BhTEMof792y6v3kJ8tP0Ehv/O7U58RYtaqcN29IT7xkNYtqCj/B+Evtn5vNbtS2J32wvTly23nC34
	QOIwn87y/JoIIbiK0AtUoqsv28KrN+9Mna3VCsGnUktMxjdfdJfVEMJ5vN+6nu4293++NR3nSpUO2
	gqKsnSHqrflq4y3SvEeOU/4815Qaouu/6q5o0RCwsc116+WF2qUcNnc256oOK8EvD4TI56zJcs9Tv
	NUV0einkps7zBIjAsebjcK9E3g4NqZIRQ63k9mirGDpjS7/QcpIEwhBQuX/9hYeqXNHNEjFsgQ8fw
	ifWzBAPYzN0z5o3097RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2VMA-0000000A8Mp-3aPI;
	Sat, 27 Sep 2025 13:52:58 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2VM9-0000000A8LD-0Xmx
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Sep 2025 13:52:58 +0000
Received: by mail-pg1-x529.google.com with SMTP id 41be03b00d2f7-b54a74f9150so2776813a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 27 Sep 2025 06:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758981176; x=1759585976; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U3sQOBC6lgm5wwqQEZglJIx1GXGiTvsN3EI8B1cA2h8=;
        b=hHoS1mtOXO78pEZNO1VaGO48hYMl0ZquIRn3gNteR4XB47Pc89pAz6EtJEuOqyhIxc
         9hKtX87tMVoljkbWWNbzN1DXa4qoZC8xref1PJ3Rt3cXpHiIbBkUM5qd8kUlt+sLBGjT
         eipJkb4xPaCiEV2Q1j0jx7nCS/2sVl31bilCzEipOj/lcgexgjDbIJdf8lc3cFOG4jHE
         Tj/KI4pmbNVcPxDoPeT1fEhChDZcfsCFZ+CuUmTWG18mkGRvSnmKq44bdOo59wVITCBK
         RKp36q6plcfkwzYDuwIf/beq6a+H2uMLL5ww3J5S8H4BaYNFQ8PmuLQpUC9R3eR8k+7s
         d0DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758981176; x=1759585976;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=U3sQOBC6lgm5wwqQEZglJIx1GXGiTvsN3EI8B1cA2h8=;
        b=k41W9g+I2WTa+3t+18lJ2azgvJ6BipJOWvyEm3y/V/HarAcs+D2jV4kVc3foyiu0iG
         masuLwpDPzPdluvFKfEUGvI+u98V1qkm4SOyM7q9Dk6hb2UPpWTW42VMdPN0aTAT8v4F
         Q/SeeYdejAfKSU+JApIiW/zgFQ+T6CtqaoKDsN50iCDu59hvqPIReGNM6bo+6I7nsH9R
         yrQLSjRPtmPXfbIqttiSk+9xdwbRYmwj9k1jZOcAqswUvuflX9iE4lT9AMxH/E4QGNQQ
         HTuZjTrA+3cM1CP3lyB5s8n2WmMPoxhGNsmOeED/CCAOBdjyjSHLjZUphUTuQviAv97E
         SF8w==
X-Forwarded-Encrypted: i=1; AJvYcCXHV8Aa2uUcC3W3aZ4HfLEVHiUj/LNeXdKjAKYJxD5ipkcQmwObvWGq2TUGMQji2Hsrz5kbrUGplyPrielqkw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyWPZ48M8U0gkssqWKv9LhIm7KW8hxyHmOEcYTKyJMIi7R+/4b3
	oAvphooClDEKwHu0C28TFG+uwyh5M2ob8YKz0sTl9j8cwSn5e3w/J8N1
X-Gm-Gg: ASbGncvw6XnLPXQ/qLHpBK5+23EVH3QT4zK5TcIPBy/9JGi22Y8L+hT+UC/uKCwEFDu
	ASVWLuOHFu6fzjqSZE5MGt8z8RFMww5OYPhySfSftzAvhi7HmT8zQ4xbDhpowIkNTrtJTvYCZFq
	4PJnayfyqqLIOSWFXFI2lZ7fDEgCfHuviS/i/OCBeIz4P2AXe2I0i3jk8jnOZ4SLjnAyAbQwhyN
	xxpikQ4nyPt4VRVZ8tNg0xFy9spT4xTBHWbGZeT3ADTShIa/p7hRzZXQKPTf1G8RTKlHeZVSgAY
	wT56evp94cbTPZiHzvLTV3bXAV8S9zw6TNGlktE7LgGD0+uc6hDqScGGKaN2FH0DxD1e30D3ygy
	hs0mdoF0z
X-Google-Smtp-Source: AGHT+IGK3h2/r66srXllsDk0MF+E1eFXN/e+nA4aTq6KJiKioeHUCHrtJSdf7ekPUt2zU2bJKgRb5g==
X-Received: by 2002:a17:903:3845:b0:246:2e9:daaa with SMTP id d9443c01a7336-27ed4a09580mr134300995ad.2.1758981175683;
        Sat, 27 Sep 2025 06:52:55 -0700 (PDT)
Received: from CNSZTL-PC.lan ([2401:b60:5:2::a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6adca51sm82134025ad.147.2025.09.27.06.52.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Sep 2025 06:52:55 -0700 (PDT)
Message-ID: <ad4a7dda-8f6f-4d2a-84d9-838611f2285f@gmail.com>
Date: Sat, 27 Sep 2025 21:52:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add devicetree for the
 FriendlyElec NanoPi R76S
To: Dragan Simic <dsimic@manjaro.org>,
 Diederik de Haas <didi.debian@cknow.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250922091509.2695565-1-cnsztl@gmail.com>
 <20250922091509.2695565-2-cnsztl@gmail.com>
 <DD2V17FJ29MV.3YDX1VUWGKEH@cknow.org>
 <1bb00ad6-ffe1-4783-909b-032dfb984180@gmail.com>
 <DD3EST9Y5UHF.12FJMDJUSZNYL@cknow.org>
 <d0a3d5d4480eac12ba5e2b15bcbc578f@manjaro.org>
From: Tianling Shen <cnsztl@gmail.com>
In-Reply-To: <d0a3d5d4480eac12ba5e2b15bcbc578f@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250927_065257_171450_3FDD271C 
X-CRM114-Status: GOOD (  14.10  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRHJhZ2FuLAoKT24gMjAyNS85LzI3IDIxOjQ3LCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gSGVs
bG8gRGllZGVyaWsgYW5kIFRpYW5saW5nLAo+IAo+IE9uIDIwMjUtMDktMjcgMDk6MzcsIERpZWRl
cmlrIGRlIEhhYXMgd3JvdGU6Cj4+IE9uIFNhdCBTZXAgMjcsIDIwMjUgYXQgMzoxOSBBTSBDRVNU
LCBUaWFubGluZyBTaGVuIHdyb3RlOgo+Pj4gT24gMjAyNS85LzI3IDA6MDcsIERpZWRlcmlrIGRl
IEhhYXMgd3JvdGU6Cj4+Pj4gSXQgaXMgcmVjb21tZW5kZWQgdG8gdXNlIHRoZSBsYWJlbHMgaW4g
dGhlIHNjaGVtYXRpY3MgdG8gZGVmaW5lIHRoZQo+Pj4+IHBpbmN0bCBub2RlcyAoYW5kIHRodXMg
dGhlaXIgcmVmZXJlbmNlcykuIEluIHF1aXRlIGEgbG90IG9mIGNhc2VzIAo+Pj4+IHRoYXQncwo+
Pj4+IGluZGVlZCB0aGUgY2FzZSwgYnV0IG5vdCBmb3IgZ3Bpby1rZXlzIChVU0VSX0JVVCkgb3Ig
dGhlc2UgZ3Bpby1sZWRzCj4+Pj4gcGluY3Rscy4KPj4+Cj4+PiBJIGNhbm5vdCBmaW5kIGFueSBz
cGVjaWZpYyBuYW1pbmcgcnVsZXMgZnJvbSB0aGUgZ3Bpby1rZXlzWzFdIGFuZAo+Pj4gZ3Bpby1s
ZWRzWzJdIGJpbmRpbmdzLCBkaWQgSSBtaXNzIGFueSB1cGRhdGU/Cj4+Pgo+Pj4gSSB0aGluayB0
aGlzIG5hbWluZyBtYXRjaGVzIHRoZSBjdXJyZW50IHByYWN0aWNlIGF0IGxlYXN0IGluIHJvY2tj
aGlwJ3MKPj4+IGR0IHRyZWUuCj4+Cj4+IFRoZXJlIGlzIGFuIHVub2ZmaWNpYWwgcnVsZS9haW06
Cj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzUzNjAxNzMua3RwSjEx
Y1E4UUBkaWVnby8KPj4gQnV0IGdyYW50ZWQsIHRoZXJlIGlzICdzb21lJyBpbmNvbnNpc3RlbmN5
Lgo+Pgo+PiBBbmQgdXNlZCBpbiBmLmUuCj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4
LXJvY2tjaGlwLzIwMjUwNzI3MTQ0NDA5LjMyNzc0MC00LSAKPj4gam9uYXNAa3dpYm9vLnNlLwo+
Pgo+PiBXaGVyZSB5b3UgY2FuIGp1c3QgY29weSB0aGUgcGluY3RybCBsYWJlbHMgZnJvbSB0aGUg
ZHRzW2ldIGFuZCBwYXN0ZQo+PiB0aGF0IGluIHRoZSBzY2hlbWF0aWMgZG9jdW1lbnQgYW5kIHlv
dSdyZSBpbnN0YW50bHkgYXQgdGhlIHJpZ2h0IHBsYWNlLgo+PiBXaGljaCBpcyB0aGUgZXhhY3Qg
cHVycG9zZSBvZiB0aGF0IHJ1bGUvYWltLgo+IAo+IElzIHRoZSBzY2hlbWF0aWMgYWN0dWFsbHkg
cHVibGljbHkgYXZhaWxhYmxlP8KgIEkgdHJpZWQgc2VhcmNoaW5nIGZvcgo+IGl0LCBidXQgZm91
bmQgbm90aGluZywgdW5mb3J0dW5hdGVseS4KClRoZSBzY2hlbWF0aWMgZm9yIE5hbm9QaSBSNzZT
IGlzIGF2YWlsYWJsZSBhdCAKaHR0cHM6Ly93aWtpLmZyaWVuZGx5ZWxlYy5jb20vd2lraS9pbWFn
ZXMvNi82MC9OYW5vUGlfUjc2U19MUDRYXzI0MTFfU0NILnBkZgoKRm9yIG1vcmUgaW5mb3JtYXRp
b24gcGxlYXNlIG1vdmUgdG8gCmh0dHBzOi8vd2lraS5mcmllbmRseWVsZWMuY29tL3dpa2kvaW5k
ZXgucGhwL05hbm9QaV9SNzZTLgoKVGhhbmtzLApUaWFubGluZy4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
