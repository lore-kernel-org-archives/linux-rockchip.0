Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 620C7D79767
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Jan 2026 13:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ImDhkM7rt9uDiNTLHfzKHdt+QiY4jx3AigjFOA+rJmM=; b=whuJ6mCaHkRrtu
	usi8Pcc7G7CNzRxXsXW/9L3xifIGatkRBZj4ZUmQFSN/E/1TbZ+U+EoBnJFCb49/WwpkGANGzWGit
	wvg3zrMRfm9TpmH1PcIWzDu5Lontdr1Md8vJMn82+imiiAf3oMDCab7t7FemgXuJ2BBavYumrKk6C
	KUcoG0Sg2ddCyTcEis9MKAxQiLtGEF0eq2QUfsHe7R5jbGnSl5RhHBd8YVW8cfyAYyNmxKKToCjhc
	ScE8FF3qh2s05ZexZQWrhU2qhter4nlEJS7OVyxK3yHO90bGmz0QTXknu31/2+BoRynticR9vI1yA
	l8HwsYi9k4CmaLWt2XzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmBEL-00000002f2J-0qC3;
	Sat, 31 Jan 2026 13:41:41 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmBEI-00000002f0c-03FW
	for linux-rockchip@lists.infradead.org;
	Sat, 31 Jan 2026 13:41:39 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 41C26C22F7D;
	Sat, 31 Jan 2026 13:41:39 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 5EE19606B6;
	Sat, 31 Jan 2026 13:41:35 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 96957119A8886;
	Sat, 31 Jan 2026 14:41:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769866893; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Lj8iwZ6EUO8gYZYfyUyDFt5AjJ1lvkxeyXDxTyIEnE0=;
	b=D2WoB0kD19f7FC8uabxA5frVmDRNS7fqqgky8NzIkrsRnfwiWTLuEskJEDLKYMlKhKTDJH
	aUO617aeS3F3x8/HEEuRdaqk3A9Gk/y6xfOwYgrNPMncoCNzyyVtODzg8lz/QuvRmmUI0z
	juqEkpIPMZEdJU6TUjdvrcUoC5DXje2HwUF8lNGYuSAkdkAa+VJPfWGu/yCcrFiY5wb+hx
	QSfUvUEXEHMg1JjW3cLE8zZ1YJKXa7rzZOAPjmHsZog70rizcJ5y99rMrtxlMVi9pgZRKj
	JuOYUBzsaJtcNkpHCLNcFE0tBazaKR54lEIs5ZlfC6dYnc1bqmNtzKXN6kWzzg==
Mime-Version: 1.0
Date: Sat, 31 Jan 2026 14:41:21 +0100
Message-Id: <DG2TG4NCMKXQ.36REPVMTQ7WWD@bootlin.com>
Subject: Re: [PATCH v8 04/18] drm/bridge: analogix_dp: Add
 &analogix_dp_plat_data.next_bridge
Cc: <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@gmail.com>, <maarten.lankhorst@linux.intel.com>,
 <mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
 <simona@ffwll.ch>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <kernel@pengutronix.de>, <festevam@gmail.com>, <inki.dae@samsung.com>,
 <sw0312.kim@samsung.com>, <kyungmin.park@samsung.com>, <krzk@kernel.org>,
 <alim.akhtar@samsung.com>, <jingoohan1@gmail.com>,
 <p.zabel@pengutronix.de>, <hjc@rock-chips.com>, <heiko@sntech.de>,
 <andy.yan@rock-chips.com>, <dmitry.baryshkov@oss.qualcomm.com>,
 <dianders@chromium.org>, <m.szyprowski@samsung.com>,
 <jani.nikula@intel.com>, <linux-kernel@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <imx@lists.linux.dev>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-samsung-soc@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
To: "Damon Ding" <damon.ding@rock-chips.com>, <andrzej.hajda@intel.com>,
 <neil.armstrong@linaro.org>, <rfoss@kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20251217093321.3108939-1-damon.ding@rock-chips.com>
 <20251217093321.3108939-5-damon.ding@rock-chips.com>
 <DFCCU8AN0GZQ.2CYTKKV40JYLI@bootlin.com>
 <187b2c32-5a10-4555-8d49-cf1ee86a8eaa@rock-chips.com>
 <f644a5ab-5dd1-4f4e-b2e9-3585dec81a96@rock-chips.com>
In-Reply-To: <f644a5ab-5dd1-4f4e-b2e9-3585dec81a96@rock-chips.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260131_054138_236035_7577891E 
X-CRM114-Status: GOOD (  20.92  )
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

T24gV2VkIEphbiA3LCAyMDI2IGF0IDM6MzYgQU0gQ0VULCBEYW1vbiBEaW5nIHdyb3RlOgo+IEhp
IEx1Y2EsCj4KPiBPbiAxLzQvMjAyNiAxMDo1MSBBTSwgRGFtb24gRGluZyB3cm90ZToKPj4gSGkg
THVjYSwKPj4KPj4gT24gMTIvMzEvMjAyNSA3OjExIFBNLCBMdWNhIENlcmVzb2xpIHdyb3RlOgo+
Pj4gSGVsbG8gRGFtb24sCj4+Pgo+Pj4gT24gV2VkIERlYyAxNywgMjAyNSBhdCAxMDozMyBBTSBD
RVQsIERhbW9uIERpbmcgd3JvdGU6Cj4+Pj4gSW4gb3JkZXIgdG8gbW92ZSB0aGUgcGFuZWwvYnJp
ZGdlIHBhcnNpbmcgYW5kIGF0dGFjaG1lbmV0IHRvIHRoZQo+Pj4+IEFuYWxvZ2l4IHNpZGUsIGFk
ZCBjb21wb25lbnQgc3RydWN0IGRybV9icmlkZ2UgKm5leHRfYnJpZGdlIHRvCj4+Pj4gcGxhdGZv
cm0gZGF0YSBzdHJ1Y3QgYW5hbG9naXhfZHBfcGxhdF9kYXRhLgo+Pj4+Cj4+Pj4gVGhlIG1vdmVt
ZW50IG1ha2VzIHNlbnNlIGJlY2F1c2UgdGhlIHBhbmVsL2JyaWRnZSBzaG91bGQgbG9naWNhbGx5
Cj4+Pj4gYmUgcG9zaXRpb25lZCBiZWhpbmQgdGhlIEFuYWxvZ2l4IGJyaWRnZSBpbiB0aGUgZGlz
cGxheSBwaXBlbGluZS4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IERhbW9uIERpbmcgPGRhbW9u
LmRpbmdAcm9jay1jaGlwcy5jb20+Cj4+Pj4gUmV2aWV3ZWQtYnk6IERtaXRyeSBCYXJ5c2hrb3Yg
PGRtaXRyeS5iYXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNvbT4KPj4+PiBUZXN0ZWQtYnk6IE1hcmVr
IFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KPj4+Pgo+Pj4+IC0tLQo+Pj4+
Cj4+Pj4gQ2hhbmdlcyBpbiB2NDoKPj4+PiAtIFJlbmFtZSB0aGUgJmFuYWxvZ2l4X2RwX3BsYXRf
ZGF0YS5icmlkZ2UgdG8KPj4+PiDCoMKgICZhbmFsb2dpeF9kcF9wbGF0X2RhdGEubmV4dF9icmlk
Z2UKPj4+PiAtLS0KPj4+PiDCoCBpbmNsdWRlL2RybS9icmlkZ2UvYW5hbG9naXhfZHAuaCB8IDEg
Kwo+Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Pj4+Cj4+Pj4gZGlmZiAt
LWdpdCBhL2luY2x1ZGUvZHJtL2JyaWRnZS9hbmFsb2dpeF9kcC5oIGIvaW5jbHVkZS9kcm0vYnJp
ZGdlLwo+Pj4+IGFuYWxvZ2l4X2RwLmgKPj4+PiBpbmRleCBjZjE3NjQ2YzEzMTAuLjU4MjM1N2My
MDY0MCAxMDA2NDQKPj4+PiAtLS0gYS9pbmNsdWRlL2RybS9icmlkZ2UvYW5hbG9naXhfZHAuaAo+
Pj4+ICsrKyBiL2luY2x1ZGUvZHJtL2JyaWRnZS9hbmFsb2dpeF9kcC5oCj4+Pj4gQEAgLTI3LDYg
KzI3LDcgQEAgc3RhdGljIGlubGluZSBib29sIGlzX3JvY2tjaGlwKGVudW0KPj4+PiBhbmFsb2dp
eF9kcF9kZXZ0eXBlIHR5cGUpCj4+Pj4gwqAgc3RydWN0IGFuYWxvZ2l4X2RwX3BsYXRfZGF0YSB7
Cj4+Pj4gwqDCoMKgwqDCoCBlbnVtIGFuYWxvZ2l4X2RwX2RldnR5cGUgZGV2X3R5cGU7Cj4+Pj4g
wqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX3BhbmVsICpwYW5lbDsKPj4+PiArwqDCoMKgIHN0cnVjdCBk
cm1fYnJpZGdlICpuZXh0X2JyaWRnZTsKPj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBkcm1fZW5jb2Rl
ciAqZW5jb2RlcjsKPj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0
b3I7Cj4+Pj4gwqDCoMKgwqDCoCBib29sIHNraXBfY29ubmVjdG9yOwo+Pj4KPj4+IEl0IHRvb2sg
YSB3aGlsZSB0byB1bmRlcnN0YW5kIHdoeSB5b3UgYXJlIGFkZGluZyB0aGUgbmV4dF9icmlkZ2UK
Pj4+IHBvaW50ZXIgaW4KPj4+IHN0cnVjdCBhbmFsb2dpeF9kcF9wbGF0X2RhdGEgaW5zdGVhZCBv
ZiBzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2aWNlLAo+Pj4gd2hlcmUgaXQKPj4+IHdvdWxkIGJlIG1v
cmUgbmF0dXJhbC4gSSBmb3VuZCBhbiBhbnN3ZXIgaW4gcGF0Y2ggMTY6IHdpdGggY3VycmVudAo+
Pj4gY29kZSB5b3UKPj4+IG5lZWQgdG8gcGxhY2UgbmV4dF9icmlkZ2UgaW4gc3RydWN0IGFuYWxv
Z2l4X2RwX3BsYXRfZGF0YSBiZWNhdXNlIGl0IGlzCj4+PiB1c2VkIGJ5IHVzZXIgZHJpdmVycyB0
byBhdHRhY2gsIGFuZCB0aG9zZSBkcml2ZXJzIGhhdmUgbm8gYWNjZXNzIHRvCj4+PiBzdHJ1Y3QK
Pj4+IGFuYWxvZ2l4X2RwX2RldmljZS4gSG93ZXZlciBwYXRjaCAxNiAod2hpY2ggbG9va3MgYSB2
ZXJ5IGdvb2QgY2xlYW51cAo+Pj4gQlRXKQo+Pj4gbmV4dF9icmlkZ2UgY2FuIGJlIG1vdmVkIHRv
IHN0cnVjdCBhbmFsb2dpeF9kcF9kZXZpY2UuCj4+Pgo+Pj4gU28gSSdkIHN1Z2dlc3QgdG8gbW92
ZSBwYXRjaCAxNiBiZWZvcmUgdGhpcyBvbmUgaWYgaXQgZWFzaWx5IGRvYWJsZSwgc28KPj4+IHRo
YXQgeW91IGNhbiBpbnRyb2R1Y2UgbmV4dF9icmlkZ2UgaW4gc3RydWN0IGFuYWxvZ2l4X2RwX2Rl
dmljZSBmcm9tIHRoZQo+Pj4gYmVnaW5uaW5nLiBTaG91bGQgdGhhdCBiZSBpbXBvc3NpYmxlLCB5
b3UgY2FuIHNlbmQgYSBzZXBhcmF0ZSBwYXRjaCB0bwo+Pj4gbW92ZQo+Pj4gbmV4dF9icmlkZ2Us
IGFmdGVyIHBhdGNoIDE2Lgo+Pj4KPj4+Cj4+Cj4+IFRoYW5rcyBmb3IgeW91ciBuaWNlIHN1Z2dl
c3Rpb24hIEFmdGVyIHBhdGNoIDE2LCBicmlkZ2UgYXR0YWNobWVudCBpcwo+PiB1bmlmaWVkIHRv
IHRoZSBBbmFsb2dpeCBzaWRlLCB3aGljaCBhY3RzIGFzIGEgY29tbW9uIGJyaWRnZSBkcml2ZXIg
Zm9yCj4+IGJvdGggdGhlIFJvY2tjaGlwIGFuZCBFeHlub3Mgc2lkZXMsIHNvIG1vdmluZyBuZXh0
X2JyaWRnZSB0aGVyZSBtYWtlcwo+PiBwZXJmZWN0IHNlbnNlLiBJIHdpbGwgYWRkIGEgc2VwYXJh
dGUgcGF0Y2ggdG8gbW92ZSBuZXh0X2JyaWRnZSBpbiB2OS4KPj4KPj4KPgo+IE15IGFwb2xvZ2ll
cyBmb3IgcmV2ZXJzaW5nIHRoZSBwbGFuIHRvIG1vdmUgbmV4dF9icmlkZ2UgdG8gdGhlIEFuYWxv
Z2l4Cj4gc2lkZSBpbiB2OSAtLSBJIG9ubHkgY29uc2lkZXJlZCB0aGUgUm9ja2NoaXAgc2lkZSBi
ZWZvcmUuCj4KPiBXaGVuIEkgdHJpZWQgbW9kaWZ5aW5nIHRoZSBjb2RlIGJhc2VkIG9uIHlvdXIg
c3VnZ2VzdGlvbiwgSSBmb3VuZCBpdAo+IGJldHRlciB0byBrZWVwICZhbmFsb2dpeF9wbGF0X2Rh
dGEubmV4dF9icmlkZ2UgYXMgaXMuIFRoaXMgaXMgYmVjYXVzZQo+IHRoZSBFeHlub3Mgc2lkZSBu
ZWVkcyB0byBtYWludGFpbiBjb21wYXRpYmlsaXR5IHdpdGggdGhlIGxlZ2FjeSBtZXRob2QKPiBv
ZiBwYXJzaW5nIHBhbmVscyBhbmQgYnJpZGdlcywgc28gdGhlIG5leHQgYnJpZGdlIGlzbid0IGFs
d2F5cyBwYXJzZWQgYnkKPiB0aGUgY29tbW9uIEFuYWxvZ2l4IHNpZGUgZHJpdmVyLgo+Cj4gVGhp
cyBwYXRjaCBzZXJpZXMgaGFzIGJlZW4gcGVuZGluZyBmb3IgYWdlcywgYW5kIEknbSBldmVuIGEg
Yml0IGZ1enp5IG9uCj4gdGhlIGRldGFpbHMgbXlzZWxmLiA7LSkKCk9LLCBtYWtlcyBzZW5zZS4K
ClJldmlld2VkLWJ5OiBMdWNhIENlcmVzb2xpIDxsdWNhLmNlcmVzb2xpQGJvb3RsaW4uY29tPgoK
LS0KTHVjYSBDZXJlc29saSwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2lu
ZWVyaW5nCmh0dHBzOi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
