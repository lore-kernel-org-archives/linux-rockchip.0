Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C776C54E66
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Mar 2024 05:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1nvRUoy0FsWSRXjkYkg6fQ7Y5K1+ZGk3fTtA3r8Q7Ug=; b=gp7aAmlhsxSKIf
	Z5wN8eN9feuyw9cRM3pof/EW350e2hjL2DmYbQPjwZEAv52o9lWRXE/MSDBirPbGpye6y85QGm+6J
	vvLWfUKXtVJn742+BAJk2FP5lNfuy3ZMzxSTTHHrC+1OBoYefgMqJD6kTY6QBB+k2EXtKatYBevej
	siMe8M2auSNHDHxyuO/3wVwXnzLdy3JZuXpjX5au1J1z4ve4Iaut6S1zfqkB5vf8KxEknuyKGMhK5
	ywc3Ipr8ESzO8ITUF0NOGhZlALKqqq6rQ/86Wy3Pr7hapyuMQDAdhWa3dLhLjOQo5FvEEVAChAene
	xbpaoGExM6jDkvqdPv5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl0QC-0000000GkzT-2mNM;
	Fri, 15 Mar 2024 05:48:00 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl0Q8-0000000GkyD-0EWx
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Mar 2024 05:47:57 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1dbd32cff0bso12945835ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Mar 2024 22:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710481673; x=1711086473; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=evB9YSInt1wBu30FM2sA2EdAsArYbmamc1Tzyv+soTo=;
        b=doMbiXTgTmFKf0XENdh+yEW0TvLTU7mVNfDA3BckbGIWUDk8TwX8zVIjelWsHS78HK
         y49WZdsiJgfDzabGl48u0DBTA8fJm+s9Qu2Ysgwp40blrqBSW03H5dWT7dopJb8oMA49
         Wj1NdEITnVyt1n2uD4Ld+ihTVSH/nAdvFIuEmOturudG22b4fz3WPxNav5VWFSc6oPhA
         JP4s7jdL2SWRVc1Sbmxbba8t96vYdrJUolDbJYV9t3hTs+mF2ZlPxxfnEA+GfUGWTL+Q
         k0ovqrz7HRqIrIOuzx+N0WZflentfGzEZBUrqzD07Np2jeQYsOADXoTOvzzLQwfLdAq7
         1IRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710481673; x=1711086473;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=evB9YSInt1wBu30FM2sA2EdAsArYbmamc1Tzyv+soTo=;
        b=v+UjVS80VzsHh9Jq73/WhJueOMJvkLXAvxsylHy5LSHNAMrFHUDnHD8HgKt3N9NDSr
         jbVyRJm2skZrKqlcNpczZ2ANhiE3fH4ubcytynO6fkghy3Ld18oFYfVfrvX0UPnkOySw
         dlX9EOg8W0GlmbSucralUcFdA11Dxx1jBYXMVCjWLpuLgsVxTPXRJ6vR1Q33SmBnuKY5
         8n+q1pOglltujbHQNSMPAtvAXp1sdZ7ojhpxJ4nGA4XLE+ubaz1FAQfsiCGGNqw6n2zt
         9Xeq+xjJewc+7rAIylqfe0HMuaPYcUH51LJC8tQmAsyoXvHAPcC3fOQdnMvAH1IbvxSZ
         KSKQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJ8sF5M64uQSwcQZofjGAO5gi8qXaH9f8gQpbDjOnplnsMsEd2tKnkm/eA20TaIYzi2pKdNegZfGV87sjZ3DzMs5fsEUGz816B1NesJHs0bapu
X-Gm-Message-State: AOJu0YwHduza8z+TxVsjQ4lOiaAOg9AasEDZVYViR+EAs8FUwPWPdeLD
	dlqvbIiSBvVtcyrj34jgiua4Jo9kglncl/ydqTgNDQqNDHguanmRXKb1EqdlLQ==
X-Google-Smtp-Source: AGHT+IH5FGOJy1/ELRcNbboAtyIhu4pD/osvArG1/SL+m6+BAiaezD8IuyA/T+x4U5h+3qdgCPUiCw==
X-Received: by 2002:a17:902:c401:b0:1dd:7de5:7ac4 with SMTP id k1-20020a170902c40100b001dd7de57ac4mr5531812plk.38.1710481672484;
        Thu, 14 Mar 2024 22:47:52 -0700 (PDT)
Received: from thinkpad ([117.207.30.211])
        by smtp.gmail.com with ESMTPSA id t6-20020a170902e84600b001dca99546d2sm2808048plg.70.2024.03.14.22.47.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Mar 2024 22:47:52 -0700 (PDT)
Date: Fri, 15 Mar 2024 11:17:45 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Shradha Todi <shradha.t@samsung.com>,
	Damien Le Moal <dlemoal@kernel.org>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 8/9] PCI: rockchip-ep: Set a 64-bit BAR if requested
Message-ID: <20240315054745.GH3375@thinkpad>
References: <20240313105804.100168-1-cassel@kernel.org>
 <20240313105804.100168-9-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240313105804.100168-9-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240314_224756_139265_F1211E31 
X-CRM114-Status: GOOD (  21.79  )
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

T24gV2VkLCBNYXIgMTMsIDIwMjQgYXQgMTE6NTg6MDBBTSArMDEwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBFdmVyIHNpbmNlIGNvbW1pdCBmMjViNWZhZTI5ZDQgKCJQQ0k6IGVuZHBvaW50OiBT
ZXR0aW5nIGEgQkFSIHNpemUgPiA0IEdCCj4gaXMgaW52YWxpZCBpZiA2NC1iaXQgZmxhZyBpcyBu
b3Qgc2V0IikgaXQgaGFzIGJlZW4gaW1wb3NzaWJsZSB0byBnZXQgdGhlCj4gLnNldF9iYXIoKSBj
YWxsYmFjayB3aXRoIGEgQkFSIHNpemUgPiA0IEdCLCBpZiB0aGUgQkFSIHdhcyBhbHNvIG5vdAo+
IHJlcXVlc3RlZCB0byBiZSBjb25maWd1cmVkIGFzIGEgNjQtYml0IEJBUi4KPiAKPiBJdCBpcyBo
b3dldmVyIHBvc3NpYmxlIHRoYXQgYW4gRVBGIGRyaXZlciBjb25maWd1cmVzIGEgQkFSIGFzIDY0
LWJpdCwKPiBldmVuIGlmIHRoZSByZXF1ZXN0ZWQgc2l6ZSBpcyA8IDQgR0IuCgoyIEdCCgo+IAo+
IFJlc3BlY3QgdGhlIHJlcXVlc3RlZCBCQVIgY29uZmlndXJhdGlvbiwganVzdCBsaWtlIGhvdyBp
dCBpcyBhbHJlYWR5Cj4gcmVwZWN0ZWQgd2l0aCByZWdhcmRzIHRvIHRoZSBwcmVmZXRjaGFibGUg
Yml0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IE5pa2xhcyBDYXNzZWwgPGNhc3NlbEBrZXJuZWwub3Jn
PgoKQWgsIEkgbWlzc2VkIHRoaXMgb25lLiBCdXQgdGhlIHNhbWUgY29tbWVudCBhcyBwcmV2aW91
cyBvbmUgYXBwbGllcyB0byB0aGlzCnBhdGNoIGFsc28uCgpSZXZpZXdlZC1ieTogTWFuaXZhbm5h
biBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KCi0gTWFuaQoK
PiAtLS0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMgfCAyICst
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAuYyBiL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jCj4gaW5kZXggYzkwNDZlOTdh
MWQyLi41NzQ3MmNmNDg5OTcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9w
Y2llLXJvY2tjaGlwLWVwLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9j
a2NoaXAtZXAuYwo+IEBAIC0xNTMsNyArMTUzLDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2ll
X2VwX3NldF9iYXIoc3RydWN0IHBjaV9lcGMgKmVwYywgdTggZm4sIHU4IHZmbiwKPiAgCQljdHJs
ID0gUk9DS0NISVBfUENJRV9DT1JFX0JBUl9DRkdfQ1RSTF9JT18zMkJJVFM7Cj4gIAl9IGVsc2Ug
ewo+ICAJCWJvb2wgaXNfcHJlZmV0Y2ggPSAhIShmbGFncyAmIFBDSV9CQVNFX0FERFJFU1NfTUVN
X1BSRUZFVENIKTsKPiAtCQlib29sIGlzXzY0Yml0cyA9IHN6ID4gU1pfMkc7Cj4gKwkJYm9vbCBp
c182NGJpdHMgPSAhIShmbGFncyAmIFBDSV9CQVNFX0FERFJFU1NfTUVNX1RZUEVfNjQpOwo+ICAK
PiAgCQlpZiAoaXNfNjRiaXRzICYmIChiYXIgJiAxKSkKPiAgCQkJcmV0dXJuIC1FSU5WQUw7Cj4g
LS0gCj4gMi40NC4wCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCu
vuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
