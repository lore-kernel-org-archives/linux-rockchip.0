Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 415C0C00A94
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 06:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTINCiYQ+B/l22BShSWROv5hJJ2zD4t0vM0RxOHuEps=; b=z6Y6INB3T12YNn
	8BQFHAfubn/j8iRvAJ1EOjOTZO+7BnUFBu/0xoSRd8YFpkzSATU5YpeljH9SUyB5p1aDh0EO2wvaT
	59to6Ca/wcr/zTbZ9WtiexsWfueT6f4D0ALhl5cu4tbn3SmTzgPwaWMIf+YFLJ0rx4IBJRPxD7oBI
	mhXOgf1qa7fblEVqbYmzk+98UXdNJhs+in2MQ0UkYGkKkNfbPYzB18aFzOTrucP3irJOzjHuR/6n/
	rRL1Hmvy3iAuUtG3ZGKJbEoWymIJJ0czfd5yaYMTN5HVtSCtjA7d2muD7YrBf3tdyrazmqpC31Tef
	RUpFA0cf4ZSNjqj+Pwwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwG8U-00000007DCV-2L3d;
	Mon, 15 Apr 2024 06:48:14 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwG8R-00000007DBg-3rmA
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Apr 2024 06:48:13 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1e3cf5b171eso22970355ad.0
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Apr 2024 23:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713163689; x=1713768489; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TZfTrmJ3nkH0lmhVFsGXCKXFOCzQtRNgTdieJQWRuW0=;
        b=RmOZn8giqqJaHVh6oyC/t5Xrj+BdE6phsnYRV7gj5XY2zQQGrKGRD9zSjxGpi/ZWtT
         nVJq2o131WJYVxs/zki0hget51ZzNc/5rrCdPUz2mFNydgaRtZV3GJxLv1kj2JStO0Cz
         eyPcEafBtd6qo4pfnWZ8B50B3mecmh4Q6H6VxoTvZbTJ8dEkAGhlvGq9Am8qkAWkztCU
         xPmK3PntIyvrQrd4csxcpPTT9ld3cC59GgfXUk3tXN6n1IPBJ9o5nQVSa9t0hhEcZM3P
         KQmhIQ2ZXllCBS0/BfT60LZ99JBjt0K+SSkb6yJkBTturnkLJVA8wIeFrjIztAvvbU9o
         hSHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713163689; x=1713768489;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TZfTrmJ3nkH0lmhVFsGXCKXFOCzQtRNgTdieJQWRuW0=;
        b=ABt16fFYNUciJ8h8TeZgJXAb80oG9At5080cVOIlZVueePFQnVEu7w6b9G9YODG/Hu
         yV+3/y8SBK7zu2jln9uF8tKvyWMzbB8JVE37qwb/5nShvPnlbv57pbJ2cILsTv6cmPfg
         IWQuzleZAbFx7J8IlOtXKjaW7me59uzCi1zgYVja0zqCQaLs25tEzPvw+JFNPqOuDWqT
         jOY75nbB/PKxmgaZfYammwUye89ZOOGO4nHTTz1GI4kSvHiRZga8S4OqIv8hnVKgYauH
         /3xj35PoEUD4bre5FQzj/ao2jkDZeJ1WawrG7EBiSfnpsqESC3lNNUkrhNZooGnN+9lu
         pNXw==
X-Forwarded-Encrypted: i=1; AJvYcCU3M/5Zk+cgZGcBZkov/le9+RMhaiykMpdpdIrvuirUilt8iux49mQw8iiR8UiHERNvx1JV48u5+B43vTGf4UMToa+z7+AM5OOm5YuJp3pZdYl3
X-Gm-Message-State: AOJu0YzOfEVT3vt/l/rjsQoCKMQ4bWm0IXPHP5o40G/vGaZ1OMY0MZ/f
	QcO/NWzglo48lL3tb7dBLAdI7nO7qkqfui2ul1mqT45hRKPcMK5CLuLansZDrg==
X-Google-Smtp-Source: AGHT+IFMdAz67epNVOvLEM90tVo6siYV71SLKcrPT/LwrjIM0/awkOGWGDlJO4QfrJv/BXrXot1XkA==
X-Received: by 2002:a17:902:f68f:b0:1e2:a449:da15 with SMTP id l15-20020a170902f68f00b001e2a449da15mr10533959plg.15.1713163689136;
        Sun, 14 Apr 2024 23:48:09 -0700 (PDT)
Received: from thinkpad ([103.28.246.218])
        by smtp.gmail.com with ESMTPSA id jb12-20020a170903258c00b001e2a3014541sm7172373plb.190.2024.04.14.23.48.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Apr 2024 23:48:08 -0700 (PDT)
Date: Mon, 15 Apr 2024 12:18:03 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/2] PCI: rockchip-host: Fix
 rockchip_pcie_host_init_port() PERST# handling
Message-ID: <20240415064803.GB7537@thinkpad>
References: <20240412023721.1049303-1-dlemoal@kernel.org>
 <20240412023721.1049303-2-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240412023721.1049303-2-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_234811_992125_08A0ACEB 
X-CRM114-Status: GOOD (  16.58  )
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

T24gRnJpLCBBcHIgMTIsIDIwMjQgYXQgMTE6Mzc6MjBBTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gVGhlIFBDSWUgc3BlY2lmaWNhdGlvbnMgKFBDSSBFeHByZXNzIEVsZWN0cm9tZWNo
YW5pY2FsIFNwZWNpZmljYXRpb24gcmV2Cj4gMi4wLCBzZWN0aW9uIDIuNi4yKSBtYW5kYXRlIHRo
YXQgdGhlIFBFUlNUIyBzaWduYWwgbXVzdCByZW1haW4gYXNzZXJ0ZWQKPiBmb3IgYXQgbGVhc3Qg
MTAwIHVzZWMgKFRwZXJzdC1jbGspIGFmdGVyIHRoZSBQQ0llIHJlZmVyZW5jZSBjbG9jawo+IGJl
Y29tZXMgc3RhYmxlIChpZiBhIHJlZmVyZW5jZSBjbG9jayBpcyBzdXBwbGllZCksIGFuZCBmb3Ig
YXQgbGVhc3QKPiAxMDAgbXNlYyBhZnRlciB0aGUgcG93ZXIgaXMgc3RhYmxlIChUcHZwZXJsLCBk
ZWZpbmVkIGJ5IHRoZSBtYWNybwo+IFBDSUVfVF9QVlBFUkxfTVMpLgo+IAo+IE1vZGlmeSByb2Nr
Y2hpcF9wY2llX2hvc3RfaW5pdF9wb3J0KCkgdG8gc2F0aXNmeSB0aGVzZSBjb25zdHJhaW50cyBi
eQo+IGFkZGluZyBhIHNsZWVwIHBlcmlvZCBiZWZvcmUgYnJpbmdpbmcgYmFjayBQRVNSVCMgc2ln
bmFsIHRvIGhpZ2ggdXNpbmcKPiB0aGUgZXBfZ3BpbyBHUElPLiBTaW5jZSBUcGVyc3QtY2xrIGlz
IHRoZSBzaG9ydGVyIHdhaXQgdGltZSwgYWRkIGFuCj4gbXNsZWVwKCkgY2FsbCBmb3IgdGhlIGxv
bmdlciBQQ0lFX1RfUFZQRVJMX01TIG1pbGxpc2Vjb25kcyB0byBoYW5kbGUKPiBib3RoIHRpbWlu
ZyByZXF1aXJlbWVudHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogRGFtaWVuIExlIE1vYWwgPGRsZW1v
YWxAa2VybmVsLm9yZz4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2
YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgoKLSBNYW5pCgo+IC0tLQo+ICBkcml2ZXJzL3Bj
aS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L3BjaWUtcm9ja2NoaXAtaG9zdC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tj
aGlwLWhvc3QuYwo+IGluZGV4IDMwMGI5ZGM4NWVjYy4uZmM4NjgyNTFlNTcwIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1ob3N0LmMKPiArKysgYi9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jCj4gQEAgLTMyMiw2ICsz
MjIsNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfaG9zdF9pbml0X3BvcnQoc3RydWN0IHJv
Y2tjaGlwX3BjaWUgKnJvY2tjaGlwKQo+ICAJcm9ja2NoaXBfcGNpZV93cml0ZShyb2NrY2hpcCwg
UENJRV9DTElFTlRfTElOS19UUkFJTl9FTkFCTEUsCj4gIAkJCSAgICBQQ0lFX0NMSUVOVF9DT05G
SUcpOwo+ICAKPiArCW1zbGVlcChQQ0lFX1RfUFZQRVJMX01TKTsKPiAgCWdwaW9kX3NldF92YWx1
ZV9jYW5zbGVlcChyb2NrY2hpcC0+ZXBfZ3BpbywgMSk7Cj4gIAo+ICAJLyogNTAwbXMgdGltZW91
dCB2YWx1ZSBzaG91bGQgYmUgZW5vdWdoIGZvciBHZW4xLzIgdHJhaW5pbmcgKi8KPiAtLSAKPiAy
LjQ0LjAKPiAKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a
4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
