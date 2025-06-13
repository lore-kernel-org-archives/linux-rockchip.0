Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A6EFC71148
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jun 2025 16:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YSoCYKMFJbP3tAGuIdmEk/g18leWf4nNcFa8jpl4FyI=; b=FYC0WoZH4wWBqE
	LRVYRsTEaeggoAQf5cR2oxsbkO/+GcekqNKAs75iQfgSpBqMwRl/SP3c5jsf/cW6C6wckUzQu4yzd
	P5CO1ULGgUc160vNlZW5gkPy+KzVkRJhhHv2CdAq4waGWonEZ74eYiOfm9OTx7IT/dBTugB9Vhpmz
	xyB8r8+LOdcKLTHop8BK7YL0WkwutPAMguLdCmRX0SemInIGZqsY70E7SmOANr8bAmQ8ueDXowZly
	aggWZ4ul1+ksSaK8/5rSJ0mxArWfBrLpLZYHLQaalR+aPNw/27iUek/2srNzHdqxZdxSO++DG6jsU
	mXW/TQsG1GIuzCZ6jH6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ7RK-0000000H4UG-09Q8;
	Fri, 13 Jun 2025 16:39:38 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ6Bj-0000000GqXK-3KDk;
	Fri, 13 Jun 2025 15:19:28 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-74801bc6dc5so1857312b3a.1;
        Fri, 13 Jun 2025 08:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749827967; x=1750432767; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=E5wEqTLrIuHxlff07XhC6OAddwglGpYMw59cggcJYQ4=;
        b=Oo3HmD7lJJo4Q1PovApfETZFwjTpFk+7XJLTzEzLtvEKvsCGiNkWtlBUvxSbFSjsyY
         +90ByfORxH7it0ewXFti4bWar4uqW7Ytvi6YdNKIw+2oH9FhMniw769yHH31Hq/63n7p
         pDj4GJZpxxQ1w1PkY0/OPuO2pvKe7OzeDcwG/58n4caKcWy41Jc50nSaxAojxsmJu0PE
         HOxy85g+s6ON1Ojo5sG8PfIywknJmQdsVFxRMLjXNTmThFj1jyFYVzdn7aQjUGcmpcNU
         bSXTCLZhYs8wz0HYcu4OdriXdwjjIyW2t8lNPGIEUCU9ing/2mcsZ5r1BPJLVn9H5i3B
         yZhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749827967; x=1750432767;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E5wEqTLrIuHxlff07XhC6OAddwglGpYMw59cggcJYQ4=;
        b=f7A5bjibcGXATlih154Mqlq0pD/UnjZqja81n31gMp+d8ZaI4pMojod8FqzBiy0lBS
         GdQQkZUTBqLk06X0G9Ocruxw4OQoV3xs4OtcdhpyY7hqFGf61W1MnaN1cnduWmewDAmC
         M6A+aKlg9ycTO6+wRWagoYDHDJAHVAzRnzhD3htvOYbxKW0JyhIxKdl1CcDb1no3UYUC
         vP9Yb06xC5GSBGgr0eStsq6GUl0uBjRzZwadR9PRQ3joW8E7/SN9UZOsKRSGkT/lQ5Sp
         u11Xj+i1amwIIaRVHptoJ53YOY7oHrBkRT8rjyDJIEFAQ4EyAHSFoYMRw+fFMUxU7IoD
         rV6Q==
X-Forwarded-Encrypted: i=1; AJvYcCW+eoaVhOdb5YdOavNq0eSis/S2aMY6tfAS1LJvpLA9ku2flPeKA0npIoAf7/+mTCBP/N/rrcdnDO30@lists.infradead.org, AJvYcCXGUQqNIua/BjRzxx3Ngun7zO8lD+DtgTk6JMXxUPARzJDaH4P6CW25KvdfLf0En8Nd5J68exQnrp2qFJG9oaEh@lists.infradead.org
X-Gm-Message-State: AOJu0YzbDGAqXNKUnguXi98m2Odi8rkX0RHwUB7l1CwC/lRMFcLnIp9E
	0Uyph5ugZutxzY9bAVRtm+xl8ieg3VwDO+/X5ZXT/1sNCxxf9U2V+nsJ
X-Gm-Gg: ASbGnctJStaA0FTI33oIEDz/SxMlHhFwhaNY7/v7qdp5BX2w1Oq1jkCMahk2bm008UN
	nMemwJbc63wixyb+gK86+8wtYTd4bK1O8ruKs43mVd/LWIQ5OTbhEmYoK94A1KnCv7my9AN7fbx
	lfWvH3Jd71A6uWU6yBkDDMCP68FCsMu+bZo6TKAcd8cR8lOJqnZaZmxFpzE40yyHlWe/p7fNttl
	DYa4uY+t3rEV2LcJrPthihcaHwBSB3rQ7dM+z/lHfQHkZExfrJO+LKcvvOeCCM+q2HcVC8ew249
	w7p5aUmBRB7z7vviXkBDPAgkghTsAdJIL/9YKeW+NQcdxUC1aQ==
X-Google-Smtp-Source: AGHT+IH6BtrN8GvaynSvVoLNqD2VGmMz6n61XivbhbvYaO0BgySl9/odnV8zmrOFQ6SXd92rPXn+AA==
X-Received: by 2002:a05:6a00:10c9:b0:742:b928:59cb with SMTP id d2e1a72fcca58-74898586762mr1340177b3a.7.1749827966984;
        Fri, 13 Jun 2025 08:19:26 -0700 (PDT)
Received: from geday ([2804:7f2:800b:838f::dead:c001])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7489008303fsm1687203b3a.79.2025.06.13.08.19.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jun 2025 08:19:26 -0700 (PDT)
Date: Fri, 13 Jun 2025 12:19:20 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [RFC PATCH v4 2/5] PCI: rockchip: Drop unused custom registers
 and bitfields
Message-ID: <aExBeNdkOtFtW87z@geday>
References: <cover.1749826250.git.geraldogabriel@gmail.com>
 <ed25d30f2761e963164efffcfbe35502feb3adc2.1749826250.git.geraldogabriel@gmail.com>
 <97114c68-5eb7-18b0-adbd-227e1d7957c6@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <97114c68-5eb7-18b0-adbd-227e1d7957c6@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_081927_831899_AA8A32EA 
X-CRM114-Status: GOOD (  21.04  )
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

T24gRnJpLCBKdW4gMTMsIDIwMjUgYXQgMDY6MDM6MTRQTSArMDMwMCwgSWxwbyBKw6RydmluZW4g
d3JvdGU6Cj4gT24gRnJpLCAxMyBKdW4gMjAyNSwgR2VyYWxkbyBOYXNjaW1lbnRvIHdyb3RlOgo+
IAo+ID4gU2luY2Ugd2UgYXJlIG5vdyB1c2luZyBzdGFuZGFyZCBQQ0llIGRlZmluZXMsIGRyb3AK
PiA+IHVudXNlZCBjdXN0b20tZGVmaW5lZCBvbmVzLCB3aGljaCBhcmUgbm93IHJlZmVyZW5jZWQK
PiA+IGZyb20gb2Zmc2V0IGF0IGFkZGVkIENhcGFiaWxpdGllcyBSZWdpc3Rlci4KPiAKPiBUaGVz
ZSBhcmUgcXVpdGUgc2hvcnQgbGluZXMsIHBsZWFzZSByZWZsb3cgdGhlIGNoYW5nZWxvZyBwYXJh
Z3JhcGhzIHRvIHRoZSAKPiB1c3VhbCBsZW5ndGguCgpIaSBJbHBvLAoKSSdsbCByZWZsb3cgZm9y
IHY1LgoKPiAKPiA+IFN1Z2dlc3RlZC1CeTogQmpvcm4gSGVsZ2FhcyA8YmhlbGdhYXNAZ29vZ2xl
LmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IEdlcmFsZG8gTmFzY2ltZW50byA8Z2VyYWxkb2dhYnJp
ZWxAZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJv
Y2tjaGlwLmggfCAxMSArLS0tLS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMTAgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9j
b250cm9sbGVyL3BjaWUtcm9ja2NoaXAuaCBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1y
b2NrY2hpcC5oCj4gPiBpbmRleCA1ODY0YTIwMzIzZjIuLmY2MTE1OTk5ODhkNyAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oCj4gPiArKysgYi9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuaAo+ID4gQEAgLTE1NSwxNiArMTU1
LDcgQEAKPiA+ICAjZGVmaW5lIFBDSUVfRVBfQ09ORklHX0RJRF9WSUQJCShQQ0lFX0VQX0NPTkZJ
R19CQVNFICsgMHgwMCkKPiA+ICAjZGVmaW5lIFBDSUVfRVBfQ09ORklHX0xDUwkJKFBDSUVfRVBf
Q09ORklHX0JBU0UgKyAweGQwKQo+ID4gICNkZWZpbmUgUENJRV9SQ19DT05GSUdfUklEX0NDUgkJ
KFBDSUVfUkNfQ09ORklHX0JBU0UgKyAweDA4KQo+ID4gLSNkZWZpbmUgUENJRV9SQ19DT05GSUdf
RENSCQkoUENJRV9SQ19DT05GSUdfQkFTRSArIDB4YzQpCj4gPiAtI2RlZmluZSAgIFBDSUVfUkNf
Q09ORklHX0RDUl9DU1BMX1NISUZUCQkxOAo+ID4gLSNkZWZpbmUgICBQQ0lFX1JDX0NPTkZJR19E
Q1JfQ1NQTF9MSU1JVAkJMHhmZgo+ID4gLSNkZWZpbmUgICBQQ0lFX1JDX0NPTkZJR19EQ1JfQ1BM
U19TSElGVAkJMjYKPiA+IC0jZGVmaW5lIFBDSUVfUkNfQ09ORklHX0RDU1IJCShQQ0lFX1JDX0NP
TkZJR19CQVNFICsgMHhjOCkKPiA+IC0jZGVmaW5lICAgUENJRV9SQ19DT05GSUdfRENTUl9NUFNf
TUFTSwkJR0VOTUFTSyg3LCA1KQo+ID4gLSNkZWZpbmUgICBQQ0lFX1JDX0NPTkZJR19EQ1NSX01Q
U18yNTYJCSgweDEgPDwgNSkKPiA+IC0jZGVmaW5lIFBDSUVfUkNfQ09ORklHX0xJTktfQ0FQCQko
UENJRV9SQ19DT05GSUdfQkFTRSArIDB4Y2MpCj4gPiAtI2RlZmluZSAgIFBDSUVfUkNfQ09ORklH
X0xJTktfQ0FQX0wwUwkJQklUKDEwKQo+ID4gLSNkZWZpbmUgUENJRV9SQ19DT05GSUdfTENTCQko
UENJRV9SQ19DT05GSUdfQkFTRSArIDB4ZDApCj4gPiArI2RlZmluZSBQQ0lFX1JDX0NPTkZJR19D
UgkJKFBDSUVfUkNfQ09ORklHX0JBU0UgKyAweGMwKQo+IAo+IFRoaXMgd2lsbCBjYXVzZSBhIGJ1
aWxkIGZhaWx1cmUgYmVjYXVzZSBQQ0lFX1JDX0NPTkZJR19DUiBpcyB1c2VkIGluIDEvNSAKPiBi
dXQgb25seSBpbnRyb2R1Y2VkIGhlcmUgc28geW91J2xsIG5lZWQgdG8gZG8gdGhpcyBpbiB0aGUg
c2FtZSBwYXRjaCBhcyAKPiBhbnkgc3RlcCB3aXRoaW4gYSBzZXJpZXMgbXVzdCBidWlsZCB0b28u
IElNTyBpdCB3b3VsZCBhbnl3YXkgbWFrZSBzZW5zZSB0byAKPiBjb21iaW5lIHBhdGNoZXMgMSAm
IDIuCgpBaCwgaW50ZXJlc3RpbmcgYW5nbGUuIEknbGwgZml4IGl0LgoKPiAKPiA+ICAjZGVmaW5l
IFBDSUVfRVBfQ09ORklHX0xDUwkJKFBDSUVfRVBfQ09ORklHX0JBU0UgKyAweGQwKQo+IAo+IEFy
ZW4ndCB5b3UgZ29pbmcgdG8gY29udmVydCB0aGlzIGFzIHdlbGw/CgpJIGNhbiwgYnV0IEkgY2Fu
J3QgdGVzdCBpdCBob3dldmVyISBCdXQgSSdsbCBDYzogc29tZW9uZSB3aG8gaG9wZWZ1bGx5CmNh
bi4KClRoYW5rcywKR2VyYWxkbyBOYXNjaW1lbnRvCj4gCj4gPiAgI2RlZmluZSBQQ0lFX1JDX0NP
TkZJR19MMV9TVUJTVEFURV9DVFJMMiAoUENJRV9SQ19DT05GSUdfQkFTRSArIDB4OTBjKQo+ID4g
ICNkZWZpbmUgUENJRV9SQ19DT05GSUdfVEhQX0NBUAkJKFBDSUVfUkNfQ09ORklHX0JBU0UgKyAw
eDI3NCkKPiA+IAo+IAo+IC0tIAo+ICBpLgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
