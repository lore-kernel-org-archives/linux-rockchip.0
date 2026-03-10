Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D885EFCD9F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 09:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WhU9QBNhlJPeU1vT5OM1Hs2Svf06TMrgk6qHG74w/3w=; b=3o/JUTHaMIsuzXE2kl6iNIM758
	fF6qpOfatOWGMa14Qa/mKSM85oFyR3OWT+eh2OPay2Fv9cLBGGC3a+quryW+J5lgmbN9O9G3/TJBD
	gC48SvlBquXc3nEJsDqL3IIVvuBSThAGP9JJ80ZBRxcwFBaxhURSk/W2B7NzLus4JEqm1pPsXNjiP
	h49MFcb6N1P2PBue5sYR7Gs0fHP9MPdyoWcykz7oGoSGKR2n3a+rJZamkrEYCPBxxEVNENfDGcn7o
	NXFTDkcEVX6HXy0zIm7z8iuUv+ci+K5eu9+pjsF4bTLv0fbvM8xtQn48gfJ7wdczVNHqszdOz6RHl
	GTSZmIeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vztT3-000000096ZB-2p86;
	Tue, 10 Mar 2026 09:33:33 +0000
Received: from mail-m32124.qiye.163.com ([220.197.32.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vztT0-000000096XY-0MGb;
	Tue, 10 Mar 2026 09:33:32 +0000
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3665d3ef2;
	Tue, 10 Mar 2026 17:33:22 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, iommu@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] iommu/rockchip: Drop global rk_ops in favor of per-device
 ops
To: Simon Xue <xxm@rock-chips.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Heiko Stuebner <heiko@sntech.de>
References: <20260310084812.126082-1-xxm@rock-chips.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <a2719902-e5cb-bd4d-4eb4-a01371a57aed@rock-chips.com>
Date: Tue, 10 Mar 2026 17:33:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20260310084812.126082-1-xxm@rock-chips.com>
X-HM-Tid: 0a9cd718098809cckunm7907381ceb4dc
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkxKSFZCTUIdSkpCHkpCTxhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=LfN4T1hyZ7F/Fgc3GdQa6KkyTJsBBYXeMneDyaHtkZD66iT4bIqkSGQ+21SreSvQnHOsDGsZPoyJML87v5z5OGZ3hpaF3rLUmaeCanZdLysYoiEe1/WhuqnTqYue/i9OmmJWrM4Uo+vjt3wmtvTkMaY0A1mI5Ls2sqt30XxO3BY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=mBTi+Diqk25yIasnhVjZ42wpi09vWfP+RtyQmstJvHA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_023331_441528_60020838 
X-CRM114-Status: GOOD (  18.20  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgU2ltb24sCgrU2iAyMDI2LzAzLzEwINDHxtq2/iAxNjo0OCwgU2ltb24gWHVlINC0tcA6Cj4g
VGhlIGRyaXZlciBjdXJyZW50bHkgdXNlcyBhIGdsb2JhbCBya19vcHMgcG9pbnRlciwgZm9yY2lu
ZyBhbGwgSU9NTVUKPiBpbnN0YW5jZXMgdG8gc2hhcmUgdGhlIHNhbWUgb3BlcmF0aW9ucy4gVGhp
cyByZXN0cmljdHMgdGhlIGRyaXZlciBmcm9tCj4gc3VwcG9ydGluZyBTb0NzIHRoYXQgbWlnaHQg
aW50ZWdyYXRlIGRpZmZlcmVudCB2ZXJzaW9ucyBvZiBJT01NVSBoYXJkd2FyZS4KPiAKPiBTaW5j
ZSB0aGUgSU9NTVUgZnJhbWV3b3JrIHBhc3NlcyB0aGUgbWFzdGVyIGRldmljZSBpbmZvcm1hdGlv
biB0bwo+IGlvbW11X3BhZ2luZ19kb21haW5fYWxsb2MoKSwgdGhlIGdsb2JhbCB2YXJpYWJsZSBp
cyBubyBsb25nZXIgbmVlZGVkLgo+IAo+IEZpeCB0aGlzIGJ5IG1vdmluZyBya19vcHMgaW50byBz
dHJ1Y3QgcmtfaW9tbXUgYW5kIHN0cnVjdCBya19pb21tdV9kb21haW4uCj4gSW5pdGlhbGl6ZSBp
dCBwZXItZGV2aWNlIGR1cmluZyBwcm9iZSB2aWEgb2ZfZGV2aWNlX2dldF9tYXRjaF9kYXRhKCks
Cj4gYW5kIHJlcGxhY2UgYWxsIGdsb2JhbCByZWZlcmVuY2VzIHdpdGggdGhlIGluc3RhbmNlLXNw
ZWNpZmljIHBvaW50ZXJzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNpbW9uIFh1ZSA8eHhtQHJvY2st
Y2hpcHMuY29tPgo+IC0tLQoKLi4uCgo+ICAgCQkJCQkgU1BBR0VfU0laRSwgRE1BX1RPX0RFVklD
RSk7Cj4gQEAgLTEyMTIsMTUgKzEyMTUsNyBAQCBzdGF0aWMgaW50IHJrX2lvbW11X3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAJaW9tbXUtPm51bV9tbXUgPSAwOwo+ICAg
Cj4gICAJb3BzID0gb2ZfZGV2aWNlX2dldF9tYXRjaF9kYXRhKGRldik7CgpDb3VsZCB5b3UgcmVt
b3ZlIHRoaXMgb25lLXRpbWUtdXNlZCBvcHMgdmFyaWFibGUgYW5kIHVzZSBpb21tdS0+cmtfb3Bz
CmRpcmVjdGx5LiBUaGUgb3RoZXIgcGFydHMgbWFrZSBzZW5zZSB0byBtZS4KCj4gLQlpZiAoIXJr
X29wcykKPiAtCQlya19vcHMgPSBvcHM7Cj4gLQo+IC0JLyoKPiAtCSAqIFRoYXQgc2hvdWxkIG5v
dCBoYXBwZW4gdW5sZXNzIGRpZmZlcmVudCB2ZXJzaW9ucyBvZiB0aGUKPiAtCSAqIGhhcmR3YXJl
IGJsb2NrIGFyZSBlbWJlZGRlZCB0aGUgc2FtZSBTb0MKPiAtCSAqLwo+IC0JaWYgKFdBUk5fT04o
cmtfb3BzICE9IG9wcykpCj4gLQkJcmV0dXJuIC1FSU5WQUw7Cj4gKwlpb21tdS0+cmtfb3BzID0g
b3BzOwo+ICAgCj4gICAJaW9tbXUtPmJhc2VzID0gZGV2bV9rY2FsbG9jKGRldiwgbnVtX3Jlcywg
c2l6ZW9mKCppb21tdS0+YmFzZXMpLAo+ICAgCQkJCSAgICBHRlBfS0VSTkVMKTsKPiBAQCAtMTI4
Niw3ICsxMjgxLDcgQEAgc3RhdGljIGludCBya19pb21tdV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQo+ICAgCQkJZ290byBlcnJfcG1fZGlzYWJsZTsKPiAgIAl9Cj4gICAKPiAt
CWRtYV9zZXRfbWFza19hbmRfY29oZXJlbnQoZGV2LCBya19vcHMtPmRtYV9iaXRfbWFzayk7Cj4g
KwlkbWFfc2V0X21hc2tfYW5kX2NvaGVyZW50KGRldiwgaW9tbXUtPnJrX29wcy0+ZG1hX2JpdF9t
YXNrKTsKPiAgIAo+ICAgCWVyciA9IGlvbW11X2RldmljZV9zeXNmc19hZGQoJmlvbW11LT5pb21t
dSwgZGV2LCBOVUxMLCBkZXZfbmFtZShkZXYpKTsKPiAgIAlpZiAoZXJyKQo+IAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
