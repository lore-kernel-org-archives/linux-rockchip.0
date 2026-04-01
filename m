Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F056D3514A
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Apr 2026 07:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3oHrwpvBgrKwnkQXx1wP8jJjmkv65DIe1WgTaTjVKQ8=; b=taLbVmBsNBcS44
	BXrxfgWwE0718wFQwF4ym2it5IzMfMKlfkRjf6+yKbjht/bWfwIbK3WCFiEKXdExv3B7robBx4UX2
	xGcIG4pJK5C8BCE5o+2EBUqbPeR/HT1w9bm8m9/AXDshyklyO1aor+t9bwlFOVJ9twFClG6mpsjXz
	Xj5SbZKTQfm6e1CvafD3r7ICWzuo0QJNpdmbskeQScZPRlPDMa00iufmTQR5cnKd6eHQHwBcp7n7x
	VlZAqk4WrQ1VmwwZr2uILoD9nAiI5C6VR1Uw77ewyrrzou7J2QMrvVoDquSG04AVOmGTIRYCBrgK7
	hdUdAkOInMYIVb8rqWDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7qJo-0000000EFbe-3qNH;
	Wed, 01 Apr 2026 07:48:52 +0000
Received: from mail-m3284.qiye.163.com ([220.197.32.84])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7qJm-0000000EFaG-0lne;
	Wed, 01 Apr 2026 07:48:51 +0000
Received: from [192.168.31.31] (gy-adaptive-ssl-proxy-4-entmail-virt151.gy.ntes [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 391fa097e;
	Wed, 1 Apr 2026 15:48:30 +0800 (GMT+08:00)
Message-ID: <0f285782-b12a-4abd-bca7-b6c549bed59f@rock-chips.com>
Date: Wed, 1 Apr 2026 15:48:30 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] iommu/rockchip: fix page table allocation flags for v2
 IOMMU
To: Midgy BALON <midgy971@gmail.com>, iommu@lists.linux.dev
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, heiko@sntech.de,
 jonas@kwiboo.se, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20260331075010.1463-1-midgy971@gmail.com>
From: Simon <xxm@rock-chips.com>
In-Reply-To: <20260331075010.1463-1-midgy971@gmail.com>
X-HM-Tid: 0a9d4803ed2603ackunm45f6e71b2a8a3ca
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGksdQ1YdQkMfQhhOQhgfSk9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=B0fbw+/qEcNcLU2iS4WTUn6bpRy8SWB0IUW17RcFjQZc+R/tBTTASZxZ4jUT2qRVK/TRlKamUouB1f5RE8TzpA6VWcOOvAIatIdI31KnCioaMBWk9kmDYokeYl4ibVVkEtPmy4iQ6dtzZmuLfvF1CrdMVsxuu4xzEcvQr0QIu3g=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=y6yka7GkceGzBUjj8aeJVzPjmvwnWCwQ5Otg+ysj1O8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_004850_731198_7807BB80 
X-CRM114-Status: GOOD (  20.32  )
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

SGkgTWlkZ3ksCgrlnKggMjAyNi8zLzMxIDE1OjUwLCBNaWRneSBCQUxPTiDlhpnpgZM6Cj4gY29t
bWl0IDJhN2U2NDAwZjcyYiAoImlvbW11OiByb2NrY2hpcDogQWxsb2NhdGUgdGFibGVzIGZyb20g
YWxsCj4gYXZhaWxhYmxlIG1lbW9yeSBmb3IgSU9NTVUgdjIiKSByZW1vdmVkIEdGUF9ETUEzMiBm
cm9tCj4gaW9tbXVfZGF0YV9vcHNfdjIsIHJlYXNvbmluZyB0aGF0IFJLMzU2eCBhbmQgUkszNTg4
IElPTU1VIHYyIGhhcmR3YXJlCj4gc3VwcG9ydHMgdXAgdG8gNDAtYml0IHBoeXNpY2FsIGFkZHJl
c3NlcyBmb3IgcGFnZSB0YWJsZXMuICBIb3dldmVyLCB0aGUKPiBSSzM1NjggSU9NTVUgcGFnZS10
YWJsZSB3YWxrZXIgdXNlcyBhIDMyLWJpdCBBWEkgYnVzOiBpdCBjYW5ub3QgYWNjZXNzCj4gcGh5
c2ljYWwgYWRkcmVzc2VzIGFib3ZlIDQgR0IgcmVnYXJkbGVzcyBvZiB0aGUgYWRkcmVzcyBlbmNv
ZGluZyByYW5nZS4KPgo+IE9uIGJvYXJkcyB3aXRoIG1vcmUgdGhhbiA0IEdCIG9mIFJBTSAoZS5n
LiA4IEdCIExQRERSNFgpLCByZW1vdmluZwo+IEdGUF9ETUEzMiBjYXVzZXMgdHdvIGRpc3RpbmN0
IGZhaWx1cmUgbW9kZXM6Cj4KPiAxLiBEaXJlY3QgYWxsb2NhdGlvbiBhYm92ZSA0IEdCOiBpb21t
dV9hbGxvY19wYWdlc19zeigpIG1heSByZXR1cm4KPiAgICAgbWVtb3J5IGFib3ZlIDB4MTAwMDAw
MDAwLiAgVGhlIGhhcmR3YXJlIHBhZ2UtdGFibGUgd2Fsa2VyIGlzc3VlcyBhCj4gICAgIGJ1cyBl
cnJvciB0cnlpbmcgdG8gZGVyZWZlcmVuY2UgdGhvc2UgYWRkcmVzc2VzLCBjYXVzaW5nIGFuIElP
TU1VCj4gICAgIGZhdWx0IG9uIHRoZSBmaXJzdCBETUEgdHJhbnNhY3Rpb24uCldoaWNoIElQIGJs
b2NrIGlzIGhpdHRpbmcgdGhpcz8gV2UnZCBsaWtlIHRvIHRha2UgYSBsb29rIG9uIG91ciBlbmQu
Cj4gMi4gU1dJT1RMQiBib3VuY2UtYnVmZmVyIHBvaXNvbmluZzogd2l0aG91dCBHRlBfRE1BMzIs
IHBhZ2UgdGFibGVzIGxhbmQKPiAgICAgYWJvdmUgdGhlIFNXSU9UTEIgd2luZG93LiAgZG1hX21h
cF9zaW5nbGUoKSB3aXRoIERNQV9CSVRfTUFTSygzMikKPiAgICAgdGhlbiBib3VuY2VzIHRoZW0g
aW50byBhIGJ1ZmZlciBiZWxvdyA0IEdCLiAgcmtfZHRlX2dldF9wYWdlX3RhYmxlKCkKPiAgICAg
cmV0dXJucyBwaHlzX3RvX3ZpcnQoKSBvZiB0aGUgYm91bmNlIGJ1ZmZlciBhZGRyZXNzOyBQVEVz
IGFyZSB3cml0dGVuCj4gICAgIHRoZXJlOyB0aGUgbmV4dCBkbWFfc3luY19zaW5nbGVfZm9yX2Rl
dmljZShETUFfVE9fREVWSUNFKSBjb3BpZXMgdGhlCj4gICAgIG9yaWdpbmFsICh6ZXJvKSBkYXRh
IGJhY2sgb3ZlciB0aGUgYm91bmNlIGJ1ZmZlciwgc2lsZW50bHkgZXJhc2luZyB0aGUKPiAgICAg
ZnJlc2hseSB3cml0dGVuIFBURXMuICBUaGUgSU9NTVUgZmF1bHRzIGJlY2F1c2UgZXZlcnkgUFRF
IHJlYWRzIGFzIHplcm8uClRoaXMgcHJvYmFibHkgbmVlZCBhIHNlcGFyYXRlIHBhdGNoLiBPbmUg
d2F5IHRvIGZpeCBpdCB3b3VsZCBiZSB0byB0cmFjayB0aGUKb3JpZ2luYWwgTDIgcGFnZSB0YWJs
ZSBiYXNlIGFkZHJlc3NlcyBpbiBzdHJ1Y3QgcmtfaW9tbXVfZG9tYWluLAp0aGVuIGhhdmUgcmtf
ZHRlX2dldF9wYWdlX3RhYmxlKCkgcmV0dXJuIHRoZSB0cmFja2VkIGFkZHJlc3MgaW5zdGVhZCBv
ZgpkZXJpdmluZyBpdCBmcm9tIHRoZSBEVEUuCj4gUmVzdG9yZSBHRlBfRE1BMzIgKGFuZCBETUFf
QklUX01BU0soMzIpKSBmb3IgaW9tbXVfZGF0YV9vcHNfdjIsIHdoaWNoCj4gY3VycmVudGx5IG9u
bHkgc2VydmVzICJyb2NrY2hpcCxyazM1NjgtaW9tbXUiIGluIG1haW5saW5lLgo+Cj4gVGVzdGVk
IG9uIFJhZHhhIFJPQ0sgM0IgKFJLMzU2OCwgOCBHQiBMUEREUjRYKToKPiAgICAtIE1vYmlsZU5l
dFYxIHZpYSBSS05OOiA1LjggbXMvaW5mZXJlbmNlIChJT01NVSBtb2RlKQo+ICAgIC0gWU9MT3Y1
cyA2NDB4NjQwIHZpYSBSS05OOiB+NTcgbXMvaW5mZXJlbmNlIChJT01NVSBtb2RlKQo+ICAgIC0g
Tm8gSU9NTVUgZmF1bHRzLCBjb3JyZWN0IGluZmVyZW5jZSByZXN1bHRzCj4KPiBGaXhlczogMmE3
ZTY0MDBmNzJiICgiaW9tbXU6IHJvY2tjaGlwOiBBbGxvY2F0ZSB0YWJsZXMgZnJvbSBhbGwgYXZh
aWxhYmxlIG1lbW9yeSBmb3IgSU9NTVUgdjIiKQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3Jn
Cj4gQ2M6IEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4KPiBTaWduZWQtb2ZmLWJ5OiBN
aWRneSBCQUxPTiA8bWlkZ3k5NzFAZ21haWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9pb21tdS9y
b2NrY2hpcC1pb21tdS5jIHwgNCArKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUvcm9ja2No
aXAtaW9tbXUuYyBiL2RyaXZlcnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUuYwo+IGluZGV4IDg1ZjM2
NjdlNzk3Li44YjQ1ZGIyOTQ3MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2lvbW11L3JvY2tjaGlw
LWlvbW11LmMKPiArKysgYi9kcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMKPiBAQCAtMTM1
OCw4ICsxMzU4LDggQEAgc3RhdGljIHN0cnVjdCBya19pb21tdV9vcHMgaW9tbXVfZGF0YV9vcHNf
djIgPSB7Cj4gICAJLnB0X2FkZHJlc3MgPSAmcmtfZHRlX3B0X2FkZHJlc3NfdjIsCj4gICAJLm1r
X2R0ZW50cmllcyA9ICZya19ta19kdGVfdjIsCj4gICAJLm1rX3B0ZW50cmllcyA9ICZya19ta19w
dGVfdjIsCj4gLQkuZG1hX2JpdF9tYXNrID0gRE1BX0JJVF9NQVNLKDQwKSwKPiAtCS5nZnBfZmxh
Z3MgPSAwLAo+ICsJLmRtYV9iaXRfbWFzayA9IERNQV9CSVRfTUFTSygzMiksCj4gKwkuZ2ZwX2Zs
YWdzID0gR0ZQX0RNQTMyLAo+ICAgfTsKPiAgIAo+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9k
ZXZpY2VfaWQgcmtfaW9tbXVfZHRfaWRzW10gPSB7CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
