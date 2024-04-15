Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DE33C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 06:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q12ubtD7s4QUCjxsXrQmRMyPx+wN19QbH42D9Ysma/w=; b=W/pyD8FFxJm4yR
	lwcVRaBoPWA8HyEJDlb+3Y96mhWsX5cOjsLdd7Tbr9WjRaZbPEjo2d2Fp6fUtm/fEypqxu8AKRNkc
	ndg0U5achzHylRJAVPOTzofnZIpvq2y6XF1yBcCZ2VilZnlbzxKRtfuTNUpUpyxzG55gbIyrCK2rT
	OHu+Ou5aPYy2WAYEqUQT6foDWFRE+GkT3rmgGEFtac86gdm6X1/1lonXvtxgcxMMIWj4vI05nhZs5
	0qIy08fwi3L7xaV/Bq+4MOTSiM0ByVIKYMckqfILDrSnkmJ40I/Bdk2YtBBo9FvCl4o3fOYO2R/7U
	w8FSpOoBdDKvN8Q7FzcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwG9N-00000007DM2-2slv;
	Mon, 15 Apr 2024 06:49:09 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwG9K-00000007DL2-2EBl
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Apr 2024 06:49:07 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-2a6fa7773d3so1702012a91.3
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Apr 2024 23:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713163745; x=1713768545; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wbma48kMrwhXpK04EVJIgSb7zQnNro8/X2QtwMKJVXw=;
        b=vgOYDttZFUlYark6x0EWdcHs0seR4fvrUpvji7kOH/7PwJULRYX+tJSyoBi7zNVsiy
         CPcmB61uQRoU7dA21DxY0pRhXynW7J0BgQD9L5uB46Bo3CIo06c9iqrtCoeX5yE8VfB3
         mQwZZmqYmF88sbtrdUtHy+Ad9k6O++LMhZttJ63G7FI/cPxrgFa2eOwWWb2skf06HGBM
         mikdO6V7WGWKf0p6C5qEgxR9q3r9VQmxVTxA1ORNqShauVHqmgIoQcwhWUjdsaHVvktm
         AE2G1retgsFHVULnVtAbEMEMzv9mkJp40mQauHUj688YsibO88YAC65pCMliD/Dmx8Yg
         Wo/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713163745; x=1713768545;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wbma48kMrwhXpK04EVJIgSb7zQnNro8/X2QtwMKJVXw=;
        b=G30JRlaRmBs74Dmz4CCERENOkKZBCPaW2viPWP/iSGHNBkQA8+g3DDseNPBHqjLSu1
         XUFJrkRo02xpKaGmVGi1BXB2EdbmSAi1crmzQx3M3MbiaFERR/D4Temo8Ur4EiQ7LsDd
         qeAHVn1ieB0EqW8stmUBm6pK7WiFoJbpAUg57RLPlzbRVgkHsnTrldyEW2ZKXVhJAd23
         v2g9Q8/TbUXY9p3GSBoB00iZ2wnyxUK7gG+bSVt1acpo9lEKnksC9xdbjDg+W3cAvmuF
         bCCVqflngFlzGvqBFJFKLazfX9041MA5WnvxwyEb+2Dta3gFkSuACmWG0jWRAuVMmWqA
         mYVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFSNXXEwlccaHWS17xcqMsHjsk5ZgqlOMmE2qEkUHtYnGbn22mLBRv8ojEJ7MlN/ddPekb3Rt0p4LE+7u2s8zk3uiJh+Z5Lx4Y0HOo6MbofwEK
X-Gm-Message-State: AOJu0YygWDmVluguN9m3sGyjaO0OTgVmGzZckRjzE3HBjy2dT7gDZvYt
	W9iBaHzrp3r0U21OrKXyBaRl2eNdFJlVKGi6b6PNhIRMrWxvOrCWGA45AVFUeA==
X-Google-Smtp-Source: AGHT+IGC8V47YXDa/6cXYpOHnzIDDAqTZinRyZksANZMUlFOAS1daDDExrMfx9Hmclx5tmkYR75Oiw==
X-Received: by 2002:a17:90a:fb82:b0:2a5:3399:b703 with SMTP id cp2-20020a17090afb8200b002a53399b703mr6948189pjb.11.1713163744476;
        Sun, 14 Apr 2024 23:49:04 -0700 (PDT)
Received: from thinkpad ([103.28.246.218])
        by smtp.gmail.com with ESMTPSA id nh14-20020a17090b364e00b002a67b6f4417sm5898986pjb.24.2024.04.14.23.49.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Apr 2024 23:49:04 -0700 (PDT)
Date: Mon, 15 Apr 2024 12:18:59 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 1/2] PCI: rockchip-host: Fix
 rockchip_pcie_host_init_port() PERST# handling
Message-ID: <20240415064859.GC7537@thinkpad>
References: <20240413004120.1099089-1-dlemoal@kernel.org>
 <20240413004120.1099089-2-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240413004120.1099089-2-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_234906_597394_1F3C0263 
X-CRM114-Status: GOOD (  17.44  )
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

T24gU2F0LCBBcHIgMTMsIDIwMjQgYXQgMDk6NDE6MTlBTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gVGhlIFBDSWUgc3BlY2lmaWNhdGlvbnMgKFBDSWUgQ0VNIHI1LjEsIHNlYyAyLjku
MikgbWFuZGF0ZSB0aGF0IHRoZQo+IFBFUlNUIyBzaWduYWwgbXVzdCByZW1haW4gYXNzZXJ0ZWQg
Zm9yIGF0IGxlYXN0IDEwMCB1c2VjIChUcGVyc3QtY2xrKQo+IGFmdGVyIHRoZSBQQ0llIHJlZmVy
ZW5jZSBjbG9jayBiZWNvbWVzIHN0YWJsZSAoaWYgYSByZWZlcmVuY2UgY2xvY2sgaXMKPiBzdXBw
bGllZCksIGFuZCBmb3IgYXQgbGVhc3QgMTAwIG1zZWMgYWZ0ZXIgdGhlIHBvd2VyIGlzIHN0YWJs
ZSAoVHB2cGVybCwKPiBkZWZpbmVkIGJ5IHRoZSBtYWNybyBQQ0lFX1RfUFZQRVJMX01TKS4KPiAK
PiBNb2RpZnkgcm9ja2NoaXBfcGNpZV9ob3N0X2luaXRfcG9ydCgpIHRvIHNhdGlzZnkgdGhlc2Ug
Y29uc3RyYWludHMgYnkKPiBhZGRpbmcgYSBzbGVlcCBwZXJpb2QgYmVmb3JlIGRlYXNzZXJ0aW5n
IFBFUlNUIyB1c2luZyB0aGUgZXBfZ3BpbyBHUElPLgo+IFNpbmNlIFRwZXJzdC1jbGsgaXMgdGhl
IHNob3J0ZXIgd2FpdCB0aW1lLCBhZGQgYW4gbXNsZWVwKCkgY2FsbCBmb3IgdGhlCj4gbG9uZ2Vy
IFBDSUVfVF9QVlBFUkxfTVMgbWlsbGlzZWNvbmRzIHRvIGhhbmRsZSBib3RoIHRpbWluZyByZXF1
aXJlbWVudHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogRGFtaWVuIExlIE1vYWwgPGRsZW1vYWxAa2Vy
bmVsLm9yZz4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4u
c2FkaGFzaXZhbUBsaW5hcm8ub3JnPgoKLSBNYW5pCgo+IC0tLQo+ICBkcml2ZXJzL3BjaS9jb250
cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUt
cm9ja2NoaXAtaG9zdC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWhv
c3QuYwo+IGluZGV4IDMwMGI5ZGM4NWVjYy4uZmM4NjgyNTFlNTcwIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1ob3N0LmMKPiArKysgYi9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jCj4gQEAgLTMyMiw2ICszMjIsNyBA
QCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfaG9zdF9pbml0X3BvcnQoc3RydWN0IHJvY2tjaGlw
X3BjaWUgKnJvY2tjaGlwKQo+ICAJcm9ja2NoaXBfcGNpZV93cml0ZShyb2NrY2hpcCwgUENJRV9D
TElFTlRfTElOS19UUkFJTl9FTkFCTEUsCj4gIAkJCSAgICBQQ0lFX0NMSUVOVF9DT05GSUcpOwo+
ICAKPiArCW1zbGVlcChQQ0lFX1RfUFZQRVJMX01TKTsKPiAgCWdwaW9kX3NldF92YWx1ZV9jYW5z
bGVlcChyb2NrY2hpcC0+ZXBfZ3BpbywgMSk7Cj4gIAo+ICAJLyogNTAwbXMgdGltZW91dCB2YWx1
ZSBzaG91bGQgYmUgZW5vdWdoIGZvciBHZW4xLzIgdHJhaW5pbmcgKi8KPiAtLSAKPiAyLjQ0LjAK
PiAKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K61
4K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
