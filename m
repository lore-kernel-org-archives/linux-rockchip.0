Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11792C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 16:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PGHwDRuWMby9AXhNheUpnyLqSW/u8p90J/Yc9zZyikk=; b=gsznETkJJ8mUed
	2pUcuejdn/8o6v2QNQzAOrX38j9tFt0n66N7J5CcXJKUHkvgz++T1onAAvLS1BM1lImwE9A7sMPny
	aa+AZiiWsWyN+Zss3TUcXgoiGEAcJd7F+vie/3TPV+Li2rstFGa8XIBM7vXnr+NzCk5DxKxt57WKT
	kQ2iElb29RxrMGUvZsRCL1kmlZYqZttJ8lPFDtkDVLjs9NZF7+qbkqwzua7vH2ezjm/BCaXW8MK2Y
	e9Wc8OtJn/Glr/CG5KWCX6CrM1o+lvTKGxEda+tMnZBZHNAZfFL8CfsgtNjC5o5kD5Sqj8AkVH+lQ
	mJ2RH4dyBG5JPYMoJigg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sedHm-0000000AVKc-4Ak8;
	Thu, 15 Aug 2024 16:25:14 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sedHf-0000000AVJE-2cu3
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Aug 2024 16:25:13 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-2d3c0d587e4so804385a91.2
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Aug 2024 09:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723739106; x=1724343906; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fkUGIQbwRXV6Lq2jowcyGfccaaCLPz7bWJxbdPn9n30=;
        b=IAmiKObo+RKa7h5k4+k0q4MswkHyoP+0BGH4ZiJOhetAHOt7l7lmLUKWxi0T2QfdCD
         /YHm7I325F+hThObFc3lGG0XuXBdxfrlHchs44/5L10LfVEg3kCUKnI/zWCuHi25A0AW
         cx051NPxiAeVl1jIhW8YLV+snkRiCjwZg+80GFTb0BqAB0v0LT0CvZugjYFx+sX9l3es
         JO132MBxY+dNSrCDhg/PgrkzUP7yVCl/op2x45dp1shBaZUQZwVHe0czEtiFmfyu7sY0
         XfrwbQvwNi5MVdCK/yTuTrjNOu/L1jUFGSTHM6aeEODPO5uOTzdU7ZNblJem+0va40cY
         avxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723739106; x=1724343906;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fkUGIQbwRXV6Lq2jowcyGfccaaCLPz7bWJxbdPn9n30=;
        b=g77+aEpy+PDyyuwYe3vDCblaLokAc8MkNSKIrX5x1bC88bwXllOxabeA9IPHqDBVth
         lGvEHcfBEBkdeLTRe+5baXZsMZBqQwYbYEM0BFq8LxQ5+mQQwXkD8IOWBeBX7X0h4tHH
         khHeRlbQRB8u1cKova3OnVJlaTLh5kti5yAVKrbFttcYWPqpRxoOt7TuOMjjW5dGB6l9
         77w8+AnXEolFnzK8mfLeyEI6WAELHvHXCOlWdB88twKMR2bF7N+FuwgR1atb8jCDE6pC
         guHtYeRzGiIDAe8C9O+mYFNb8fSzqPoyeiTn/bPice5Act9qs/GF+El/5nd/00ygifeZ
         JiGw==
X-Forwarded-Encrypted: i=1; AJvYcCV6zhFOwUCF3voQXoHRFkGPqrHEyT5Lw65TY0Jww8k0jotzr1W4bMsOz6Xe8JctL2YvqHrJzo1YxmNLPNZM27fbn2GZn4UR6V8Cq6br/G1LRlhQ
X-Gm-Message-State: AOJu0Ywsn1bfVRSJstDFJlbQMP+WeQisko97/sBUyh0MqSMT9a9x25p7
	U7YBkaPpNsyNa9nO77hYFL5yEpMzJjaesnq3/c9S3j3ZdQ7MvN7WDdIsHbJ25P57wx0gwQuP8MI
	=
X-Google-Smtp-Source: AGHT+IEf9BWPqw66jhhiHQthvPGpBzvSfL+a+8WG13ziSXvFf+QiYJM8a8qmItiT1VexAhIkaMs9OQ==
X-Received: by 2002:a17:90b:ec1:b0:2bd:7e38:798e with SMTP id 98e67ed59e1d1-2d3dfff5d77mr163380a91.28.1723739105668;
        Thu, 15 Aug 2024 09:25:05 -0700 (PDT)
Received: from thinkpad ([36.255.17.34])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d3ac7ca30bsm3787522a91.7.2024.08.15.09.25.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 09:25:04 -0700 (PDT)
Date: Thu, 15 Aug 2024 21:54:59 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/3] PCI: rockchip: Refactor
 rockchip_pcie_disable_clocks function signature
Message-ID: <20240815162459.GG2562@thinkpad>
References: <20240625104039.48311-1-linux.amoon@gmail.com>
 <20240625104039.48311-3-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240625104039.48311-3-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_092507_708541_97143667 
X-CRM114-Status: GOOD (  15.71  )
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

T24gVHVlLCBKdW4gMjUsIDIwMjQgYXQgMDQ6MTA6MzRQTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiBVcGRhdGVkIHJvY2tjaGlwX3BjaWVfZGlzYWJsZV9jbG9ja3MgZnVuY3Rpb24gdG8gYWNj
ZXB0Cj4gYSBzdHJ1Y3Qgcm9ja2NoaXAgcG9pbnRlciBpbnN0ZWFkIG9mIGEgdm9pZCBwb2ludGVy
Lgo+IAoKUGxlYXNlIHVzZSBpbXBlcmF0aXZlIHRvbmUgaW4gYWxsIHBhdGNoIGRlc2NyaXB0aW9u
cy4KCnMvVXBkYXRlZC9VcGRhdGUKCj4gU2lnbmVkLW9mZi1ieTogQW5hbmQgTW9vbiA8bGludXgu
YW1vb25AZ21haWwuY29tPgoKV2l0aCBhYm92ZSwKClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNh
ZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgoKLSBNYW5pCgo+IC0t
LQo+IHY0OiBOb25lCj4gdjM6IE5vbmUKPiB2MjogTm9uZQo+IC0tLQo+ICBkcml2ZXJzL3BjaS9j
b250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYyB8IDQgKy0tLQo+ICBkcml2ZXJzL3BjaS9jb250cm9s
bGVyL3BjaWUtcm9ja2NoaXAuaCB8IDIgKy0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvcGNpZS1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tj
aGlwLmMKPiBpbmRleCAwMjQzMDhiYjZhYzguLjgxZGViN2ZjNjg4MiAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jCj4gQEAgLTI3MiwxMCArMjcyLDggQEAgaW50IHJv
Y2tjaGlwX3BjaWVfZW5hYmxlX2Nsb2NrcyhzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAp
Cj4gIH0KPiAgRVhQT1JUX1NZTUJPTF9HUEwocm9ja2NoaXBfcGNpZV9lbmFibGVfY2xvY2tzKTsK
PiAgCj4gLXZvaWQgcm9ja2NoaXBfcGNpZV9kaXNhYmxlX2Nsb2Nrcyh2b2lkICpkYXRhKQo+ICt2
b2lkIHJvY2tjaGlwX3BjaWVfZGlzYWJsZV9jbG9ja3Moc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJv
Y2tjaGlwKQo+ICB7Cj4gLQlzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAgPSBkYXRhOwo+
IC0KPiAgCWNsa19idWxrX2Rpc2FibGVfdW5wcmVwYXJlKFJPQ0tDSElQX05VTV9DTEtTLCByb2Nr
Y2hpcC0+Y2xrcyk7Cj4gIH0KPiAgRVhQT1JUX1NZTUJPTF9HUEwocm9ja2NoaXBfcGNpZV9kaXNh
YmxlX2Nsb2Nrcyk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1y
b2NrY2hpcC5oIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmgKPiBpbmRl
eCAyN2U5NTFiNDFiODAuLjMzMzBiMWU1NWRjZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9j
b250cm9sbGVyL3BjaWUtcm9ja2NoaXAuaAo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
cGNpZS1yb2NrY2hpcC5oCj4gQEAgLTM1NCw3ICszNTQsNyBAQCBpbnQgcm9ja2NoaXBfcGNpZV9p
bml0X3BvcnQoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKTsKPiAgaW50IHJvY2tjaGlw
X3BjaWVfZ2V0X3BoeXMoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKTsKPiAgdm9pZCBy
b2NrY2hpcF9wY2llX2RlaW5pdF9waHlzKHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCk7
Cj4gIGludCByb2NrY2hpcF9wY2llX2VuYWJsZV9jbG9ja3Moc3RydWN0IHJvY2tjaGlwX3BjaWUg
KnJvY2tjaGlwKTsKPiAtdm9pZCByb2NrY2hpcF9wY2llX2Rpc2FibGVfY2xvY2tzKHZvaWQgKmRh
dGEpOwo+ICt2b2lkIHJvY2tjaGlwX3BjaWVfZGlzYWJsZV9jbG9ja3Moc3RydWN0IHJvY2tjaGlw
X3BjaWUgKnJvY2tjaGlwKTsKPiAgdm9pZCByb2NrY2hpcF9wY2llX2NmZ19jb25maWd1cmF0aW9u
X2FjY2Vzc2VzKAo+ICAJCXN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCwgdTMyIHR5cGUp
Owo+ICAKPiAtLSAKPiAyLjQ0LjAKPiAKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqng
r40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
