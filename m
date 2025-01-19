Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE675C02183
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Jan 2025 05:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KpwbYtcT5auVREpOnT0GPZ8md4RqgQhGzORVOqiSQ+Y=; b=pgfDrI/+FT3Bqd
	osFp/D8hgN5SZNp2FeyorbaE/rNt8NmOzfumVjnxRLFVYKUCiRbbVy4m0VYRl+7tlJLRJzmD5u58D
	klldjPCNhksyyaWlvABz4K7uE0umy3cGfdCKEnDfqvpv3jzt9xHiS2eLtlgcTS1IJv8uKuCg02T0R
	wy/K9Zv9cAeQYhZ/sbfPbIA6tSdr0Q35Mf/TJE0NEHn6mhHYWLXpUXXZDRlFFkkstYwdGTgulRfW7
	rR8+COelMN/+dR3BQYI+Lz/b0DfSsg46gb6n+b0t8W1rGOtpsyd/mhsi59X4xOaB4zvf0beh3p5Wu
	pmDGgU3TxHy/sQ12fB3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZNwO-00000003RJw-0pwx;
	Sun, 19 Jan 2025 05:33:44 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZNwK-00000003RJB-3dEI
	for linux-rockchip@lists.infradead.org;
	Sun, 19 Jan 2025 05:33:43 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2162c0f6a39so85302845ad.0
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Jan 2025 21:33:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737264820; x=1737869620; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4vI0iAGnzu7S5oTjzbVtlW1pPkklWEuLHOcVvGs/EI0=;
        b=DFLZ3Z2aX9YXGI97Boxwr+JMbJIIhK/iOpodvGcxgCbC3AVqTl7EfFeHJSufZIfXtp
         YpkG90MVot34axUthBYaaC4ARkfRYxZO/ysi8Oy+iZBJWV2mdnAxP0uSSg19lsuuuuRC
         f3kQwHp1L//vFKtdkDbfjfpV32sLGA+8OkmI4xxE/qkEEKZmzxOi4v2pJtfKtQ13V75b
         lpCFKchZcmrdYviLiWIDUHBjZztySqiQDRBYtIgUXXZctxQYqgIhCibUQSRkla30/zu3
         LD5aw61jVEYzQ9fuvx1JoxoiCfqAGT0rNKK5sEViHJOjcdHEOSNtFyqvuna3isPlKkve
         JUGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737264820; x=1737869620;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4vI0iAGnzu7S5oTjzbVtlW1pPkklWEuLHOcVvGs/EI0=;
        b=VSwamEpw8UMEVsFwMi7ehuvQ1thOmCCe4GY07I7a3PONlrL2KzkbIkVYvTf6dZy+vX
         ooNvV0XmzhnDpSXpJepqcR13FhQBC3Ucyd+It3qq/Uh8+FMYfnJkUtzBWbuXezxpreN7
         2Yvq/v25Mq/4lg/R7ba+3aBJ3i8VwtpBtM31HRRgunOo2QH3Uy6RQyaaA62t/nWjzzJ0
         9lvXaTL7yBhapduFVfhXmAnJJmgucPua8rZu4RWnsLerPZPI1z4OHRF+h7uqJjctwc34
         YN+uI25vKtZqHJ+fKNmsW+5VKKSC4aopZMZO9MXTUy+SQTpBaErVx1oxT7yEVE7f/L4z
         LG4w==
X-Forwarded-Encrypted: i=1; AJvYcCX78D5TtyLHqSeNA04GYV/cBxyW/g+XYptL1mNleYugh89SEWnQS6roa1PhViotthG8yP9XyU/h+oZH28z2Dw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwqsdPsa+KotG/op3Tal5uChy5MTy3kgWswS/BJvCrWFGJCS40x
	HGSiV4bWYOJQBNC0QyuJUgLibYv3inHcRj6ktT+8MOFlR6CQo8JH8pWqu7pc3Q==
X-Gm-Gg: ASbGncvOEd7+rSZIsM8mvBVi0OoaISH7tar/u85OLvkW7QHXnBhomVamPQ1+Cc3HYsF
	XrEGjU3KpRg3jmmYDJwjm3YWNmrAQKhFJStFr29iGjt4AfuTUG3GDL3/yjhrdgCn6fHOsE61RR2
	U4jsfi0axzaMP5rEei0cwy/ONc5uYIM6TliRe/SNLAqq4zC5gM43wqc+KRuvJKN7UqZv2DO/QSi
	JSypJJUBQhPTZRivTgJTes2ovj5Oj3S8E4p04LgHeDDkWOVOvDm1mIsEZgOAAciZ7gn1LMxb3Qk
	jYQiMQ==
X-Google-Smtp-Source: AGHT+IF9G2b79a1VfoH6m4pswjFmDLBJqbv/WfnV9XujUXsWzuIF8RjvzijezxL13+j7j+Aah4HtiA==
X-Received: by 2002:a05:6a00:3ccf:b0:728:f21b:ce4c with SMTP id d2e1a72fcca58-72db1b652e2mr14312654b3a.5.1737264819679;
        Sat, 18 Jan 2025 21:33:39 -0800 (PST)
Received: from thinkpad ([120.60.143.204])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72dab7f069esm4625678b3a.28.2025.01.18.21.33.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 21:33:39 -0800 (PST)
Date: Sun, 19 Jan 2025 11:03:34 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Damien Le Moal <dlemoal@kernel.org>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Udit Kumar <u-kumar1@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 6/6] PCI: dw-rockchip: Describe resizable BARs as
 resizable BARs
Message-ID: <20250119053334.tgp7yycky5s6ub2v@thinkpad>
References: <20250113102730.1700963-8-cassel@kernel.org>
 <20250113102730.1700963-14-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250113102730.1700963-14-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250118_213340_954801_C97E3E98 
X-CRM114-Status: GOOD (  18.47  )
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

T24gTW9uLCBKYW4gMTMsIDIwMjUgYXQgMTE6Mjc6MzdBTSArMDEwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBMb29raW5nIGF0ICIxMS40LjQuMjkgVVNQX1BDSUVfUkVTQkFSIFJlZ2lzdGVycyBT
dW1tYXJ5IiBpbiB0aGUgcmszNTg4IFRSTSwKPiB3ZSBjYW4gc2VlIHRoYXQgbm9uZSBvZiB0aGUg
QkFScyBhcmUgRml4ZWQgQkFScywgYnV0IGFjdHVhbGx5IFJlc2l6YWJsZQo+IEJBUnMuCj4gCj4g
SSBjb3VsZG4ndCBmaW5kIGFueSByZWZlcmVuY2UgaW4gdGhlIHJrMzU2OCBUUk0sIGJ1dCBsb29r
aW5nIGF0IHRoZQo+IGRvd25zdHJlYW0gUENJZSBlbmRwb2ludCBkcml2ZXIsIHJrMzU2OCBhbmQg
cmszNTg4IGFyZSB0cmVhdGVkIGFzIHRoZSBzYW1lLAo+IHNvIHRoZSBCQVJzIG9uIHJrMzU2OCBt
dXN0IGFsc28gYmUgUmVzaXphYmxlIEJBUnMuCj4gCj4gTm93IHdoZW4gd2UgYWN0dWFsbHkgaGF2
ZSBzdXBwb3J0IGZvciBSZXNpemFibGUgQkFScywgbGV0J3MgY29uZmlndXJlCj4gdGhlc2UgQkFS
cyBhcyBzdWNoLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE5pa2xhcyBDYXNzZWwgPGNhc3NlbEBrZXJu
ZWwub3JnPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5z
YWRoYXNpdmFtQGxpbmFyby5vcmc+CgotIE1hbmkKCj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyB8IDIyICsrKysrKysrKy0tLS0tLS0tLS0KPiAg
MSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMg
Yi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiBpbmRleCBj
ZTRiNTExYmZmOWIuLjZhMzA3YTk2MTc1NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiBAQCAtMjczLDEyICsyNzMsMTIgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBwY2lfZXBjX2ZlYXR1cmVzIHJvY2tjaGlwX3BjaWVfZXBjX2ZlYXR1cmVz
X3JrMzU2OCA9IHsKPiAgCS5tc2lfY2FwYWJsZSA9IHRydWUsCj4gIAkubXNpeF9jYXBhYmxlID0g
dHJ1ZSwKPiAgCS5hbGlnbiA9IFNaXzY0SywKPiAtCS5iYXJbQkFSXzBdID0geyAudHlwZSA9IEJB
Ul9GSVhFRCwgLmZpeGVkX3NpemUgPSBTWl8xTSwgfSwKPiAtCS5iYXJbQkFSXzFdID0geyAudHlw
ZSA9IEJBUl9GSVhFRCwgLmZpeGVkX3NpemUgPSBTWl8xTSwgfSwKPiAtCS5iYXJbQkFSXzJdID0g
eyAudHlwZSA9IEJBUl9GSVhFRCwgLmZpeGVkX3NpemUgPSBTWl8xTSwgfSwKPiAtCS5iYXJbQkFS
XzNdID0geyAudHlwZSA9IEJBUl9GSVhFRCwgLmZpeGVkX3NpemUgPSBTWl8xTSwgfSwKPiAtCS5i
YXJbQkFSXzRdID0geyAudHlwZSA9IEJBUl9GSVhFRCwgLmZpeGVkX3NpemUgPSBTWl8xTSwgfSwK
PiAtCS5iYXJbQkFSXzVdID0geyAudHlwZSA9IEJBUl9GSVhFRCwgLmZpeGVkX3NpemUgPSBTWl8x
TSwgfSwKPiArCS5iYXJbQkFSXzBdID0geyAudHlwZSA9IEJBUl9SRVNJWkFCTEUsIH0sCj4gKwku
YmFyW0JBUl8xXSA9IHsgLnR5cGUgPSBCQVJfUkVTSVpBQkxFLCB9LAo+ICsJLmJhcltCQVJfMl0g
PSB7IC50eXBlID0gQkFSX1JFU0laQUJMRSwgfSwKPiArCS5iYXJbQkFSXzNdID0geyAudHlwZSA9
IEJBUl9SRVNJWkFCTEUsIH0sCj4gKwkuYmFyW0JBUl80XSA9IHsgLnR5cGUgPSBCQVJfUkVTSVpB
QkxFLCB9LAo+ICsJLmJhcltCQVJfNV0gPSB7IC50eXBlID0gQkFSX1JFU0laQUJMRSwgfSwKPiAg
fTsKPiAgCj4gIC8qCj4gQEAgLTI5MywxMiArMjkzLDEyIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
cGNpX2VwY19mZWF0dXJlcyByb2NrY2hpcF9wY2llX2VwY19mZWF0dXJlc19yazM1ODggPSB7Cj4g
IAkubXNpX2NhcGFibGUgPSB0cnVlLAo+ICAJLm1zaXhfY2FwYWJsZSA9IHRydWUsCj4gIAkuYWxp
Z24gPSBTWl82NEssCj4gLQkuYmFyW0JBUl8wXSA9IHsgLnR5cGUgPSBCQVJfRklYRUQsIC5maXhl
ZF9zaXplID0gU1pfMU0sIH0sCj4gLQkuYmFyW0JBUl8xXSA9IHsgLnR5cGUgPSBCQVJfRklYRUQs
IC5maXhlZF9zaXplID0gU1pfMU0sIH0sCj4gLQkuYmFyW0JBUl8yXSA9IHsgLnR5cGUgPSBCQVJf
RklYRUQsIC5maXhlZF9zaXplID0gU1pfMU0sIH0sCj4gLQkuYmFyW0JBUl8zXSA9IHsgLnR5cGUg
PSBCQVJfRklYRUQsIC5maXhlZF9zaXplID0gU1pfMU0sIH0sCj4gKwkuYmFyW0JBUl8wXSA9IHsg
LnR5cGUgPSBCQVJfUkVTSVpBQkxFLCB9LAo+ICsJLmJhcltCQVJfMV0gPSB7IC50eXBlID0gQkFS
X1JFU0laQUJMRSwgfSwKPiArCS5iYXJbQkFSXzJdID0geyAudHlwZSA9IEJBUl9SRVNJWkFCTEUs
IH0sCj4gKwkuYmFyW0JBUl8zXSA9IHsgLnR5cGUgPSBCQVJfUkVTSVpBQkxFLCB9LAo+ICAJLmJh
cltCQVJfNF0gPSB7IC50eXBlID0gQkFSX1JFU0VSVkVELCB9LAo+IC0JLmJhcltCQVJfNV0gPSB7
IC50eXBlID0gQkFSX0ZJWEVELCAuZml4ZWRfc2l6ZSA9IFNaXzFNLCB9LAo+ICsJLmJhcltCQVJf
NV0gPSB7IC50eXBlID0gQkFSX1JFU0laQUJMRSwgfSwKPiAgfTsKPiAgCj4gIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgcGNpX2VwY19mZWF0dXJlcyAqCj4gLS0gCj4gMi40Ny4xCj4gCgotLSAK4K6u4K6j
4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
