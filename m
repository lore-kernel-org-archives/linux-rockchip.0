Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD3E4CA5FD7
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 14:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2pZZTeROjGUVU/pjON/suI1XCXk3xSe13wDG9XhRoY=; b=TnDUAsXT43WiR5
	9vC9dViFK2puiPvlrAGDOV0iIp/5I0VCnw8uO5pBEMz/xBwJdcxrqcbzeKiDPUJG6kKo2DBRdVgPw
	VQ5EApA4397uiIymwVMFm4Yef9X7byW+LPZmoDlK1mKW5qgKMBtb4JSMJhlzHj5CQvlZeUkd5zzNE
	v3n3Mora7t3plDG30JGUTozWfv9S0OwE5DStqRP9MhUTMF71NKyykvHSubs+98BrDh9+nC2Bi3L9z
	HELH3LbdDDkJBm/dt/vH6qX73SEvqFBPixcGWfWQXiAwWk1uptJ2qqEqX6ObwNuIdm69MZKPtSLmp
	zNQbERTtnvd23wl5rQtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viYx9-00000005ZSl-3VOt;
	Wed, 21 Jan 2026 14:12:59 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viYx8-00000005ZS3-0v6c
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jan 2026 14:12:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 43B30600AE;
	Wed, 21 Jan 2026 14:12:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96CF8C116D0;
	Wed, 21 Jan 2026 14:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769004777;
	bh=6kktsMAIgzuppPfg+esgkLdDxkG9DSNPa9v/4DbGfoI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HoZKSiI5sPvIK6dF7Xv3OPSskgpei2RJZfagCweLCO77aK3wmniw1s7UUH6dsFmKO
	 e7FAEf2XMMXkdkBAaJ8qU2NyjjMWy4YV/RFGJolWS6L2UMyz25dJencETKsNrmMo90
	 ODWDzeG735D+TrVU9NWfaNHyq3EiJRkQQJeIu/7zWxLmDr1iw8bCpNjFgmrra1eRIu
	 Hodbu0M9O8ANkGQ0F0ThoLrfE3F9AwkrZkZO4hwxvwXMhaUxYcqQS17WlfLclBuzOH
	 I9S2vWqPq2omPpZSgv/NjHqX6T/I4hrShWuZ9kbdATAtOh51RgXzkdDL8eLkG4A268
	 tY4lMlDddQI6g==
Date: Wed, 21 Jan 2026 19:42:44 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, 
	Jingoo Han <jingoohan1@gmail.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dwc: Remove duplicate
 dw_pcie_ep_hide_ext_capability() function
Message-ID: <z4drma35p6e7vjj36ilg3rkqebjl42c7iawg5dewfkpagxhx4w@fvw4jgbxcfso>
References: <20251224-remove_dw_pcie_ep_hide_ext_capability-v1-1-4302c9cdc316@oss.qualcomm.com>
 <aVPgL2AuAMpx76pI@ryzen>
 <aXCmuFA8JwmRofis@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aXCmuFA8JwmRofis@ryzen>
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

T24gV2VkLCBKYW4gMjEsIDIwMjYgYXQgMTE6MTM6MTJBTSArMDEwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBPbiBUdWUsIERlYyAzMCwgMjAyNSBhdCAwMzoyMjozOVBNICswMTAwLCBOaWtsYXMg
Q2Fzc2VsIHdyb3RlOgo+ID4gSGVsbG8gUWlhbmcgWXUsCj4gPiAKPiA+IE9uIFdlZCwgRGVjIDI0
LCAyMDI1IGF0IDAyOjEwOjQ2QU0gLTA4MDAsIFFpYW5nIFl1IHdyb3RlOgo+ID4gPiBSZW1vdmUg
ZHdfcGNpZV9lcF9oaWRlX2V4dF9jYXBhYmlsaXR5KCkgYW5kIHJlcGxhY2UgaXRzIHVzYWdlIHdp
dGgKPiA+ID4gZHdfcGNpZV9yZW1vdmVfZXh0X2NhcGFiaWxpdHkoKS4gQm90aCBmdW5jdGlvbnMg
c2VydmUgdGhlIHNhbWUgcHVycG9zZQo+ID4gPiBvZiBoaWRpbmcgUENJZSBleHRlbmRlZCBjYXBh
YmlsaXRpZXMsIGJ1dCBkd19wY2llX3JlbW92ZV9leHRfY2FwYWJpbGl0eSgpCj4gPiA+IHByb3Zp
ZGVzIGEgY2xlYW5lciBBUEkgdGhhdCBkb2Vzbid0IHJlcXVpcmUgdGhlIGNhbGxlciB0byBzcGVj
aWZ5IHRoZQo+ID4gPiBwcmV2aW91cyBjYXBhYmlsaXR5IElELgo+ID4gPiAKPiA+ID4gQ29tcGls
ZS10ZXN0ZWQgb25seS4gUnVudGltZSB0ZXN0aW5nIG9uIFJLMzU4OCBoYXJkd2FyZSB3b3VsZCBi
ZQo+ID4gPiBhcHByZWNpYXRlZC4KPiA+IAo+ID4gVGhpcyBwYXRjaCBkb2VzIG5vdCBhcHB5IG9u
IHRvcCBvZiBwY2kvY29udHJvbGxlci9kd2MKPiA+IAo+ID4gQW55d2F5LCBJIGFwcGxpZWQgaXQg
bWFudWFsbHksIGFuZCB0ZXN0ZWQsIHRodXM6Cj4gPiBUZXN0ZWQtYnk6IE5pa2xhcyBDYXNzZWwg
PGNhc3NlbEBrZXJuZWwub3JnPgo+IAo+IEkganVzdCB0cmllZCB0byBhcHBseSB0aGlzIHBhdGNo
IGZvciBwY2kvY29udHJvbGxlci9kd2MgYW5kIHJpZ2h0IG5vdywKPiB0aGlzIHBhdGNoIGRvZXMg
YXBwbHkuCj4gCj4gTWFuaSwgYW55IGNoYW5jZSB0byBnZXQgdGhpcyBwaWNrZWQgdXA/Cj4gCgpR
aWFuZyB3YXMgc3VwcG9zZWQgdG8gc3VibWl0IGEgc2VyaWVzIGFkZHJlc3NpbmcgYSBmZXcgbW9y
ZSBpc3N1ZXMgcG9pbnRlZApieSBCam9ybi4gU2luY2UgeW91IHJlcG9ydGVkIHRoYXQgdGhpcyBw
YXRjaCBkaWRuJ3QgYXBwbHkgb24gdG9wIG9mCmNvbnRyb2xsZXIvZHdjLCBJIGRpZG4ndCBhcHBs
eSBpdC4KCkJ1dCBub3cgZGlkLCB0aGFua3MhCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPg
r43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
