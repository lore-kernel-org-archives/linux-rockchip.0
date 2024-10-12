Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99939CF2566
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 12:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aIrryKZ2JYpr5xnkeKqT5YP2pxk2fwyNMzFiPkRI4s4=; b=TsC37on/2DLUpn
	MLavHu+kCJQMV8c8n0ybsQpTFfq+pHBYHu3pPP4dm2uShG+OK97PfMH5eC86ELcZZps+SPMrgT4RU
	XgUVYcOjboYzsCwiqBfUmieJOXGt0d/tuqm0qhGugqrAprsOlUQ9Y28NfrVqVfB9kOU6nwlQemMM/
	EW+AO5zzTsuhGqe7yJ7FfekmPPWvUpZOdJ1ATRzS8aYYJBHk1zRbvweBnfrM/MflyDSC2H968z9JU
	4SQELT0uSePfoV+dwmqt/y5v+R7Xmq0E4tpKwbjljtBzt+cHSPPzvuEEkKH0VlQmNb0aQ3xqtyz/9
	GlTPRgC2o8Bv3y3OAF2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szbPi-00000001C0h-2DOm;
	Sat, 12 Oct 2024 12:40:06 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szbPd-00000001C05-3qfu
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Oct 2024 12:40:04 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-656d8b346d2so1863347a12.2
        for <linux-rockchip@lists.infradead.org>; Sat, 12 Oct 2024 05:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728736801; x=1729341601; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RG/3JMYFwMuRk8siKyYDRhyYxeff+oyD3KY3RsbFzY0=;
        b=uVofkOUdpXZDwYpLEtBokCNNh3uuwx9nDSMN5rMNcoPtL4AxNi6/Hb1yz5d8vQ0Ovx
         redY7sfcg332iadS/wyvaEs/IVlZPe7lorKLdunTBo629XS8oPtQaXdo8dCqkjpy7vfJ
         w5VJGpRKTOpcap555IV4utXraOz7BBcl4+GtufD34XTxLp26ofNAMCT+zWcSWAVcK6Qn
         NqDb7sKAn3gb46DIkUgPCNJsU83xlYmMlJtdQ42KLlxjaIArnNYQTEcQPf9Y4wN9byLX
         H8B1ewcD0FneZBXTqoG2UHn6+8/PrHy2vCAFPVDhmeOc7lcowl65gaomfCKpzlLvaj3I
         /1ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728736801; x=1729341601;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RG/3JMYFwMuRk8siKyYDRhyYxeff+oyD3KY3RsbFzY0=;
        b=pqi1uUq57nL64CdJSmQDbw5s6BJ/N2KSVMMkPlK8qAqgnHzeLIHlrL9p0xlom3zWUX
         5EBeP/iIesms7JiiwJ5vp5S3BkCA1h8gHxYX7sgjkZkcSsNUCvRMqTP0dK4HtdM/A31x
         PBODrIs9lcQSpnxsKcQM6MG61xkIKHsm2ZIHbkF46l+AxqaibC/KC+LUXISInkTsAJ8k
         P475wuHrC02+pU/abP4WXL8Ae1rn9D8UmE5lgKSjozq1Y2l2PhwVKMX5sPSzAvYWsbly
         cH5zF324eX0DAyStOtS7XxCdXcCosKO27sonmZx+ANeLS5kvcBMpPmEXZ/ml4uW68ap8
         9ECw==
X-Forwarded-Encrypted: i=1; AJvYcCVnVxpt/K4u69nWJhJ8HJJqWvDDJ038AwleODf554N6deUjq9woWwwWN4v8SyBcvcl0l4jYBg3cswQ3LaXYdQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxQQEXk1IkmlRiLfXQbxCaC1N3lWqHz9tTDv6Ld6gQZU1C9Z9aG
	jg3QsUyqWFaD793fuRNE2Zd2DDQQnRr6NUmaYIpJwTsZ2aWIrFVt9Zg5gvKAzuUMCn6jbdL4Eo8
	=
X-Google-Smtp-Source: AGHT+IGUE7cWo0UQfwl1hJCa/AjoDuaDcxYk0p4j3IaLyO5skTpHD2rm3GpEyNIZt37F2wzetq+1Ng==
X-Received: by 2002:a17:902:da81:b0:20b:8ed8:9c75 with SMTP id d9443c01a7336-20cbb25b89cmr34665875ad.59.1728736800733;
        Sat, 12 Oct 2024 05:40:00 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8badc9c3sm36450165ad.36.2024.10.12.05.39.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 05:40:00 -0700 (PDT)
Date: Sat, 12 Oct 2024 18:09:55 +0530
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
Message-ID: <20241012123955.m5veu2dsubuddu55@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-5-dlemoal@kernel.org>
 <20241010071357.c3kck3rxdhvy6m67@thinkpad>
 <20241012093101.aj5hyeo3r7g6qlnn@thinkpad>
 <b70c7850-1fd2-4267-aa18-5e944a0bf81d@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b70c7850-1fd2-4267-aa18-5e944a0bf81d@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_054002_295579_06132C33 
X-CRM114-Status: GOOD (  28.58  )
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

T24gU2F0LCBPY3QgMTIsIDIwMjQgYXQgMDk6MDI6NDNQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gT24gMTAvMTIvMjQgMTg6MzEsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToK
PiA+IE9uIFRodSwgT2N0IDEwLCAyMDI0IGF0IDEyOjQzOjU3UE0gKzA1MzAsIE1hbml2YW5uYW4g
U2FkaGFzaXZhbSB3cm90ZToKPiA+PiBPbiBNb24sIE9jdCAwNywgMjAyNCBhdCAwMToxMjoxMFBN
ICswOTAwLCBEYW1pZW4gTGUgTW9hbCB3cm90ZToKPiA+Pj4gQWRkIGEgY2hlY2sgdG8gdmVyaWZ5
IHRoYXQgdGhlIG91dGJvdW5kIHJlZ2lvbiB0byBiZSB1c2VkIGZvciBtYXBwaW5nIGFuCj4gPj4+
IGFkZHJlc3MgaXMgbm90IGFscmVhZHkgaW4gdXNlLgo+ID4+Pgo+ID4+PiBTaWduZWQtb2ZmLWJ5
OiBEYW1pZW4gTGUgTW9hbCA8ZGxlbW9hbEBrZXJuZWwub3JnPgo+ID4+Cj4gPj4gUmV2aWV3ZWQt
Ynk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5v
cmc+Cj4gPj4KPiA+IAo+ID4gSSdtIHRyeWluZyB0byB1bmRlcnN0YW5kIHRoZSBvYiB3aW5kb3cg
bWFwcGluZyBoZXJlLiBTbyBpZiByb2NrY2hpcF9vYl9yZWdpb24oKQo+ID4gcmV0dXJucyBzYW1l
IGluZGV4IGZvciBkaWZmZXJlbnQgKkNQVSogYWRkcmVzc2VzLCB0aGVuIHlvdSBjYW5ub3QgbWFw
IGJvdGggb2YKPiA+IHRoZW0/IElzIHRoaXMgYSBoYXJkd2FyZSBBVFUgbGltaXRhdGlvbj8KPiAK
PiBUaGUgQ1BVIGFkZHJlc3NlcyBtYXBwZWQgYXJlICh1bmRlciBub3JtYWwgdXNlKSBhZGRyZXNz
ZXMgZnJvbSBvbmUgb2YgdGhlIDMyIDFNQgo+IG1lbW9yeSB3aW5kb3dzIHRoYXQgcGNpX2VwY19h
bGxvY19hZGRyKCkgd2lsbCBnaXZlIHVzLiBUbyBtYXAgYSBtZW1vcnkgd2luZG93Cj4gYWRkcmVz
cywgd2UgdXNlIHRoZSBBVFUgZW50cnkgYXQgdGhlIGluZGV4IGdpdmVuIGJ5Ogo+IAo+IHN0YXRp
YyBpbmxpbmUgdTMyIHJvY2tjaGlwX29iX3JlZ2lvbihwaHlzX2FkZHJfdCBhZGRyKQo+IHsKPiAg
ICAgICAgIHJldHVybiAoYWRkciA+PiBpbG9nMihTWl8xTSkpICYgMHgxZjsKPiB9Cj4gCj4gU28g
ZWFjaCBtZW1vcnkgd2luZG93IGFsd2F5cyB1c2UgdGhlIHNhbWUgQVRVIGVudHJ5IGFuZCBhZGRy
ZXNzZXMgZnJvbSBkaWZmZXJlbnQKPiB3aW5kb3dzIGNhbm5vdCB1c2UgdGhlIHNhbWUgZW50cnks
IGV2ZXIuCj4gCj4gQnV0IGlmIHRoZXJlIGlzIGEgYnVnIGluIHRoZSBlbmRwb2ludCBkcml2ZXIg
YW5kIG1hcCgpIG9yIHVubWFwKCkgYXJlIGNhbGxlZAo+IHdpdGggYW4gaW52YWxpZCBhZGRyZXNz
IChlLmcuIG9uZSB0aGF0IGlzIG5vdCBmcm9tIGEgbWVtb3J5IHdpbmRvdyksIHdlIHdpbGwKPiBz
dGlsbCBnZXQgYSB2YWxpZCBBVFUgZW50cnkgbnVtYmVyIGZvciB0aGF0IGFkZHJlc3MuIEhlbmNl
IHRoZSBjaGVjayB0aGF0IHRoZQo+IGFkZHJlc3MgcGFzc2VkIHRvIHVubWFwIGlzIHRoZSBvbmUg
dGhhdCBpcyBhY3R1YWxseSBtYXBwZWQsIGFuZCBhbHNvIHdoeSB3ZQo+IGNoZWNrIHRoYXQgdGhl
IGVudHJ5IGZvciBhbiBhZGRyZXNzIHRvIG1hcCBpcyBub3QgYmVpbmcgdXNlZC4KPiAKPiA+IEFs
c28gcm9ja2NoaXBfcGNpZV9wcm9nX2VwX29iX2F0dSgpIGlzIG5vdCB0YWtpbmcgaW50byBhY2Nv
dW50IG9mIHRoZSBjcHVfYWRkci4KPiA+IFNvIEknbSBub3Qgc3VyZSBob3cgdGhlIG1hcHBpbmcg
aGFwcGVucyBlaXRoZXIuCj4gCj4gRWFjaCBBVFUgZW50cnkgaXMgZm9yIHRoZSBjb3JyZXNwb25k
aW5nIG1lbW9yeSB3aW5kb3cgYXQgdGhlIHNhbWUgaW5kZXggaW4gdGhlCj4gY29udHJvbGxlciBt
ZW1vcnkuIFNvIHRoZSBjcHUgYWRkcmVzcyBpcyBub3QgbmVlZGVkIHdoZW4gcHJvZ3JhbW1pbmcg
dGhlIEFUVSBhcwo+IGl0IGlzIGltcGxpZWQgZnJvbSB0aGUgZW50cnkgd2UgYXJlIHByb2dyYW1t
aW5nLgo+IAoKQWggb2theSwgdGhhbmtzIGEgbG90IGZvciB0aGUgZXhwbGFuYXRpb24uCgo+IFNv
IHdlIGNvdWxkIHJlbW92ZSB0aGUgY3B1X2FkZHIgYXJndW1lbnQgb2YgdGhpcyBmdW5jdGlvbi4K
PiAKCnllYWgsIGFuZCBtYXkgYmUgYSBjb21tZW50IHdvdWxkIGFsc28gaGVscC4KCj4gSSBhbHNv
IHN1c3BlY3QgdGhhdCB3ZSBwb3RlbnRpYWxseSBjb3VsZCBwbGF5IGdhbWVzIHdpdGggdGhlIC5h
bGlnbl9hZGRyKCkgdG8KPiBhc3N1bWUgYSBmaXhlZCAxTUIgYWxpZ25tZW50IGNvbnN0cmFpbnQg
Zm9yIGEgUENJIGFkZHJlc3MgbWFwcGluZyBhbmQgYWx3YXlzCj4gcGFzcyAyMCB0byB0aGUgbnVt
X2JpdHMgZmllbGQgb2YgdGhlIEFERFIwIHJlZ2lzdGVyLiBIb3dldmVyLCBJIGhhdmUgbm90IHRy
aWVkIHRoYXQuCj4gCgpPayEKCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCv
jSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
