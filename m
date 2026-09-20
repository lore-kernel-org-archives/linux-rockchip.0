Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD10AC982CC
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Sep 2026 01:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gy6rKfkuY+FIJ2PlXh4IuZz0sQqdOPXcF/UaFljVyws=; b=KAmaHecHu19lz6
	g45gBdhpd2jxAPoe2KupDtSF6awS1E8aWB1GbvvhhrmPbsmDD7HQ3PCJ63npfLlZ9Von26P9Ga8Zb
	NA1tjVPJ4ipS+Zo9NMjnL9xckQOa/SD3ZTFPzSufnNQAWmFSj/jTp0w4oLDfQFC1sJaQZ3e0+lKIK
	ncAvuaJD/jBb9YaoJWWyuLL4EuYdpVegoZsugp8fmOYc9Ihm/t60l798VyMJO+gQoIpwN9iDqfU4w
	qZl4blWMncL4Poe4uaLQQVM0lUhD0v00P69Cp0zTSzAgzbOPTQ+eB5NMFA3BmWrcItj86HDyo9hAz
	bFvG9n+mgt8fdPeIQ94w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x86AA-0000000Gik8-06GD;
	Sun, 20 Sep 2026 01:16:14 +0000
Received: from mail-m25494.xmail.ntesmail.com ([103.129.254.94])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x86A6-0000000Gijg-008Z
	for linux-rockchip@lists.infradead.org;
	Sun, 20 Sep 2026 01:16:12 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4e65c9cbf;
	Sun, 20 Sep 2026 09:15:56 +0800 (GMT+08:00)
Message-ID: <3fa0fcbc-b6ff-4934-bb7d-b763d6f5f818@rock-chips.com>
Date: Sun, 20 Sep 2026 09:15:52 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Ulf Hansson <ulfh@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/4] pmdomain: rockchip: fix clock leak on domain probe
 failure
To: Sebastian Reichel <sebastian.reichel@collabora.com>
References: <1789733258-10133-1-git-send-email-shawn.lin@rock-chips.com>
 <1789733258-10133-3-git-send-email-shawn.lin@rock-chips.com>
 <aq1yU47vQT5OnxLo@venus>
 <27e3944f-81c6-48e4-8033-e30ae70f8e26@rock-chips.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <27e3944f-81c6-48e4-8033-e30ae70f8e26@rock-chips.com>
X-HM-Tid: 0aa0bc6255e003a4kunmd3d2597e236429
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDQklIVksaQx0fT0lDH0tPGlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=irK9E5Sn8gjx26N6v03fi92SxtUUQkf878PQkcEHbHH/C1VWK42Th86sM3fTjzd8Gtummu2GG0JsbdMOAUK6OxfoS9A0YI+JdD6j4Yhcf9kQrKCOOKv5svqr481yOCtYfdenEgw5M4xE2CK/z0aDIrfmtJ/FzD8V+4Ct1cq9mzI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=VtX02XvGRhQ2FxudCuxh58xlxXnkNt9W6SpJeJT1xZI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_181610_621411_C0A0D72C 
X-CRM114-Status: GOOD (  15.18  )
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

SGkgU2ViYXN0aWFuCgrlnKggMjAyNi8wOS8xOSDmmJ/mnJ/lha0gODoxMywgU2hhd24gTGluIOWG
memBkzoKPiBIaSBTZWJhc3RpYW4KPiAKPiDlnKggMjAyNi8wOS8xOSDmmJ/mnJ/lha0gMToyMSwg
U2ViYXN0aWFuIFJlaWNoZWwg5YaZ6YGTOgo+PiBIaSwKPj4KPj4gT24gRnJpLCBTZXAgMTgsIDIw
MjYgYXQgMDg6MDc6MzZQTSArMDgwMCwgU2hhd24gTGluIHdyb3RlOgo+Pj4gV2hlbiBvZl9jbGtf
Z2V0KCkgZmFpbGVkIGluIHRoZSBtaWRkbGUgb2YgdGhlIGxvb3AsIHRoZSByZWZlcmVuY2VzIG9m
Cj4+PiB0aGUgY2xvY2tzIGFjcXVpcmVkIHNvIGZhciB3ZXJlIGxlYWtlZCBpbnN0ZWFkIG9mIGJl
aW5nIHJlbGVhc2VkIGJ5Cj4+PiB0aGUgZXJyb3IgcGF0aC4KPj4+Cj4+PiBGaXhlczogZDkwOTA3
MmQwNTIxICgic29jOiByb2NrY2hpcDogcG93ZXItZG9tYWluOiB1c2UgY2xrX2J1bGsgQVBJcyIp
Cj4+PiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4K
Pj4+IC0tLQo+Pgo+PiBSaWdodCwgYnV0IHRoaXMgc2hvdWxkIHN3aXRjaAo+Pgo+PiBwZC0+Y2xr
cyA9IGRldm1fa2NhbGxvYyguLi4pOwo+Pgo+PiB0bwo+Pgo+PiBwZC0+Y2xrcyA9IGRldm1fa3ph
bGxvYyguLi4pOwo+Pgo+PiBhdCB0aGUgc2FtZSB0aW1lIHRvIGVuc3VyZSB0aGF0IGNsa19idWxr
X3B1dCgpIGRvZXMgbm90IHJ1biBvdmVyCj4+IG5vbi1pbml0aWFsaXplZCBkYXRhLiBPdGhlcndp
c2UKPiAKPiBHb29kIGNhdGNoLCB3aWxsIGltcHJvdmUgaXQgaW4gdjIuCj4gCgpJIHdhcyB0b28g
cXVpY2sgdG8gcmVzcG9uc2UsIGJ1dCBkaWRuJ3QgbG9va2VkIGludG8gZGV2bV9rY2FsbG9jLCBq
dXN0Cmd1ZXNzIGl0IGRpZG4ndCB6ZXJvIHRoZSBkYXRhIGZyb20gdGhlIG5hbWUuIEhvd2V2ZXIg
aXQgZG9lcyB6ZXJvIHRoZQpkYXRhIGJ5IHBhc3NpbmcgaW4gX19HRlBfWkVSTy4gU28gSSBuZWVk
IHRvIHJlc3BpbiB2MyBhbmQgZHJvcApkZXZtX2t6YWxsb2MgY2hhbmdlLgoKCj4gVGhhbmtzLgo+
IAo+Pgo+PiBSZXZpZXdlZC1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVs
QGNvbGxhYm9yYS5jb20+Cj4+Cj4+IEdyZWV0aW5ncywKPj4KPj4gLS0gU2ViYXN0aWFuCj4+Cj4+
Pgo+Pj4gwqAgZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMgfCAyICstCj4+
PiDCoCAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMgYi9k
cml2ZXJzLyAKPj4+IHBtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYwo+Pj4gaW5kZXggMDY4
ZGQ0YjMuLmI2YjA5OWIgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlw
L3BtLWRvbWFpbnMuYwo+Pj4gKysrIGIvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21h
aW5zLmMKPj4+IEBAIC04NDIsNyArODQyLDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9wbV9hZGRf
b25lX2RvbWFpbihzdHJ1Y3QgCj4+PiByb2NrY2hpcF9wbXUgKnBtdSwKPj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGRldl9lcnIocG11LT5kZXYsCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICIlcE9GbjogZmFpbGVkIHRvIGdldCBjbGsgYXQgaW5kZXggJWQ6ICVk
XG4iLAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBub2RlLCBpLCBlcnJv
cik7Cj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gZXJyb3I7Cj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBnb3RvIGVycl9wdXRfY2xvY2tzOwo+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgIH0KPj4+IMKgwqDCoMKgwqAgfQo+Pj4gLS0gCj4+PiAyLjcuNAo+Pj4KPj4+Cj4gCj4gCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
