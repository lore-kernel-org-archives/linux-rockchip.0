Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAF07CD1288
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 07:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YjRpzAnOvu55g7UB+vjkofF5qTsIytBSO+gNThFl1qc=; b=1EItgJkx2vuDfg
	+gyJu60Ur9dt6YeL54KnbGjrSOxf6Rf41KV8l5aF+X3ZP4jD1I47QkYSvYnuOq3E0IRwgW5pJOKkX
	pFTlLsRThVoTdESSYeYZ++6+oIGB6IRS5COBa7XzYkiXnUZeo9I5n/f7r2DNxQSJKi3GViW9/RbgY
	9y9vIakfFWu/UlsKp985dTxKSEsBrmCyFwoMmkJdK4TOPUGxGnC7oOPlIB/gwwCSQ2gaiWK9zOcMh
	BWAUnqEqsPuArtbpGjUOniBT2xXgiAIxbHosTKAdItcgVnjKLkzsNVl/yY88D2CRYlytS5rKqkbXn
	/sWqt00tpTd/OiUZDxlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvLM-0000000Edcf-1xEE;
	Wed, 03 Apr 2024 07:47:36 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvKz-0000000EdCc-3Kc3
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Apr 2024 07:47:18 +0000
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-2a226f8e44aso2230353a91.0
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Apr 2024 00:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712130431; x=1712735231; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eyf9OUPhyFpexPCg/sbDr7vPA3r4fZY9/47FH8T//Kg=;
        b=PDKyKDZCK/HIOl61yGBRAaFYqaPkEkrH2I9TVAAWfrufNIH9MYrRAZFO3aFLILMAl7
         hZ5Z1I/OSHfg1gMO3jOvylY4O7v8g4uDGZwDSe3recq8uH0s58ejHVWnLe4elO9y4Yjy
         3z3rna2s9NeqQFImie4Yki2/57FmvpCUfuM4+kdrsFXoUeTk2LvSTMMjyuNGpwCYkgfp
         wZZ/ZEKKszvCLpF2uqpGSSFVIZsLfpzFAZKu1VtscbB6ESoWcUe4v86kL9Hix3WWHrG4
         83CICk/7q67JR1hDRWE7Tscn5Y0ybAX1Ll7uNnm2YWa/zPYX6+T8xbYLS5JxidAyr1Z7
         ewjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712130431; x=1712735231;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eyf9OUPhyFpexPCg/sbDr7vPA3r4fZY9/47FH8T//Kg=;
        b=PfoAzQUvLNTjzkEHgojH5OHjHwiwq3NmKAq9jko7RXGOwpc7fH+BKy+YCnx464SuwO
         sXxuw/wVJMb+Vb+/+wl5l7RN1uazCuMBWPZKrxyuLggHxbPiVcrBiA+kbnb6c4nQDu5z
         KEKz30bWOAAYWMBCHZnfwAb5cXb+YNHmC48s5E3x3DoLZ34myMnpZiSmku/faM27L2Mj
         tnIw6fJrI5biMtoeehzSqGPVwMBEH9zAOU946D5rSPmTy1AyOOUNJflJYwyFQXYBLC9c
         aKYCp12drezdNWys/xw2XzLDpTFwbD4JwVwB3PUT/qvEnCKvA4iFtQVliM0r7YrulFnu
         909Q==
X-Forwarded-Encrypted: i=1; AJvYcCUKDH8F6wd3QYhBx+ZpyTy9/oPefVEcYYsC15/HAjnjNePBMtIb/F4TxrNjMDzmVWxlEbG8lxiYaeDpi9yQnjGfcaxhb2/RJILXt66+tNbV42K5
X-Gm-Message-State: AOJu0YwDBzoege4aMiDoMdNcchdLCcIrx3x5DNBVdfW2fyVGkpUy8lcV
	Jbo81vk5NnQUMOmv8xEUMNz1aE4gff95CTAXfp3HNq5M7y9/oPnfrVTAbO+cqg==
X-Google-Smtp-Source: AGHT+IHFO7RluEat3u9RpMuitm50YKfHCKMYkpyEAgDIs5j1Fv8bkoYfxAEPXlbcPcu0Z7Aw9GNkwg==
X-Received: by 2002:a17:90a:df88:b0:29b:ad3a:7b01 with SMTP id p8-20020a17090adf8800b0029bad3a7b01mr1760395pjv.46.1712130431432;
        Wed, 03 Apr 2024 00:47:11 -0700 (PDT)
Received: from thinkpad ([103.28.246.48])
        by smtp.gmail.com with ESMTPSA id nl11-20020a17090b384b00b002a058159ff8sm1303429pjb.8.2024.04.03.00.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:47:11 -0700 (PDT)
Date: Wed, 3 Apr 2024 13:17:02 +0530
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
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v2 05/18] PCI: endpoint: test: Synchronously cancel
 command handler work
Message-ID: <20240403074702.GD25309@thinkpad>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240330041928.1555578-6-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240330041928.1555578-6-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_004713_993462_31170C11 
X-CRM114-Status: GOOD (  16.69  )
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

T24gU2F0LCBNYXIgMzAsIDIwMjQgYXQgMDE6MTk6MTVQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gUmVwbGFjZSB0aGUgY2FsbCB0byBjYW5jZWxfZGVsYXllZF93b3JrKCkgd2l0aCBh
IGNhbGwgdG8KPiBjYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoKSBpbiBwY2lfZXBmX3Rlc3RfdW5i
aW5kKCkuIFRoaXMgZW5zdXJlcyB0aGF0Cj4gdGhlIGNvbW1hbmQgaGFuZGxlciBpcyByZWFsbHkg
c3RvcHBlZCB3aGVuIHByb2NlZWRpbmcgd2l0aCBkbWEgYW5kIGJhcgo+IGNsZWFudXAuCj4gCj4g
U2lnbmVkLW9mZi1ieTogRGFtaWVuIExlIE1vYWwgPGRsZW1vYWxAa2VybmVsLm9yZz4KClJldmll
d2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5h
cm8ub3JnPgoKLSBNYW5pCgo+IFJldmlld2VkLWJ5OiBGcmFuayBMaSA8RnJhbmsuTGlAbnhwLmNv
bT4KPiAtLS0KPiAgZHJpdmVycy9wY2kvZW5kcG9pbnQvZnVuY3Rpb25zL3BjaS1lcGYtdGVzdC5j
IHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvZW5kcG9pbnQvZnVuY3Rpb25zL3BjaS1lcGYt
dGVzdC5jIGIvZHJpdmVycy9wY2kvZW5kcG9pbnQvZnVuY3Rpb25zL3BjaS1lcGYtdGVzdC5jCj4g
aW5kZXggMGUyODVlNTM5NTM4Li5hYjQwYzMxODI2NzcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9w
Y2kvZW5kcG9pbnQvZnVuY3Rpb25zL3BjaS1lcGYtdGVzdC5jCj4gKysrIGIvZHJpdmVycy9wY2kv
ZW5kcG9pbnQvZnVuY3Rpb25zL3BjaS1lcGYtdGVzdC5jCj4gQEAgLTcwOSw3ICs3MDksNyBAQCBz
dGF0aWMgdm9pZCBwY2lfZXBmX3Rlc3RfdW5iaW5kKHN0cnVjdCBwY2lfZXBmICplcGYpCj4gIAlz
dHJ1Y3QgcGNpX2VwZl9iYXIgKmVwZl9iYXI7Cj4gIAlpbnQgYmFyOwo+ICAKPiAtCWNhbmNlbF9k
ZWxheWVkX3dvcmsoJmVwZl90ZXN0LT5jbWRfaGFuZGxlcik7Cj4gKwljYW5jZWxfZGVsYXllZF93
b3JrX3N5bmMoJmVwZl90ZXN0LT5jbWRfaGFuZGxlcik7Cj4gIAlwY2lfZXBmX3Rlc3RfY2xlYW5f
ZG1hX2NoYW4oZXBmX3Rlc3QpOwo+ICAJZm9yIChiYXIgPSAwOyBiYXIgPCBQQ0lfU1REX05VTV9C
QVJTOyBiYXIrKykgewo+ICAJCWVwZl9iYXIgPSAmZXBmLT5iYXJbYmFyXTsKPiAtLSAKPiAyLjQ0
LjAKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K61
4K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
