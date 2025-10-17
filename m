Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1762CCD19A
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Oct 2025 09:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0V3YHrFfTtOep/bLlypPn0UT2N5YBg+S/6J2XYvCDU=; b=2VCRhKLo3MJg8U
	uhqlbq+p+QMq2uxtygmiRH37UNyJ8+pkTGXXJxy6xhytVGpZ3F0Dty9PzkIDiFpNH3Ux0I4VERUGm
	IqhSTiVFvOmzkLxajTGH4bfY5L3jdie9y78zfn9EpCmuTy5Fm9z2ufmiCKqf0ZhPpDJdQZoJ11DzM
	/32OunS9RWGow99H6y5uT/QdcKkJzCW6yruq9v8Ooi4jm3whJH03DHYZRxTu7VFie/8g+c6cWtaWh
	bWGOQAeAv+oGkRMdJgmdR2NQtZiyFRs1HXpKJM55WszJb9pQPeBOjmNsIqjs1irFeU+BxO0LiRyDM
	e5CLsK4ir+PDmnfh+aRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9h3y-00000007N3M-2ou3;
	Fri, 17 Oct 2025 09:47:54 +0000
Received: from mail-m21466.qiye.163.com ([117.135.214.66])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9h3v-00000007N2g-3HtC
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Oct 2025 09:47:53 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 264578e33;
	Fri, 17 Oct 2025 17:47:46 +0800 (GMT+08:00)
Message-ID: <0dd51970-a7ac-4500-b96f-d1e328e7a3b2@rock-chips.com>
Date: Fri, 17 Oct 2025 17:47:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Niklas Cassel <cassel@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 "David E. Box" <david.e.box@linux.intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Chia-Lin Kao <acelan.kao@canonical.com>, Dragan Simic <dsimic@manjaro.org>,
 linux-rockchip@lists.infradead.org, regressions@lists.linux.dev,
 FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v2 1/2] PCI/ASPM: Override the ASPM and Clock PM states
 set by BIOS for devicetree platforms
To: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
 Bjorn Helgaas <helgaas@kernel.org>
References: <7df0bf91-8ab1-4e76-83fa-841a4059c634@rock-chips.com>
 <20251015233054.GA961172@bhelgaas>
 <hwueivbm2taxwb2iowkvblzvdv2xqnsapx6lenv56vuz7ye6do@fugjdkoyk5gy>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <hwueivbm2taxwb2iowkvblzvdv2xqnsapx6lenv56vuz7ye6do@fugjdkoyk5gy>
X-HM-Tid: 0a99f191762b09cckunm3ad1505815a4fb
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx0aQlZITEwfS01OTRgYQ09WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Gbakgtf5juyxXLyjvNEBOoU2BvuKHnl3lmL3wESBLpY49996dwrkHEjjo9SGWwLvIF56Wsck8nli3slIooVAyKq9L+enHuUhC/q3KE9B1PuNWLmcdhnOjynCr1jz20j3T257xIWhvF/s1gJcoQBZZPpzm7az96HLHO564hDbcnw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=35XhCoKrmzdZQlHWnzUSGhfNFUZ/Pw4yplQ4NAHi5Ic=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_024752_092537_7188F67C 
X-CRM114-Status: GOOD (  32.17  )
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

SGkgTWFuaSBhbmQgQmpvcm4KCuWcqCAyMDI1LzEwLzE3IOaYn+acn+S6lCAxMTozNiwgTWFuaXZh
bm5hbiBTYWRoYXNpdmFtIOWGmemBkzoKPiBPbiBXZWQsIE9jdCAxNSwgMjAyNSBhdCAwNjozMDo1
NFBNIC0wNTAwLCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+PiBPbiBXZWQsIE9jdCAxNSwgMjAyNSBh
dCAwOTowMDo0MVBNICswODAwLCBTaGF3biBMaW4gd3JvdGU6Cj4+PiAuLi4KPj4KPj4+IEZvciBu
b3csIHRoaXMgaXMgYSBhY2NlcHRhYmxlIG9wdGlvbiBpZiBkZWZhdWx0IEFTUE0gcG9saWN5IGVu
YWJsZQo+Pj4gTDFzcyB3L28gY2hlY2tpbmcgaWYgdGhlIEhXIGNvdWxkIHN1cHBvcnRzIGl0Li4u
IEJ1dCBob3cgYWJvdXQKPj4+IGFkZGluZyBzdXBwb3J0cy1jbGtyZXEgc3R1ZmYgdG8gdXBzdHJl
YW0gaG9zdCBkcml2ZXIgZGlyZWN0bHk/IFRoYXQKPj4+IHdvdWxkIGhlbHAgZm9sa3MgZW5hYmxl
IEwxc3MgaWYgdGhlIEhXIGlzIHJlYWR5IGFuZCB0aGV5IGp1c3QgbmVlZAo+Pj4gYWRkaW5nIHBy
b3BlcnR5IHRvIHRoZSBEVC4KPj4+IC4uLgo+Pgo+Pj4gVGhlIEwxc3Mgc3VwcG9ydCBpcyBxdWl0
ZSBzdHJpY3QgYW5kIG5lZWQgc2V2ZXJhbCBzdGVwcyB0byBjaGVjaywgc28gd2UKPj4+IGRpZG4n
dCBhZGQgc3VwcG9ydHMtY2xrcmVxIGZvciB0aGVtIHVubGVzcyB0aGUgSFcgaXMgcmVhZHkgdG8g
Z28uLi4KPj4+Cj4+PiBGb3IgYWRkaW5nIHN1cHBvcnRzIG9mIEwxc3MsCj4+PiBbMV0gdGhlIEhX
IHNob3VsZCBzdXBwb3J0IENMS1JFUSMsIGV4cGVjaWFsbHkgZm9yIFBDSWUzLjAgY2FzZSBvbiBS
b2NrY2hpcAo+Pj4gU29DcyAsIHNpbmNlIGJvdGggIENMS1JFUSMgb2YgUkMgYW5kIEVQIHNob3Vs
ZCBjb25uZWN0IHRvIHRoZQo+Pj4gMTAwTUh6IGNyeXN0YWwgZ2VuZXJhdG9yJ3MgZW5hYmxlIHBp
biwgYXMgTDEuMiBuZWVkIHRvIGRpc2FibGUgcmVmY2xrIGFzCj4+PiB3ZWxsLiBJZiB0aGUgZW5h
YmxlIHBpbiBpcyBoaWdoIGFjdGl2ZSwgdGhlIEhXIGV2ZW4gbmVlZCBhIGludmVydG9yLi4uLgo+
Pj4KPj4+IFsyXSBkZWZpbmUgcHJvcGVyIGNsa3JlcSBpb211eCB0byBwaW5jdHJsIG9mIHBjaWUg
bm9kZQo+Pj4gWzNdIG1ha2Ugc3VyZSB0aGUgZGV2aWNlcyB3b3JrIGZpbmUgd2l0aCBMMXNzLihJ
dCdzIGhhcmQgdG8gY2hlY2sgdGhlIHNsb3QKPj4+IGNhc2Ugd2l0aCByYW5kb20gZGV2aWNlcyBp
biB0aGUgd2lsZCApCj4+PiBbNF0gYWRkIHN1cHBvcnRzLWNsa3JlcSB0byB0aGUgRFQgYW5kIGVu
YWJsZQo+Pj4gQ09ORklHX1BDSUVBU1BNX1BPV0VSX1NVUEVSU0FWRQo+Pgo+PiBJIGRvbid0IHVu
ZGVyc3RhbmQgdGhlIGRldGFpbHMgb2YgdGhlIHN1cHBvcnRzLWNsa3JlcSBpc3N1ZS4KPj4KPj4g
SWYgd2UgbmVlZCB0byBhZGQgc3VwcG9ydHMtY2xrcmVxIHRvIGRldmljZXRyZWUsIEkgd2FudCB0
byB1bmRlcnN0YW5kCj4+IHdoeSB3ZSBuZWVkIGl0IHRoZXJlIHdoZW4gd2UgZG9uJ3Qgc2VlbSB0
byBuZWVkIGl0IGZvciBBQ1BJIHN5c3RlbXMuCj4+Cj4+IEdlbmVyYWxseSB0aGUgT1MgcmVsaWVz
IG9uIHdoYXQgdGhlIGhhcmR3YXJlIGFkdmVydGlzZXMsIGUuZy4sIGluIExpbmsKPj4gQ2FwYWJp
bGl0aWVzIGFuZCB0aGUgTDEgUE0gU3Vic3RhdGVzIENhcGFiaWxpdHksIGFuZCB3aGF0IGlzIGF2
YWlsYWJsZQo+PiBmcm9tIGZpcm13YXJlLCBlLmcuLCB0aGUgQUNQSSBfRFNNIGZvciBMYXRlbmN5
IFRvbGVyYW5jZSBSZXBvcnRpbmcuCj4+Cj4+IE9uIHRoZSBBQ1BJIHNpZGUsIEkgZG9uJ3QgdGhp
bmsgd2UgZ2V0IGFueSBzcGVjaWZpYyBpbmZvcm1hdGlvbiBhYm91dAo+PiBDTEtSRVEjLiAgQ2Fu
IHNvbWVib2R5IGV4cGxhaW4gd2h5IHdlIGRvIG5lZWQgaXQgb24gdGhlIGRldmljZXRyZWUKPj4g
c2lkZT8KPj4KPiAKPiBJIHRoaW5rIHRoZXJlIGlzIGEgZGlzY29ubmVjdCBiZXR3ZWVuIGVuYWJs
aW5nIEwxc3MgQ0FQIGFuZCBDTEtSRVEjCj4gYXZhaWxhYmlsaXR5Li4gV2hlbiBMMXNzIENBUCBp
cyBlbmFibGVkIGZvciB0aGUgUm9vdCBQb3J0IGluIHRoZSBoYXJkd2FyZSwgdGhlcmUKPiBpcyBu
byBndWFyYW50ZWUgdGhhdCBDTEtSRVEjIGlzIGFsc28gYXZhaWxhYmxlLiBJZiBDTEtSRVEjIGlz
IG5vdCBhdmFpbGFibGUsCj4gdGhlbiBpZiBMMXNzIGlzIGVuYWJsZWQgYnkgdGhlIE9TLCBpdCBp
cyBub3QgcG9zc2libGUgdG8gZXhpdCB0aGUgTDFzcyBzdGF0ZXMKPiAoYXNzdW1pbmcgdGhhdCBM
MXNzIGlzIGVudGVyZWQgZHVlIHRvIENMS1JFUSMgaW4gZGVhc3NlcnQgKGRlZmF1bHQpIHN0YXRl
KS4KPiAKPiBZZXMsIHRoZXJlIHNlZW1zIHRvIGJlIG5vIHN0YW5kYXJkIHdheSB0byBrbm93IENM
S1JFUSMgcHJlc2VuY2UgaW4gQUNQSSwgYnV0Cj4gaW4gZGV2aWNldHJlZSwgd2UgaGF2ZSB0aGlz
ICdzdXBwb3J0cy1jbGtyZXEnIHByb3BlcnR5IHRvIHRlbGwgdGhlIE9TIHRoYXQKPiBDTEtSRVEj
IGlzIGF2YWlsYWJsZSBpbiB0aGUgcGxhdGZvcm0uIEJ1dCB1bmZvcnR1bmF0ZWx5LCB0aGlzIHBy
b3BlcnR5IGlzIG5vdAo+IHdpZGVseSB1c2VkIGJ5IHRoZSBkZXZpY2V0cmVlcyBvdXQgdGhlcmUu
IFNvIHdlIGNhbm5vdCB1c2UgaXQgaW4gZ2VuZXJpYwo+IHBjaS9hc3BtLmMgZHJpdmVyLgo+IAo+
IFdlIGNhbiBjZXJ0YWlubHkgcmVseSBvbiB0aGUgQklPUyB0byBlbmFibGUgTDFzcyBhcyB0aGUg
ZncgZGV2ZWxvcGVycyB3b3VsZAo+IGhhdmUgdGhlIGtub3dsZWRnZSBvZiB0aGUgQ0xLUkVRIyBh
dmFpbGFiaWxpdHkuIEJ1dCBCSU9TIGlzIG5vdCBhIHRoaW5nIG9uCj4gbW9iaWxlIGFuZCBlbWJl
ZGRlZCBwbGF0Zm9ybXMgd2hlcmUgTDFzcyB3b3VsZCBjb21lIGhhbmR5Lgo+IAo+IFdoYXQgSSB3
b3VsZCBzdWdnZXN0IGlzLCB0aGUgaG9zdCBjb250cm9sbGVyIGRyaXZlcnMgKG1vc3RseSBmb3Ig
ZGV2aWNldHJlZQo+IHBsYXRmb3Jtcykgc2hvdWxkIGVuYWJsZSBMMXNzIENBUCBmb3IgdGhlIFJv
b3QgUG9ydCBvbmx5IGlmIHRoZXkga25vdyB0aGF0Cj4gQ0xLUkVRIyBpcyBhdmFpbGFibGUuIFRo
ZXkgY2FuIGVpdGhlciByZWx5IG9uIHRoZSAnc3VwcG9ydHMtY2xrcmVxJyBwcm9wZXJ0eSBvcgo+
IHNvbWUgcGxhdGZvcm0gc3BlY2lmaWMga25vd2xlZGdlIChmb3IgaW5zdGFuY2UsIG9uIGFsbCBR
Y29tIHBsYXRmb3Jtcywgd2UKPiBjZXJ0YWlubHkga25vdyB0aGF0IENMS1JFUSMgaXMgYXZhaWxh
YmxlLCBidXQgd2UgZG9uJ3Qgc2V0IHRoZSBEVCBwcm9wZXJ0eSkuCgpXaGlsZSB3ZSdyZSBvbiB0
aGUgdG9waWMgb2YgQVNQTSwgbWF5IEkgYXNrIGEgc2lsbHkgcXVlc3Rpb24/Ckkgc2F3IHRoZSBB
U1BNIHdvdWxkIG9ubHkgYmUgY29uZmlndXJlZCBvbmNlIHRoZSBmdW5jdGlvbiBkcml2ZXIgY2Fs
bGluZwpwY2lfZW5hYmxlX2RldmljZS4gU28gaWYgdGhlIG1vZHVsYXIgZHJpdmVyIGhhc24ndCBi
ZWVuIGluc21vZGVkLCB0aGUKbGluayB3aWxsIGJlIGluIEwwIGV2ZW4gdGhvdWdoIHRoZXJlIGlz
IG5vIHRyYW5zY2F0aW9uIG9uLWdvaW5nLiBXaGF0IGlzCnRoZSBpbnRlbnRpb24gYmVoaW5kIGl0
PwoKPiAKPiBUaGVuIGluIHRoZSBnZW5lcmljIHBjaS9hc3BtLmMgZHJpdmVyLCB3ZSBjYW4ganVz
dCBlbmFibGUgTDFzcyBmb3IgYWxsIGRldmljZXMKPiBpZiB0aGUgQ0FQIGlzIHNldCwgd2hpY2gg
d2UgZG8gY3VycmVudGx5Lgo+IAo+IC0gTWFuaQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
