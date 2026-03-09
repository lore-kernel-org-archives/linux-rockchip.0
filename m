Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76E5AF3C24E
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Mar 2026 13:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7mAxOAXNLZFFfZJVyzcwQ88Ar60PW0uDOqAFApI8dYw=; b=WjIonBCtqUpuYz
	8RO4MV91Y6qsWFK0ooJyMueoq6Vg1+RNIsrVAhde+yph1283OPFqSX0FT7PGKnQhKlGT8sDWZVhNH
	Zbg1hocs1M/TKSdH5Of2pGLKdKABDDARNcGpiMD6uNiYBboms9TygPL9PPglk6//ejNeYygdUYPzF
	ImbjoTek175MsPERuHUJCtb7MvgSKeXHBifPSUgueN2wo+EHRfbiuXuaNzOx2G4UisKuRpVFbkq1V
	XqRlHXWjDofiNYl5fSm7jeivveXBAqs0AGYbXAfID+ZrujMHH/73xsUXrY3tS2eLYceG30Kjm1EYo
	GZLwwh2G19kV6OrRCdCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzakW-00000007PBy-2WiD;
	Mon, 09 Mar 2026 13:34:20 +0000
Received: from mail-m49248.qiye.163.com ([45.254.49.248])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzakU-00000007P8u-0k5P;
	Mon, 09 Mar 2026 13:34:20 +0000
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 364581b40;
	Mon, 9 Mar 2026 21:34:08 +0800 (GMT+08:00)
Message-ID: <8df0574d-c4c8-4a6d-a357-7b8c82a38acb@rock-chips.com>
Date: Mon, 9 Mar 2026 21:34:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 09/15] drm/bridge: analogix_dp: Apply
 drm_bridge_connector helper
From: Damon Ding <damon.ding@rock-chips.com>
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
References: <20260210071225.2566099-1-damon.ding@rock-chips.com>
 <20260210071225.2566099-10-damon.ding@rock-chips.com>
 <DGT1S368J0BK.3UA75JNEA1AB8@bootlin.com>
 <b08028a2-a721-404f-aa37-2d5460b42f94@rock-chips.com>
Content-Language: en-US
In-Reply-To: <b08028a2-a721-404f-aa37-2d5460b42f94@rock-chips.com>
X-HM-Tid: 0a9cd2ce18f603a3kunm414b5e452e0573
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0geTFYdSkNLSUoeH0hNGktWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=M4Y5MGyxF/AdrP3ihZXEHSWnvV2h0B7W+h5SyJclBYmjiA7VtwI0rHMg3a5WDAVUW1I4A4n6VdStslrwNpjxSWCf7wHBGc8pCPvWNfwSRNB7ZZM3WIAq5RiP696HMrrMqVVlvCKfwdKCWgoMWA7Or616ir+NiRL6F2BKRX2eYPc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=m+pjJ8AYp8UNMrQ2/YzyBJ5hJEx0e6GJLawz++scizw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_063418_766996_3C472888 
X-CRM114-Status: GOOD (  17.63  )
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

SGkgTHVjYSwKCk9uIDMvOS8yMDI2IDc6MjUgUE0sIERhbW9uIERpbmcgd3JvdGU6Cj4gSGkgTHVj
YSwKPiAKPiBPbiAzLzMvMjAyNiA1OjQyIFBNLCBMdWNhIENlcmVzb2xpIHdyb3RlOgo+PiBIZWxs
byBEYW1vbiwKPj4KPj4gT24gVHVlIEZlYiAxMCwgMjAyNiBhdCA4OjEyIEFNIENFVCwgRGFtb24g
RGluZyB3cm90ZToKPj4+IEFwcGx5IGRybV9icmlkZ2VfY29ubmVjdG9yIGhlbHBlciBmb3IgQW5h
bG9naXggRFAgZHJpdmVyLgo+Pj4KPj4+IFRoZSBmb2xsb3dpbmcgY2hhbmdlcyBoYXZlIGJlZW4g
bWFkZToKPj4+IC0gQXBwbHkgZHJtX2JyaWRnZV9jb25uZWN0b3IgaGVscGVyIHRvIGdldCByaWQg
b2YgJmRybV9jb25uZWN0b3JfZnVuY3MKPj4+IMKgwqAgYW5kICZkcm1fY29ubmVjdG9yX2hlbHBl
cl9mdW5jcy4KPj4+IC0gUmVtb3ZlIHVubmVjZXNzYXJ5IHBhcmFtZXRlciBzdHJ1Y3QgZHJtX2Nv
bm5lY3RvciogZm9yIGNhbGxiYWNrCj4+PiDCoMKgICZhbmFsb2dpeF9kcF9wbGF0X2RhdGEuYXR0
YWNoLgo+Pj4gLSBSZW1vdmUgJmFuYWxvZ2l4X2RwX2RldmljZS5jb25uZWN0b3IuCj4+PiAtIENv
bnZlcnQgYW5hbG9naXhfZHBfYXRvbWljX2NoZWNrKCkvYW5hbG9naXhfZHBfZGV0ZWN0KCkgdG8K
Pj4+IMKgwqAgJmRybV9icmlkZ2VfZnVuY3MuYXRvbWljX2NoZWNrKCkvJmRybV9icmlkZ2VfZnVu
Y3MuZGV0ZWN0KCkuCj4+PiAtIFNwbGl0IGFuYWxvZ2l4X2RwX2dldF9tb2RlcygpIGludG8gJmRy
bV9icmlkZ2VfZnVuY3MuZ2V0X21vZGVzKCkgYW5kCj4+PiDCoMKgICZkcm1fYnJpZGdlX2Z1bmNz
LmVkaWRfcmVhZCgpLgo+Pj4gLSBTZXQgZmxhZyBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNU
T1IgZm9yIGJyaWRnZSBhdHRhY2htZW50IHdoaWxlCj4+PiDCoMKgIGJpbmRpbmcuIE1lYW53aGls
ZSwgbWFrZSBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNUT1IgdW5zdXBwcG9ydGVkCj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Xgo+Pgo+PiBEbyB5b3UgbWVhbiAiIURSTV9CUklER0VfQVRUQUNIX05PX0NPTk5FQ1RPUiIgaGVy
ZSAoaS5lLiBtaXNzaW5nICchJyk/Cj4+Cj4+IEFsc28sIHVuc3VwcHBvcnRlZCAtPiB1bnN1cHBv
cnRlZCAodHlwbykKPj4KPiAKPiBXaWxsIGZpeCBpbiB2MTAuCj4gCj4+PiDCoMKgIGluIGFuYWxv
Z2l4X2RwX2JyaWRnZV9hdHRhY2goKS4KPj4+IC0gU2V0ICZkcm1fYnJpZGdlLm9wcyBhY2NvcmRp
bmcgdG8gZGlmZmVyZW50IGNhc2VzLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IERhbW9uIERpbmcg
PGRhbW9uLmRpbmdAcm9jay1jaGlwcy5jb20+Cj4+PiBUZXN0ZWQtYnk6IE1hcmVrIFN6eXByb3dz
a2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KPj4+IFRlc3RlZC1ieTogSGVpa28gU3R1ZWJu
ZXIgPGhlaWtvQHNudGVjaC5kZT4gKG9uIHJrMzU4OCkKPj4KPj4gSSBoYWQgYSBxdWljayBsb29r
LCBsb29rcyBnb29kIG92ZXJhbGwsIGZvciB0aGUgbW9tZW50IEkgaGF2ZSBvbmx5IGEKPj4gcXVl
c3Rpb24sIHNlZSBiZWxvdy4KPj4KPj4gSSBhaW0gYXQgcmV2aWV3aW5nIHRoaXMgcGF0Y2ggaW4g
ZGVwdGgsIGJ1dCBpdCdzIG5vdCBhbiBlYXN5IG9uZSB0bwo+PiBkaWdlc3QuIFdvdWxkIGl0IGJl
IGZlYXNpYmxlIHRvIHNwbGl0IGl0IGluIHNtYWxsZXIgbG9naWNhbCBzdGVwcz8gSWYgaXQKPj4g
aXMsIHBsZWFzZSBkbywgaXQgd291bGQgYmUgdmVyeSBoZWxwZnVsIGZvciByZXZpZXdpbmcuCj4g
Cj4gWWVzLCB0aGlzIGNvbW1pdCB3aWxsIGJlIHNwbGl0IGludG8gc2V2ZXJhbCBzbWFsbGVyIG9u
ZXMgaW4gdjEwLgo+IAo+Pgo+Pj4gQEAgLTE1MzIsNiArMTQ4MSw3IEBAIEVYUE9SVF9TWU1CT0xf
R1BMKGFuYWxvZ2l4X2RwX3Jlc3VtZSk7Cj4+Pgo+Pj4gwqAgaW50IGFuYWxvZ2l4X2RwX2JpbmQo
c3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHAsIHN0cnVjdCAKPj4+IGRybV9kZXZpY2UgKmRy
bV9kZXYpCj4+PiDCoCB7Cj4+PiArwqDCoMKgIHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UgPSAm
ZHAtPmJyaWRnZTsKPj4+IMKgwqDCoMKgwqAgaW50IHJldDsKPj4+Cj4+PiDCoMKgwqDCoMKgIGRw
LT5kcm1fZGV2ID0gZHJtX2RldjsKPj4+IEBAIC0xNTQ1LDcgKzE0OTUsMTggQEAgaW50IGFuYWxv
Z2l4X2RwX2JpbmQoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAKPj4+ICpkcCwgc3RydWN0IGRy
bV9kZXZpY2UgKmRybV9kZXYpCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJldDsKPj4+
IMKgwqDCoMKgwqAgfQo+Pj4KPj4+IC3CoMKgwqAgcmV0ID0gZHJtX2JyaWRnZV9hdHRhY2goZHAt
PmVuY29kZXIsICZkcC0+YnJpZGdlLCBOVUxMLCAwKTsKPj4+ICvCoMKgwqAgaWYgKGRwLT5wbGF0
X2RhdGEtPnBhbmVsKQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGJyaWRnZS0+b3BzID0gRFJNX0JSSURH
RV9PUF9NT0RFUyB8IERSTV9CUklER0VfT1BfREVURUNUOwo+Pj4gK8KgwqDCoCBlbHNlCj4+PiAr
wqDCoMKgwqDCoMKgwqAgYnJpZGdlLT5vcHMgPSBEUk1fQlJJREdFX09QX0VESUQgfCBEUk1fQlJJ
REdFX09QX0RFVEVDVDsKPj4+ICsKPj4+ICvCoMKgwqAgYnJpZGdlLT5vZl9ub2RlID0gZHAtPmRl
di0+b2Zfbm9kZTsKPj4+ICvCoMKgwqAgYnJpZGdlLT50eXBlID0gRFJNX01PREVfQ09OTkVDVE9S
X2VEUDsKPj4+ICvCoMKgwqAgcmV0ID0gZGV2bV9kcm1fYnJpZGdlX2FkZChkcC0+ZGV2LCAmZHAt
PmJyaWRnZSk7Cj4+Cj4+IENhbiBkZXZtX2RybV9icmlkZ2VfYWRkKCkgYmUgYWRkZWQgdG8gYW5h
bG9naXhfZHBfcHJvYmUoKSBpbnN0ZWFkPwo+IAo+IFdpbGwgZG8gaW4gdjEwLgoKTXkgYXBvbG9n
aWVzIGZvciBteSBzb21ld2hhdCBpcnJlc3BvbnNpYmxlIHJlcGx5IGVhcmxpZXIhCgpXaGVuIEkg
d2FzIHNwbGl0dGluZyB0aGlzIGNvbW1pdCwgSSByZWFsaXplZCB0aGF0IG1vdmluZyAKZGV2bV9k
cm1fYnJpZGdlX2FkZCgpIHRvIGFuYWxvZ2l4X2RwX3Byb2JlKCkgaXMgYWN0dWFsbHkgbm90IGZl
YXNpYmxlIOKAkyAKdGhlIHR5cGUgb2YgdGhlIGRvd25zdHJlYW0gYnJpZGdlIG9mIHRoZSBBbmFs
b2dpeCBicmlkZ2UgY2FuIG9ubHkgYmUgCmRldGVybWluZWQgYWZ0ZXIgdGhlIGVudGlyZSBwcm9i
ZSBwcm9jZXNzIGlzIGZ1bGx5IGNvbXBsZXRlZC4KCnJvY2tjaGlwX2RwX3Byb2JlKCkvZXh5bm9z
X2RwX3Byb2JlKCkgLT4KICAgYW5hbG9naXhfZHBfZmluaXNoX3Byb2JlKCkgLT4KICAgICBhbmFs
b2dpeF9kcF9hdXhfZG9uZV9wcm9iaW5nKCkgLT4KICAgICAgIGRybV9vZl9maW5kX3BhbmVsX29y
X2JyaWRnZSgpIC0+CiAgICAgICAgIHJvY2tjaGlwX2RwX2JpbmQoKS9leHlub3NfZHBfYmluZCgp
IC0+CiAgICAgICAgICAgYW5hbG9naXhfZHBfYmluZCgpLT4KICAgICAgICAgICAgIGRldm1fZHJt
X2JyaWRnZV9hZGQoKQoKVG8gYXZvaWQgY29uZnVzaW9uLCBJ4oCZdmUgYWRkZWQgc29tZSBjb21t
ZW50cyBmb3IgdGhpcyBlYXNpbHkgCm1pc3VuZGVyc3Rvb2QgbG9naWMgdG8gdGhlIGNvbW1pdCBt
ZXNzYWdlIG9mIHYxMCwgc28gdGhlIHJlYXNvbmluZyBpcyAKY2xlYXIgZm9yIGV2ZXJ5b25lLgoK
PiAKPj4KPj4+ICvCoMKgwqAgaWYgKHJldCkKPj4+ICvCoMKgwqDCoMKgwqDCoCBnb3RvIGVycl91
bnJlZ2lzdGVyX2F1eDsKPj4+ICsKPj4+ICvCoMKgwqAgcmV0ID0gZHJtX2JyaWRnZV9hdHRhY2go
ZHAtPmVuY29kZXIsIGJyaWRnZSwgTlVMTCwgCj4+PiBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05O
RUNUT1IpOwo+Pj4gwqDCoMKgwqDCoCBpZiAocmV0KSB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
RFJNX0VSUk9SKCJmYWlsZWQgdG8gY3JlYXRlIGJyaWRnZSAoJWQpXG4iLCByZXQpOwo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgIGdvdG8gZXJyX3VucmVnaXN0ZXJfYXV4Owo+IAoKQmVzdCByZWdhcmRz
LApEYW1vbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
