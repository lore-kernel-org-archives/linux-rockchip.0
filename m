Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAAFFCCD1AB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 09:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GVC46GvTsBFA+vgWj9ANadbcXpDUy97bhJtCbdzzgN4=; b=dnWXEJLzHvbeFT
	RZA2MwFS4kVS48VD9Qzf1Q+D9XWuCmjHXgcoFBgKKLn12pjDioixTvceUggU0hcTihqt6B5PUuBER
	gZdsQmzDpbqiIEKskYk3OUp+5JQeFErgpacftVzYwFgyvi+HGbdNDZy4XtrnnMhKFsIhqUITMgVZ0
	toU2L3FmZLSjD12PfnJCwIKW2FGqCopa9/QU4SCePFJsvYM3vqH+Juf7wo+pK6Ak+cj/Ppt4a12+U
	5m5gGgoQWfI3dMaRYK08AdYpsIB3emo8d+KWMn3XKZUDpK0BhqS15pPKJlyYC/s9P11Yi2sBmNn2x
	wy+U9F9hzGxDrw//Z/2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBUyD-00000002Ecr-3wrr;
	Wed, 22 Oct 2025 09:17:25 +0000
Received: from mail-m3290.qiye.163.com ([220.197.32.90])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBUyA-00000002EaV-23te
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Oct 2025 09:17:24 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 26c9fe1ae;
	Wed, 22 Oct 2025 17:17:13 +0800 (GMT+08:00)
Message-ID: <a09f6f91-0ef5-4d4a-a5c5-47f1be8c8d16@rock-chips.com>
Date: Wed, 22 Oct 2025 17:17:12 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Heiko Stuebner <heiko@sntech.de>,
 Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, Thierry Reding <thierry.reding@gmail.com>,
 linux-rockchip@lists.infradead.org, Niklas Cassel <cassel@kernel.org>,
 linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/4] PCI: of: Add of_pci_clkreq_present()
To: Frank Li <Frank.li@nxp.com>
References: <1761032907-154829-1-git-send-email-shawn.lin@rock-chips.com>
 <1761032907-154829-2-git-send-email-shawn.lin@rock-chips.com>
 <aPex5YfxT+3dso2U@lizhi-Precision-Tower-5810>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <aPex5YfxT+3dso2U@lizhi-Precision-Tower-5810>
X-HM-Tid: 0a9a0b354d2009cckunm1b9f0e6e7d6219
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk0ZH1ZISUlPGEIfQ0oZTBhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=fhYFQRbHUxySyviOAobfM3APiSFTB/4MJE66kklQ93Lh9Od0H4nnTQDAs2ilRiL6gWazu7iALkA8E47kx1GhaLuOBpJre8QQjiJFhzpQSSrgvq7xuKQWGIE7JKTz03QY7evfQIr0AwUJAl86e3OLJuKW7QL0NAKknupJn1AT64s=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=loJRtAn9EJrDRUxd+4M8weJLoX8I792PVIqyUmM0rtI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_021723_163890_58F4C4CD 
X-CRM114-Status: GOOD (  16.69  )
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

5ZyoIDIwMjUvMTAvMjIg5pif5pyf5LiJIDA6MTYsIEZyYW5rIExpIOWGmemBkzoKPiBPbiBUdWUs
IE9jdCAyMSwgMjAyNSBhdCAwMzo0ODoyNFBNICswODAwLCBTaGF3biBMaW4gd3JvdGU6Cj4+IG9m
X3BjaV9jbGtyZXFfcHJlc2VudCgpIGlzIHVzZWQgYnkgaG9zdCBkcml2ZXJzIHRvIGRlY2lkZSB3
aGV0aGVyIHRoZSBjbGtyZXEjCj4+IGlzIHByb3Blcmx5IGNvbm5lY3RlZCBhbmQgY291bGQgZW5h
YmxlIEwxLjEvTDEuMiBzdXBwb3J0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNo
YXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9wY2kvb2YuYyAgfCAx
OCArKysrKysrKysrKysrKysrKysKPj4gICBkcml2ZXJzL3BjaS9wY2kuaCB8ICA2ICsrKysrKwo+
PiAgIDIgZmlsZXMgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9wY2kvb2YuYyBiL2RyaXZlcnMvcGNpL29mLmMKPj4gaW5kZXggMzU3OTI2NWYxMTk4
Li41MmM2ZDM2NTA4M2IgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGNpL29mLmMKPj4gKysrIGIv
ZHJpdmVycy9wY2kvb2YuYwo+PiBAQCAtMTAxMCwzICsxMDEwLDIxIEBAIGludCBvZl9wY2lfZ2V0
X2VxdWFsaXphdGlvbl9wcmVzZXRzKHN0cnVjdCBkZXZpY2UgKmRldiwKPj4gICAJcmV0dXJuIDA7
Cj4+ICAgfQo+PiAgIEVYUE9SVF9TWU1CT0xfR1BMKG9mX3BjaV9nZXRfZXF1YWxpemF0aW9uX3By
ZXNldHMpOwo+PiArCj4+ICsvKioKPj4gKyAqIG9mX3BjaV9jbGtyZXFfcHJlc2VudCgpIC0gQ2hl
Y2sgaWYgdGhlICJzdXBwb3J0cy1jbGtyZXEiIGlzIHByZXNlbnQKPj4gKyAqIEBucDogRGV2aWNl
IHRyZWUgbm9kZQo+PiArICoKPj4gKyAqIElmIHRoZSBwcm9wZXJ0eSBpcyBwcmVzZW50LCBpdCBt
ZWFucyBDTEtSRVEjIGlzIHByb3Blcmx5IGNvbm5lY3RlZAo+PiArICogYW5kIHRoZSBoYXJkd2Fy
ZSBpcyByZWFkeSB0byBzdXBwb3J0IEwxLjEvTDEuMgo+PiArICoKPj4gKyAqIFJldHVybjogdHJ1
ZSBpZiB0aGUgcHJvcGVydHkgaXMgYXZhaWxhYmxlLCBmYWxzZSBvdGhlcndpc2UuCj4+ICsgKi8K
Pj4gK2Jvb2wgb2ZfcGNpX2Nsa3JlcV9wcmVzZW50KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCj4+
ICt7Cj4+ICsJaWYgKCFucCkKPj4gKwkJcmV0dXJuIGZhbHNlOwo+PiArCj4+ICsJcmV0dXJuIG9m
X3Byb3BlcnR5X3ByZXNlbnQobnAsICJzdXBwb3J0cy1jbGtyZXEiKTsKPj4gK30KPj4gK0VYUE9S
VF9TWU1CT0xfR1BMKG9mX3BjaV9jbGtyZXFfcHJlc2VudCk7Cj4gCj4gVGhpcyBoZWxwZXIgZnVu
Y3Rpb24gaXMgcXVpdGUgc21hbGwuIEkgc3VnZ2VzdCBkaXJlY3QgcHV0IGlubGluZSBmdW5jdGlv
bgo+IGludG8gcGNpLmggdG8ga2VlcCBzaW1wbGUuCgpTb3VuZHMgcmVhc29uYWJsZSwgd2lsbCB3
YWl0IGZvciBvdGhlciBjb21tZW50cyBhbmQgZml4IHlvdXIgY29tbWVudAp0b2dldGhlciBpbiBW
Mi4KCj4gCj4gc3RhdGljIGlubGluZSBib29sIG9mX3BjaV9jbGtyZXFfcHJlc2VudChzdHJ1Y3Qg
ZGV2aWNlX25vZGUgKm5wKQo+IHsKPiAJcmV0dXJuIG5wICYmIG9mX3Byb3BlcnR5X3ByZXNlbnQo
bnAsICJzdXBwb3J0cy1jbGtyZXEiKTsKPiB9Cj4gCj4gRnJhbmsKPiAKPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGNpL3BjaS5oIGIvZHJpdmVycy9wY2kvcGNpLmgKPj4gaW5kZXggNDQ5MmI4MDkw
OTRiLi4yNDIxZTM5ZTZlNDggMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGNpL3BjaS5oCj4+ICsr
KyBiL2RyaXZlcnMvcGNpL3BjaS5oCj4+IEBAIC0xMDYxLDYgKzEwNjEsNyBAQCBib29sIG9mX3Bj
aV9zdXBwbHlfcHJlc2VudChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKTsKPj4gICBpbnQgb2ZfcGNp
X2dldF9lcXVhbGl6YXRpb25fcHJlc2V0cyhzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+ICAgCQkJCSAg
ICBzdHJ1Y3QgcGNpX2VxX3ByZXNldHMgKnByZXNldHMsCj4+ICAgCQkJCSAgICBpbnQgbnVtX2xh
bmVzKTsKPj4gK2Jvb2wgb2ZfcGNpX2Nsa3JlcV9wcmVzZW50KHN0cnVjdCBkZXZpY2Vfbm9kZSAq
bnApOwo+PiAgICNlbHNlCj4+ICAgc3RhdGljIGlubGluZSBpbnQKPj4gICBvZl9nZXRfcGNpX2Rv
bWFpbl9ucihzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUpCj4+IEBAIC0xMTA2LDYgKzExMDcsMTEg
QEAgc3RhdGljIGlubGluZSBib29sIG9mX3BjaV9zdXBwbHlfcHJlc2VudChzdHJ1Y3QgZGV2aWNl
X25vZGUgKm5wKQo+PiAgIAlyZXR1cm4gZmFsc2U7Cj4+ICAgfQo+Pgo+PiArc3RhdGljIGlubGlu
ZSBib29sIG9mX3BjaV9jbGtyZXFfcHJlc2VudChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQo+PiAr
ewo+PiArCXJldHVybiBmYWxzZTsKPj4gK30KPj4gKwo+PiAgIHN0YXRpYyBpbmxpbmUgaW50IG9m
X3BjaV9nZXRfZXF1YWxpemF0aW9uX3ByZXNldHMoc3RydWN0IGRldmljZSAqZGV2LAo+PiAgIAkJ
CQkJCSAgc3RydWN0IHBjaV9lcV9wcmVzZXRzICpwcmVzZXRzLAo+PiAgIAkJCQkJCSAgaW50IG51
bV9sYW5lcykKPj4gLS0KPj4gMi40My4wCj4+Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo+IAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
