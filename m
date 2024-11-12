Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A257D42B8C
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 14:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3bVcSn3IGDADUU3OQEiSnPlWNOluMIvlUpZowrLL1OI=; b=dCQXLsCmhfOq9L
	ZTKVt95jHIly5uYtZ6F98iYq0kseZBVP7EtdbKA6hxOWWk8yDMRE480hncCaHo45scC5RA6/eTklg
	Sb0sgdAf+F0ecrAIdbx0HVnIIZRyrY2LikM2gjM5+vLBCTwncNYxmmDHgTcyKYpTw2nbM7rIC2+Qo
	asry2UHC4GlcYmPxjAnx1Hs5F0rvkDU0zAifj79zVxof3cFnvmCCdnUKwBd2meW4iknW9H4wFwiQT
	89im48fjtGFZb16udJi0jMwhvzBJXgONi1Ls0x8dLrDxN0U1hdKgNZPEZJbc5+Ygnfd7qjjMxXVC9
	7ZJa2K8CvxH7cM/iX51Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAs5B-00000003nGx-3wuq;
	Tue, 12 Nov 2024 14:41:29 +0000
Received: from mail-pf1-f180.google.com ([209.85.210.180])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tArzu-00000003m6X-1hBP;
	Tue, 12 Nov 2024 14:36:03 +0000
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-71e953f4e7cso4379991b3a.3;
        Tue, 12 Nov 2024 06:36:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731422161; x=1732026961;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H/b6whg1Fuu9dsUqH1kstDqi5ac2SXC82I/0cqQa6CQ=;
        b=HLpTGKt9fVoto+9whvljYwn5ezasAVH7RMivMKkQOd/W1qqvz6KWbb30t3/IE5eNBe
         Bc9od440gQQ3/v5soQRrOkudX5bLVsLxkNmbexTzGwQlJ29TSySm3W3GphaZ2qD/9O39
         I6K3pBkFSwe2CYAplo8TeDM4DLWufDp5IAkWPjKpb1hk0cdG1DEzxaruwhPVhrT78wcP
         4Y3W49UDZ/f0pn6xRk5D6U6EG0s7D/XtB81Trb6QvzMkwPqa8pBsXOW6xcHB+RZs80d+
         Qgewrhvt6EtsTKU8TAt5q5AtrU+Wz4dtJ3xWTeDKPtJAogWaWXu7dJ9AQGLTSxRcBwIg
         Sqqw==
X-Forwarded-Encrypted: i=1; AJvYcCVtO02GHo9MFaGvlUI8j6boamuAT85yH4R/L5MUXrM5HNA8mDrgPLFTIqXztX6xSR7r3Ngit37X6/bXlltD+MAY@lists.infradead.org, AJvYcCW0/g2OQA1UCoeD2vvhWHlavrmZkD2GKWQM01lCGmGWIc6k3yu1vXq0vDFXI8Onv6QukRiBTq8vwZxGqazFf28=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyb6KecJbD71q2w9awlIk3bxln4H572zs9cdMfuzFa/Wssz2tco
	UFUX/clPmrdx5rrXoETMec4h2aYHlho5QvSo6brj6c7rNZckeRIl67DybVoC8XtjEw==
X-Google-Smtp-Source: AGHT+IFk3Es/5pU7djjsXy8BnvP/1IJe9Bt7hIiMgVVA052I2EzvhuJJx6hY/VTv9eXnyI7SevO6Lg==
X-Received: by 2002:a05:6a21:880a:b0:1db:e8dc:4ae1 with SMTP id adf61e73a8af0-1dc2292f715mr17110712637.17.1731422161360;
        Tue, 12 Nov 2024 06:36:01 -0800 (PST)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com. [209.85.216.53])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7240786281asm11234305b3a.12.2024.11.12.06.36.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2024 06:36:00 -0800 (PST)
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2e2c6bc4840so4554378a91.2;
        Tue, 12 Nov 2024 06:36:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXiOzXQAIhThbYfWaB+4HndezZ9lwA+TrLoroJyO0JxW8Ifbhub6N+iTHqe/j+tzKsvu2Vbvr1AEJOMsLRKl0I=@lists.infradead.org, AJvYcCXpUlXMgejV4NvnQIT+SV2z4xVC338z62Vc2f324+M4WIt2EuMHmCQWLz3SgBuDk5WUngA+cWs91XW0dfJzTQZI@lists.infradead.org
X-Received: by 2002:a17:90b:4b84:b0:2cf:c9ab:e747 with SMTP id
 98e67ed59e1d1-2e9b16e26b2mr24419741a91.1.1731422160606; Tue, 12 Nov 2024
 06:36:00 -0800 (PST)
MIME-Version: 1.0
References: <20241111181807.13211-1-tszucs@linux.com> <20241111181807.13211-4-tszucs@linux.com>
 <4ba81dfa-f276-4e05-b46b-92f50dbcfcc4@kwiboo.se>
In-Reply-To: <4ba81dfa-f276-4e05-b46b-92f50dbcfcc4@kwiboo.se>
From: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>
Date: Tue, 12 Nov 2024 15:35:49 +0100
X-Gmail-Original-Message-ID: <CA+GksrJLpeU8x-kjR1Ng3ySf+giiufCsJuBssng9qoX1PjAunA@mail.gmail.com>
Message-ID: <CA+GksrJLpeU8x-kjR1Ng3ySf+giiufCsJuBssng9qoX1PjAunA@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Enable UART8 on rock-3b
To: Jonas Karlman <jonas@kwiboo.se>
Cc: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>, 
	Chukun Pan <amadeus@jmu.edu.cn>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_063602_517054_F59A2303 
X-CRM114-Status: GOOD (  20.75  )
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

SGkgSm9uYXMsCgpJIGFncmVlOyBpdCdzIG5vdCBwb3NzaWJsZSB0byB0ZWxsIGlmIHRoZSB1c2Vy
IHdpbGwgdXNlIGEgUENJZS9VU0IsClBDSWUvVUFSVCwgU0RJTy9VQVJULCBwZXJoYXBzIFVTQi9V
QVJUIGRldmljZSwgb3IgYW55IG90aGVyIEhJRgpjb21iaW5hdGlvbi4gVGhlIHdheSBJIHNlZSBp
dCBpcyBVQVJUOCBpcyBoYXJkd2lyZWQgdG8gdGhlIE0yRSwgc28KdGhlcmUgaXMgYSByZWFzb25h
YmxlIGV4cGVjdGF0aW9uIHRoYXQgaXQgc2hvdWxkIHdvcmsgdG9vIGlmIG5lZWQgYmUuCgpLaW5k
IHJlZ2FyZHMsClRhbWFzCgoKClRhbcOhcyBTesWxY3MKdHN6dWNzQGxpbnV4LmNvbQoKT24gTW9u
LCBOb3YgMTEsIDIwMjQgYXQgODoxMuKAr1BNIEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5z
ZT4gd3JvdGU6Cj4KPiBIaSBUYW3DoXMsCj4KPiBPbiAyMDI0LTExLTExIDE5OjE3LCBUYW3DoXMg
U3rFsWNzIHdyb3RlOgo+ID4gRW5hYmxlIFVBUlQgbGluZXMgb24gUmFkeGEgUk9DSyAzIE1vZGVs
IEIgTS4yIEtleSBFLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFRhbcOhcyBTesWxY3MgPHRzenVj
c0BsaW51eC5jb20+Cj4gPiAtLS0KPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU2OC1yb2NrLTNiLmR0cyB8IDIgKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU2OC1yb2NrLTNiLmR0cwo+ID4gaW5kZXggYjc1MjdiYTQxOGY3Li42MWQ0YmEyZDMx
MmEgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1y
b2NrLTNiLmR0cwo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgt
cm9jay0zYi5kdHMKPiA+IEBAIC03MzIsNyArNzMyLDcgQEAgJnVhcnQ4IHsKPiA+ICAgICAgIHBp
bmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiAgICAgICBwaW5jdHJsLTAgPSA8JnVhcnQ4bTBf
eGZlciAmdWFydDhtMF9jdHNuICZ1YXJ0OG0wX3J0c24+Owo+ID4gICAgICAgdWFydC1oYXMtcnRz
Y3RzOwo+ID4gLSAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ICsgICAgIHN0YXR1cyA9ICJv
a2F5IjsKPgo+IFRoaXMgc2hvdWxkIHByb2JhYmx5IGJlIGVuYWJsZWQgdXNpbmcgYW4gZHQtb3Zl
cmxheSwgdGhlcmUgaXMgbm8gVUFSVAo+IGRldmljZSBlbWJlZGRlZCBvbiB0aGUgYm9hcmQgYW5k
IHRoZSByZWFzb24gSSBsZWZ0IGl0IGRpc2FibGVkIGluCj4gb3JpZ2luYWwgYm9hcmQgRFQgc3Vi
bWlzc2lvbi4KPgo+IE9uIHNlY29uZCB0aG91Z2h0IG1heWJlIHRoZXkgc2hvdWxkIGJlIGVuYWJs
ZWQsIHRoaW5rIFBDSWUgYW5kIFVTQiBsaW5lcwo+IG9uIHRoZSBNLjIgS2V5IEUgaXMgYWxyZWFk
eSBlbmFibGVkIGJ5IGRlZmF1bHQuIEkgcHJvYmFibHkgb25seSB0ZXN0ZWQKPiB3aXRoIGEgcGNp
ZS91c2Igd2lmaS9idCBjYXJkIGFuZCBub3QgYSBzaWRvL3VhcnQgd2lmaS9idCBjYXJkLgo+Cj4g
UmVnYXJkcywKPiBKb25hcwo+Cj4gPiAgfTsKPiA+Cj4gPiAgJnVzYl9ob3N0MF9laGNpIHsKPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
