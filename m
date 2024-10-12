Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE5E0D1A45D
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 09:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1zdsBheO0s3InipCSUnDbt19p53v8Nm/Ki74lS/ly/8=; b=ysn+Btowr7XoEY
	tM/SnVWnLBb2ubWimy2HTJmN2YigtSPbw0kGSxLQuGDvfJfMQeYKFFJRL2ZJZtkhPOEwQwgYrAFdF
	cP4YEcHaxd7PwldRPVXl640ysTqGpv8+4lYRcAVAMtpy0YJQYG+qgdPV8VpygF1Ov/FsxOrTQnujS
	UrLNiDrk/omNmbrGr+ZvoU0DMIjGGoIipLyem4r3FQMBloJrUloFYOmDU4jOzL/AGB8/rD9s300hT
	4Wou5v8ZJuIePCDTEwUujojN/z4tsQfkAbiaQXbs/oVmFRneR+ajNTTJGhyVk7edZDrD6BXcbYV30
	crGsNC+fJum79IlQzyuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szYSu-00000000tzF-3myW;
	Sat, 12 Oct 2024 09:31:12 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szYSs-00000000tyn-0sPu
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Oct 2024 09:31:11 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-20ca1b6a80aso11871795ad.2
        for <linux-rockchip@lists.infradead.org>; Sat, 12 Oct 2024 02:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728725469; x=1729330269; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rcftYANGLd6pDOpBmVKdv1wKLxatNo30nI4FX9b8jS0=;
        b=o6W26hTiI4MUfA02+z1JvWqa+eA5TcQzGJMrqTmQ2HgzO8JMmYrARoZjvHfpls+Una
         sFRSso3vndzSwXaz+rJFl17YMX2fnmMLBpIOGyc6bOHAccJULfZm4XeJQyHEUNmkPeeX
         fHDjbyuQJkgVnCPqctYs3C0rJqLJRlasH/Ki3hm2UzpbifjM2m5PTli2ED56Aw2C+9xb
         9tiIueLa2JqEL/IUF66pufQ7SCojzOsTCh7r5s0V/8lV7XJpfvVvBz6kjh+JvobJ/6ry
         92twSMuB/4lCkhLpLDhW5IbmnYFHMds/GQMK7FVjhr3tV3BCIVbRK1htDQ5lcMXwZM57
         aD3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728725469; x=1729330269;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rcftYANGLd6pDOpBmVKdv1wKLxatNo30nI4FX9b8jS0=;
        b=xSYr/9uCX+C3if2vwhiuqRq6Mg/r6TlP4GKIXRctL4i8K8Bq9W+7fDPUdJMhp685gk
         Dkw5svKRN8gnnlrXOdxPWiKM5q+GmCEw1Gu+CgOwc2LJ08shuGsNWxKfAVxff/2TQkkA
         92mW7E3xh1ah0jMJg5I0a1oixe6GpVZRiMFc3NoiqDTkzNCQWmSse35HvLyr0Kw9RNKw
         LMA+NlMQbRb3IltH+6SN5hY5jMkU8nMU5uhEvPKgQgqZwyWOmoYKVPFUiPugRxTSZvsh
         I4ePYjXkEBhwydMM600o7FDMU57muSm+CQLqDing+yz7bIDEByhoWKTBeG7tN7Yd3xuj
         ulZA==
X-Forwarded-Encrypted: i=1; AJvYcCXSLg983UgUHI1oW2jDini+0PUwm1bYaEJe/Jj4HDd3ltfZuvq9yPR57047OHBelB7zE/o6If6BpU/UrLIhTw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxQvW4hovPt7RqnnmMd4sJFjcFiEVbC46qh/BYsZskm4TOqD+Kh
	TekACO98Q76NlbYKKxK6V+vQUoHOuHjEVNlIFGWa83A8JvNwvfsgaZXltALkHA==
X-Google-Smtp-Source: AGHT+IGsrSVPLo2rqLm/AiXBekvMiDAlBEdtpXhvi9HiJkIymx4hBrwU78+sa3FEwKJHL6PkuqNiMw==
X-Received: by 2002:a17:902:f550:b0:20c:a175:1942 with SMTP id d9443c01a7336-20cbb1aa3a5mr27207425ad.24.1728725468864;
        Sat, 12 Oct 2024 02:31:08 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bc0546csm34476595ad.79.2024.10.12.02.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 02:31:07 -0700 (PDT)
Date: Sat, 12 Oct 2024 15:01:01 +0530
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
Subject: Re: [PATCH v3 04/12] PCI: rockchip-ep: Improve
 rockchip_pcie_ep_map_addr()
Message-ID: <20241012093101.aj5hyeo3r7g6qlnn@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-5-dlemoal@kernel.org>
 <20241010071357.c3kck3rxdhvy6m67@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241010071357.c3kck3rxdhvy6m67@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_023110_410300_29A233E7 
X-CRM114-Status: GOOD (  19.68  )
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

T24gVGh1LCBPY3QgMTAsIDIwMjQgYXQgMTI6NDM6NTdQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIE1vbiwgT2N0IDA3LCAyMDI0IGF0IDAxOjEyOjEwUE0gKzA5MDAs
IERhbWllbiBMZSBNb2FsIHdyb3RlOgo+ID4gQWRkIGEgY2hlY2sgdG8gdmVyaWZ5IHRoYXQgdGhl
IG91dGJvdW5kIHJlZ2lvbiB0byBiZSB1c2VkIGZvciBtYXBwaW5nIGFuCj4gPiBhZGRyZXNzIGlz
IG5vdCBhbHJlYWR5IGluIHVzZS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRGFtaWVuIExlIE1v
YWwgPGRsZW1vYWxAa2VybmVsLm9yZz4KPiAKPiBSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KPiAKCkknbSB0cnlpbmcg
dG8gdW5kZXJzdGFuZCB0aGUgb2Igd2luZG93IG1hcHBpbmcgaGVyZS4gU28gaWYgcm9ja2NoaXBf
b2JfcmVnaW9uKCkKcmV0dXJucyBzYW1lIGluZGV4IGZvciBkaWZmZXJlbnQgKkNQVSogYWRkcmVz
c2VzLCB0aGVuIHlvdSBjYW5ub3QgbWFwIGJvdGggb2YKdGhlbT8gSXMgdGhpcyBhIGhhcmR3YXJl
IEFUVSBsaW1pdGF0aW9uPwoKQWxzbyByb2NrY2hpcF9wY2llX3Byb2dfZXBfb2JfYXR1KCkgaXMg
bm90IHRha2luZyBpbnRvIGFjY291bnQgb2YgdGhlIGNwdV9hZGRyLgpTbyBJJ20gbm90IHN1cmUg
aG93IHRoZSBtYXBwaW5nIGhhcHBlbnMgZWl0aGVyLgoKLSBNYW5pCgo+IC0gTWFuaQo+IAo+ID4g
LS0tCj4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMgfCAzICsr
Kwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jIGIvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMKPiA+IGluZGV4IDg5ZWJkZjNlNDczNy4u
ZWRiODRmYjFiYTM5IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ll
LXJvY2tjaGlwLWVwLmMKPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2Nr
Y2hpcC1lcC5jCj4gPiBAQCAtMjQzLDYgKzI0Myw5IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNp
ZV9lcF9tYXBfYWRkcihzdHJ1Y3QgcGNpX2VwYyAqZXBjLCB1OCBmbiwgdTggdmZuLAo+ID4gIAlz
dHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcGNpZSA9ICZlcC0+cm9ja2NoaXA7Cj4gPiAgCXUzMiByID0g
cm9ja2NoaXBfb2JfcmVnaW9uKGFkZHIpOwo+ID4gIAo+ID4gKwlpZiAodGVzdF9iaXQociwgJmVw
LT5vYl9yZWdpb25fbWFwKSkKPiA+ICsJCXJldHVybiAtRUJVU1k7Cj4gPiArCj4gPiAgCXJvY2tj
aGlwX3BjaWVfcHJvZ19lcF9vYl9hdHUocGNpZSwgZm4sIHIsIGFkZHIsIHBjaV9hZGRyLCBzaXpl
KTsKPiA+ICAKPiA+ICAJc2V0X2JpdChyLCAmZXAtPm9iX3JlZ2lvbl9tYXApOwo+ID4gLS0gCj4g
PiAyLjQ2LjIKPiA+IAo+IAo+IC0tIAo+IOCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprg
rqTgrr7grprgrr/grrXgrq7gr40KCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a
4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
