Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6CE3F30295
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Mar 2026 03:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7B+o+4Y6e6EI365mQIoXDX73Nb5TeyXrTi3VeBwv25U=; b=zfy5uUJaACL1ce
	jwOuTHj8Ek3RwzQIb+iUcw1J3XY/lrMBAPLVh4HkmGYH7tXMDfxjd2HbUZ+Lk3JkUXVZKWyTkmjYG
	drEsBEQ5Ux59X6iybInAQv06eNll2ufLFsYwS2OfTeRul5vUplpeYb2kicijjKKXRQqnaVFHOZRC0
	tnT13lMle7nWn4YWt42VN5RO5ptRXFjHglsAiUupqsQL8fcu9Zvpr5x6jvsbsVma0bvUMROhBLcwE
	qyIqkCOnTdgf6WwBiV4B6V0AYHNqt4K4ILI7m1kOj2B0PrGeOHtlwpOK7sCGWbsQtqwSAwFRhsg4/
	MemytVHWNJkOHzFd/lmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1ySd-00000003G1f-1Pn0;
	Mon, 16 Mar 2026 03:17:43 +0000
Received: from mail-m60108.netease.com ([210.79.60.108])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1ySZ-00000003G0U-3hIl;
	Mon, 16 Mar 2026 03:17:41 +0000
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 370ae76b1;
	Mon, 16 Mar 2026 11:17:30 +0800 (GMT+08:00)
Message-ID: <bebadd3b-2fd1-404e-bc64-205c8b44880c@rock-chips.com>
Date: Mon, 16 Mar 2026 11:17:30 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 11/18] drm/bridge: analogix_dp: Apply
 drm_bridge_connector helper
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
References: <20260310012458.169272-1-damon.ding@rock-chips.com>
 <20260310012458.169272-12-damon.ding@rock-chips.com>
 <DH1TKWREZMFK.3BY4NY36BXLXG@bootlin.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <DH1TKWREZMFK.3BY4NY36BXLXG@bootlin.com>
X-HM-Tid: 0a9cf4a612fb03a3kunm3b3e64f61969b4
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkpLSFZMThlITR4aQx8eHh9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=BnqeoqLsGb84BqtPqXiW77m3kBjYMloScvhA6p+8X+sHkdC6G2lBx0K6yTjyx2Pd+6UWnlkIoQZFCKdzbWmIIexPdLKAY2fA5Z0jwBTHiGasgpMISS4eqkCCCA+fPdJ/F+0mi5Gxidvpe/xNvUK/wY8tWC6CoTyvjZ0pFwGHc0A=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=euD4SQJWyl0XJtyrMHkwNbP+gc8j+sYgCcDACn9mPo4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260315_201740_520060_B631D6C8 
X-CRM114-Status: GOOD (  12.65  )
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

SGkgTHVjYSwKCk9uIDMvMTQvMjAyNiAxOjEwIEFNLCBMdWNhIENlcmVzb2xpIHdyb3RlOgo+IEhl
bGxvIERhbW9uLAo+IAo+IE9uIFR1ZSBNYXIgMTAsIDIwMjYgYXQgMjoyNCBBTSBDRVQsIERhbW9u
IERpbmcgd3JvdGU6Cj4+IEluaXRpYWxpemUgYnJpZGdlX2Nvbm5lY3RvciBmb3IgYm90aCBSb2Nr
Y2hpcCBhbmQgRXh5bm9zIGVuY29kZXIgc2lkZXMuCj4+IFRoZW4sIG1ha2UgRFJNX0JSSURHRV9B
VFRBQ0hfTk9fQ09OTkVDVE9SIG1hbmRhdG9yeSBmb3IgQW5hbG9naXggYnJpZGdlCj4+IHNpZGUs
IGFzIHRoZSBwcml2YXRlICZkcm1fY29ubmVjdG9yIGlzIG5vIGxvbmdlciBjcmVhdGVkLgo+Pgo+
PiBUaGUgcHJldmlvdXMgJmRybV9jb25uZWN0b3JfZnVuY3MgYW5kICZkcm1fY29ubmVjdG9yX2hl
bHBlcl9mdW5jcyBBUElzCj4+IGFyZSByZXBsYWNlZCBieSB0aGUgY29ycmVzcG9uZGluZyAmZHJt
X2JyaWRnZV9mdW5jcyBBUElzOgo+Pgo+PiBhbmFsb2dpeF9kcF9hdG9taWNfY2hlY2soKSAtPiBh
bmFsb2dpeF9kcF9icmlkZ2VfYXRvbWljX2NoZWNrKCkKPj4gYW5hbG9naXhfZHBfZGV0ZWN0KCkg
ICAgICAgLT4gYW5hbG9naXhfZHBfYnJpZGdlX2RldGVjdCgpCj4+IGFuYWxvZ2l4X2RwX2dldF9t
b2RlcygpICAgIC0+IGFuYWxvZ2l4X2RwX2JyaWRnZV9nZXRfbW9kZXMoKQo+PiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgYW5hbG9naXhfZHBfYnJpZGdlX2VkaWRfcmVhZCgpCj4+Cj4+
IEFkZGl0aW9uYWxseSwgdGhlIGNvbXBhdGliaWxpdGllcyBvZiBBbmFsb2dpeCBEUCBicmlkZ2Ug
YmFzZWQgb24gd2hldGhlcgo+PiB0aGUgbmV4dCBicmlkZ2UgaXMgYSAncGFuZWwnLiBJZiBpdCBp
cywgT1BfTU9ERVMgYW5kIE9QX0RFVEVDVCBhcmUKPj4gc3VwcG9ydGVkOyBJZiBub3QgKHRoZSBu
ZXh0IGJyaWRnZSBpcyBhICdtb25pdG9yJyBvciBhIGJyaWRnZSBjaGlwKSwKPj4gT1BfRURJRCBh
bmQgT1BfREVURUNUIGFyZSBzdXBwb3J0ZWQuCj4+Cj4+IFRoZSBkZXZtX2RybV9icmlkZ2VfYWRk
KCkgaXMgcGxhY2VkIGluIGFuYWxvZ2l4X2RwX2JpbmQoKSBpbnN0ZWFkIG9mCj4+IGFuYWxvZ2l4
X2RwX3Byb2JlKCksIGJlY2F1c2UgdGhlIHR5cGUgb2YgbmV4dCBicmlkZ2UgKHRoZSBwYW5lbCwg
bW9uaXRvcgo+PiBvciBicmlkZ2UgY2hpcCkgY2FuIG9ubHkgYmUgZGV0ZXJtaW5lZCBhZnRlciB0
aGUgcHJvYmUgcHJvY2VzcyBoYXMgZnVsbHkKPj4gY29tcGxldGVkLgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBEYW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJvY2stY2hpcHMuY29tPgo+PiBUZXN0ZWQtYnk6
IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KPj4gVGVzdGVkLWJ5
OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiAob24gcmszNTg4KQo+IAo+IC4uLgo+
IAo+PiBAQCAtNzMsMTUgKzcyLDEyIEBAIHN0YXRpYyBpbnQgZXh5bm9zX2RwX2JyaWRnZV9hdHRh
Y2goc3RydWN0IGFuYWxvZ2l4X2RwX3BsYXRfZGF0YSAqcGxhdF9kYXRhLAo+PiAgIAkJCQkgICBz
dHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlKQo+PiAgIHsKPj4gICAJc3RydWN0IGV4eW5vc19kcF9k
ZXZpY2UgKmRwID0gdG9fZHAocGxhdF9kYXRhKTsKPj4gLQllbnVtIGRybV9icmlkZ2VfYXR0YWNo
X2ZsYWdzIGZsYWdzID0gMDsKPj4gICAJaW50IHJldDsKPj4KPj4gICAJLyogUHJlLWVtcHQgRFAg
Y29ubmVjdG9yIGNyZWF0aW9uIGlmIHRoZXJlJ3MgYSBicmlkZ2UgKi8KPj4gICAJaWYgKHBsYXRf
ZGF0YS0+bmV4dF9icmlkZ2UpIHsKPj4gLQkJaWYgKGRwLT5oYXNfb2ZfYnJpZGdlKQo+PiAtCQkJ
ZmxhZ3MgPSBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNUT1I7Cj4+IC0KPj4gLQkJcmV0ID0g
ZHJtX2JyaWRnZV9hdHRhY2goJmRwLT5lbmNvZGVyLCBwbGF0X2RhdGEtPm5leHRfYnJpZGdlLCBi
cmlkZ2UsIGZsYWdzKTsKPj4gKwkJcmV0ID0gZHJtX2JyaWRnZV9hdHRhY2goJmRwLT5lbmNvZGVy
LCBwbGF0X2RhdGEtPm5leHRfYnJpZGdlLCBicmlkZ2UsCj4+ICsJCQkJCURSTV9CUklER0VfQVRU
QUNIX05PX0NPTk5FQ1RPUik7Cj4gCj4gU2hvdWxkIHRoaXMgYmUgJ2ZsYWdzIHwgRFJNX0JSSURH
RV9BVFRBQ0hfTk9fQ09OTkVDVE9SJyB0byBiZSBmdXR1cmUtcHJvb2Y/Cj4gCgpBaGEsIHRoZSBl
eHlub3NfZHBfYnJpZGdlX2F0dGFjaCgpIGFuZCBldmVuIAomYW5hbG9naXhfZHBfcGxhdF9kYXRh
LmF0dGFjaCgpIGhhdmUgYmVlbiByZW1vdmVkIGluIFtQQVRDSCB2MTAgMTYvMThdIApmb3IgY29u
c2lzdGVuY3kgYW5kIHNpbXBsaWZpY2F0aW9uLiBTaW5jZSB0aGUgb25seSBicmlkZ2UgZmxhZyBz
dXBwb3J0ZWQgCnJpZ2h0IG5vdyBpcyBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNUT1IsIGxl
dOKAmXMgbGVhdmUgdGhpcyBhcyBpcyBmb3IgCm5vdy4gOy0pCgpCZXN0IHJlZ2FyZHMsCkRhbW9u
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
