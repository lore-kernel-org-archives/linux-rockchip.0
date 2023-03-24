Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFA26C6FD20
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 13:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Re/QDEQgoPcdbjvWxjIakBevB+nEQ416UKS97qMgAYM=; b=OCDpoLRaCdyzja
	WAM6DELEUdRZBqyTPHF89eQR5QGu4M68qzxwCNOREZ0/dnZhQnm72tP4N3Bn6dFMGDSifMVQb6JvD
	TOmxNjEdCuuANwNQd4Q2QXiHyGcZC/R1MTQuurw/yeUJ//69Fx5DKGwKgbiDtmTwYsP9WlKjdBv2Z
	ME9lmjb35Ib2FRP0suJXaXEWLqOAMtk95iVPe5ZWitYKixiSxFwL695InKqMK8JUDSesytTSxMb9D
	/rOhXdUnUOVIhV2A1G+uxaTocBDND8/gKE/KrRPMCQ0+o7tUwvnkRi4ygG0ypvyt8B+xMcI85kJ4F
	PVfZSrywVS0pyoZIGBsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfhW3-004V3d-2J;
	Fri, 24 Mar 2023 13:31:35 +0000
Received: from mga11.intel.com ([192.55.52.93])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfhVy-004V0R-2w;
	Fri, 24 Mar 2023 13:31:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679664690; x=1711200690;
  h=message-id:date:mime-version:cc:subject:to:references:
   from:in-reply-to:content-transfer-encoding;
  bh=/EaCGOcI70PVNsBUwHcXREhGFKrzM8ZBTlBxP/TaU2M=;
  b=QT7ZRW3UUzbJsAGwLk0V9D3x/T2PJvojL9YhQJ31h5FbO1aKjup1Fz73
   CEO2BjveMzUHVjUQiUMSZvwfdrtxni6cznG68Nrlrs82ZGDkf50Njq/iP
   QKppZWazOkvLp2lb4zI2VKb1426hrFoKHIz8MW7AjWL8w8KxqEXeCeXsO
   3Jz5bPtl3U9j5byCLN835oeG1WxgYHpTgJgFrUyNwagja8wPOwtKvXAgx
   jv8lGWurr8Quq1W8pSnp626LnD4J0opWhvBOjTiRI35IK9Gj73T6+L1PX
   BsU6sEPh9m67euFm/XICBIyouTZ6S0E6lAj/rt0M9yfNtuV6fxzH5H6A9
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="337279736"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; 
   d="scan'208";a="337279736"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2023 06:31:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="1012247751"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; 
   d="scan'208";a="1012247751"
Received: from blu2-mobl.ccr.corp.intel.com (HELO [10.254.215.177]) ([10.254.215.177])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2023 06:31:13 -0700
Message-ID: <b5a4a200-e988-99b4-2efc-9dae3a1cb97a@linux.intel.com>
Date: Fri, 24 Mar 2023 21:31:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Cc: baolu.lu@linux.intel.com, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, iommu@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] iommu/rockchip: Add missing set_platform_dma_ops
 callback
Content-Language: en-US
To: Steven Price <steven.price@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Joerg Roedel <joro@8bytes.org>, Jason Gunthorpe <jgg@ziepe.ca>
References: <20230324111127.221640-1-steven.price@arm.com>
 <8fda817c-98e7-1988-325d-52d09f3e61a8@linux.intel.com>
 <859ef16c-bf31-78f2-f3df-cf0ff9493b3c@arm.com>
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <859ef16c-bf31-78f2-f3df-cf0ff9493b3c@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_063130_976381_43E7BC78 
X-CRM114-Status: GOOD (  17.65  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMy8zLzI0IDIxOjI0LCBTdGV2ZW4gUHJpY2Ugd3JvdGU6Cj4gT24gMjQvMDMvMjAyMyAx
MzoxNiwgQmFvbHUgTHUgd3JvdGU6Cj4+IE9uIDIwMjMvMy8yNCAxOToxMSwgU3RldmVuIFByaWNl
IHdyb3RlOgo+Pj4gU2ltaWxhciB0byBleHlub3MsIHdlIG5lZWQgYSBzZXRfcGxhdGZvcm1fZG1h
X29wcygpIGNhbGxiYWNrIGZvciBwcm9wZXIKPj4+IG9wZXJhdGlvbiBvbiBBUk0gMzIgYml0IGFm
dGVyIHJlY2VudCBjaGFuZ2VzIGluIHRoZSBJT01NVSBmcmFtZXdvcmsKPj4+IChkZXRhY2ggb3Bz
IHJlbW92YWwpLiBCdXQgYWxzbyB0aGUgdXNlIG9mIGEgTlVMTCBkb21haW4gaXMgY29uZnVzaW5n
Lgo+Pj4KPj4+IFJld29yayB0aGUgY29kZSB0byBoYXZlIGEgc2luZ2xldG9uIHJrX2lkZW50aXR5
X2RvbWFpbiB3aGljaCBpcyBhc3NpZ25lZAo+Pj4gdG8gZG9tYWluIHdoZW4gdXNpbmcgYW4gaWRl
bnRpdHkgbWFwcGluZyByYXRoZXIgdGhhbiAiZGV0YWNoaW5nIi4gVGhpcwo+Pj4gbWFrZXMgdGhl
IGNvZGUgZWFzaWVyIHRvIHJlYXNvbiBhYm91dC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBTdGV2
ZW4gUHJpY2U8c3RldmVuLnByaWNlQGFybS5jb20+Cj4+PiAtLS0KPj4+IENoYW5nZXMgc2luY2Ug
djFbMV06Cj4+Pgo+Pj4gIMKgICogUmV3b3JrZWQgdGhlIGNvZGUgdG8gYXZvaWQgYSBOVUxMIGRv
bWFpbiwgaW5zdGVhZCBhIHNpbmdsZXRvbgo+Pj4gIMKgwqDCoCBya19pZGVudGl0eV9kb21haW4g
aXMgdXNlZCBpbnN0ZWFkLiBUaGUgJ2RldGFjaCcgbGFuZ3VhZ2UgaXMgbm8KPj4+ICDCoMKgwqAg
bG9uZ2VyIHVzZWQuCj4+Pgo+Pj4gWzFdCj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIw
MjMwMzE1MTY0MTUyLjMzMzI1MS0xLXN0ZXZlbi5wcmljZSU0MGFybS5jb20KPj4+Cj4+PiAgwqAg
ZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jIHwgNTAgKysrKysrKysrKysrKysrKysrKysr
KysrKystLS0tLS0tLQo+Pj4gIMKgIDEgZmlsZSBjaGFuZ2VkLCAzOSBpbnNlcnRpb25zKCspLCAx
MSBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9yb2NrY2hp
cC1pb21tdS5jCj4+PiBiL2RyaXZlcnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUuYwo+Pj4gaW5kZXgg
ZjMwZGIyMmVhNWQ3Li40Mzc1NDEwMDQ5OTQgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2lvbW11
L3JvY2tjaGlwLWlvbW11LmMKPj4+ICsrKyBiL2RyaXZlcnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUu
Ywo+Pj4gQEAgLTEyNCw2ICsxMjQsNyBAQCBzdHJ1Y3QgcmtfaW9tbXVkYXRhIHsKPj4+ICDCoCDC
oCBzdGF0aWMgc3RydWN0IGRldmljZSAqZG1hX2RldjsKPj4+ICDCoCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IHJrX2lvbW11X29wcyAqcmtfb3BzOwo+Pj4gK3N0YXRpYyBzdHJ1Y3QgaW9tbXVfZG9tYWlu
IHJrX2lkZW50aXR5X2RvbWFpbjsKPj4+ICDCoCDCoCBzdGF0aWMgaW5saW5lIHZvaWQgcmtfdGFi
bGVfZmx1c2goc3RydWN0IHJrX2lvbW11X2RvbWFpbiAqZG9tLAo+Pj4gZG1hX2FkZHJfdCBkbWEs
Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdW5zaWduZWQgaW50
IGNvdW50KQo+Pj4gQEAgLTk4MCwyNiArOTgxLDI3IEBAIHN0YXRpYyBpbnQgcmtfaW9tbXVfZW5h
YmxlKHN0cnVjdCBya19pb21tdSAqaW9tbXUpCj4+PiAgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+
Pj4gIMKgIH0KPj4+ICDCoCAtc3RhdGljIHZvaWQgcmtfaW9tbXVfZGV0YWNoX2RldmljZShzdHJ1
Y3QgaW9tbXVfZG9tYWluICpkb21haW4sCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHN0cnVjdCBkZXZpY2UgKmRldikKPj4+ICtzdGF0aWMgaW50IHJrX2lvbW11X2lk
ZW50aXR5X2F0dGFjaChzdHJ1Y3QgaW9tbXVfZG9tYWluCj4+PiAqaWRlbnRpdHlfZG9tYWluLAo+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkZXZpY2Ug
KmRldikKPj4+ICDCoCB7Cj4+PiAgwqDCoMKgwqDCoCBzdHJ1Y3QgcmtfaW9tbXUgKmlvbW11Owo+
Pj4gLcKgwqDCoCBzdHJ1Y3QgcmtfaW9tbXVfZG9tYWluICpya19kb21haW4gPSB0b19ya19kb21h
aW4oZG9tYWluKTsKPj4+ICvCoMKgwqAgc3RydWN0IHJrX2lvbW11X2RvbWFpbiAqcmtfZG9tYWlu
Owo+Pj4gIMKgwqDCoMKgwqAgdW5zaWduZWQgbG9uZyBmbGFnczsKPj4+ICDCoMKgwqDCoMKgIGlu
dCByZXQ7Cj4+PiAgwqAgwqDCoMKgwqDCoCAvKiBBbGxvdyAndmlydHVhbCBkZXZpY2VzJyAoZWcg
ZHJtKSB0byBkZXRhY2ggZnJvbSBkb21haW4gKi8KPj4+ICDCoMKgwqDCoMKgIGlvbW11ID0gcmtf
aW9tbXVfZnJvbV9kZXYoZGV2KTsKPj4+ICDCoMKgwqDCoMKgIGlmICghaW9tbXUpCj4+PiAtwqDC
oMKgwqDCoMKgwqAgcmV0dXJuOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5PREVWOwo+
Pj4gKwo+Pj4gK8KgwqDCoCBya19kb21haW4gPSB0b19ya19kb21haW4oaW9tbXUtPmRvbWFpbik7
Cj4+PiAgwqAgwqDCoMKgwqDCoCBkZXZfZGJnKGRldiwgIkRldGFjaGluZyBmcm9tIGlvbW11IGRv
bWFpblxuIik7Cj4+PiAgwqAgLcKgwqDCoCAvKiBpb21tdSBhbHJlYWR5IGRldGFjaGVkICovCj4+
PiAtwqDCoMKgIGlmIChpb21tdS0+ZG9tYWluICE9IGRvbWFpbikKPj4+IC3CoMKgwqDCoMKgwqDC
oCByZXR1cm47Cj4+PiArwqDCoMKgIGlmIChpb21tdS0+ZG9tYWluID09IGlkZW50aXR5X2RvbWFp
bikKPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4+ICDCoCAtwqDCoMKgIGlvbW11LT5k
b21haW4gPSBOVUxMOwo+Pj4gK8KgwqDCoCBpb21tdS0+ZG9tYWluID0gaWRlbnRpdHlfZG9tYWlu
Owo+PiBXaGVyZSBkaWQgaWRlbnRpdHlfZG9tYWluIGNvbWUgZnJvbT8gSXMgaXQgcmtfaWRlbnRp
dHlfZG9tYWluPwo+IEl0J3MgYSBwYXJhbWV0ZXIgb2YgdGhlIGZ1bmN0aW9uLiBJbiB0aGUgY2Fz
ZSBvZiB0aGUgY2FsbCBpbgo+IHJrX2lvbW11X2F0dGFjaF9kZXZpY2UoKSB0aGVuLCB5ZXMsIGl0
J3MgcmtfaWRlbnRpdHlfZG9tYWluLiBCdXQgdGhpcwo+IGZ1bmN0aW9uIGlzIGFsc28gdGhlICJh
dHRhY2hfZGV2IiBjYWxsYmFjayBvZiAicmtfaWRlbnRpdHlfb3BzIi4KPiAKPiBJJ2xsIGFkbWl0
IHRoaXMgaXMgY2FyZ28tY3VsdGVkIGZyb20gSmFzb24ncyBleGFtcGxlOgo+IAo+IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2xpbnV4LWlvbW11L1pCbmVmN2c3R0N4b2dQTnpAemllcGUuY2EvCgpP
aCEgSSBvdmVybG9va2VkIHRoYXQuIFRoYW5rIHlvdSBmb3IgdGhlIGV4cGxhbmF0aW9uLgoKQmVz
dCByZWdhcmRzLApiYW9sdQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
