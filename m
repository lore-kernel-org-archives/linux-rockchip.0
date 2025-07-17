Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 578AFC83F1A
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jul 2025 15:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XRzfdnVpS5IKI6eVXdPUVwhxWKxYfe13vrFPRkq3RFA=; b=OxgksNXFm9nOSW
	pkvTzg8wWQhCzuyCVJYjOj7NNMk5cm78Rk8Vf27zMCyf4NJoBSednxXjB2m6/DU+on7xoTqZ1Ra92
	WF9ZWYITVyJoksy0GBkMZ2XrEIBO7GDIv1ABUZA9tfGZhtkA48B8BxE+ZT2OnnmvRVZF2RKGRYDWm
	isU9kcyvD+768b0NPJ5bbCmoJoZ+Dl9bOMcfCf23ngdWhuPlRwmTfG6qmhHfR2a1ZzGJG/PT+UwWO
	qZdypPAoRGvPN/It5p3ktCRtJB2Odpz+hPxMoisUdBW4JIEBv7lkUa8BEF83SofTNYWt/F7zo2EE+
	y6Yzj7U6mUQhH38Uf0yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucQ7k-0000000ARaY-0ST5;
	Thu, 17 Jul 2025 15:02:16 +0000
Received: from mail-ua1-x92a.google.com ([2607:f8b0:4864:20::92a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucP0s-0000000AIXq-1KXA;
	Thu, 17 Jul 2025 13:51:07 +0000
Received: by mail-ua1-x92a.google.com with SMTP id a1e0cc1a2514c-881114808e4so577816241.3;
        Thu, 17 Jul 2025 06:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752760265; x=1753365065; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OFoZFsmVBgIgOnRb6v56ZyJVL3iVN9nED2Us643BX3E=;
        b=iUzNWGS5qcmCdTRMeiCwdF7MkTOom+N3g6zIWIHIvufJTQSjbwhQU3FUAjkGxnPOAI
         UYQAsKmXcKUacmwOaDWu5lPiEIyEK9JGJcXu111SEZuNBAHqN5fEnRUjZdYfaXA0nxJV
         +ffAtSd4FKFnb5DzUa0fU0zprlqpA6YYz/fovXnyJdY7PuIWnMscDUxxj4DznDBCodlJ
         /OsbXJnXVH0Q2wQFNVBHXwotqfrUZAmxjMYvbP2EqrdYTyhHB0xscpmrBb7u+uxixw4i
         1p+BzvKifggSECYRPCJx27FpS/1pUEV2gwqnlSEbJbK5e3k/nTRCcghSqX/uwVt/NN3K
         U+UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752760265; x=1753365065;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OFoZFsmVBgIgOnRb6v56ZyJVL3iVN9nED2Us643BX3E=;
        b=pW+/C5HpzlzUdLDRMzh7976lmU2kvKE7cPiwoZpFt6cM47S2+rrqz62zcBjDyqyX+9
         +LoAQhs99VGLKGoSiBtyJf0LDP0FS/q3W5JLuxyFaH4g4O2xvblQuYFWg/wEs+E9NPll
         yID+eDfY+fi1BtsfnisfgNeu12xfPTmNjlru/ZYYNVx20xPTGSXzZ1OB0gZFy0z7y80P
         dQwvrIzqQ9N8JkJVBV1wpjxrEf5YxlYxw5yhj5GJ/eJDZxDNsKNs1jNqpPdcNtxx1TP4
         ProeqU98jwUNyHFQ+usiLRbCLe8c0Yc9CZCzlT0M/Eov+i1pRvFs/brab47JxFNYBxov
         Xxpw==
X-Forwarded-Encrypted: i=1; AJvYcCVqDBYwWYRfYp7BdqS7P2XCfw2xO14XeRbXygcgYoNv46TgQ864mJH4VXAi4S0JYzYgcjatD9QMvpECN3pSMmqY@lists.infradead.org, AJvYcCX8RL8Bnq22Iq91IE6UYcPkdmxS4qTY7NQOT6YPFXNkVvAPI4Pt2qOlMd2t06nQP3jMFU66oeyGucekOU36xzI=@lists.infradead.org
X-Gm-Message-State: AOJu0YznENbcWNiaIEf5br4ZETG2BJovOVc+BdX+wMK7Ut0BlJmXAqqU
	NzhDStdNoxsC4MpnnqLnac/jGbFLvLfybq5iRwfEjs1xYdSFJM2Eu8oT
X-Gm-Gg: ASbGncsCHr5rnh8ooabkWgvUjsnYyRKBMjn3418y5rybN3isUc9y23UhLhGbY4FsPQx
	4N2IloOJick2qMPyX3aSqtvGm8wanNZnJ+gMOPFM/6UXKx3DAFoLOrn1t+KWHioZwRf9E5YodWI
	BFdLNMe1W+k7E/Y7Ujn5DRXOsTVOzKsrXHTG7ivVIROToK+vilEY6u4BCON9yJWMEPWG+FsiLs2
	eWd7O417B9nqCDfwxwDEBqEKfyLfy1n8FX+sEkhOKY1XQ0U2COrNmLzc7KbokVtJA0J5/cH/rcz
	GgYKRojrffUTqf/q6pbBAvdcafH7KsLgVK2mA8mqrB58appo6XGs52hn49Xeh2ybzvUtBz1/+Xm
	nVaCV6CoCxg==
X-Google-Smtp-Source: AGHT+IGzgyrDUgDH08RDqZ3hkrbd5Lom3WMZY7KIBjhCX4qRVfQkKF54K0pt01hz0j8j+3pC5nv9qg==
X-Received: by 2002:a05:6102:4421:b0:4e7:dbd2:4604 with SMTP id ada2fe7eead31-4f8999bcbeamr4068557137.17.1752760264477;
        Thu, 17 Jul 2025 06:51:04 -0700 (PDT)
Received: from geday ([2804:7f2:800b:2246::dead:c001])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4f62faf5ec1sm2853884137.23.2025.07.17.06.51.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 06:51:03 -0700 (PDT)
Date: Thu, 17 Jul 2025 10:50:49 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v3 2/3] PCI: rockchip-host: Retry link training on
 failure without PERST#
Message-ID: <aHj_ue-eFQu_NgHd@geday>
References: <cover.1749582046.git.geraldogabriel@gmail.com>
 <b7c09279b4a7dbdba92543db9b9af169776bd90c.1749582046.git.geraldogabriel@gmail.com>
 <zuiq3b2rsixymtjr3xzrb26clikvlja62wgj65umnse4kuk75c@x5qan73ispxe>
 <aFk-MeIWFcBiGBPr@geday>
 <djbhz7qfyzrn7mdqmvqhyh6yjsjyigjly7py4f7aj5f4qbabou@67gk3qdnvzws>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <djbhz7qfyzrn7mdqmvqhyh6yjsjyigjly7py4f7aj5f4qbabou@67gk3qdnvzws>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_065106_371527_1FBD0C57 
X-CRM114-Status: GOOD (  23.10  )
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

T24gVGh1LCBKdWwgMTcsIDIwMjUgYXQgMDU6NTk6MzJQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIE1vbiwgSnVuIDIzLCAyMDI1IGF0IDA4OjQ0OjQ5QU0gR01ULCBH
ZXJhbGRvIE5hc2NpbWVudG8gd3JvdGU6Cj4gPiBPbiBNb24sIEp1biAyMywgMjAyNSBhdCAwNToy
OTo0NkFNIC0wNjAwLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiA+IE9uIFR1ZSwg
SnVuIDEwLCAyMDI1IGF0IDA0OjA1OjQwUE0gLTAzMDAsIEdlcmFsZG8gTmFzY2ltZW50byB3cm90
ZToKPiA+ID4gPiArcmVpbml0Ogo+ID4gPiAKPiA+ID4gU28gdGhpcyByZWluaXQgcGFydCBvbmx5
IHNraXBzIHRoZSBQRVJTVCMgYXNzZXJ0LCBidXQgY2FsbHMKPiA+ID4gcm9ja2NoaXBfcGNpZV9p
bml0X3BvcnQoKSB3aGljaCByZXNldHMgdGhlIFJvb3QgUG9ydCBpbmNsdWRpbmcgUEhZLiBJIGRv
bid0Cj4gPiA+IHRoaW5rIGl0IGlzIHNhZmUgdG8gZG8gaXQgaWYgUEVSU1QjIGlzIHdpcmVkLgo+
ID4gCj4gPiBJIGRvbid0IHVuZGVyc3RhbmQsIGNvdWxkIHlvdSBiZSBhIGJpdCBtb3JlIHZlcmJv
c2Ugb24gd2h5IGRvIHlvdQo+ID4gdGhpbmsgdGhpcyBpcyBkYW5nZXJvdXM/Cj4gPiAKPiAKPiBX
aGVuIHRoZSBSb290IFBvcnQgYW5kIFBIWSBnZXRzIHJlc2V0LCB0aGVyZSBpcyBhIGdvb2QgY2hh
bmNlIHRoYXQgdGhlIHJlZmNsawo+IHdvdWxkIGFsc28gYmUgY3V0b2ZmLiBTbyBpZiB0aGF0IGhh
cHBlbnMgd2l0aG91dCBQRVJTVCMgYXNzZXJ0LCB0aGVuIHRoZSBkZXZpY2UKPiBoYXMgbm8gY2hh
bmNlIHRvIGNsZWFuIGl0cyBzdGF0ZSBtYWNoaW5lLiBJZiB0aGUgZGV2aWNlIGdldHMgaXRzIG93
biByZWZjbGssCj4gdGhlbiBpdCBpcyBhIGRpZmZlcmVudCBzdG9yeSwgYnV0IHdlIHNob3VsZCBu
b3QgbWFrZSBhc3N1bXB0aW9ucy4KCkhpIE1hbmksIHRoYW5rIHlvdSBmb3IgeW91ciB0aW1lIHNw
ZW50IGxvb2tpbmcgaW50byB0aGlzIQoKSSdtIG5vdCBzdXJlIGlmIHRoZSBmb2xsb3dpbmcgaW5m
b3JtYXRpb24gaGVscHMsIGJ1dCBwYXRjaCAyIG9mIHRoaXMKc2VyaWVzIGRpc2FibGVzIHRoZSBQ
Q0llIDMuM1YgYWx3YXlzLW9uL2Jvb3Qtb24gdGhyb3VnaCBEVC4gVGhhdCB3YXMKbm90IGluY2lk
ZW50YWwsIGFuZCBpbiBmYWN0IGl0IGlzIHJlcXVpcmVkIGZvciBwYXRjaCAxIHRvIHdvcmsuCgpU
aGVuLCBpZiB5b3UgZm9sbG93IHRoZSBwcm9wb3NlZCBjb2RlIGNoYW5nZSwgeW91IHdpbGwgc2Vl
IHRoYXQgcG93ZXIKaXMgZWZmZWN0aXZlbHkgY3V0IHZpYSBkaXNhYmxpbmcgdGhlIHBvd2VyIHJl
Z3VsYXRvcnMsIGV2ZW4gYmVmb3JlCmRpc2FibGluZyB0aGUgY2xvY2tzLiBTbyB0aGVyZSdzIGVm
ZmVjdGl2ZWx5IHplcm8gY2hhbmNlIG9mIGNvcnJ1cHRpbmcKdGhlIGVuZHBvaW50IGRldmljZSBz
dGF0ZSBtYWNoaW5lLCBzaW5jZSB0aGUgZGV2aWNlIGlzIHBvd2VyLWN5Y2xlZC4KCldoaWxlIEkg
dW5kZXJzdGFuZCB3ZSBzaG91bGQgbm90IG1ha2UgYXNzdW1wdGlvbnMgb24ga2VybmVsIHdvcmss
IGFuZAp0aGF0IHRoZSBwYXRjaCBpcyB1bm1lcmdlYWJsZSBvbiBpdHMgY3VycmVudCBmb3JtIChp
dCdzIGEgZ29kZGFtbiBoYWNrKSwKaXQgZG9lcyBlbXBpcmljYWxseSBhbGxldmlhdGUgYSB2ZXJ5
IHJlYWwgcmVwb3J0LCB0aGF0IG9mIGtub3duLWdvb2QKd29ya2luZyBkZXZpY2VzIHJlZnVzaW5n
IHRvIGNvb3BlcmF0ZSB3aXRoIFJvY2tjaGlwLUlQIFBDSWUuCgpJIGFncmVlIHdlIHNob3VsZCB3
YWl0IG9uIFNoYXduIExpbidzIGZlZWRiYWNrLgoKVGhhbmsgeW91LApHZXJhbGRvIE5hc2NpbWVu
dG8KCj4gCj4gLSBNYW5pCj4gCj4gLS0gCj4g4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCu
muCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
