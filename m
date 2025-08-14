Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0C0FCA0EE4
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Aug 2025 15:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:From:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+Y9w85bFDayN9IQMBwMmMxNDJqhDoOc0pHX8GhzE6I=; b=R2DtaqQYzmBsbt
	0M8AiICHcZFMKrV39N458RdMn8TPOn7GarvRgpKeYWxnoTIxDmoyTLhBhtutG9UaIBwZCN42/kxDl
	791aGrRV3db5cM08DOc3ItaXYBHPMNHnDkUUbolS8qWqXcsi/NbIcDTYwx6zObaIidIUHsbn+AVlY
	p+VkwHzX6f0lH2uzfeKlHteJ6Z8+dKkkVTX8PKJO7icTY0atvHjb3Og1zdZaqLF3oD0AlKptwQJLQ
	/k0m7ag31o1Kg42mEPyhkTUNTHQ/uYeCmBaZAkLuaYrgI6niz0LdiR+Ba1idNPB94BFYqxkmfWJ/A
	HJJ0OQwhq43tH6GWs6gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umZsa-0000000HRDv-40ZR;
	Thu, 14 Aug 2025 15:28:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umZ1Z-0000000HHRD-2cbD
	for linux-rockchip@bombadil.infradead.org;
	Thu, 14 Aug 2025 14:33:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=References:Content-Type:
	Content-Transfer-Encoding:In-Reply-To:From:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Sender:Reply-To:Content-ID:Content-Description;
	bh=HYTbEJeXrofpbs+IrmDrCBkyO0qBISpuRD07yukoC3M=; b=BtV7ydsHfcUiuWTK7YDuaMiuz4
	aneipJ/zHUNTIhoMZxaN+n6XXiv3S0OkBFIjszNTiwIdT7cU6CK80qMNKz2JAQM46g92xKN+BsYYp
	XoiYy95DVCi7Wb/tXs3ZIhoKCnYkx92B36TSK177IqCH4y5I0/YxaATHA5BMOKRzfPDMpI4ktQKts
	IlBO7c7eF+SEbde8dHP/2sUcD4NgD/jZz5Ym+fS5XALCyOI1sNUeBULznRBUNzUa5hKZD4zPnkgY4
	l6BkXj3EY74lLJJUcnDgeVGjFXVHv40g/XneVNpJQiDtOH+QZ44xo74Vo2B+ty/PPK0DUd8RuPeaC
	/MN64W2A==;
Received: from mailout2.w1.samsung.com ([210.118.77.12])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umZ1V-0000000GS4H-195F
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Aug 2025 14:33:47 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20250814143341euoutp02cd5d4159d4c3fada746a943ff74bc96c~bqL-IlYOO0705707057euoutp02I
	for <linux-rockchip@lists.infradead.org>; Thu, 14 Aug 2025 14:33:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20250814143341euoutp02cd5d4159d4c3fada746a943ff74bc96c~bqL-IlYOO0705707057euoutp02I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1755182021;
	bh=HYTbEJeXrofpbs+IrmDrCBkyO0qBISpuRD07yukoC3M=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=e7jfXMEtbajFgUjwRBhcTLRIVblrZOpnEbsCSf3WAKB1weUW7mUHDy9TxhLX2WjL+
	 kHFZv4Xci0Ot/45YURj7O/2bNOx4+5EINW25i7mU557c2szi1xkvgufLUGo2E3ntEz
	 34/Z2FghVovoMJr9w84HVH3KRqE89Cp0FhfBmgUc=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20250814143340eucas1p24ef13c4a8a272a5830bc0adbbc8206a2~bqL_iNFfu0056100561eucas1p2Y;
	Thu, 14 Aug 2025 14:33:40 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250814143338eusmtip29e7b2dc498b358fdadaba0c0c10331ce~bqL7__0l03070130701eusmtip20;
	Thu, 14 Aug 2025 14:33:37 +0000 (GMT)
Message-ID: <a3a2f8be-2c3c-49e7-b27a-72364ea48b06@samsung.com>
Date: Thu, 14 Aug 2025 16:33:36 +0200
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
Subject: Re: [PATCH v4 00/13] Apply drm_bridge_connector and panel_bridge
 helper for the Analogix DP driver
To: Damon Ding <damon.ding@rock-chips.com>, andrzej.hajda@intel.com,
	neil.armstrong@linaro.org, rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
	jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
	jingoohan1@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
	kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
	hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
	dmitry.baryshkov@oss.qualcomm.com, l.stach@pengutronix.de,
	dianders@chromium.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20250814104753.195255-1-damon.ding@rock-chips.com>
X-CMS-MailID: 20250814143340eucas1p24ef13c4a8a272a5830bc0adbbc8206a2
X-Msg-Generator: CA
X-RootMTR: 20250814104818eucas1p2c5029f6d5997f4fafd6370f9e7fb2264
X-EPHeader: CA
X-CMS-RootMailID: 20250814104818eucas1p2c5029f6d5997f4fafd6370f9e7fb2264
References: <CGME20250814104818eucas1p2c5029f6d5997f4fafd6370f9e7fb2264@eucas1p2.samsung.com>
	<20250814104753.195255-1-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_153345_681977_3C4A1453 
X-CRM114-Status: GOOD (  15.19  )
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

T24gMTQuMDguMjAyNSAxMjo0NywgRGFtb24gRGluZyB3cm90ZToKPiBQQVRDSCAxIGlzIGEgc21h
bGwgZm9ybWF0IG9wdGltaXphdGlvbiBmb3Igc3RydWN0IGFuYWxvZ2lkX2RwX2RldmljZS4KPiBQ
QVRDSCAyIGlzIHRvIHBlcmZvcm0gbW9kZSBzZXR0aW5nIGluICZkcm1fYnJpZGdlX2Z1bmNzLmF0
b21pY19lbmFibGUuCj4gUEFUQ0ggMy02IGFyZSBwcmVwYXJhdGlvbnMgZm9yIGFwcGx5IGRybV9i
cmlkZ2VfY29ubmVjdG9yIGhlbHBlci4KPiBQQVRDSCA3IGlzIHRvIGFwcGx5IHRoZSBkcm1fYnJp
ZGdlX2Nvbm5lY3RvciBoZWxwZXIuCj4gUEFUQ0ggOC0xMCBhcmUgdG8gbW92ZSB0aGUgcGFuZWwv
YnJpZGdlIHBhcnNpbmcgdG8gdGhlIEFuYWxvZ2l4IHNpZGUuCj4gUEFUQ0ggMTEtMTIgYXJlIHBy
ZXBhcmF0aW9ucyBmb3IgYXBwbHkgcGFuZWxfYnJpZGdlIGhlbHBlci4KPiBQQVRDSCAxMyBpcyB0
byBhcHBseSB0aGUgcGFuZWxfYnJpZGdlIGhlbHBlci4KClRoaXMgc2VyaWVzIGxhY2tzICdzZWxl
Y3TCoERSTV9CUklER0VfQ09OTkVDVE9SJyBpbiBFeHlub3NEUCdzIEtjb25maWcsIApzbyBpdCBj
YXVzZXMgYnVpbGQgYnJlYWs6Cgpkcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcC5jOjE3
NzogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byAKYGRybV9icmlkZ2VfY29ubmVjdG9yX2luaXQnCm1h
a2VbMl06ICoqKiBbc2NyaXB0cy9NYWtlZmlsZS52bWxpbnV4OjkxOiB2bWxpbnV4XSBFcnJvciAx
CgpBZnRlciBhZGRpbmcgdGhpcyBkZXBlbmRlbmN5LCB0aGUgRXh5bm9zIERQIGRyaXZlciBzdG9w
cyB3b3JraW5nLiBPbiAKU2Ftc3VuZyBTbm93IENocm9tZWJvb2sgSSBvYnNlcnZlZCBmb2xsb3dp
bmcgaXNzdWU6CgpbIMKgwqDCoDQuNTM0MjIwXSBleHlub3MtZHAgMTQ1YjAwMDAuZHAtY29udHJv
bGxlcjogZmFpbGVkIHRvIGF0dGFjaCAKZm9sbG93aW5nIHBhbmVsIG9yIGJyaWRnZSAoLTE2KQpb
IMKgwqDCoDQuNTQzNDI4XSBleHlub3MtZHJtIGV4eW5vcy1kcm06IGZhaWxlZCB0byBiaW5kIAox
NDViMDAwMC5kcC1jb250cm9sbGVyIChvcHMgZXh5bm9zX2RwX29wcyk6IC0xNgpbIMKgwqDCoDQu
NTUxNzc1XSBleHlub3MtZHJtIGV4eW5vcy1kcm06IGFkZXYgYmluZCBmYWlsZWQ6IC0xNgpbIMKg
wqDCoDQuNTU2NTU5XSBleHlub3MtZHAgMTQ1YjAwMDAuZHAtY29udHJvbGxlcjogcHJvYmUgd2l0
aCBkcml2ZXIgCmV4eW5vcy1kcCBmYWlsZWQgd2l0aCBlcnJvciAtMTYKCkkgd2lsbCBpbnZlc3Rp
Z2F0ZSBkZXRhaWxzIGxhdGVyIGluIHRoZSBldmVuaW5nLgoKPiBEYW1vbiBEaW5nICgxMyk6Cj4g
ICAgZHJtL2JyaWRnZTogYW5hbG9naXhfZHA6IEZvcm1hbGl6ZSB0aGUgc3RydWN0IGFuYWxvZ2l4
X2RwX2RldmljZQo+ICAgIGRybS9icmlkZ2U6IGFuYWxvZ2l4X2RwOiBNb3ZlICZkcm1fYnJpZGdl
X2Z1bmNzLm1vZGVfc2V0IHRvCj4gICAgICAmZHJtX2JyaWRnZV9mdW5jcy5hdG9taWNfZW5hYmxl
Cj4gICAgZHJtL2JyaWRnZTogYW5hbG9naXhfZHA6IEFkZCAmYW5hbG9naXhfZHBfcGxhdF9kYXRh
Lm5leHRfYnJpZGdlCj4gICAgZHJtL2V4eW5vczogZXh5bm9zX2RwOiBSZW1vdmUgJmV4eW5vc19k
cF9kZXZpY2UucHRuX2JyaWRnZQo+ICAgIGRybS9icmlkZ2U6IGV4eW5vc19kcDogUmVtb3ZlIHVu
dXNlZCAmZXh5bm9zX2RwX2RldmljZS5jb25uZWN0b3IKPiAgICBkcm0vYnJpZGdlOiBhbmFsb2dp
eF9kcDogUmVtb3ZlIHJlZHVuZGFudAo+ICAgICAgJmFuYWxvZ2l4X2RwX3BsYXRfZGF0YS5za2lw
X2Nvbm5lY3Rvcgo+ICAgIGRybS9icmlkZ2U6IGFuYWxvZ2l4X2RwOiBBcHBseSBkcm1fYnJpZGdl
X2Nvbm5lY3RvciBoZWxwZXIKPiAgICBkcm0vYnJpZGdlOiBhbmFsb2dpeF9kcDogQWRkIG5ldyBB
UEkgYW5hbG9naXhfZHBfZmluaXNoX3Byb2JlKCkKPiAgICBkcm0vcm9ja2NoaXA6IGFuYWxvZ2l4
X2RwOiBBcHBseSBhbmFsb2dpeF9kcF9maW5pc2hfcHJvYmUoKQo+ICAgIGRybS9leHlub3M6IGV4
eW5vc19kcDogQXBwbHkgYW5hbG9naXhfZHBfZmluaXNoX3Byb2JlKCkKPiAgICBkcm0vYnJpZGdl
OiBhbmFsb2dpeF9kcDogUmVtb3ZlIHBhbmVsIGRpc2FibGluZyBhbmQgZW5hYmxpbmcgaW4KPiAg
ICAgIGFuYWxvZ2l4X2RwX3NldF9icmlkZ2UoKQo+ICAgIGRybS9icmlkZ2U6IGFuYWxvZ2l4X2Rw
OiBSZW1vdmUgYnJpZGdlIGRpc2FiaW5nIGFuZCBwYW5lbCB1bnByZXBhcmluZwo+ICAgICAgaW4g
YW5hbG9naXhfZHBfdW5iaW5kKCkKPiAgICBkcm0vYnJpZGdlOiBhbmFsb2dpeF9kcDogQXBwbHkg
cGFuZWxfYnJpZGdlIGhlbHBlcgo+Cj4gICAuLi4vZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dp
eF9kcF9jb3JlLmMgICAgfCAzODQgKysrKysrKysrKy0tLS0tLS0tCj4gICAuLi4vZHJtL2JyaWRn
ZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmggICAgfCAgIDUgKy0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9leHlub3MvZXh5bm9zX2RwLmMgICAgICAgICAgICB8ICA0OCArLS0KPiAgIC4uLi9ncHUv
ZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJvY2tjaGlwLmMgICB8ICA0OSArLS0KPiAgIGluY2x1
ZGUvZHJtL2JyaWRnZS9hbmFsb2dpeF9kcC5oICAgICAgICAgICAgICB8ICAgNyArLQo+ICAgNSBm
aWxlcyBjaGFuZ2VkLCAyNDggaW5zZXJ0aW9ucygrKSwgMjQ1IGRlbGV0aW9ucygtKQo+Cj4gLS0t
Cj4KPiBDaGFuZ2VzIGluIHYyOgo+IC0gVXBkYXRlIEV4eW5vcyBEUCBkcml2ZXIgc3luY2hyb25v
dXNseS4KPiAtIE1vdmUgdGhlIHBhbmVsL2JyaWRnZSBwYXJzaW5nIHRvIHRoZSBBbmFsb2dpeCBz
aWRlLgo+Cj4gQ2hhbmdlcyBpbiB2MzoKPiAtIFJlYmFzZSBmb3IgdGhlIGV4aXN0aW5nIGRldm1f
ZHJtX2JyaWRnZV9hbGxvYygpIGFwcGx5aW5nIGNvbW1pdC4KPiAtIEZpeCB0aGUgdHlwb2dyYXBo
aWNhbCBlcnJvciBvZiBwYW5lbC9icmlkZ2UgY2hlY2sgaW4gZXh5bm9zX2RwX2JpbmQoKS4KPiAt
IFNxdWFzaCBhbGwgY29tbWl0cyByZWxhdGVkIHRvIHNraXBfY29ubmVjdG9yIGRlbGV0aW9uIGlu
IGJvdGggRXh5bm9zIGFuZAo+ICAgIEFuYWxvZ2l4IGNvZGUgaW50byBvbmUuCj4gLSBBcHBseSBw
YW5lbF9icmlkZ2UgaGVscGVyIHRvIG1ha2UgdGhlIGNvZGVzIG1vcmUgY29uY2lzZS4KPiAtIEZp
eCB0aGUgaGFuZGluZyBvZiBicmlkZ2UgaW4gYW5hbG9naXhfZHBfYnJpZGdlX2dldF9tb2Rlcygp
Lgo+IC0gUmVtb3ZlIHVubmVjZXNzYXJ5IHBhcmFtZXRlciBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvciog
Zm9yIGNhbGxiYWNrCj4gICAgJmFuYWxvZ2l4X2RwX3BsYXRfZGF0YS5hdHRhY2goKS4KPiAtIElu
IG9yZGVyIHRvIGRlY291cGxlIHRoZSBjb25uZWN0b3IgZHJpdmVyIGFuZCB0aGUgYnJpZGdlIGRy
aXZlciwgbW92ZQo+ICAgIHRoZSBicmlkZ2UgY29ubmVjdG9yIGluaXRpbGl6YXRpb24gdG8gdGhl
IFJvY2tjaGlwIGFuZCBFeHlub3Mgc2lkZXMuCj4KPiBDaGFuZ2VzIGluIHY0Ogo+IC0gUmViYXNl
IGZvciB0aGUgYXBwbGllZCAmZHJtX2JyaWRnZV9mdW5jcy5kZXRlY3QoKSBtb2RpZmljYXRpb24g
Y29tbWl0Lgo+IC0gUmVuYW1lIGFuYWxvZ2l4X2RwX2ZpbmRfcGFuZWxfb3JfYnJpZGdlKCkgdG8g
YW5hbG9naXhfZHBfZmluaXNoX3Byb2JlKCkuCj4gLSBEcm9wIHRoZSBkcm1tX2VuY29kZXJfaW5p
dCgpIG1vZGlmaWNhdGlvbiBjb21taXQuCj4gLSBSZW5hbWUgdGhlICZhbmFsb2dpeF9kcF9wbGF0
X2RhdGEuYnJpZGdlIHRvCj4gICAgJmFuYWxvZ2l4X2RwX3BsYXRfZGF0YS5uZXh0X2JyaWRnZS4K
PgpCZXN0IHJlZ2FyZHMKLS0gCk1hcmVrIFN6eXByb3dza2ksIFBoRApTYW1zdW5nIFImRCBJbnN0
aXR1dGUgUG9sYW5kCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
