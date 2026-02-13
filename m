Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1D95EEA87F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Feb 2026 02:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Uj9YkyGIL0gAg0zl8w82+UnUf/Lvu9WDVJbgc2SOSug=; b=u3dfqcZo4YMOKZwhOCcE2N0ub1
	yrtnskeJkH+quU8kakvxdS0mDzRl+t6JhuJmU+biCRewFO7pL6eNb40OyTZQoZffTkrzcWukje9XU
	1ILCCDC5BXvqnVu01FHTs6uK2v9+56kZNVth8rv1u1qnop6x0HMAjFL5cHSjYT7DKEHtBXxoD59AN
	aTmsLVCFMmdQ4WWiPZs1ZGgualDu5eDuedc+mRCIYvRdJEiSVSbyehCVY46Qdr/JKzOJhZdnOt8E2
	A3IjKli7UiUbXLaXxkITCyIZTNAhga+8ZdQZ17b/DqNGZ0Vuthh1s+reENcrnoiuuw5dMRBkOw0Rz
	fbGyFmDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqj8K-00000002s2Q-1Evi;
	Fri, 13 Feb 2026 02:42:16 +0000
Received: from mail-m49228.qiye.163.com ([45.254.49.228])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqj8H-00000002s1o-1Vbu;
	Fri, 13 Feb 2026 02:42:14 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 340a00380;
	Fri, 13 Feb 2026 10:42:10 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add domain-supply for
 pd_rkvdec0/1 and pd_venc0/1
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
References: <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
 <1770950113-19802-2-git-send-email-shawn.lin@rock-chips.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <ea9df274-278d-f344-f66d-8821388e6690@rock-chips.com>
Date: Fri, 13 Feb 2026 10:42:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <1770950113-19802-2-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9c54e094bd09cckunmb048d5ac255a59
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh5IQ1ZIHUkdT0MdTxlCQx5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=K2OM3Si9wBqCmq8bANg7KqcJFis8rf/sua0SZoVww4sK+Cjw6sLX6w6TdhTLyLeyNfgId8yvo2FVhai1YSB+i4lCUhyrbnowQO5uX479Da0rdFtPUsmJyRwxs77nDpyJXv4+LV+pyQSi9MtxyMswdhR0CMr/0kqY2PdAK/4ycgI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=sCi3YGgnLoVE1W2HsrMQ/FCP0zR7jFK/2gBDx58+5Yw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_184213_560504_D068D032 
X-CRM114-Status: GOOD (  21.00  )
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

1NogMjAyNi8wMi8xMyDQx8bazuUgMTA6MzUsIFNoYXduIExpbiDQtLXAOgo+IFRoZSBwb3dlciBk
b21haW5zIHBkX3JrdmRlYzAvMSBhbmQgcGRfdmVuYzAvMSBkZXBlbmQgb24gdHdvIHZvbHRhZ2Ug
c3VwcGxpZXMsCj4gdmRkX3ZkZW5jX3MwIGFuZCB2ZGRfdmRlbmNfbWVtX3MwLiBUaGVzZSBzdXBw
bGllcyBtaWdodCBiZSBtaXNzaW5nIG9yIGNhdXNlIHByb2JlCj4gZGVmZXJyYWwuIFNpbmNlIHRo
ZSBSb2NrY2hpcCBwb3dlciBkb21haW4gbWFuYWdlbWVudCBjb2RlIGN1cnJlbnRseSBzdXBwb3J0
cyBtYW5hZ2luZwo+IG9ubHkgb25lIHBvd2VyIHN1cHBseSwgYW5kIGJvdGggc3VwcGxpZXMgYmVs
b25nIHRvIHRoZSBzYW1lIFBNSUMgKG1ha2luZyBpdCBoaWdobHkKPiB1bmxpa2VseSBmb3Igb25l
IHRvIGJlIGF2YWlsYWJsZSB3aGlsZSB0aGUgb3RoZXIgaXMgbm90KSwgYSBwcmFjdGljYWwgc29s
dXRpb24gaXMKPiBpbXBsZW1lbnRlZC4KPiAKPiBCb3RoIHN1cHBsaWVzIGFyZSBjb25maWd1cmVk
IHdpdGggdGhlIGJvb3Qtb24gYW5kIGFsd2F5cy1vbiBwcm9wZXJ0aWVzLiBPbmx5IG9uZQo+IG9m
IHRoZW0gaXMgYXNzaWduZWQgYXMgdGhlIGRvbWFpbi1zdXBwbHkgZm9yIHBkX3JrdmRlYzAvMSBh
bmQgcGRfdmVuYzAvMS4gVGhpcyBhbGxvd3MKPiB0aGUgcG93ZXIgZG9tYWluIGNvZGUgdG8gcGVy
Zm9ybSBhIG5vbWluYWwgZW5hYmxlIG9wZXJhdGlvbiBvbiB0aGlzIHNpbmdsZSBzdXBwbHksCj4g
dGhlcmVieSBzdWNjZXNzZnVsbHkgYWNxdWlyaW5nIGEgcmVmZXJlbmNlIHRvIGJvdGggc3VwcGxp
ZXMgKGFzIHRoZXkgYXJlIGZyb20gdGhlIHNhbWUKPiBQTUlDKS4gVGhlIHN5c3RlbSB0aGVuIHJl
bGllcyBvbiB0aGVpciBib290LW9uIGFuZCBhbHdheXMtb24gZmxhZ3MgdG8gbWFpbnRhaW4gdGhl
Cj4gY29ycmVjdCBzdGF0ZS4KPiAKPiBDcnVjaWFsbHksIHRoaXMgYXBwcm9hY2ggaGFuZGxlcyBj
YXNlcyBsaWtlIHByb2JlIGRlZmVycmFsIGNvcnJlY3RseToKPiBpZiB0aGUgUE1JQyBpcyBub3Qg
eWV0IHJlYWR5LCBlbmFibGluZyB0aGUgcG93ZXIgZG9tYWluIHdpbGwgYmUgZGVmZXJyZWQgdW50
aWwgdGhlCj4gbmVjZXNzYXJ5IHN1cHBsaWVzIGJlY29tZSBhdmFpbGFibGUuCj4gCj4gU2lnbmVk
LW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4gLS0tCj4gCj4g
ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1ldmIxLXYxMC5kdHMgIHwgMTYg
KysrKysrKysrKysrKysrKwo+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhz
LWV2YjEtdjEwLmR0cyB8IDE3ICsrKysrKysrKysrKysrKysrCj4gICAyIGZpbGVzIGNoYW5nZWQs
IDMzIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODgtZXZiMS12MTAuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODgtZXZiMS12MTAuZHRzCj4gaW5kZXggYzlkMjg0Yy4uMDliYzdiNiAxMDA2NDQKPiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1ldmIxLXYxMC5kdHMKPiAr
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1ldmIxLXYxMC5kdHMKPiBA
QCAtNTY4LDYgKzU2OCwyMiBAQAo+ICAgCWRvbWFpbi1zdXBwbHkgPSA8JnZkZF9ncHVfczA+Owo+
ICAgfTsKPiAgIAo+ICsmcGRfcmt2ZGVjMCB7Cj4gKwlkb21haW4tc3VwcGx5ID0gPCZ2ZGRfdmRl
bmNfczA+Owo+ICt9Owo+ICsKPiArJnBkX3JrdmRlYzEgewo+ICsJZG9tYWluLXN1cHBseSA9IDwm
dmRkX3ZkZW5jX3MwPjsKPiArfTsKPiArCj4gKyZwZF92ZW5jMCB7Cj4gKwlkb21haW4tc3VwcGx5
ID0gPCZ2ZGRfdmRlbmNfczA+Owo+ICt9Owo+ICsKPiArJnBkX3ZlbmMxIHsKPiArCWRvbWFpbi1z
dXBwbHkgPSA8JnZkZF92ZGVuY19zMD47Cj4gK307Cj4gKwo+ICAgJnBpbmN0cmwgewo+ICAgCWF1
ZGlvIHsKPiAgIAkJaHBfZGV0ZWN0OiBoZWFkcGhvbmUtZGV0ZWN0IHsKPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLWV2YjEtdjEwLmR0cyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1ldmIxLXYxMC5kdHMKPiBpbmRleCBmODIw
NTA1Li4yNWQ4MGI2IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4cy1ldmIxLXYxMC5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OHMtZXZiMS12MTAuZHRzCj4gQEAgLTM4MSw2ICszODEsMjIgQEAKPiAgIAlkb21haW4t
c3VwcGx5ID0gPCZ2ZGRfZ3B1X3MwPjsKPiAgIH07Cj4gICAKPiArJnBkX3JrdmRlYzAgewo+ICsJ
ZG9tYWluLXN1cHBseSA9IDwmdmRkX3ZkZW5jX3MwPjsKPiArfTsKPiArCj4gKyZwZF9ya3ZkZWMx
IHsKPiArCWRvbWFpbi1zdXBwbHkgPSA8JnZkZF92ZGVuY19zMD47Cj4gK307Cj4gKwo+ICsmcGRf
dmVuYzAgewo+ICsJZG9tYWluLXN1cHBseSA9IDwmdmRkX3ZkZW5jX3MwPjsKPiArfTsKPiArCj4g
KyZwZF92ZW5jMSB7Cj4gKwlkb21haW4tc3VwcGx5ID0gPCZ2ZGRfdmRlbmNfczA+Owo+ICt9Owo+
ICsKPiAgICZwaW5jdHJsIHsKPiAgIAlhdWRpbyB7Cj4gICAJCWhwX2RldGVjdDogaGVhZHBob25l
LWRldGVjdCB7Cj4gQEAgLTU4MCw2ICs1OTYsNyBAQAo+ICAgCQkJdmRkX2dwdV9tZW1fczA6IGRj
ZGMtcmVnNSB7Cj4gICAJCQkJcmVndWxhdG9yLW5hbWUgPSAidmRkX2dwdV9tZW1fczAiOwo+ICAg
CQkJCXJlZ3VsYXRvci1ib290LW9uOwo+ICsJCQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKCk9vcHMs
IEkgc2VudCB0aGUgd3JvbmcgdmVyc2lvbi4gU2hvdWxkIHJlbW92ZSB0aGUgdGhpcyBsaW5lIGNo
YW5nZS4KV2lsbCBmaXggaXQgaWYgdjIgbmVlZGVkLgoKPiAgIAkJCQlyZWd1bGF0b3ItbWluLW1p
Y3Jvdm9sdCA9IDw2NzUwMDA+Owo+ICAgCQkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDk1
MDAwMD47Cj4gICAJCQkJcmVndWxhdG9yLXJhbXAtZGVsYXkgPSA8MTI1MDA+Owo+IAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
