Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60EA7C71130
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jul 2025 23:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZ5dgOsWOe8hKoHx66pgnWKGHXtTSKixrijYlx7IQkA=; b=bjovsTStRMjwUq
	WbkX8WyNjSMmRM5jzgsf8WbcgBZyskwd6iVciwI9/OnHyC8kvzRc9PUaVbK9pRsUUN0RIysFMTr/L
	Hd6IzzQzWCnJ1tQvvC9FnCJhZzBwgoZGVFi6clMfjCVczDK3Ik2gz1fLkZzFPWWhiKSBWUNEi8lqs
	ZQxwBYTbF6+bE7wqXZypVy/Q1VeTxkT+sCq0wX+dyfmcJwSoRxwAhl8DbHxUTV+msH9gjIu9Cz4uH
	QZTpP80UFRFLBFTeKpscqzvRxuIeStc9IzLaD4dQ6ZookZokW4e+j6SOJN85nddXFjFXsXtSAMVa5
	W+yGB56k7mzcXDtFJB/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYutR-00000003kfT-2Vv0;
	Mon, 07 Jul 2025 23:05:01 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYutP-00000003keg-13Kz;
	Mon, 07 Jul 2025 23:05:00 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-4a9b09ba106so23928371cf.2;
        Mon, 07 Jul 2025 16:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751929498; x=1752534298; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AgefRmwWFnLKksEjR/mE3fDGyeNnfCLVBN4aw7Do+mU=;
        b=ZL9w1Wm9f5URnB7uycLDf/LMiL3LiiidrocMIOm/FsS0QJ/eGtVFFEC+5mhMeTboRW
         wKX6Oa0xXvPcQhLwMxwewlhNpZwHrOlZ5cRL+jrSrueERyn6d57DzVRBmfMGEDivJnEA
         3uRH+Bbcj6nP7z76QDBSWlGSFFlbA+rPT5JvV2f4KXpAE6j7bQqLlEo3xr/kAyvzS7ns
         d8F2WqnyYW2os9FxGgLqGifxQ9BDxC3GEwM/oZsWqi8XZXe5xtL3ZAqb6OMU9MRIJHQq
         dUH4lWZuY8asG7L4kwb55JYALkHLeiim5N/Oa5hS6x/iV8T95p6MsItPhNUZ/Tuf1zVA
         2Z6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751929498; x=1752534298;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AgefRmwWFnLKksEjR/mE3fDGyeNnfCLVBN4aw7Do+mU=;
        b=VhbDCzojWS1jtJZ5f8zZqWwyI8HgdrCy6dIcy/RwsHRapNErESnomdc5yxj5UHgyMz
         spFBV4GbqCbyPqpW4hNCmJHBcc68q2K7qV5Y+Wq0ykeIz1zD0S/UjxIxuq0k9R5L+v4E
         wc1xz6yoYqMpIE4rH281DxQBNFeDRLDpz3C+k8Vj1qxYqOEKcMZkXnxYGIHtxHQu7LBh
         zbR9jgqeCMdc7nJQZLC074dTO5dIoV/93M+SZpNJaRzE4ve9ABEsmp042Q+Hqdye5o7G
         Q21ZitaOXkmO04jMLSOXF4cSqx+z9YxJ/nvndcQ5/71zXvw+xTCtvmO/gciCwsh/9qHt
         AI1w==
X-Forwarded-Encrypted: i=1; AJvYcCUxcE5TreO/njHQAOM7ILOGPZPE1ZUDQDKgt2/jMiqrJnnuMJCm1m/inLlhE1zB1b7mYo8XIytiVhzffy2K67Q3@lists.infradead.org, AJvYcCWe130z3tsZ6KL5sWGldfuWBh+tkLqbqOiE2eTqt2WN1tNQblnRG/nf/yjQ6DdfP9FrqiccMwXqP225@lists.infradead.org
X-Gm-Message-State: AOJu0Yxoj6uQ7LnwyW5UjQzxaQUag8iwHQRsKs5yCukwLyZnf0W7IK3k
	O7YR+40owEoCV0C70U+jBKMdBgZGfI6txWwfp1RkRK9gUCPa+o3sk9Uq
X-Gm-Gg: ASbGncs7Pd9RMXd86CnHlDvtrXPMnUqVMCkyO0x5iLp2bs0JXcmmQrHGJa4yyv14sXl
	a6X+hs6QesyF6htZYZM2ALI3vJ11mo4dfGSbeOJw0Qaj6H35ncuGybTttvadZz4tqCAJCyGDQ/E
	YgWNJWfRdOXH/Qf7r4nqnYltL4Afo3ja9O/nmnFu8cdl6TF9BYJxeFa8h4mfl1x/3LGEP9Q5duo
	DqqROoo/4T9n17AoLe9fYnzC2NZ2tSbsKZFpaOf6OGxPy+lVxZkFMiKC9Gxv+2i9NE5Ygq5ejfI
	q95RsUBZYE8xO+fYu0J7/OmmkguXRzytR3Cv00kT/0Xt3NkEk4owyNq3rIP0
X-Google-Smtp-Source: AGHT+IEt38/qMtWKaR5SjIM0klOgkEeJMtKfunHHkkfEhSFc7UanZ5qQT5SVRGp91gGzCD3coMx+HA==
X-Received: by 2002:a05:622a:255:b0:4a5:8387:8b9f with SMTP id d75a77b69052e-4a99647dcebmr219861971cf.15.1751929497497;
        Mon, 07 Jul 2025 16:04:57 -0700 (PDT)
Received: from geday ([2804:7f2:800b:a5e6::dead:c001])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a9949fbe79sm71274421cf.31.2025.07.07.16.04.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 16:04:56 -0700 (PDT)
Date: Mon, 7 Jul 2025 20:04:45 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rick wertenbroek <rick.wertenbroek@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Valmantas Paliksa <walmis@gmail.com>, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RESEND PATCH v9 1/4] PCI: rockchip: Use standard PCIe defines
Message-ID: <aGxSjb17kz2--_Sf@geday>
References: <e81700ef4b49f584bc8834bfb07b6d8995fc1f42.1751322015.git.geraldogabriel@gmail.com>
 <20250707222210.GA2114615@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250707222210.GA2114615@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_160459_290941_12CB0D3B 
X-CRM114-Status: GOOD (  13.08  )
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

T24gTW9uLCBKdWwgMDcsIDIwMjUgYXQgMDU6MjI6MTBQTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBNb24sIEp1biAzMCwgMjAyNSBhdCAwNzoyNDo0MVBNIC0wMzAwLCBHZXJhbGRv
IE5hc2NpbWVudG8gd3JvdGU6Cj4gPiBDdXJyZW50IGNvZGUgdXNlcyBjdXN0b20tZGVmaW5lZCBy
ZWdpc3RlciBvZmZzZXRzIGFuZCBiaXRmaWVsZHMgZm9yCj4gPiBzdGFuZGFyZCBQQ0llIHJlZ2lz
dGVycy4gQ2hhbmdlIHRvIHVzaW5nIHN0YW5kYXJkIFBDSWUgZGVmaW5lcy4gU2luY2UKPiA+IHdl
IGFyZSBub3cgdXNpbmcgc3RhbmRhcmQgUENJZSBkZWZpbmVzLCBkcm9wIHVudXNlZCBjdXN0b20t
ZGVmaW5lZCBvbmVzLAo+ID4gd2hpY2ggYXJlIG5vdyByZWZlcmVuY2VkIGZyb20gb2Zmc2V0IGF0
IGFkZGVkIENhcGFiaWxpdGllcyBSZWdpc3Rlci4KPiAKPiA+IEBAIC0yNzgsMTAgKzI3OCwxMCBA
QCBzdGF0aWMgdm9pZCByb2NrY2hpcF9wY2llX3NldF9wb3dlcl9saW1pdChzdHJ1Y3Qgcm9ja2No
aXBfcGNpZSAqcm9ja2NoaXApCj4gPiAgCQlwb3dlciA9IHBvd2VyIC8gMTA7Cj4gPiAgCX0KPiA+
ICAKPiA+IC0Jc3RhdHVzID0gcm9ja2NoaXBfcGNpZV9yZWFkKHJvY2tjaGlwLCBQQ0lFX1JDX0NP
TkZJR19EQ1IpOwo+ID4gLQlzdGF0dXMgfD0gKHBvd2VyIDw8IFBDSUVfUkNfQ09ORklHX0RDUl9D
U1BMX1NISUZUKSB8Cj4gPiAtCQkgIChzY2FsZSA8PCBQQ0lFX1JDX0NPTkZJR19EQ1JfQ1BMU19T
SElGVCk7Cj4gPiAtCXJvY2tjaGlwX3BjaWVfd3JpdGUocm9ja2NoaXAsIHN0YXR1cywgUENJRV9S
Q19DT05GSUdfRENSKTsKPiA+ICsJc3RhdHVzID0gcm9ja2NoaXBfcGNpZV9yZWFkKHJvY2tjaGlw
LCBQQ0lFX1JDX0NPTkZJR19DUiArIFBDSV9FWFBfREVWQ0FQKTsKPiA+ICsJc3RhdHVzIHw9IEZJ
RUxEX1BSRVAoUENJX0VYUF9ERVZDQVBfUFdSX1ZBTCwgcG93ZXIpOwo+ID4gKwlzdGF0dXMgfD0g
RklFTERfUFJFUChQQ0lfRVhQX0RFVkNBUF9QV1JfU0NMLCBzY2FsZSk7Cj4gCj4gQWRkZWQgI2lu
Y2x1ZGUgPGxpbnV4L2JpdGZpZWxkLmg+IGZvciB0aGlzOgo+IAo+ICAgQ0MgICAgICBkcml2ZXJz
L3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5vCj4gZHJpdmVycy9wY2kvY29udHJv
bGxlci9wY2llLXJvY2tjaGlwLWhvc3QuYzogSW4gZnVuY3Rpb24g4oCYcm9ja2NoaXBfcGNpZV9z
ZXRfcG93ZXJfbGltaXTigJk6Cj4gZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlw
LWhvc3QuYzoyNzI6MjQ6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDi
gJhGSUVMRF9NQVjigJkgWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4g
ICAyNzIgfCAgICAgICAgIHdoaWxlIChwb3dlciA+IEZJRUxEX01BWChQQ0lfRVhQX0RFVkNBUF9Q
V1JfVkFMKSkgewo+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn4KPiBk
cml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jOjI4MjoxOTogZXJyb3I6
IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uIOKAmEZJRUxEX1BSRVDigJkgWy1XZXJy
b3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4gICAyODIgfCAgICAgICAgIHN0YXR1
cyB8PSBGSUVMRF9QUkVQKFBDSV9FWFBfREVWQ0FQX1BXUl9WQUwsIHBvd2VyKTsKPiAgICAgICB8
ICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn4KPgoKSGkgQmpvcm4sCgpVZ2gsIHdoYXQgYSBt
aXNzISBUaGFuayB5b3UgZm9yIHRha2luZyBjYXJlIG9mIHRoaXMhCgpHZXJhbGRvIE5hc2NpbWVu
dG8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
