Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 636D2CF2564
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 12:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cbz0oOdivmrpR4+QLdw+jyR1qT8EUsYOSGrxpHUWCMw=; b=5D9ohTpheo2DNM
	+rblAfjoOncuHhJ0vG8QQl/oAgOdWAqOHbbEkrAGQ5+nvF6W2YVJsF4BM+hYV+jdn+/e9fyP9i6qw
	qGfM8oiX8HejVwACrTttRyb0UbxudrTumzgRhUkfntPSZf+RPDEigMjqAIs1nnpSA2UjOmPPjphns
	EKl3IbnWZdYXePjm5RhG7MXXDbTv/FdTUJ3qhxjzutZa/xZhUBhjJUUkL/Ebzij1nKlR2ta5jB0wQ
	0rGt8B8WaSSVOIUh3Sg9LeB6GfEeuUuEtYnaw4jyH/HSCyXQV9x5ZkGo4NRuMYhdVSorrFQ9NpKJa
	Nj68KfKZT0XOgyVst8Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szb0g-00000001B2n-30w0;
	Sat, 12 Oct 2024 12:14:14 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szb0d-00000001B2F-2ZvH
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Oct 2024 12:14:12 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-20c77459558so22937585ad.0
        for <linux-rockchip@lists.infradead.org>; Sat, 12 Oct 2024 05:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728735250; x=1729340050; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t38TcG5DHWXhaxdB5UFRDh1sSLt3LCQC2tPNSunbgHo=;
        b=FAJaybtCTMobnrzcPljUwIQTpOVg8wU1+KHYq/p+F3v480+r08LtTLJbDEKsyhqOcl
         biL+tlba42A3X0GukRE/1VCNl2JMi0DP1nFdgGYbElmrDRdpp/AhSnEwP9UzcL2AWCO5
         QJgvrEy9RlBfFhqMY39RSM37jZZsFYF04K1kHbBw00/Gk/DxOL0pFw/AYefM89a7lbpz
         kGEOZo7mG3evb2l69twQJXV6RdTkuWDAA57rgJKQ6IEL7LvTeimQwcHXTe2YAj79s2hK
         H4zHzpItx9/0iSvvy5ooJOQCPFo2HkAe+S6V3ZbydJLVFNR/MsXR8sEHT6sUfnDIQo+X
         uCAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728735250; x=1729340050;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t38TcG5DHWXhaxdB5UFRDh1sSLt3LCQC2tPNSunbgHo=;
        b=O7UMYGP1TSAviHTTY0wjB+2RznjS1EMqw8Z/6V7H3ByZAEF6ZCJFIa3xXfxBTQBCXD
         UPiQjwI9mUVMYpbBRc6NGa/c+JXozbB5x+nefgezs72tFFGgwx0Z/8OfPs0suB/sg1L9
         vsE/AOyq7jJDLHh/HEnYIHdJ6EXg/1MleViXBETf6FcYS6x2LIjOssp2NTZjA1K4XoRQ
         Djux/FWP8ybH5uP+Ktz+w1K/CLrSRWS4+9rv6cUCNuhs+SRfdD/V/fywDlVaO/0hsBJd
         9KM1fj9g59cJSJqFEsm0QdFqmxCHjQOkyBTy0rz930dbBRHeRXWlfZkDdQVK+r9LjHH4
         aGYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWI0rScxHaYVJjpZUiWGqxOtkoYQEeFe192S+nEk4mKrtQ+kwLJiXJssJhwGpVIBn7lljeLIC93kqdDC9KpyA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwtYkt9EV7ep2VRmdm4UruOG5tHhFbgwW6oCbE+vKKTKdPfMCV3
	fQbMg2qEAYpfVw9Fl/+KepYsXIFwDCXh9bYqwk2zf8y81jLtVfxLFHfQgB87aQ==
X-Google-Smtp-Source: AGHT+IFexM2h9rQHv+tTErrWjYPW2e9T37ypCJmZzfTCy9kX0iKQlb2jscbpZ+mhGCMBDZ64x1owKg==
X-Received: by 2002:a17:902:f90b:b0:20c:9ecd:11c2 with SMTP id d9443c01a7336-20ca171118bmr50441875ad.55.1728735250364;
        Sat, 12 Oct 2024 05:14:10 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bc1a2bcsm36470295ad.99.2024.10.12.05.14.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 05:14:09 -0700 (PDT)
Date: Sat, 12 Oct 2024 17:44:04 +0530
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
Subject: Re: [PATCH v3 07/12] PCI: rockchip-ep: Refactor
 rockchip_pcie_ep_probe() MSI-X hiding
Message-ID: <20241012121404.tqqv5aj3ofp7zvb4@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-8-dlemoal@kernel.org>
 <20241010072512.f7e4kdqcfe5okcvg@thinkpad>
 <20241010080956.z3cw2mxxlgrjafhs@thinkpad>
 <bafe2763-8aac-4051-a2d2-d94a0deae04e@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bafe2763-8aac-4051-a2d2-d94a0deae04e@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_051411_680732_929CAC63 
X-CRM114-Status: GOOD (  19.99  )
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

T24gRnJpLCBPY3QgMTEsIDIwMjQgYXQgMDU6MzA6MDBQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gT24gMTAvMTAvMjQgMTc6MDksIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToK
PiA+IE9uIFRodSwgT2N0IDEwLCAyMDI0IGF0IDEyOjU1OjEyUE0gKzA1MzAsIE1hbml2YW5uYW4g
U2FkaGFzaXZhbSB3cm90ZToKPiA+PiBPbiBNb24sIE9jdCAwNywgMjAyNCBhdCAwMToxMjoxM1BN
ICswOTAwLCBEYW1pZW4gTGUgTW9hbCB3cm90ZToKPiA+Pj4gTW92ZSB0aGUgY29kZSBpbiByb2Nr
Y2hpcF9wY2llX2VwX3Byb2JlKCkgdG8gaGlkZSB0aGUgTVNJLVggY2FwYWJpbGl0eQo+ID4+PiB0
byBpdHMgb3duIGZ1bmN0aW9uLCByb2NrY2hpcF9wY2llX2VwX2hpZGVfbXNpeF9jYXAoKS4gTm8g
ZnVuY3Rpb25hbAo+ID4+PiBjaGFuZ2VzLgo+ID4+Pgo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBEYW1p
ZW4gTGUgTW9hbCA8ZGxlbW9hbEBrZXJuZWwub3JnPgo+ID4+Cj4gPj4gUmV2aWV3ZWQtYnk6IE1h
bml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4g
Pj4KPiA+PiBCdHcsIGNhbiBzb21lb25lIGZyb20gUm9ja2NoaXAgY29uZmlybSBpZiB0aGlzIGhp
ZGluZyBpcyBuZWNlc3NhcnkgZm9yIGFsbCB0aGUKPiA+PiBTb0NzPyBJdCBsb29rcyB0byBtZSBs
aWtlIGFuIFNvQyBxdWlyay4KPiA+Pgo+ID4+IC0gTWFuaQo+ID4+Cj4gPj4+IC0tLQo+ID4+PiAg
ZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMgfCA1NCArKysrKysrKysr
KysrLS0tLS0tLS0tLQo+ID4+PiAgMSBmaWxlIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDI0
IGRlbGV0aW9ucygtKQo+ID4+Pgo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJv
bGxlci9wY2llLXJvY2tjaGlwLWVwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9j
a2NoaXAtZXAuYwo+ID4+PiBpbmRleCA1MjNlOWNkZmQyNDEuLjdhMTc5OGZjYzJhZCAxMDA2NDQK
PiA+Pj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMKPiA+
Pj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMKPiA+Pj4g
QEAgLTU4MSw2ICs1ODEsMzQgQEAgc3RhdGljIHZvaWQgcm9ja2NoaXBfcGNpZV9lcF9yZWxlYXNl
X3Jlc291cmNlcyhzdHJ1Y3Qgcm9ja2NoaXBfcGNpZV9lcCAqZXApCj4gPj4+ICAJcGNpX2VwY19t
ZW1fZXhpdChlcC0+ZXBjKTsKPiA+Pj4gIH0KPiA+Pj4gIAo+ID4+PiArc3RhdGljIHZvaWQgcm9j
a2NoaXBfcGNpZV9lcF9oaWRlX21zaXhfY2FwKHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hp
cCkKPiA+IAo+ID4gUGVyaGFwcyBhIGJldHRlciBuYW1lIHdvdWxkIGJlIHJvY2tjaGlwX3BjaWVf
ZGlzYWJsZV9icm9rZW5fbXNpeCgpPyBBcyB0aGUKPiA+IGZ1bmN0aW9uIGVzc2VudGlhbGx5IGRp
c2FibGVzIE1TSXggd2hpY2ggaXMgYnJva2VuLiBBZ2FpbiwgaXQnZCBiZSBnb29kIHRvIGtub3cK
PiA+IGlmIHRoaXMgYXBwbGllcyB0byBhbGwgU29DcyBvciBqdXN0IGEgZmV3Lgo+IAo+IFRoZSBm
dW5jdGlvbiBkb2VzIG5vdCBkaXNhYmxlIGFueXRoaW5nIGJ1dCAqcmVhbGx5KiBzaW1wbHkgaGlk
ZXMgdGhlIGNhcGFiaWxpdHkKPiBpbiB0aGUgY2FwYWJpbGl0eSBsaXN0IHNvIHRoYXQgdGhlIGhv
c3QgZG9lcyBub3Qgc2VlIGl0LiBTbyBJIHRoaW5rIHRoZSBiZXR0ZXIKPiBuYW1lIGlzOgo+IAo+
IHJvY2tjaGlwX3BjaWVfZXBfaGlkZV9icm9rZW5fbXNpeF9jYXAoKQoKU291bmRzIGdvb2QgdG8g
bWUuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a
4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
