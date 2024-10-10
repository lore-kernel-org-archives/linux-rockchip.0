Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9492CF07C2
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 08:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qr+QCyXHMk/UQqAS0EM5fy7xkn3zAXmuHvbFqogb9I=; b=GQCPzFWcUXraZv
	SIeAz0A/SikJ8H8ZvfVi+0ydDxik6X0GJ/PaYfPnfWzTsTq59zjIe+nbHfoUXi1lfcgy3IEk2PM8n
	b42ZqnQe4EjNVGOByWj9GJbNJrxf8WGCGSEqD0+AAasQbvLY1t9cMd6lfEGLhKjMoO+6uOyNREb/i
	FR00JyWT0zvwXB27qzLvUro0CnBLQFIfGL6Mm6SS4WAPoRoeGgsy5CNjpIuOTUfK/oa6NVjcJeRaZ
	Slli2LP0k3arhTgLeVRINDf0DsUqSrTBKWbRge2cOQ07tIGCNv08qcLFyEpeiueFeNrjiaR+6QSat
	+t1XnSdP38G4arreb8iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syoTZ-0000000BzFH-1Der;
	Thu, 10 Oct 2024 08:24:49 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syoFH-0000000Bus3-3FEf
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Oct 2024 08:10:05 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-20b7259be6fso6754835ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2024 01:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728547803; x=1729152603; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zmKcXJUPy3GJb83o8RShQJdgCDtW41p1Q1FD22fOmPo=;
        b=aXLFTHya2hFNigL5omTzOWfS2LgF+gWMI53LOf2LMrV7GajpSE1NuWDTSAIAG/0v/3
         g2i+LbbQgQQTRXOs/7sgX0rPn1D/a0ZPGWDKw9nQ7rbA3GEjXwTm+JYRSSJ9g5RJN/Q4
         e7oV2FFVEfj0FVUqJ81G4E6RhtSwXPmg0nxSI2iz5rV4QXO8f1FJlbv/H4oZqyK56be3
         kNvpyACgk2C07gtKhC6iahO+bbuIbCjDzZ+GCmY0INlYeAS4tBD+gzdhTWNGcy6yHJDq
         wLPsL4wgnvlQVRDiShmdgoUaWe9jXGSD+hjfohxscj3xdFSJOjwYDI4+wYDQRUf5x/2W
         TvYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728547803; x=1729152603;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zmKcXJUPy3GJb83o8RShQJdgCDtW41p1Q1FD22fOmPo=;
        b=QyzJFfePIhKVWBjyMEJwWTq93IgYonTRCVrN1/gcs40fg6SUGZ6MFunsnfrUDCTQ1k
         bqljdCXBnpWBFa92y5E7iMxvTuwvX1pQWuMvaF2Tl6qewseKvP2cX6a6C2naSh+9KGJ3
         uJI0IMxtQEZwUvmJZ9io8CAPMq72/SOcjUPHZLr3G6ZbvPEq1FSQv9jB5slfChU7bRMm
         Qz7/eebo3eIg8TRUtYI8tSFTEh8SmAc2387xb0/ZgVH0jXs6WZFOyn+8iweSiUNTS3C5
         9Z/z9W5O9FVS9kQwwPdsI7hKa7rVMvdPLW51AiGYHvCL03/79zpdJxcjT8hjP5Z29FXA
         19pA==
X-Forwarded-Encrypted: i=1; AJvYcCUhnX3i2lcSY2YFrh3XGV1+33GPbhdSIL4w28ZgfAXRgCsTB2wbKoBSw42TXm5BbdbXTTbvyEfDP6Q0hSoj5g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxCwmxgdJ+CpcRWOHi0I3dWW4X1XdbAL6oi45/SRex1EZQBMJSu
	0U72oW/4NBY77wY7TcEILBA1u8Eb3VFKiSRZMZsS/F3NvhiS1c7vugEzO21Apg==
X-Google-Smtp-Source: AGHT+IEhI0oEHMpvi/Ep8rZT37rMBupuv4nErdDsje5nS4NaslF2zKOn4ZDc5nilfaVzbMlP4HVL5w==
X-Received: by 2002:a17:903:124b:b0:206:9a3f:15e5 with SMTP id d9443c01a7336-20c63746cafmr77627535ad.32.1728547802706;
        Thu, 10 Oct 2024 01:10:02 -0700 (PDT)
Received: from thinkpad ([220.158.156.184])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bad33d6sm5162345ad.33.2024.10.10.01.09.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 01:10:02 -0700 (PDT)
Date: Thu, 10 Oct 2024 13:39:56 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 07/12] PCI: rockchip-ep: Refactor
 rockchip_pcie_ep_probe() MSI-X hiding
Message-ID: <20241010080956.z3cw2mxxlgrjafhs@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-8-dlemoal@kernel.org>
 <20241010072512.f7e4kdqcfe5okcvg@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241010072512.f7e4kdqcfe5okcvg@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_011003_869187_7C14A166 
X-CRM114-Status: GOOD (  29.06  )
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

T24gVGh1LCBPY3QgMTAsIDIwMjQgYXQgMTI6NTU6MTJQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIE1vbiwgT2N0IDA3LCAyMDI0IGF0IDAxOjEyOjEzUE0gKzA5MDAs
IERhbWllbiBMZSBNb2FsIHdyb3RlOgo+ID4gTW92ZSB0aGUgY29kZSBpbiByb2NrY2hpcF9wY2ll
X2VwX3Byb2JlKCkgdG8gaGlkZSB0aGUgTVNJLVggY2FwYWJpbGl0eQo+ID4gdG8gaXRzIG93biBm
dW5jdGlvbiwgcm9ja2NoaXBfcGNpZV9lcF9oaWRlX21zaXhfY2FwKCkuIE5vIGZ1bmN0aW9uYWwK
PiA+IGNoYW5nZXMuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IERhbWllbiBMZSBNb2FsIDxkbGVt
b2FsQGtlcm5lbC5vcmc+Cj4gCj4gUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8
bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4gCj4gQnR3LCBjYW4gc29tZW9uZSBm
cm9tIFJvY2tjaGlwIGNvbmZpcm0gaWYgdGhpcyBoaWRpbmcgaXMgbmVjZXNzYXJ5IGZvciBhbGwg
dGhlCj4gU29Dcz8gSXQgbG9va3MgdG8gbWUgbGlrZSBhbiBTb0MgcXVpcmsuCj4gCj4gLSBNYW5p
Cj4gCj4gPiAtLS0KPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAu
YyB8IDU0ICsrKysrKysrKysrKystLS0tLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMwIGlu
c2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL3BjaWUtcm9ja2NoaXAtZXAuYwo+ID4gaW5kZXggNTIzZTljZGZkMjQxLi43YTE3OThmY2My
YWQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAt
ZXAuYwo+ID4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMK
PiA+IEBAIC01ODEsNiArNTgxLDM0IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfZXBfcmVs
ZWFzZV9yZXNvdXJjZXMoc3RydWN0IHJvY2tjaGlwX3BjaWVfZXAgKmVwKQo+ID4gIAlwY2lfZXBj
X21lbV9leGl0KGVwLT5lcGMpOwo+ID4gIH0KPiA+ICAKPiA+ICtzdGF0aWMgdm9pZCByb2NrY2hp
cF9wY2llX2VwX2hpZGVfbXNpeF9jYXAoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKQoK
UGVyaGFwcyBhIGJldHRlciBuYW1lIHdvdWxkIGJlIHJvY2tjaGlwX3BjaWVfZGlzYWJsZV9icm9r
ZW5fbXNpeCgpPyBBcyB0aGUKZnVuY3Rpb24gZXNzZW50aWFsbHkgZGlzYWJsZXMgTVNJeCB3aGlj
aCBpcyBicm9rZW4uIEFnYWluLCBpdCdkIGJlIGdvb2QgdG8ga25vdwppZiB0aGlzIGFwcGxpZXMg
dG8gYWxsIFNvQ3Mgb3IganVzdCBhIGZldy4KCi0gTWFuaQoKPiA+ICt7Cj4gPiArCXUzMiBjZmdf
bXNpLCBjZmdfbXNpeF9jcDsKPiA+ICsKPiA+ICsJLyoKPiA+ICsJICogTVNJLVggaXMgbm90IHN1
cHBvcnRlZCBidXQgdGhlIGNvbnRyb2xsZXIgc3RpbGwgYWR2ZXJ0aXNlcyB0aGUgTVNJLVgKPiA+
ICsJICogY2FwYWJpbGl0eSBieSBkZWZhdWx0LCB3aGljaCBjYW4gbGVhZCB0byB0aGUgUm9vdCBD
b21wbGV4IHNpZGUKPiA+ICsJICogYWxsb2NhdGluZyBNU0ktWCB2ZWN0b3JzIHdoaWNoIGNhbm5v
dCBiZSB1c2VkLiBBdm9pZCB0aGlzIGJ5IHNraXBwaW5nCj4gPiArCSAqIHRoZSBNU0ktWCBjYXBh
YmlsaXR5IGVudHJ5IGluIHRoZSBQQ0llIGNhcGFiaWxpdGllcyBsaW5rZWQtbGlzdDogZ2V0Cj4g
PiArCSAqIHRoZSBuZXh0IHBvaW50ZXIgZnJvbSB0aGUgTVNJLVggZW50cnkgYW5kIHNldCB0aGF0
IGluIHRoZSBNU0kKPiA+ICsJICogY2FwYWJpbGl0eSBlbnRyeSAod2hpY2ggaXMgdGhlIHByZXZp
b3VzIGVudHJ5KS4gVGhpcyB3YXkgdGhlIE1TSS1YCj4gPiArCSAqIGVudHJ5IGlzIHNraXBwZWQg
KGxlZnQgb3V0IG9mIHRoZSBsaW5rZWQtbGlzdCkgYW5kIG5vdCBhZHZlcnRpc2VkLgo+ID4gKwkg
Ki8KPiA+ICsJY2ZnX21zaSA9IHJvY2tjaGlwX3BjaWVfcmVhZChyb2NrY2hpcCwgUENJRV9FUF9D
T05GSUdfQkFTRSArCj4gPiArCQkJCSAgICAgUk9DS0NISVBfUENJRV9FUF9NU0lfQ1RSTF9SRUcp
Owo+ID4gKwo+ID4gKwljZmdfbXNpICY9IH5ST0NLQ0hJUF9QQ0lFX0VQX01TSV9DUDFfTUFTSzsK
PiA+ICsKPiA+ICsJY2ZnX21zaXhfY3AgPSByb2NrY2hpcF9wY2llX3JlYWQocm9ja2NoaXAsIFBD
SUVfRVBfQ09ORklHX0JBU0UgKwo+ID4gKwkJCQkJIFJPQ0tDSElQX1BDSUVfRVBfTVNJWF9DQVBf
UkVHKSAmCj4gPiArCQkJCQkgUk9DS0NISVBfUENJRV9FUF9NU0lYX0NBUF9DUF9NQVNLOwo+ID4g
Kwo+ID4gKwljZmdfbXNpIHw9IGNmZ19tc2l4X2NwOwo+ID4gKwo+ID4gKwlyb2NrY2hpcF9wY2ll
X3dyaXRlKHJvY2tjaGlwLCBjZmdfbXNpLAo+ID4gKwkJCSAgICBQQ0lFX0VQX0NPTkZJR19CQVNF
ICsgUk9DS0NISVBfUENJRV9FUF9NU0lfQ1RSTF9SRUcpOwo+ID4gK30KPiA+ICsKPiA+ICBzdGF0
aWMgaW50IHJvY2tjaGlwX3BjaWVfZXBfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPiA+ICB7Cj4gPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gPiBAQCAt
NTg4LDcgKzYxNiw2IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9lcF9wcm9iZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gIAlzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2No
aXA7Cj4gPiAgCXN0cnVjdCBwY2lfZXBjICplcGM7Cj4gPiAgCWludCBlcnI7Cj4gPiAtCXUzMiBj
ZmdfbXNpLCBjZmdfbXNpeF9jcDsKPiA+ICAKPiA+ICAJZXAgPSBkZXZtX2t6YWxsb2MoZGV2LCBz
aXplb2YoKmVwKSwgR0ZQX0tFUk5FTCk7Cj4gPiAgCWlmICghZXApCj4gPiBAQCAtNjE5LDYgKzY0
Niw4IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9lcF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQo+ID4gIAlpZiAoZXJyKQo+ID4gIAkJZ290byBlcnJfZGlzYWJsZV9jbG9j
a3M7Cj4gPiAgCj4gPiArCXJvY2tjaGlwX3BjaWVfZXBfaGlkZV9tc2l4X2NhcChyb2NrY2hpcCk7
Cj4gPiArCj4gPiAgCS8qIEVzdGFibGlzaCB0aGUgbGluayBhdXRvbWF0aWNhbGx5ICovCj4gPiAg
CXJvY2tjaGlwX3BjaWVfd3JpdGUocm9ja2NoaXAsIFBDSUVfQ0xJRU5UX0xJTktfVFJBSU5fRU5B
QkxFLAo+ID4gIAkJCSAgICBQQ0lFX0NMSUVOVF9DT05GSUcpOwo+ID4gQEAgLTYyNiwyOSArNjU1
LDYgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2VwX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4gPiAgCS8qIE9ubHkgZW5hYmxlIGZ1bmN0aW9uIDAgYnkgZGVmYXVsdCAq
Lwo+ID4gIAlyb2NrY2hpcF9wY2llX3dyaXRlKHJvY2tjaGlwLCBCSVQoMCksIFBDSUVfQ09SRV9Q
SFlfRlVOQ19DRkcpOwo+ID4gIAo+ID4gLQkvKgo+ID4gLQkgKiBNU0ktWCBpcyBub3Qgc3VwcG9y
dGVkIGJ1dCB0aGUgY29udHJvbGxlciBzdGlsbCBhZHZlcnRpc2VzIHRoZSBNU0ktWAo+ID4gLQkg
KiBjYXBhYmlsaXR5IGJ5IGRlZmF1bHQsIHdoaWNoIGNhbiBsZWFkIHRvIHRoZSBSb290IENvbXBs
ZXggc2lkZQo+ID4gLQkgKiBhbGxvY2F0aW5nIE1TSS1YIHZlY3RvcnMgd2hpY2ggY2Fubm90IGJl
IHVzZWQuIEF2b2lkIHRoaXMgYnkgc2tpcHBpbmcKPiA+IC0JICogdGhlIE1TSS1YIGNhcGFiaWxp
dHkgZW50cnkgaW4gdGhlIFBDSWUgY2FwYWJpbGl0aWVzIGxpbmtlZC1saXN0OiBnZXQKPiA+IC0J
ICogdGhlIG5leHQgcG9pbnRlciBmcm9tIHRoZSBNU0ktWCBlbnRyeSBhbmQgc2V0IHRoYXQgaW4g
dGhlIE1TSQo+ID4gLQkgKiBjYXBhYmlsaXR5IGVudHJ5ICh3aGljaCBpcyB0aGUgcHJldmlvdXMg
ZW50cnkpLiBUaGlzIHdheSB0aGUgTVNJLVgKPiA+IC0JICogZW50cnkgaXMgc2tpcHBlZCAobGVm
dCBvdXQgb2YgdGhlIGxpbmtlZC1saXN0KSBhbmQgbm90IGFkdmVydGlzZWQuCj4gPiAtCSAqLwo+
ID4gLQljZmdfbXNpID0gcm9ja2NoaXBfcGNpZV9yZWFkKHJvY2tjaGlwLCBQQ0lFX0VQX0NPTkZJ
R19CQVNFICsKPiA+IC0JCQkJICAgICBST0NLQ0hJUF9QQ0lFX0VQX01TSV9DVFJMX1JFRyk7Cj4g
PiAtCj4gPiAtCWNmZ19tc2kgJj0gflJPQ0tDSElQX1BDSUVfRVBfTVNJX0NQMV9NQVNLOwo+ID4g
LQo+ID4gLQljZmdfbXNpeF9jcCA9IHJvY2tjaGlwX3BjaWVfcmVhZChyb2NrY2hpcCwgUENJRV9F
UF9DT05GSUdfQkFTRSArCj4gPiAtCQkJCQkgUk9DS0NISVBfUENJRV9FUF9NU0lYX0NBUF9SRUcp
ICYKPiA+IC0JCQkJCSBST0NLQ0hJUF9QQ0lFX0VQX01TSVhfQ0FQX0NQX01BU0s7Cj4gPiAtCj4g
PiAtCWNmZ19tc2kgfD0gY2ZnX21zaXhfY3A7Cj4gPiAtCj4gPiAtCXJvY2tjaGlwX3BjaWVfd3Jp
dGUocm9ja2NoaXAsIGNmZ19tc2ksCj4gPiAtCQkJICAgIFBDSUVfRVBfQ09ORklHX0JBU0UgKyBS
T0NLQ0hJUF9QQ0lFX0VQX01TSV9DVFJMX1JFRyk7Cj4gPiAtCj4gPiAgCXJvY2tjaGlwX3BjaWVf
d3JpdGUocm9ja2NoaXAsIFBDSUVfQ0xJRU5UX0NPTkZfRU5BQkxFLAo+ID4gIAkJCSAgICBQQ0lF
X0NMSUVOVF9DT05GSUcpOwo+ID4gIAo+ID4gLS0gCj4gPiAyLjQ2LjIKPiA+IAo+IAo+IC0tIAo+
IOCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0t
IArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
