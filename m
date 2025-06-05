Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74D6CC5AE59
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 13:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TmA7Cq6lADn68EgNzx1jY6z8XRDAgL/AHjJl7Cz1sFc=; b=d+YqFHog/RwmxL
	+Vt3V5OKS6TSmgBGHLQKxwHexrHah/tPY3fgnhEhSJgKe9TXZfmNz/2JSrh0tkV+SM4g2ZzA7r9QC
	mxNDo4V2tUQ1JRSXwblejVSqF3ZSAmfr953OqrT2FPFNVJZIDicx+p8oGl59P7l4YS33snmUM0DM5
	KDHrZCZpImUXxLu4tCX/BF5gyonOsvl83UJKifn9bwMtcOHSDKGs5+o7r0IngHkVIme7JYAlV+WoI
	0vXU5aWgf+JQymGEfTH77vCii20cVmNQ9kTuQrmAlcWiuoUmkC+vLj6SG0kBzNZ++Qk+1nmgSc3S+
	1QzPVPyiUppXsyfkCb4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAgN-0000000FeGl-1VHV;
	Thu, 05 Jun 2025 13:30:59 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAY9-0000000FcFY-2Wo6
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Jun 2025 13:22:31 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-234d366e5f2so12189125ad.1
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Jun 2025 06:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749129749; x=1749734549; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LV3SY2EwFIN9MVVGnq1S2+QMD2WUzdffJmfnCXZtj9k=;
        b=IDzPhbqW50wIR0vdYgSu7R50fFXByC2LDPSSaaFHTJj9bQ9YVlppgx+QyBNR6b1/ze
         4tkQ27kB0jTVl/loeeLl6t3twTuX2UfIYApthjeYvwR95X9+Ns99ORfdTz1VOFB0/MSr
         hCGeWWUimiUkAw3zp0/U5Qhx7S8g2nw/VCIqIup7ZsoLN2Rgm4XoxtzrqnOgCbatcvvK
         FKvKCzN2YFukJq4MctLitR/RXcqTmO80LBM9kUCt4j9y21VryqezQ9pfgNbN4Dj2Y1OC
         0s7HzEziaSIXxZYmL4Kw+YxTxdi5zD56XulMOJJcleD//yTTVk9xGkR3VDB3QLzkvJ3f
         h3xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749129749; x=1749734549;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LV3SY2EwFIN9MVVGnq1S2+QMD2WUzdffJmfnCXZtj9k=;
        b=Da2ja048NrHdog7fZpd5Gxj71H5H8NoGt7jTNTlFW0TcyH9PEpsxyQMFWzAsXxpMgr
         r2fkxylCM1JaZaXs7TgKfBMAb73Z26sfr/e7GVxq/0L5URCdR/YcBdbKOw72d+6RFmwn
         ohrgybV0ECqtxETB20WcJZ+gf3raJEIlfHFsvXdw+BfqtjCkCKbIHJGbuUgWy17QWsa0
         5l1pYVKGPmbW4DmZU2Gg0UoX+S9/xznklzhSNnayy4JiVzpCSr8JBsaYcQs86dP9Nd5K
         ZG51xbIQwY/P4Xmw2DfP8pMlCqSq27V/gA2N6NtoX+f+VAPmqASeQrPUSKkzV442ddxy
         LhNA==
X-Forwarded-Encrypted: i=1; AJvYcCWFuQ1WJiYS+OonPwK1kWq1KkncSQ3g05jSgdwlcbotZnIepmLdv2CKL/ug9sUFhzvhSYlAU4y9CJrFRnq3pg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4FTNCXofvnSbXClAv6wmm4dSv4Y/Y3EAssPlf52JBoACA+Ipw
	yPkbETRIYfwZ99JdEzX7+6+bphJW8NL1Y2dnGJnzHhq3XithAGLoojqPaLxr6rR1Qg==
X-Gm-Gg: ASbGncsZkq6YzFH5+9PIL10fThkWZVkkVEZ3mCfX4AeCfDe8kEzu0K7ywM+ZppHkXa2
	CU8FDXJ+AxaJUXIAR5JvnbswM5CAjUUfVHqimvlui8XBdisMVAES2Vene0etXxf2IBRgpIFhSrr
	LflBXIqiok8A/zQa60U6qpZ6WFFF3xe5Xby96NNaesTTsvTJT4ityKFTjHqR38aYQ0agiJcOM4G
	JXEb/hGr3M/q/iaJty5Sbb90oynOmfSSAzaILOi+sf2bk/zrwSXyBI/4/5/O4JPRCL1KAGwlykt
	cicaqyrPs+mtmgUIEK/35meY9FCqQw5n5mTfecNUFpSp2RGnwDXlco7sF7Y0VH8dQIb/kQzOWT9
	a0m2oVw==
X-Google-Smtp-Source: AGHT+IFEBRSheUsMgn6DbcDEdV5Hlv1VHBEQineqLpLn6Kld/K5JudvAtaK8XUU4yswu66c9Km4KIw==
X-Received: by 2002:a17:902:d48c:b0:234:d292:be83 with SMTP id d9443c01a7336-235e1016969mr104503775ad.10.1749129748735;
        Thu, 05 Jun 2025 06:22:28 -0700 (PDT)
Received: from thinkpad ([120.60.50.55])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23506bd8e2dsm119379115ad.56.2025.06.05.06.22.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jun 2025 06:22:28 -0700 (PDT)
Date: Thu, 5 Jun 2025 18:52:21 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Wilfred Mallawa <wilfred.mallawa@wdc.com>, 
	Damien Le Moal <dlemoal@kernel.org>, Hans Zhang <18255117159@163.com>, 
	Laszlo Fiat <laszlo.fiat@proton.me>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/4] PCI: dw-rockchip: Do not enumerate bus before
 endpoint devices are ready
Message-ID: <fgd5dlxthuvjfszidyvcxn4wb37k5hgixvar4wbgofee6knkpi@4xldvqn6x6tr>
References: <rrtrcwajj4vjvbqzosskdnroqnijzaafncgckoh2dlk3c4njvs@twop3vyidmh7>
 <20250604184445.GA567382@bhelgaas>
 <aEGNefEgf56P-mBM@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aEGNefEgf56P-mBM@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_062229_647675_3B4199F9 
X-CRM114-Status: GOOD (  23.86  )
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

T24gVGh1LCBKdW4gMDUsIDIwMjUgYXQgMDI6Mjg6NDFQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBPbiBXZWQsIEp1biAwNCwgMjAyNSBhdCAwMTo0NDo0NVBNIC0wNTAwLCBCam9ybiBI
ZWxnYWFzIHdyb3RlOgo+ID4gT24gV2VkLCBKdW4gMDQsIDIwMjUgYXQgMTA6NDA6MDlQTSArMDUz
MCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+ID4gCj4gPiA+ID4gSWYgd2UgYWRkIGEg
MTAwIG1zIHNsZWVwIGFmdGVyIHdhaXRfZm9yX2xpbmsoKSwgdGhlbiBJIHN1Z2dlc3QgdGhhdCB3
ZQo+ID4gPiA+IGFsc28gcmVkdWNlIExJTktfV0FJVF9TTEVFUF9NUyB0byBzb21ldGhpbmcgc2hv
cnRlci4KPiA+ID4gCj4gPiA+IE5vLiBUaGUgOTAwbXMgc2xlZXAgaXMgdG8gbWFrZSBzdXJlIHRo
YXQgd2Ugd2FpdCAxcyBiZWZvcmUgZXJyb3Jpbmcgb3V0Cj4gPiA+IGFzc3VtaW5nIHRoYXQgdGhl
IGRldmljZSBpcyBub3QgcHJlc2VudC4gVGhpcyBpcyBtYW5kYXRlZCBieSB0aGUgc3BlYy4gU28K
PiA+ID4gaXJyZXNwZWN0aXZlIG9mIHRoZSBkZWxheSB3ZSBhZGQgKmFmdGVyKiBsaW5rIHVwLCB3
ZSBzaG91bGQgdHJ5IHRvIGRldGVjdCB0aGUKPiA+ID4gbGluayB1cCBmb3IgfjFzLgo+ID4gCj4g
PiBJIHRoaW5rIGl0IHdvdWxkIGJlIHNlbnNpYmxlIGZvciBkd19wY2llX3dhaXRfZm9yX2xpbmso
KSB0byBjaGVjayBmb3IKPiA+IGxpbmsgdXAgbW9yZSBmcmVxdWVudGx5LCBpLmUuLCByZWR1Y2Ug
TElOS19XQUlUX1NMRUVQX01TIGFuZCBpbmNyZWFzZQo+ID4gTElOS19XQUlUX01BWF9SRVRSSUVT
Lgo+ID4gCj4gPiBJZiBMSU5LX1dBSVRfU0xFRVBfTVMgKiBMSU5LX1dBSVRfTUFYX1JFVFJJRVMg
aXMgZm9yIHRoZSAxLjBzCj4gPiBtZW50aW9uZWQgaW4gc2VjIDYuNi4xLCBzZWVtcyBsaWtlIG1h
eWJlIHdlIHNob3VsZCBtYWtlIGEgZ2VuZXJpYwo+ID4gI2RlZmluZSBmb3IgaXQgc28gd2UgY291
bGQgaW5jbHVkZSB0aGUgc3BlYyByZWZlcmVuY2UgYW5kIHVzZSBpdAo+ID4gYWNyb3NzIGFsbCBk
cml2ZXJzLiAgQW5kIHJlc29sdmUgdGhlIHF1ZXN0aW9uIG9mIDkwMG1zIHZzIDEwMDBtcy4KPiAK
PiBMaWtlIEJqb3JuIG1lbnRpb25lZCwgd2hlbiBJIHdyb3RlIHJlZHVjZSBMSU5LX1dBSVRfU0xF
RVBfTVMsCj4gSSBzaW1wbHkgbWVhbnQgdGhhdCB3ZSBzaG91bGQgcG9sbCBmb3IgbGluayB1cCBt
b3JlIGZyZXF1ZW50bHkuCj4gCgpTb3JyeSwgSSBjb3VsZG4ndCBkZWNpcGhlciBpdC4KCj4gQnV0
IHllcywgaWYgd2UgcmVkdWNlIExJTktfV0FJVF9TTEVFUF9NUyB3ZSBzaG91bGQgYnVtcAo+IExJ
TktfV0FJVF9NQVhfUkVUUklFUyB0byBub3QgY2hhbmdlIHRoZSBjdXJyZW50IG1heCB3YWl0IHRp
bWUuCj4gCgpJIGFncmVlLiBBbmQgSSBsaWtlIHRoZSBpZGVhIG9mIGhhdmluZyBhIGdlbmVyaWMg
ZGVmaW5lIHdoaWNoIEJqb3JuIHN1Z2dlc3RlZApmb3IgdGhlIHdhaXQgZGVsYXkuCgotIE1hbmkK
Ci0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+N
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
