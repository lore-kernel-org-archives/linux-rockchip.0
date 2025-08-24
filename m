Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A195CA0EEB
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Aug 2025 06:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3ktyvlowwWWoqUd586Y7s5CidwRiiRIJpIwrunnAWU=; b=4SQuEKNnzn+sCA
	gqqT/+FjZYvr5Sn5jYvFcClJ5MUTuzXGxxPdZJwlxNB1nUF7EllQrE1crVurvQzpiFwI6+fsF21l5
	LGkI0Mq7hCJhV9XsmmGoiBHFm5mGcHUzFf4bCqT5DIRC9gNF/342bcIS39BrFLHSS4qT2fvGTTa0x
	bHC+BOuH7QC8/ODj8dWwZg6SBxjpHi4LsiHCe0Bnsoil83LYSMRPWH2A4+1W8GWcVMXF29fvD3O7h
	74Ps5F7gkCq7YH2/UAinAKuAxJk0ypctjw2gv4UrcL5oJ2A/WponAsxyl0aIeL2HOD2222Wdg8cGT
	QG5lHUvorjLWcXEvxXHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq4Ky-00000005mGr-012Y;
	Sun, 24 Aug 2025 06:36:20 +0000
Received: from mail-m1973176.qiye.163.com ([220.197.31.76])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq4Kv-00000005mG6-0JL4;
	Sun, 24 Aug 2025 06:36:19 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2063387f6;
	Sun, 24 Aug 2025 14:36:09 +0800 (GMT+08:00)
Message-ID: <8513b4b6-0b59-4b42-864b-0fe0423cd7fd@rock-chips.com>
Date: Sun, 24 Aug 2025 14:36:07 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] drm/rockchip: analogix_dp: Apply
 devm_clk_get_optional() for &rockchip_dp_device.grfclk
To: Heiko Stuebner <heiko@sntech.de>, andy.yan@rock-chips.com,
 hjc@rock-chips.com
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 dmitry.baryshkov@oss.qualcomm.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250824031932.3204920-1-damon.ding@rock-chips.com>
 <7656195.LvFx2qVVIh@phil>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <7656195.LvFx2qVVIh@phil>
X-HM-Tid: 0a98dacaa0e303a3kunmefff2f7629c876
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkoZQlYYTk5LS01CQkpMQk9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=bxUMKVL+NrOoJGo0j4JgfMVjfGeoJtah3thFVVG8wSzKTDStABIUg7WbZ9XvtcP47w1h8dvuRThD6xthQB6L53UVa3N1PaIfZmKod8eCZd4iuBDTPsGmWtFHEFkK6EmcaYr6PGmOunhPJgBRb+vaFxz5D6HPK53Opjr1JHcx5ws=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=XcRU7Z/PkU7Ppn7Ao+1BSxCwQMj8o7al8ldpZz63HXk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250823_233617_760590_C20BF88D 
X-CRM114-Status: GOOD (  16.54  )
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

SGkgSGVpa28sCgpPbiA4LzI0LzIwMjUgMjowOCBQTSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4g
SGkgRGFtb24sCj4gCj4gQW0gU29ubnRhZywgMjQuIEF1Z3VzdCAyMDI1LCAwNToxOTozMiBNaXR0
ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIERhbW9uIERpbmc6Cj4+IFRoZSAiZ3Jm
IiBjbG9jayBpcyBvcHRpb25hbCBmb3IgUm9ja2NoaXAgZURQIGNvbnRyb2xsZXIoUkszMzk5IG5l
ZWRzCj4+IHdoaWxlIFJLMzI4OCBhbmQgUkszNTg4IGRvIG5vdCkuCj4+Cj4+IEl0IGNhbiBtYWtl
IHRoZSBjb2RlIG1vcmUgY29uc2ljZSB0byB1c2UgZGV2bV9jbGtfZ2V0X29wdGlvbmFsKCkKPj4g
aW5zdGVhZCBvZiBkZXZtX2Nsa19nZXQoKSB3aXRoIGV4dHJhIGNoZWNrcy4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogRGFtb24gRGluZyA8ZGFtb24uZGluZ0Byb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+
ICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJvY2tjaGlwLmMgfCA4ICsr
LS0tLS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMo
LSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9hbmFsb2dpeF9k
cC1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJvY2tj
aGlwLmMKPj4gaW5kZXggZDMwZjA5ODNhNTNhLi5kMGY3OGFiOWZhYTYgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9hbmFsb2dpeF9kcC1yb2NrY2hpcC5jCj4+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9hbmFsb2dpeF9kcC1yb2NrY2hpcC5jCj4+IEBAIC0z
MzUsMTIgKzMzNSw4IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZHBfb2ZfcHJvYmUoc3RydWN0IHJv
Y2tjaGlwX2RwX2RldmljZSAqZHApCj4+ICAgCQlyZXR1cm4gUFRSX0VSUihkcC0+Z3JmKTsKPj4g
ICAJfQo+PiAgIAo+PiAtCWRwLT5ncmZjbGsgPSBkZXZtX2Nsa19nZXQoZGV2LCAiZ3JmIik7Cj4+
IC0JaWYgKFBUUl9FUlIoZHAtPmdyZmNsaykgPT0gLUVOT0VOVCkgewo+PiAtCQlkcC0+Z3JmY2xr
ID0gTlVMTDsKPj4gLQl9IGVsc2UgaWYgKFBUUl9FUlIoZHAtPmdyZmNsaykgPT0gLUVQUk9CRV9E
RUZFUikgewo+PiAtCQlyZXR1cm4gLUVQUk9CRV9ERUZFUjsKPj4gLQl9IGVsc2UgaWYgKElTX0VS
UihkcC0+Z3JmY2xrKSkgewo+PiArCWRwLT5ncmZjbGsgPSBkZXZtX2Nsa19nZXRfb3B0aW9uYWwo
ZGV2LCAiZ3JmIik7Cj4+ICsJaWYgKElTX0VSUihkcC0+Z3JmY2xrKSkgewo+PiAgIAkJRFJNX0RF
Vl9FUlJPUihkZXYsICJmYWlsZWQgdG8gZ2V0IGdyZiBjbG9ja1xuIik7Cj4+ICAgCQlyZXR1cm4g
UFRSX0VSUihkcC0+Z3JmY2xrKTsKPiAKPiBnZW5lcmFsbCBJIGRlZmluaXRseSBJIGFncmVlLCBi
dXQgeW91J3JlIGxvb3NpbmcgdGhlCj4gImRvbid0IHByaW50IGFueXRoaW5nIGZvciBFUFJPQkVf
REVGRVIiIGhhbmRsaW5nLgo+IAo+IEFkZGl0aW9uYWxseSBEUk1fREVWX0VSUk9SIHNheXMgaW4g
dGhlIGNvZGUKPiAidGhpcyBpcyBkZXByZWNhdGVkIGluIGZhdm9yIG9mIGRybV9lcnIoKSBvciBk
ZXZfZXJyKCkuIiAuCj4gCj4gQWxzbyB0aGlzIGluIHRoZSBwcm9iZS1wYXRoLCBzbyB0byBjYXRj
aCBib3RoIGlzc3VlcywgSSdkIHN1Z2VzdAo+IHVzaW5nIGRldl9lcnJfcHJvYmUoKSBmb3IgdGhl
IG1lc3NhZ2UsIHdoaWNoIGhhbmRsZXMgRVBST0JFX0RFRkVSCj4gYXV0b21hdGljYWxseS4KPiAK
ClllYWgsIEkgd2lsbCB1c2UgZGV2X2Vycl9wcm9iZSgpIGluc3RlYWQgaW4gdGhlIG5leHQgdmVy
c2lvbi4KCkluIGFkZGl0aW9uLCBpdCBzaG91bGQgYmUgbmljZSB0byBtb2RpZnkgdGhlIG90aGVy
IHNpbWlsYXIgY29kZXMgaW4gCnJvY2tjaGlwX2RwX29mX3Byb2JlKCkuIEkgd2lsbCBhZGQgYW5v
dGhlciBjb21taXQgdG8gZG8gaXQuCgpCZXN0IHJlZ2FyZHMsCkRhbW9uCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
