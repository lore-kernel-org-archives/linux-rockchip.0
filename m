Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E06DC52D73
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 17:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EcmcnRW767bbQ+2Nbmr/+QIkDKVrmwmhhQgRjJGmMRE=; b=l4h6QQzU+Goo78
	TK/+dQaV703QWMgT8052ycJGf/uG4nKLeyIvg5oAogUBporoN1kLcvGhFnxZfnZ4c8A2QmPH2ZTOB
	2xSrs4oVQ5f/rC7pNYurjxc1DF77pPFmXlohQAcfxaC7MbHYavfnCiIMN7z6q/hpY6nTtG8w9k887
	8Cq3okjyHoJDszkbywaFs4ZwZLYZAA3WXTcSGdzyPupP/xrT8Ev0/TpNcPGUwsDw1e9o+lnSotWAK
	rSV0eX+SMbDgDbyCieVE85U6RiEsdPJA0yW9X0A2vMUvZVlkDoeVILpb3Vqp1khsDzXeVgO4X1MRl
	tgEt879KIjZOO14caWRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbk2v-00000005lsQ-0s9r;
	Wed, 07 Aug 2024 17:01:57 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbk1Q-00000005lQc-0JgI
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Aug 2024 17:00:26 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1fc49c0aaffso1239895ad.3
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Aug 2024 10:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723050023; x=1723654823; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WWwBbhcDkvNaxUygLQVH/xx2sd0hR+vnAl1kEVRw/lA=;
        b=YPAlmLENmbncWWFJRp2ufySwRe2SzyFKjjWih3Ut5SEgiZmyQs54ampGHita+RfZEU
         QsJiFz9Lh7q59Q+RcTeXFwowobnONxLvpknmn6/3sJHV5pRwpD1bkXIRQ8RMb/mI7Sn1
         TXz2VJCGOLZ4SgHAjcVONe0sjkiCaZXFNpH3ew7qdwCbX1HyURR4ptL1uRL2s0Hc7ArN
         6TagU6pDwExsTE/J08NbNfB4Yxb52iTOTlKI8Tlr5ydeON+vxcP0Bjl7bX9Srndzz2mE
         6PshSTt/kbg0t+vd07b4BYSYj0vwcBLJEDPxXJcdoXle/QFWGss7XzlXNoxVp2jWfqMV
         uoWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723050023; x=1723654823;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WWwBbhcDkvNaxUygLQVH/xx2sd0hR+vnAl1kEVRw/lA=;
        b=iqOGyGRwVfFWucI0KfhS7TVpYZ+eTrCRFnAVNiPZjcl2IAcV4GE2aSoO1rkZFavEGF
         pmyWN8OCstOWUB5a/tr+yNLvmk2K5TFFjGOaDFjHVF0igQmQGt+kN9+TnHJCjBtBc03k
         L2J7aHd8ySUj8oyUQkPFBg18Tcb3T89+Wdyn8tUThs+oER1jZHn7QTrogg0TZb1qKbNV
         XL+1HQqHjsWbmlp2zcTHKXeBgASiISACvUhHfumJnkjaeCnZpikiM83CnP9hBC0zlqrE
         KUTmpkMNiRCBiYcpyzf6wwG8AWDynO08BKRbYsnLcEkCRr5JEbDfyWJxizNok8feGgcD
         Q7fQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvVUiNtEhUE7AuRjMoNsVNMImfvQvR+nADSAfrdu4Fk5JEBB7XM5x9bBtC00kSp29Vkakz79BQDwJnIdznE6n11IMKsDKQtYpuCVLtk1ImFwG5
X-Gm-Message-State: AOJu0Yw4zBqffNLfX+KZDtz1rBWQOyUY0YUF44L9LC+BVyIjIkV4hKDC
	LqyehgXIfyixsvT0pggWNtUj/EAsn+3dRnWblHY6PJ7wG0/bYiViTe4++NXu3g==
X-Google-Smtp-Source: AGHT+IGQ8DPd+Wqtq+Spl5EDiAuVhLzByGSc7Am4v9rp+zU/4CqC8Aerp7AGU/R+/C2yss5AVMTF5w==
X-Received: by 2002:a17:903:1108:b0:1fd:9044:13d8 with SMTP id d9443c01a7336-1ff57257f52mr197895405ad.9.1723050022643;
        Wed, 07 Aug 2024 10:00:22 -0700 (PDT)
Received: from thinkpad ([120.60.60.211])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ff592ad9e4sm108304425ad.283.2024.08.07.10.00.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 10:00:21 -0700 (PDT)
Date: Wed, 7 Aug 2024 22:30:11 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH linu-next v1] PCI: dw-rockchip: Enable async probe by
 default
Message-ID: <20240807170011.GC5664@thinkpad>
References: <20240625155759.132878-1-linux.amoon@gmail.com>
 <20240807163106.GA101420@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240807163106.GA101420@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_100024_173167_036AA5FE 
X-CRM114-Status: GOOD (  27.68  )
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

T24gV2VkLCBBdWcgMDcsIDIwMjQgYXQgMTE6MzE6MDZBTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBUdWUsIEp1biAyNSwgMjAyNCBhdCAwOToyNzo1N1BNICswNTMwLCBBbmFuZCBN
b29uIHdyb3RlOgo+ID4gUm9ja2NoaXAgUENJZSBkcml2ZXIgbGV0cyB3YWl0cyBmb3IgdGhlIGNv
bWJvIFBIWSBsaW5rIGxpa2UgUENJZSAzLjAsCj4gPiBQQ0llIDIuMCBhbmQgU0FUQSAzLjAgY29u
dHJvbGxlciB0byBiZSB1cCBkdXJpbmcgdGhlIHByb2JlIHRoaXMKPiA+IGNvbnN1bWVzIHNldmVy
YWwgbWlsbGlzZWNvbmRzIGR1cmluZyBib290Lgo+IAo+IFRoaXMgbmVlZHMgc29tZSB3b3Jkc21p
dGhpbmcuICAiZHJpdmVyIGxldHMgd2FpdHMiIC4uLiBJIGd1ZXNzICJsZXRzIgo+IGlzIG5vdCBz
dXBwb3NlZCB0byBiZSB0aGVyZT8gIEknbSBub3Qgc3VyZSB3aGF0IHRoZSByZWxldmFuY2Ugb2Yg
IlBDSWUKPiAzLjAsIFBDSWUgMi4wLCBTQVRBIDMuMCIgaXMuICBJIGFzc3VtZSB0aGUgaG9zdCBj
b250cm9sbGVyIGRyaXZlcgo+IGRvZXNuJ3Qga25vdyB3aGF0IGRvd25zdHJlYW0gZGV2aWNlcyBt
aWdodCBiZSBwcmVzZW50LCBhbmQgdGhlIGFzeW5jCj4gcHJvYmluZyBpcyBkZXNpcmFibGUgbm8g
bWF0dGVyIHdoYXQgdGhleSBtaWdodCBiZT8KPiAKClNpbmNlIHRoZSBEV0MgZHJpdmVyIGlzIGVu
YWJsaW5nIGxpbmsgdHJhaW5pbmcgZHVyaW5nIGJvb3QsIGl0IGFsc28gd2FpdHMgZm9yCnRoZSBs
aW5rIHRvIGJlICd1cCcuIEJ1dCBpZiB0aGUgZGV2aWNlIGlzICd1cCcsIHRoZW4gdGhlIHdhaXQg
dGltZSB3b3VsZCBiZQp1c3VhbGx5IG5lZ2xpZ2libGUgKGZldyBtcykuIEJ1dCBpZiB0aGVyZSBp
cyBubyBkZXZpY2UsIHRoZW4gdGhlIHdhaXQgdGltZSBvZiAxcwp3b3VsZCBiZSBldmlkZW50LgoK
QnV0IGhlcmUgdGhlIHBhdGNoIGlzIHRyeWluZyB0byBhdm9pZCB0aGUgZmV3IG1zIGRlbGF5IGl0
c2VsZiAod2hpY2ggaXMgZmluZSkuClRoZSB0eXBlIG9mIGVuZHBvaW50IG1pZ2h0IGhhdmUgc29t
ZSBpbXBhY3Qgb24gdGhlIGxpbmsgdHJhaW5pbmcgYWxzby4gQnV0IGFzeW5jCnByb2JlIGlzIGFs
d2F5cyBwcmVmZXJyZWQuCgotIE1hbmkKCj4gPiBFc3RhYmxpc2hpbmcgYSBQQ0llIGxpbmsgY2Fu
IHRha2UgYSB3aGlsZTsgYWxsb3cgYXN5bmNocm9ub3VzIHByb2Jpbmcgc28KPiA+IHRoYXQgbGlu
ayBlc3RhYmxpc2htZW50IGNhbiBoYXBwZW4gaW4gdGhlIGJhY2tncm91bmQgd2hpbGUgb3RoZXIg
ZGV2aWNlcwo+ID4gYXJlIGJlaW5nIHByb2JlZC4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQW5h
bmQgTW9vbiA8bGludXguYW1vb25AZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9wY2kv
Y29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIHwgMSArCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiA+IGluZGV4IDYxYjFhY2JhNzE4Mi4uNzRhM2U5ZDE3MmEw
IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2Nr
Y2hpcC5jCj4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tj
aGlwLmMKPiA+IEBAIC0zNjcsNiArMzY3LDcgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2
ZXIgcm9ja2NoaXBfcGNpZV9kcml2ZXIgPSB7Cj4gPiAgCQkubmFtZQk9ICJyb2NrY2hpcC1kdy1w
Y2llIiwKPiA+ICAJCS5vZl9tYXRjaF90YWJsZSA9IHJvY2tjaGlwX3BjaWVfb2ZfbWF0Y2gsCj4g
PiAgCQkuc3VwcHJlc3NfYmluZF9hdHRycyA9IHRydWUsCj4gPiArCQkucHJvYmVfdHlwZSA9IFBS
T0JFX1BSRUZFUl9BU1lOQ0hST05PVVMsCj4gPiAgCX0sCj4gPiAgCS5wcm9iZSA9IHJvY2tjaGlw
X3BjaWVfcHJvYmUsCj4gPiAgfTsKPiA+IC0tIAo+ID4gMi40NC4wCj4gPiAKPiAKCi0tIArgrq7g
rqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
