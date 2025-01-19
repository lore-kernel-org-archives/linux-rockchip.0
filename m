Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BA14C02183
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Jan 2025 05:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dGzA9Sq11gIlJ+wvExnEzYQ0n03i6uPTdYtqMwiHj30=; b=rUmDFOTBcGb9Lx
	oSDZyaULOwy0Olo2Nu/K5i7ccQoUywT1VTXdH76IFWNdngbaS2TBcNjOD8BwTmCsr5SoGB/5FVzoP
	Zk/iiLEUxrFjPgdkXhpNcQhHU3pYmFMahi3mcyECZl6joM1JnVhT/Xvzc5hlrtdiDhICdJDMIjl0D
	IqNLBMuPYW+eazFiTmEvJG1Y+7j4v2DMPvYcjyJ2haYnEwam4cYeQvhWw9ki78/38wmigUuP1KImP
	XEYS4Rd/fCpXJpGn64w65H0hugzoW2BwI+qiZKdwkwwmZ4DrAbt0pxDQD2Xyn8PrNJp/pbpwbvpFz
	AAf/zJxz0Ocoy8Hyo3tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZNZr-00000003Pri-0qmU;
	Sun, 19 Jan 2025 05:10:27 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZNYW-00000003Pnd-3IHM
	for linux-rockchip@lists.infradead.org;
	Sun, 19 Jan 2025 05:09:06 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-2166022c5caso56693255ad.2
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Jan 2025 21:09:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737263343; x=1737868143; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YvJecefk7RmS0IifJ26t3rGZLpvHVBi8QGp4fEpog/w=;
        b=hstxeG5GK/0IGU4a7he1Xo7b5b3Kn8TQZbaxUBTpHbtwc14MUGAJLDhenR89pA82Hi
         Mo/QUW+wiW4aWaLzR2zgIJsz1/h5cbzIj07tXhLrisDmK2ur8/TZkPzDuJr8pD8X0kJ4
         j/ijx5eukbPSEkxTI85DVHggWDTYvp/TFqTIFv4wE4M/wSkAiVN1oC57htcF2QUVNaOd
         xR7n6EFuotbVO264tFRJ/CrEoZ+a93C9KgZt2sy9u30eEfrn+fVKD5FOS6O//IF9BO+g
         iHrEA/BSuQAYsIzjQ6A1WmVTTmAzTKP9xldoa6x+pOPDOuuX8adqAaXaiHzBaVXgvK0I
         GNOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737263343; x=1737868143;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YvJecefk7RmS0IifJ26t3rGZLpvHVBi8QGp4fEpog/w=;
        b=FWIDh3nHLgbV6zFhEG5nK7TsOLqQtxHT2OtymDiPMbF+5abx1RnYq/hDw6/6KaCNTf
         I5DTbPoXa4WuNUEB5i4lwkG4+wYSr96FWVNk4C3/cMuq28oaiCBDNmsci89DyhRw9SSh
         uQjBFz/aqZcKYF7P6aJ2UhrKhs1gTi4osdOEXG7LvIbL8Fs8QHJZWU+IJOnQ2hB+fOID
         Gk+KNExC1SFdC13h6wsbHhL6Rk1Lmv4EK15fdT9x4a+faOx+idPx5u4rdgPo9z/fR5H8
         L8VkRx8WM5iainBU2Z8HxUwhYrmsrAGk2nXPBwxjyCRUbf2t4ZY/g0VgGnTApUTpeHjt
         G3RQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFB7LwdEKFERy/G6kdai2JUWTRpuiZKTrQNS9zoh3Crl+O4XevjPrS/xpBd2ToPEhnU5uSecyQAjKFczda4w==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywb7JmqglS8dG+WQt/OWBq58MeC35IPKiomk+CQ6KQDYmpwcSqK
	0320JHY/yVujrvnZTPO5Dko5WWQdgem/cDca1lcNuHE5xL1+s4OaNRwJcw5hJA==
X-Gm-Gg: ASbGncu4oazdLcc3DRS0ntSSF0zcPvHg21fczWfFDIL4NepEm2baldK5YQshW+OUC2W
	POAYHz2IVateIuAXEBDtAKQArg8PhQrYoplWeuEZqzSulbGTPt74QvPlp59EqkaZeJyyO/PFI8k
	tdP922VcmBETraxl7Ssc9Xu60QfLQyP6j7afBEXS1Mr8ZmqjfRNukaaJZhp7haAMRowLl9lUFsv
	lrxsJEw2T4TY+33iu3hYR4jvFgHHYKV185iFO/TgRH2KDMI17sg6bCLZK3cK+kF36J7qbVbEy/R
	oRUv7A==
X-Google-Smtp-Source: AGHT+IH56I3/tW+579vI6yiwAOJnC+RYQDWkaXTf+d9BkFZwz6flw0LrFdP//bjYLbRS+vchvwKt9g==
X-Received: by 2002:a17:903:41c3:b0:216:728b:15d8 with SMTP id d9443c01a7336-21c3556b158mr128203955ad.30.1737263342699;
        Sat, 18 Jan 2025 21:09:02 -0800 (PST)
Received: from thinkpad ([120.60.143.204])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21c2cea0934sm38612255ad.36.2025.01.18.21.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 21:09:01 -0800 (PST)
Date: Sun, 19 Jan 2025 10:38:50 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Jingoo Han <jingoohan1@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Udit Kumar <u-kumar1@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 0/6] PCI: endpoint: Add support for resizable BARs
Message-ID: <20250119050850.2kogtpl5hatpp2tv@thinkpad>
References: <20250113102730.1700963-8-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250113102730.1700963-8-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250118_210905_078192_516A40B9 
X-CRM114-Status: GOOD (  25.89  )
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

T24gTW9uLCBKYW4gMTMsIDIwMjUgYXQgMTE6Mjc6MzFBTSArMDEwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBUaGUgUENJIGVuZHBvaW50IGZyYW1ld29yayBjdXJyZW50bHkgZG9lcyBub3Qgc3Vw
cG9ydCByZXNpemFibGUgQkFScy4KPiAKPiBBZGQgYSBuZXcgQkFSIHR5cGUgQkFSX1JFU0laQUJM
RSwgc28gdGhhdCBFUEMgZHJpdmVycyBjYW4gc3VwcG9ydCByZXNpemFibGUKPiBCQVJzIHByb3Bl
cmx5Lgo+IAo+IEZvciBhIHJlc2l6YWJsZSBCQVIsIHdlIHdpbGwgb25seSBhbGxvdyBhIHNpbmds
ZSBzdXBwb3J0ZWQgc2l6ZS4KPiBUaGlzIGlzIGJ5IGRlc2lnbiwgYXMgd2UgZG8gbm90IG5lZWQv
d2FudCB0aGUgY29tcGxleGl0eSBvZiB0aGUgaG9zdCBzaWRlCj4gcmVzaXppbmcgb3VyIHJlc2l6
YWJsZSBCQVIuCj4gCj4gSW4gdGhlIERXQyBkcml2ZXIgc3BlY2lmaWNhbGx5LCB0aGUgRFdDIGRy
aXZlciBjdXJyZW50bHkgaGFuZGxlcyByZXNpemFibGUKPiBCQVJzIHVzaW5nIGFuIHVnbHkgaGFj
ayB3aGVyZSBhIHJlc2l6YWJsZSBCQVIgaXMgZm9yY2Ugc2V0IHRvIGEgZml4ZWQgc2l6ZQo+IEJB
UiB3aXRoIDEgTUIgc2l6ZSBpZiBkZXRlY3RlZC4gVGhpcyBpcyBib2d1cywgYXMgYSByZXNpemFi
bGUgQkFSIGNhbiBiZQo+IGNvbmZpZ3VyZWQgdG8gc2l6ZXMgb3RoZXIgdGhhbiAxIE1CLgo+IAo+
IFdpdGggdGhlc2UgY2hhbmdlcywgYW4gRVBGIGRyaXZlciB3aWxsIGJlIGFibGUgdG8gY2FsbCBw
Y2lfZXBjX3NldF9iYXIoKQo+IHRvIGNvbmZpZ3VyZSBhIHJlc2l6YWJsZSBCQVIgdG8gYW4gYXJi
aXRyYXJ5IHNpemUsIGp1c3QgbGlrZSBmb3IKPiBCQVJfUFJPR1JBTU1BQkxFLiBUaHVzLCBEV0Mg
YmFzZWQgRVBGIGRyaXZlcnMgd2lsbCBubyBsb25nZXIgYmUgZm9yY2VkIHRvCj4gYSBib2d1cyAx
IE1CIGZvcmNlZCBzaXplIGZvciByZXNpemFibGUgQkFScy4KPiAKClRoZSBzdWJqZWN0IGdvdCBt
ZSBjb25mdXNlZCBmb3IgYSBtb21lbnQgYmVjYXVzZSwgeW91IGFyZSBub3QgcmVhbGx5IGFkZGlu
ZwpzdXBwb3J0IGZvciBSZXNpemFibGUgQkFScyBhcyBwZXIgdGhlIFBDSWUgc3BlYywgYnV0IGp1
c3QgYWxsb3dpbmcgdGhlIEVQRgpkcml2ZXJzIHRvIGNvbmZpZ3VyZSB0aGUgc2l6ZSBvZiB0aGUg
cmVzaXphYmxlIEJBUnMgZnJvbSBmaXhlZCAxTS4gVGhpcyBpcyBhCmdvb2QgaW1wcm92ZW1lbnQg
YnR3LCBidXQgdGhlIHN1YmplY3Qgc2hvdWxkIGJlIHJld29yZGVkIGFzIHN1Y2guCgotIE1hbmkK
Cj4gCj4gVGVzdGVkL3ZlcmlmaWVkIG9uIGEgUmFkeGEgUm9jayA1YiAocmszNTg4KSBieToKPiAt
TW9kaWZ5aW5nIHBjaS1lcGYtdGVzdC5jIHRvIHJlcXVlc3QgQkFSIHNpemVzIHRoYXQgYXJlIGxh
cmdlciB0aGFuIDEgTUI6Cj4gIC1zdGF0aWMgc2l6ZV90IGJhcl9zaXplW10gPSB7IDUxMiwgNTEy
LCAxMDI0LCAxNjM4NCwgMTMxMDcyLCAxMDQ4NTc2IH07Cj4gICtzdGF0aWMgc2l6ZV90IGJhcl9z
aXplW10gPSB7IFNaXzFNLCBTWl8xTSwgU1pfMk0sIFNaXzJNLCBTWl80TSwgU1pfNE0gfTsKPiAg
KE1ha2Ugc3VyZSB0byBzZXQgQ09ORklHX0NNQV9BTElHTk1FTlQ9MTAgc3VjaCB0aGF0IGRtYV9h
bGxvY19jb2hlcmVudCgpCj4gICBjYWxscyBhcmUgYWxpZ25lZCBldmVuIGZvciBhbGxvY2F0aW9u
cyBsYXJnZXIgdGhhbiAxIE1CLikKPiAtUmVib290aW5nIHRoZSBob3N0IHRvIG1ha2Ugc3VyZSB0
aGF0IHRoZSBEV0MgRVAgZHJpdmVyIGNvbmZpZ3VyZXMgdGhlIEJBUnMKPiAgY29ycmVjdGx5IGFm
dGVyIHJlY2VpdmluZyBhIGxpbmsgZG93biBldmVudC4KPiAtTW9kaWZ5aW5nIEVQQyBmZWF0dXJl
cyB0byBjb25maWd1cmUgYSBCQVIgYXMgNjQtYml0LCB0byBtYWtlIHN1cmUgdGhhdCB3ZQo+ICBo
YW5kbGUgNjQtYml0IEJBUnMgY29ycmVjdGx5Lgo+IC1Nb2RpZnlpbmcgdGhlIERXQyBFUCBkcml2
ZXIgdG8gc2V0IGEgc2l6ZSBsYXJnZXIgdGhhbiAyIEdCLCB0byBtYWtlIHN1cmUKPiAgd2UgaGFu
ZGxlIEJBUiBzaXplcyBsYXJnZXIgdGhhbiAyIEdCIChmb3IgNjQtYml0IEJBUnMpIGNvcnJlY3Rs
eS4KPiAtUnVubmluZyB0aGUgY29uc2VjdXRpdmUgQkFSIHRlc3QgaW4gcGNpX2VuZHBvaW50X3Rl
c3QuYyB0byBtYWtlIHN1cmUgdGhhdAo+ICB0aGUgYWRkcmVzcyB0cmFuc2xhdGlvbiB3b3JrcyBj
b3JyZWN0bHkuCj4gCj4gCj4gVGV4YXMgSW5zdHJ1bWVudHMga2VybmVsIGRldmVsb3BlcnMsIGlm
IHdvdWxkIGJlIHZlcnkgbmljZSBpZiB5b3UgY291bGQKPiBoZWxwIG91dCB3aXRoIHRlc3Rpbmcg
b24gS2V5c3RvbmUuCj4gCj4gCj4gQ2hhbmdlcyBzaW5jZSBWMjoKPiAtV2hlbiBsb29waW5nIGlu
IGR3X3BjaWVfZXBfaW5pdF9ub25fc3RpY2t5X3JlZ2lzdGVycygpLCB1c2UgdGhlIGluZGV4Cj4g
IHRoYXQgd2UgcmVhZCBmcm9tIFBDSV9SRUJBUl9DVFJMIChlLmcuIGEgcGxhdGZvcm0gY291bGQg
aGF2ZSBCQVJzIDAtMgo+ICBhcyBwcm9ncmFtbWFibGUsIGFuZCBCQVJzIDMtNSByZXNpemFibGUs
IHNvIHdlIG5lZWQgdG8gcmVhZCB0aGUgaW5kZXgpLgo+IAo+IAo+IEtpbmQgcmVnYXJkcywKPiBO
aWtsYXMKPiAKPiBOaWtsYXMgQ2Fzc2VsICg2KToKPiAgIFBDSTogZW5kcG9pbnQ6IEFkZCBCQVIg
dHlwZSBCQVJfUkVTSVpBQkxFCj4gICBQQ0k6IGR3YzogZXA6IE1vdmUgZHdfcGNpZV9lcF9maW5k
X2V4dF9jYXBhYmlsaXR5KCkKPiAgIFBDSTogZHdjOiBlbmRwb2ludDogQWRkIHN1cHBvcnQgZm9y
IEJBUiB0eXBlIEJBUl9SRVNJWkFCTEUKPiAgIFBDSToga2V5c3RvbmU6IERlc2NyaWJlIHJlc2l6
YWJsZSBCQVJzIGFzIHJlc2l6YWJsZSBCQVJzCj4gICBQQ0k6IGtleXN0b25lOiBTcGVjaWZ5IGNv
cnJlY3QgYWxpZ25tZW50IHJlcXVpcmVtZW50Cj4gICBQQ0k6IGR3LXJvY2tjaGlwOiBEZXNjcmli
ZSByZXNpemFibGUgQkFScyBhcyByZXNpemFibGUgQkFScwo+IAo+ICBkcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2kta2V5c3RvbmUuYyAgICAgfCAgIDYgKy0KPiAgLi4uL3BjaS9jb250cm9s
bGVyL2R3Yy9wY2llLWRlc2lnbndhcmUtZXAuYyAgIHwgMjMxICsrKysrKysrKysrKysrKy0tLQo+
ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgfCAgMjIgKy0K
PiAgZHJpdmVycy9wY2kvZW5kcG9pbnQvcGNpLWVwZi1jb3JlLmMgICAgICAgICAgIHwgICA0ICsK
PiAgaW5jbHVkZS9saW51eC9wY2ktZXBjLmggICAgICAgICAgICAgICAgICAgICAgIHwgICAzICsK
PiAgNSBmaWxlcyBjaGFuZ2VkLCAyMTkgaW5zZXJ0aW9ucygrKSwgNDcgZGVsZXRpb25zKC0pCj4g
Cj4gLS0gCj4gMi40Ny4xCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCu
pOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
