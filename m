Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDCFFCF6BE3
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 02:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XynK3wCQLzWUi0nDAJuAi37GeiqSm4RHMtFIk58Mio=; b=EfbOg2vD2PeUEZ
	KDAKIK1dBcx3ou7EaVCSIcOaX+RR5y/aKi0n25q6VyBKxQIMDEV+dF1It0UIYAuwPTokYis4dWfZm
	OsThW6uAFMo846Hg/wrLYzC1MIymBqFvYIZVEpMcrEoDrVA742QO4NFBzZBZQoh0apApQBAkeEyE3
	nIn0iDL5M4KFc38CZtoWsaofuhDkVTil3qA+a5Uw1xN8Lmpy4VUe+kdV75NGoKw3ncfGZc8rPYooc
	Bu8sxzh6TnbgA0r8l1g8Yd0arN4k09V9/JyLWvIGf0iLbo+Gv+Qt5ftwMPiNfq0C5jsllAUlsR3qK
	VlWS98nhZD1etcUoSTbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdJQ5-0000000E575-3DKD;
	Wed, 07 Jan 2026 02:37:09 +0000
Received: from mail-m49212.qiye.163.com ([45.254.49.212])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdJQ2-0000000E55H-2cVF;
	Wed, 07 Jan 2026 02:37:08 +0000
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2fbef9ce3;
	Wed, 7 Jan 2026 10:36:57 +0800 (GMT+08:00)
Message-ID: <f644a5ab-5dd1-4f4e-b2e9-3585dec81a96@rock-chips.com>
Date: Wed, 7 Jan 2026 10:36:57 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v8 04/18] drm/bridge: analogix_dp: Add
 &analogix_dp_plat_data.next_bridge
To: Luca Ceresoli <luca.ceresoli@bootlin.com>, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
 jingoohan1@gmail.com, p.zabel@pengutronix.de, hjc@rock-chips.com,
 heiko@sntech.de, andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
 dianders@chromium.org, m.szyprowski@samsung.com, jani.nikula@intel.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251217093321.3108939-1-damon.ding@rock-chips.com>
 <20251217093321.3108939-5-damon.ding@rock-chips.com>
 <DFCCU8AN0GZQ.2CYTKKV40JYLI@bootlin.com>
 <187b2c32-5a10-4555-8d49-cf1ee86a8eaa@rock-chips.com>
Content-Language: en-US
In-Reply-To: <187b2c32-5a10-4555-8d49-cf1ee86a8eaa@rock-chips.com>
X-HM-Tid: 0a9b965081fc03a3kunme7026636f3fcd
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx5DHlYdTEofSRpLSklPH0JWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=XTc3ywoNaUASUctvi7aqpNtFJToV3y76ir90mhINcT3SspMUdeAXdYHXWAhULkBokH/TOTyxAl1xgR5zUham/P2R2/bTWNZKibwHhve030/J2UcGgRkWDPAlabHxczeZ0+/YEt8YtK3jl3yaUXGchACliUpEFdyJR41n+ftMllA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=XG1ve9KKgO4Stoa/EGMqCZSP6qpS5GUgHSKbTxkyq9Q=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_183707_174876_94A5C18C 
X-CRM114-Status: GOOD (  19.90  )
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

SGkgTHVjYSwKCk9uIDEvNC8yMDI2IDEwOjUxIEFNLCBEYW1vbiBEaW5nIHdyb3RlOgo+IEhpIEx1
Y2EsCj4gCj4gT24gMTIvMzEvMjAyNSA3OjExIFBNLCBMdWNhIENlcmVzb2xpIHdyb3RlOgo+PiBI
ZWxsbyBEYW1vbiwKPj4KPj4gT24gV2VkIERlYyAxNywgMjAyNSBhdCAxMDozMyBBTSBDRVQsIERh
bW9uIERpbmcgd3JvdGU6Cj4+PiBJbiBvcmRlciB0byBtb3ZlIHRoZSBwYW5lbC9icmlkZ2UgcGFy
c2luZyBhbmQgYXR0YWNobWVuZXQgdG8gdGhlCj4+PiBBbmFsb2dpeCBzaWRlLCBhZGQgY29tcG9u
ZW50IHN0cnVjdCBkcm1fYnJpZGdlICpuZXh0X2JyaWRnZSB0bwo+Pj4gcGxhdGZvcm0gZGF0YSBz
dHJ1Y3QgYW5hbG9naXhfZHBfcGxhdF9kYXRhLgo+Pj4KPj4+IFRoZSBtb3ZlbWVudCBtYWtlcyBz
ZW5zZSBiZWNhdXNlIHRoZSBwYW5lbC9icmlkZ2Ugc2hvdWxkIGxvZ2ljYWxseQo+Pj4gYmUgcG9z
aXRpb25lZCBiZWhpbmQgdGhlIEFuYWxvZ2l4IGJyaWRnZSBpbiB0aGUgZGlzcGxheSBwaXBlbGlu
ZS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBEYW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJvY2stY2hp
cHMuY29tPgo+Pj4gUmV2aWV3ZWQtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hr
b3ZAb3NzLnF1YWxjb21tLmNvbT4KPj4+IFRlc3RlZC1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5z
enlwcm93c2tpQHNhbXN1bmcuY29tPgo+Pj4KPj4+IC0tLQo+Pj4KPj4+IENoYW5nZXMgaW4gdjQ6
Cj4+PiAtIFJlbmFtZSB0aGUgJmFuYWxvZ2l4X2RwX3BsYXRfZGF0YS5icmlkZ2UgdG8KPj4+IMKg
wqAgJmFuYWxvZ2l4X2RwX3BsYXRfZGF0YS5uZXh0X2JyaWRnZQo+Pj4gLS0tCj4+PiDCoCBpbmNs
dWRlL2RybS9icmlkZ2UvYW5hbG9naXhfZHAuaCB8IDEgKwo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2JyaWRnZS9h
bmFsb2dpeF9kcC5oIGIvaW5jbHVkZS9kcm0vYnJpZGdlLyAKPj4+IGFuYWxvZ2l4X2RwLmgKPj4+
IGluZGV4IGNmMTc2NDZjMTMxMC4uNTgyMzU3YzIwNjQwIDEwMDY0NAo+Pj4gLS0tIGEvaW5jbHVk
ZS9kcm0vYnJpZGdlL2FuYWxvZ2l4X2RwLmgKPj4+ICsrKyBiL2luY2x1ZGUvZHJtL2JyaWRnZS9h
bmFsb2dpeF9kcC5oCj4+PiBAQCAtMjcsNiArMjcsNyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaXNf
cm9ja2NoaXAoZW51bSAKPj4+IGFuYWxvZ2l4X2RwX2RldnR5cGUgdHlwZSkKPj4+IMKgIHN0cnVj
dCBhbmFsb2dpeF9kcF9wbGF0X2RhdGEgewo+Pj4gwqDCoMKgwqDCoCBlbnVtIGFuYWxvZ2l4X2Rw
X2RldnR5cGUgZGV2X3R5cGU7Cj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBkcm1fcGFuZWwgKnBhbmVs
Owo+Pj4gK8KgwqDCoCBzdHJ1Y3QgZHJtX2JyaWRnZSAqbmV4dF9icmlkZ2U7Cj4+PiDCoMKgwqDC
oMKgIHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlcjsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IGRy
bV9jb25uZWN0b3IgKmNvbm5lY3RvcjsKPj4+IMKgwqDCoMKgwqAgYm9vbCBza2lwX2Nvbm5lY3Rv
cjsKPj4KPj4gSXQgdG9vayBhIHdoaWxlIHRvIHVuZGVyc3RhbmQgd2h5IHlvdSBhcmUgYWRkaW5n
IHRoZSBuZXh0X2JyaWRnZSAKPj4gcG9pbnRlciBpbgo+PiBzdHJ1Y3QgYW5hbG9naXhfZHBfcGxh
dF9kYXRhIGluc3RlYWQgb2Ygc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSwgCj4+IHdoZXJlIGl0
Cj4+IHdvdWxkIGJlIG1vcmUgbmF0dXJhbC4gSSBmb3VuZCBhbiBhbnN3ZXIgaW4gcGF0Y2ggMTY6
IHdpdGggY3VycmVudCAKPj4gY29kZSB5b3UKPj4gbmVlZCB0byBwbGFjZSBuZXh0X2JyaWRnZSBp
biBzdHJ1Y3QgYW5hbG9naXhfZHBfcGxhdF9kYXRhIGJlY2F1c2UgaXQgaXMKPj4gdXNlZCBieSB1
c2VyIGRyaXZlcnMgdG8gYXR0YWNoLCBhbmQgdGhvc2UgZHJpdmVycyBoYXZlIG5vIGFjY2VzcyB0
byAKPj4gc3RydWN0Cj4+IGFuYWxvZ2l4X2RwX2RldmljZS4gSG93ZXZlciBwYXRjaCAxNiAod2hp
Y2ggbG9va3MgYSB2ZXJ5IGdvb2QgY2xlYW51cCAKPj4gQlRXKQo+PiBuZXh0X2JyaWRnZSBjYW4g
YmUgbW92ZWQgdG8gc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZS4KPj4KPj4gU28gSSdkIHN1Z2dl
c3QgdG8gbW92ZSBwYXRjaCAxNiBiZWZvcmUgdGhpcyBvbmUgaWYgaXQgZWFzaWx5IGRvYWJsZSwg
c28KPj4gdGhhdCB5b3UgY2FuIGludHJvZHVjZSBuZXh0X2JyaWRnZSBpbiBzdHJ1Y3QgYW5hbG9n
aXhfZHBfZGV2aWNlIGZyb20gdGhlCj4+IGJlZ2lubmluZy4gU2hvdWxkIHRoYXQgYmUgaW1wb3Nz
aWJsZSwgeW91IGNhbiBzZW5kIGEgc2VwYXJhdGUgcGF0Y2ggdG8gCj4+IG1vdmUKPj4gbmV4dF9i
cmlkZ2UsIGFmdGVyIHBhdGNoIDE2Lgo+Pgo+Pgo+IAo+IFRoYW5rcyBmb3IgeW91ciBuaWNlIHN1
Z2dlc3Rpb24hIEFmdGVyIHBhdGNoIDE2LCBicmlkZ2UgYXR0YWNobWVudCBpcyAKPiB1bmlmaWVk
IHRvIHRoZSBBbmFsb2dpeCBzaWRlLCB3aGljaCBhY3RzIGFzIGEgY29tbW9uIGJyaWRnZSBkcml2
ZXIgZm9yIAo+IGJvdGggdGhlIFJvY2tjaGlwIGFuZCBFeHlub3Mgc2lkZXMsIHNvIG1vdmluZyBu
ZXh0X2JyaWRnZSB0aGVyZSBtYWtlcyAKPiBwZXJmZWN0IHNlbnNlLiBJIHdpbGwgYWRkIGEgc2Vw
YXJhdGUgcGF0Y2ggdG8gbW92ZSBuZXh0X2JyaWRnZSBpbiB2OS4KPiAKPiAKCk15IGFwb2xvZ2ll
cyBmb3IgcmV2ZXJzaW5nIHRoZSBwbGFuIHRvIG1vdmUgbmV4dF9icmlkZ2UgdG8gdGhlIEFuYWxv
Z2l4IApzaWRlIGluIHY5IC0tIEkgb25seSBjb25zaWRlcmVkIHRoZSBSb2NrY2hpcCBzaWRlIGJl
Zm9yZS4KCldoZW4gSSB0cmllZCBtb2RpZnlpbmcgdGhlIGNvZGUgYmFzZWQgb24geW91ciBzdWdn
ZXN0aW9uLCBJIGZvdW5kIGl0IApiZXR0ZXIgdG8ga2VlcCAmYW5hbG9naXhfcGxhdF9kYXRhLm5l
eHRfYnJpZGdlIGFzIGlzLiBUaGlzIGlzIGJlY2F1c2UgCnRoZSBFeHlub3Mgc2lkZSBuZWVkcyB0
byBtYWludGFpbiBjb21wYXRpYmlsaXR5IHdpdGggdGhlIGxlZ2FjeSBtZXRob2QgCm9mIHBhcnNp
bmcgcGFuZWxzIGFuZCBicmlkZ2VzLCBzbyB0aGUgbmV4dCBicmlkZ2UgaXNuJ3QgYWx3YXlzIHBh
cnNlZCBieSAKdGhlIGNvbW1vbiBBbmFsb2dpeCBzaWRlIGRyaXZlci4KClRoaXMgcGF0Y2ggc2Vy
aWVzIGhhcyBiZWVuIHBlbmRpbmcgZm9yIGFnZXMsIGFuZCBJJ20gZXZlbiBhIGJpdCBmdXp6eSBv
biAKdGhlIGRldGFpbHMgbXlzZWxmLiA7LSkKCkJlc3QgcmVnYXJkcywKRGFtb24KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
