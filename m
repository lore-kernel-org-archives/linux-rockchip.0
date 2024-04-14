Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF96EC4345F
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Apr 2024 10:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UVLQId77gc91UtBqiJNikjlb9T0kw+ywFUY4PrFwbV8=; b=cHk5PZrsC9w8bm
	0TUmVC7neLUxGE61JZn2Tv/TwTcZbgtbdjVfjeL/EWqRRz9XQ3+QLHDghmZkFgFgm2Wyi6Bdx/dkg
	mXBqw5tFRhsisisxNmLmKpA8Fg51y8NBbp2Yud+3EJg3nT6V4if6D3jIkfrSOs+XvW28tHqBsW+NA
	k/Z/bfPf3NlnXf24CjXtFcX4rbDTAj59VR2YCRYm3sTwIqsWWMs2uCPqGWfnUc4EOLZywI+xAxI2U
	pUEw9SX9LrhzPBonsdKc80zL90bOz5bYFXiqurzn90OKNjhCkg3sXuwlKwV1xq+QKY0pw6eFxldub
	0RfmkEyoxLZPYePxpfLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvxSx-00000005IJi-2hVW;
	Sun, 14 Apr 2024 10:52:07 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvxSs-00000005IIb-3oIS
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Apr 2024 10:52:05 +0000
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-5aa20adda1dso1963340eaf.1
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Apr 2024 03:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713091920; x=1713696720; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z86tADjA34jPDvp0sH69LSJjWH6CGCLDMrpq88/Jt4c=;
        b=SByJhfdID/stGJRsw1fz3NWeUpPLyf/AIP4Swuj1KLjWYxRljDqK4jEdo1P8BBa+l0
         xYn9eUG15urDR07hRbJZz79VF9QdxgwRT12kcXbNdvivBgFQergW8ZsdBwAUQAZi3RXX
         ynZWl5I1VfvLs/UfOz4ldnovyQED3ZHld2v4+5iYGvBMXYT48Djr2wzInAyVtbHqU61A
         raw8i7eA3W7lwfMqhc/tkA9cmnAXb7tZaZa21/jB/DpZK5gwhy9Eer7pHDpDIuzMYp4a
         G02GrB3/9vZtIkvmn9DrTdfpSoky7urfJh7GTMSaqqCYNErM23W6mf0IKRnKkBHOpFVt
         gOww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713091920; x=1713696720;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z86tADjA34jPDvp0sH69LSJjWH6CGCLDMrpq88/Jt4c=;
        b=n59qMQrgqdATDQ4d3cZTeZ9UPk6A78rb/m5c3Bag7VKcfyqn/h2GrWadxt+h0Ikss4
         YYpetb+FByZzuw+PbRhE/RNaQmhdiIBXo6yQz5mijOLvBI2bkyoPikI/QoesdvocoVCy
         8oUwtlvgvuKfGD6J1z96DgxlaJjRBXEEstvr2wflK3y/7RK51TaMWOxD76YSKSz7Jc16
         19it2noSKy4F6Cq/JNPitrSjt3zBf3ATdtxrwDGvQBTQNC59S65hhOwoxirShnEbny8P
         Ogux6tngyNRb2K2z66MymLaDBrMdF62USUFeOKEfu1MzBCk+87W3lZM0UObJYxAGjWWK
         zp4A==
X-Forwarded-Encrypted: i=1; AJvYcCUh6dWgmWnLZ1Cf07TaMG/OYGNK/z64wgaIehrnIXpbvb1/aF4Crbhru4fF8QmylggIpH4rCQkF4fVHY96QdQ9qNy9753oVyVisUlCJCLP9YXfw
X-Gm-Message-State: AOJu0YyjwtspjRC7b3VG25v0g9P+KlWFPTfcre5HbNbSZSbNjMpbVVqG
	knjNTmdNeJunlsRdSDYmwvREvzWHt4C5pgiqi9OK8ELcoxTjiRCq/XKb9trFMg==
X-Google-Smtp-Source: AGHT+IHG73jN0JyTXE5YMG9IYvVbYRtG5PEk5LWJ00N9WZxttyYSYCMKrPxspcM2aGpT1bTva1r7xA==
X-Received: by 2002:a05:6808:218c:b0:3c5:eddb:47c1 with SMTP id be12-20020a056808218c00b003c5eddb47c1mr9182957oib.5.1713091919486;
        Sun, 14 Apr 2024 03:51:59 -0700 (PDT)
Received: from thinkpad ([120.60.136.171])
        by smtp.gmail.com with ESMTPSA id im22-20020a170902bb1600b001dcfaf4db22sm5944167plb.2.2024.04.14.03.51.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Apr 2024 03:51:59 -0700 (PDT)
Date: Sun, 14 Apr 2024 16:21:48 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Vidya Sagar <vidyas@nvidia.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Richard Zhu <hongxing.zhu@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Minghuan Lian <minghuan.Lian@nxp.com>,
	Mingkai Hu <mingkai.hu@nxp.com>, Roy Zang <roy.zang@nxp.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Srikanth Thokala <srikanth.thokala@intel.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org, Niklas Cassel <cassel@kernel.org>,
	linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v12 8/8] PCI: endpoint: Remove "core_init_notifier" flag
Message-ID: <20240414105148.GC2294@thinkpad>
References: <20240327-pci-dbi-rework-v12-8-082625472414@linaro.org>
 <20240412202216.GA14590@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240412202216.GA14590@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_035203_027748_2945B054 
X-CRM114-Status: GOOD (  25.18  )
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

T24gRnJpLCBBcHIgMTIsIDIwMjQgYXQgMDM6MjI6MTZQTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBXZWQsIE1hciAyNywgMjAyNCBhdCAwMjo0MzozN1BNICswNTMwLCBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiAiY29yZV9pbml0X25vdGlmaWVyIiBmbGFnIGlzIHNl
dCBieSB0aGUgZ2x1ZSBkcml2ZXJzIHJlcXVpcmluZyByZWZjbGsgZnJvbQo+ID4gdGhlIGhvc3Qg
dG8gY29tcGxldGUgdGhlIERXQyBjb3JlIGluaXRpYWxpemF0aW9uLiBBbHNvLCB0aG9zZSBkcml2
ZXJzIHdpbGwKPiA+IHNlbmQgYSBub3RpZmljYXRpb24gdG8gdGhlIEVQRiBkcml2ZXJzIG9uY2Ug
dGhlIGluaXRpYWxpemF0aW9uIGlzIGZ1bGx5Cj4gPiBjb21wbGV0ZWQgdXNpbmcgdGhlIHBjaV9l
cGNfaW5pdF9ub3RpZnkoKSBBUEkuIE9ubHkgdGhlbiwgdGhlIEVQRiBkcml2ZXJzCj4gPiB3aWxs
IHN0YXJ0IGZ1bmN0aW9uaW5nLgo+ID4gCj4gPiBGb3IgdGhlIHJlc3Qgb2YgdGhlIGRyaXZlcnMg
Z2VuZXJhdGluZyByZWZjbGsgbG9jYWxseSwgRVBGIGRyaXZlcnMgd2lsbAo+ID4gc3RhcnQgZnVu
Y3Rpb25pbmcgcG9zdCBiaW5kaW5nIHdpdGggdGhlbS4gRVBGIGRyaXZlcnMgcmVseSBvbiB0aGUK
PiA+ICdjb3JlX2luaXRfbm90aWZpZXInIGZsYWcgdG8gZGlmZmVyZW50aWF0ZSBiZXR3ZWVuIHRo
ZSBkcml2ZXJzLgo+ID4gVW5mb3J0dW5hdGVseSwgdGhpcyBjcmVhdGVzIHR3byBkaWZmZXJlbnQg
Zmxvd3MgZm9yIHRoZSBFUEYgZHJpdmVycy4KPiA+IAo+ID4gU28gdG8gYXZvaWQgdGhhdCwgbGV0
J3MgZ2V0IHJpZCBvZiB0aGUgImNvcmVfaW5pdF9ub3RpZmllciIgZmxhZyBhbmQgZm9sbG93Cj4g
PiBhIHNpbmdsZSBpbml0aWFsaXphdGlvbiBmbG93IGZvciB0aGUgRVBGIGRyaXZlcnMuIFRoaXMg
aXMgZG9uZSBieSBjYWxsaW5nCj4gPiB0aGUgZHdfcGNpZV9lcF9pbml0X25vdGlmeSgpIGZyb20g
YWxsIGdsdWUgZHJpdmVycyBhZnRlciB0aGUgY29tcGxldGlvbiBvZgo+ID4gZHdfcGNpZV9lcF9p
bml0X3JlZ2lzdGVycygpIEFQSS4gVGhpcyB3aWxsIGFsbG93IGFsbCB0aGUgZ2x1ZSBkcml2ZXJz
IHRvCj4gPiBzZW5kIHRoZSBub3RpZmljYXRpb24gdG8gdGhlIEVQRiBkcml2ZXJzIG9uY2UgdGhl
IGluaXRpYWxpemF0aW9uIGlzIGZ1bGx5Cj4gPiBjb21wbGV0ZWQuCj4gCj4gVGhhbmtzIGZvciBk
b2luZyB0aGlzISAgSSB0aGluayB0aGlzIGlzIGEgc2lnbmlmaWNhbnRseSBuaWNlcgo+IHNvbHV0
aW9uIHRoYW4gY29yZV9pbml0X25vdGlmaWVyIHdhcy4KPiAKPiBPbmUgcXVlc3Rpb246IGJvdGgg
cWNvbSBhbmQgdGVncmExOTQgY2FsbCBkd19wY2llX2VwX2luaXRfcmVnaXN0ZXJzKCkKPiBmcm9t
IGFuIGludGVycnVwdCBoYW5kbGVyLCBidXQgdGhleSByZWdpc3RlciB0aGF0IGhhbmRsZXIgaW4g
YQo+IGRpZmZlcmVudCBvcmRlciB3aXRoIHJlc3BlY3QgdG8gZHdfcGNpZV9lcF9pbml0KCkuCj4g
Cj4gSSBkb24ndCBrbm93IHdoYXQgYWN0dWFsbHkgc3RhcnRzIHRoZSBwcm9jZXNzIHRoYXQgbGVh
ZHMgdG8gdGhlCj4gaW50ZXJydXB0LCBidXQgaWYgaXQncyBkd19wY2llX2VwX2luaXQoKSwgdGhl
biBvbmUgb2YgdGhlc2UgKHFjb20sIEkKPiB0aGluaykgbXVzdCBiZSByYWN5Ogo+IAoKWW91ciBh
bmFseXNpcyBpcyBjb3JyZWN0LiBCdXQgdGhlcmUgaXMgbm8gcmFjZSBvYnNlcnZlZCBhcyBvZiBu
b3cgc2luY2UgdGhlIElSUQp3aWxsIG9ubHkgYmUgZW5hYmxlZCBieSBjb25maWd1cmluZyB0aGUg
ZW5kcG9pbnQgdXNpbmcgY29uZmlnZnMgaW50ZXJmYWNlIGFuZApyaWdodCBub3cgSSB1c2UgYW4g
aW5pdCBzY3JpcHQgdG8gZG8gdGhhdC4gQnkgdGhhdCB0aW1lLCB0aGUgZHJpdmVyIHdvdWxkJ3Zl
CmFscmVhZHkgcHJvYmVkIGNvbXBsZXRlbHkuCgpCdXQgdGhlcmUgaXMgYSBzbGlnaHQgY2hhbmNl
IHRoYXQgaWYgdGhlIGRyaXZlciBnZXRzIGxvYWRlZCBhcyBhIG1vZHVsZSBhbmQgdGhlCnVzZXJz
cGFjZSBzY3JpcHQgc3RhcnRzIGNvbmZpZ3VyaW5nIHRoZSBlbmRwb2ludCBpbnRlcmZhY2UgdXNp
bmcgaW5vdGlmeSB3YXRjaApvciBzb21ldGhpbmcgc2ltaWxhciwgdGhlbiByYWNlIGNvdWxkIG9j
Y3VyIHNpbmNlIHRoZSBJUlEgaGFuZGxlciBtYXkgbm90IGJlCnJlZ2lzdGVyZWQgYXQgdGhhdCBw
b2ludC4KCj4gICBxY29tX3BjaWVfZXBfcHJvYmUKPiAgICAgZHdfcGNpZV9lcF9pbml0ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC0gQQo+ICAgICBxY29tX3Bj
aWVfZXBfZW5hYmxlX2lycV9yZXNvdXJjZXMKPiAgICAgICBkZXZtX3JlcXVlc3RfdGhyZWFkZWRf
aXJxKHFjb21fcGNpZV9lcF9wZXJzdF9pcnFfdGhyZWFkKSAgPC0gQgo+IAo+ICAgcWNvbV9wY2ll
X2VwX3BlcnN0X2lycV90aHJlYWQKPiAgICAgcWNvbV9wY2llX3BlcnN0X2RlYXNzZXJ0Cj4gICAg
ICAgZHdfcGNpZV9lcF9pbml0X3JlZ2lzdGVycwo+IAo+ICAgdGVncmFfcGNpZV9kd19wcm9iZQo+
ICAgICB0ZWdyYV9wY2llX2NvbmZpZ19lcAo+ICAgICAgIGRldm1fcmVxdWVzdF90aHJlYWRlZF9p
cnEodGVncmFfcGNpZV9lcF9wZXhfcnN0X2lycSkgICAgICA8LSBCCj4gICAgICAgZHdfcGNpZV9l
cF9pbml0ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwtIEEKPiAK
PiAgIHRlZ3JhX3BjaWVfZXBfcGV4X3JzdF9pcnEKPiAgICAgcGV4X2VwX2V2ZW50X3BleF9yc3Rf
ZGVhc3NlcnQKPiAgICAgICBkd19wY2llX2VwX2luaXRfcmVnaXN0ZXJzCj4gCj4gV2hhdGV2ZXIg
dGhlIHJpZ2h0IGFuc3dlciBpcywgSSB0aGluayBxY29tIGFuZCB0ZWdyYTE5NCBzaG91bGQgYm90
aAo+IG9yZGVyIGR3X3BjaWVfZXBfaW5pdCgpIGFuZCB0aGUgZGV2bV9yZXF1ZXN0X3RocmVhZGVk
X2lycSgpIHRoZSBzYW1lCj4gd2F5Lgo+IAoKQWdyZWUuIFRoZSByaWdodCB3YXkgaXMgdG8gcmVn
aXN0ZXIgdGhlIElSUSBoYW5kbGVyIGZpcnN0IGFuZCB0aGVuIGRvCmR3X3BjaWVfZXBfaW5pdCgp
LiBJIHdpbGwgZml4IGl0IGluIHRoZSBxY29tIGRyaXZlci4KClRoYW5rcyBmb3Igc3BvdHRpbmch
CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/
4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
