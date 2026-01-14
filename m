Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4557D31A1E
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 07:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RUUBzfgWHMwPRoWEf329xiUTV42tnju/rMxpwK34DD0=; b=dFy+n+AAzPkUFm
	gbFo89usrgslOuTN6AhS+OPD300FjXo+U2r51KF1hHvwzI3+R4VtYhuAOAn/01SavfenF81EtFsD7
	Ra5AYnzvM4ZySdABKgCmBySGmY44sQ9rx4P9ZWhrT4wOWUS/qp6Q8u6NwoXiRuioJXhX+UtRkq80/
	pJzqWXP+BqkPG72QqoOzH5dsvjlK1MdtTJouLal2qTooL7hf2RhIXvhEJPxdmarmwAnPLMXm4XH+7
	gA95iFYA0eV4oOE+Dkmlfr6PyQGzgfV/cqGvkrcaNcRX8wfNxIOEHTZW+jS2JZNbK+o7DCoXYFeFW
	/hhZerWJ9OG4Ch4fAebA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfvSY-00000008DIY-0G5M;
	Wed, 14 Jan 2026 07:38:30 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfvSW-00000008DIN-2K2C
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 07:38:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 764B960052;
	Wed, 14 Jan 2026 07:38:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F613C4CEF7;
	Wed, 14 Jan 2026 07:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768376307;
	bh=DBAsmbJAHNuxog3qas3P8iVDIEFBX6NDuJ+gFN9wX6U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fi88geW9t2FJFQNv7GWdZ9Bzad34KXwIfjBJhiFOgbs+AdbLinM/uWp1pgGqr5Vub
	 hjDxDUjoOrX/uVs1aLVDzsyVHmeWPPtnjgNs/4wPdIH8bmL4p2OuiRA85ZSSZMyVK2
	 4qzt+ryCjkrcAOqbStuSl2GdEZQ883LQKllS/vtpkzvHhoRglTrQa3VOfVLGy2sZT/
	 IuRPJUfMRrG6MLrSZLHiJTqgH4VS9J3i0SzRGefMLD6+BYlRuUlMWORovZlZ9S6Nys
	 Ak8Qdgf6FXxnrdPXkc0OZ+aCuVkn91A6sdhfc8K7X5T2CcYbX4/QodAVZ9nqptn/gM
	 X9vq8+k+D5qzg==
Date: Wed, 14 Jan 2026 13:08:18 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	linux-rockchip@lists.infradead.org, Niklas Cassel <cassel@kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH] PCI: dw-rockchip: Disable BAR 0 and BAR 1 for RC mode
Message-ID: <ix76ihwxbambcwuvkn3baf7hc2lwb5cysl3vlvd2zw5zrwdp2v@m7e64r32wjsu>
References: <1766570461-138256-1-git-send-email-shawn.lin@rock-chips.com>
 <jrah3krizuwyfwhmvq67wjsye2eeompjflpuo4dz2mgugi5txt@np6gknrtbkqo>
 <1814707c-1ab1-414e-8f84-fce748b6f165@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1814707c-1ab1-414e-8f84-fce748b6f165@rock-chips.com>
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

T24gV2VkLCBKYW4gMTQsIDIwMjYgYXQgMDk6MzI6NTVBTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IEhpIE1hbmkKPiAKPiDlnKggMjAyNi8wMS8xMyDmmJ/mnJ/kuowgMjI6MjksIE1hbml2YW5u
YW4gU2FkaGFzaXZhbSDlhpnpgZM6Cj4gPiBPbiBXZWQsIERlYyAyNCwgMjAyNSBhdCAwNjowMTow
MVBNICswODAwLCBTaGF3biBMaW4gd3JvdGU6Cj4gPiA+IFRvIHNsaXRlbmNlIHRoZSB1c2VsZXNz
IGJhciBhbGxvY2F0aW9uIGVycm9yIGxvZyBvZiBSQyB3aGVuCj4gPiA+IHNjYW5uaW5nIGJ1cywg
YXMgUkMgZG9lc24ndCBuZWVkIEJBUnMgYXQgYWxsLgo+ID4gCj4gPiBJdCBpcyBub3QgUkMsIGJ1
dCBSb290IFBvcnQuIEl0IGlzIE9LIHRvIGRpc2FibGUgdGhlIFJvb3QgUG9ydCBCQVJzIGlmIHRo
ZXkKPiA+IGRvbid0IHNlcnZlIGFueSBwdXJwb3NlLCBidXQgSSB0aGluayB0aGUgaXNzdWUgaXMg
dGhhdCB0aGUgQkFSIHNpemUgaXMgYm9ndXMuCj4gPiBCb3RoIEJBUnMgcmVwb3J0IDFHaUIgb2Yg
c2l6ZSwgd2hpY2ggSSBkb24ndCB0aGluayBpdCBtYWtlcyBzZW5zZSBmb3IgYSBSb290Cj4gPiBQ
b3J0Lgo+ID4gCj4gCj4gU3VyZSwgaXQncyB0aGUgcm9vdCBwb3J0IHJlcG9ydHMgdGhlIGJvZ3Vz
IEJBUlMgc2l6ZS4KPiAKPiA+IENhbiBJIHJld29yZCB0aGUgY29tbWl0IG1lc3NhZ2UgYXM6Cj4g
PiAKPiA+IFNvbWUgUm9ja2NoaXAgUENJZSBSb290IFBvcnQgcmVwb3J0IGJvZ3VzIHNpemUgb2Yg
MUdpQiBmb3IgdGhlIEJBUiBtZW1vcmllcyBhbmQKPiA+IHRoZXkgY2F1c2UgYmVsb3cgcmVzb3Vy
Y2UgYWxsb2NhdGlvbiBpc3N1ZSBkdXJpbmcgcHJvYmUuIFNpbmNlIHRoZXJlIGlzIG5vIHVzZQo+
ID4gb2YgdGhlIFJvb3QgUG9ydCBCQVIgbWVtb3JpZXMsIGRpc2FibGUgYm90aCBvZiB0aGVtLgo+
ID4gCj4gCj4gTG9va3MgZmluZSB0byBtZS4gV291bGQgeW91IHByZWZlciBhIHYyIG9yIHlvdSBj
b3VsZCBhbWVuZCB0aGUgY29tbWl0Cj4gbXNnIHdoaWxlIGFwcGx5aW5nIHRoaXMgcGF0Y2g/Cj4g
CgpBcHBsaWVkIGl0IGFmdGVyIHJld29yZGluZyB0aGUgZGVzY3JpcHRpb24gYW5kIGNvbW1lbnQu
CgotIE1hbmkKCj4gVGhhbmtzLgo+IAo+ID4gLSBNYW5pCj4gPiAKPiA+ID4gCj4gPiA+ICAgIHBj
aSAwMDAwOjAwOjAwLjA6IFsxZDg3OjM1ODhdIHR5cGUgMDEgY2xhc3MgMHgwNjA0MDAgUENJZSBS
b290IFBvcnQKPiA+ID4gICAgcGNpIDAwMDA6MDA6MDAuMDogQkFSIDAgW21lbSAweDAwMDAwMDAw
LTB4M2ZmZmZmZmZdCj4gPiA+ICAgIHBjaSAwMDAwOjAwOjAwLjA6IEJBUiAxIFttZW0gMHgwMDAw
MDAwMC0weDNmZmZmZmZmXQo+ID4gPiAgICBwY2kgMDAwMDowMDowMC4wOiBST00gW21lbSAweDAw
MDAwMDAwLTB4MDAwMGZmZmYgcHJlZl0KPiA+ID4gCS4uLgo+ID4gPiAgICBwY2kgMDAwMDowMDow
MC4wOiBCQVIgMCBbbWVtIDB4OTAwMDAwMDAwLTB4OTNmZmZmZmZmXTogYXNzaWduZWQKPiA+ID4g
ICAgcGNpIDAwMDA6MDA6MDAuMDogQkFSIDEgW21lbSBzaXplIDB4NDAwMDAwMDBdOiBjYW4ndCBh
c3NpZ247IG5vIHNwYWNlCj4gPiA+ICAgIHBjaSAwMDAwOjAwOjAwLjA6IEJBUiAxIFttZW0gc2l6
ZSAweDQwMDAwMDAwXTogZmFpbGVkIHRvIGFzc2lnbgo+ID4gPiAgICBwY2kgMDAwMDowMDowMC4w
OiBST00gW21lbSAweGYwMjAwMDAwLTB4ZjAyMGZmZmYgcHJlZl06IGFzc2lnbmVkCj4gPiA+ICAg
IHBjaSAwMDAwOjAwOjAwLjA6IEJBUiAwIFttZW0gMHg5MDAwMDAwMDAtMHg5M2ZmZmZmZmZdOiBy
ZWxlYXNpbmcKPiA+ID4gICAgcGNpIDAwMDA6MDA6MDAuMDogUk9NIFttZW0gMHhmMDIwMDAwMC0w
eGYwMjBmZmZmIHByZWZdOiByZWxlYXNpbmcKPiA+ID4gICAgcGNpIDAwMDA6MDA6MDAuMDogQkFS
IDAgW21lbSAweDkwMDAwMDAwMC0weDkzZmZmZmZmZl06IGFzc2lnbmVkCj4gPiA+ICAgIHBjaSAw
MDAwOjAwOjAwLjA6IEJBUiAxIFttZW0gc2l6ZSAweDQwMDAwMDAwXTogY2FuJ3QgYXNzaWduOyBu
byBzcGFjZQo+ID4gPiAgICBwY2kgMDAwMDowMDowMC4wOiBCQVIgMSBbbWVtIHNpemUgMHg0MDAw
MDAwMF06IGZhaWxlZCB0byBhc3NpZ24KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFNoYXdu
IExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+ID4gPiAtLS0KPiA+ID4gCj4gPiA+ICAg
ZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIHwgOCArKysrKysr
Kwo+ID4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPiA+ID4gCj4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMg
Yi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiA+ID4gaW5k
ZXggZjg2MDVmZS4uZTQyMWZhMCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+ID4gPiBAQCAtODAsNiArODAsOCBAQAo+ID4g
PiAgICNkZWZpbmUgIFBDSUVfTElOS1VQX01BU0sJCUdFTk1BU0soMTcsIDE2KQo+ID4gPiAgICNk
ZWZpbmUgIFBDSUVfTFRTU01fU1RBVFVTX01BU0sJCUdFTk1BU0soNSwgMCkKPiA+ID4gKyNkZWZp
bmUgUENJRV9UWVBFMF9IRFJfREJJMl9PRkZTRVQgICAgICAweDEwMDAwMAo+ID4gPiArCj4gPiA+
ICAgc3RydWN0IHJvY2tjaGlwX3BjaWUgewo+ID4gPiAgIAlzdHJ1Y3QgZHdfcGNpZSBwY2k7Cj4g
PiA+ICAgCXZvaWQgX19pb21lbSAqYXBiX2Jhc2U7Cj4gPiA+IEBAIC0yOTIsNiArMjk0LDggQEAg
c3RhdGljIGludCByb2NrY2hpcF9wY2llX2hvc3RfaW5pdChzdHJ1Y3QgZHdfcGNpZV9ycCAqcHAp
Cj4gPiA+ICAgCWlmIChpcnEgPCAwKQo+ID4gPiAgIAkJcmV0dXJuIGlycTsKPiA+ID4gKwlwY2kt
PmRiaV9iYXNlMiA9IHBjaS0+ZGJpX2Jhc2UgKyBQQ0lFX1RZUEUwX0hEUl9EQkkyX09GRlNFVDsK
PiA+ID4gKwo+ID4gPiAgIAlyZXQgPSByb2NrY2hpcF9wY2llX2luaXRfaXJxX2RvbWFpbihyb2Nr
Y2hpcCk7Cj4gPiA+ICAgCWlmIChyZXQgPCAwKQo+ID4gPiAgIAkJZGV2X2VycihkZXYsICJmYWls
ZWQgdG8gaW5pdCBpcnEgZG9tYWluXG4iKTsKPiA+ID4gQEAgLTMwMiw2ICszMDYsMTAgQEAgc3Rh
dGljIGludCByb2NrY2hpcF9wY2llX2hvc3RfaW5pdChzdHJ1Y3QgZHdfcGNpZV9ycCAqcHApCj4g
PiA+ICAgCXJvY2tjaGlwX3BjaWVfY29uZmlndXJlX2wxc3MocGNpKTsKPiA+ID4gICAJcm9ja2No
aXBfcGNpZV9lbmFibGVfbDBzKHBjaSk7Cj4gPiA+ICsJLyogRGlzYWJsZSBSQydzIEJBUjAgYW5k
IEJBUjEgKi8KPiA+ID4gKwlkd19wY2llX3dyaXRlbF9kYmkyKHBjaSwgUENJX0JBU0VfQUREUkVT
U18wLCAweDApOwo+ID4gPiArCWR3X3BjaWVfd3JpdGVsX2RiaTIocGNpLCBQQ0lfQkFTRV9BRERS
RVNTXzEsIDB4MCk7Cj4gPiA+ICsKPiA+ID4gICAJcmV0dXJuIDA7Cj4gPiA+ICAgfQo+ID4gPiAt
LSAKPiA+ID4gMi43LjQKPiA+ID4gCj4gPiA+IAo+ID4gCj4gCj4gCgotLSAK4K6u4K6j4K6/4K61
4K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
