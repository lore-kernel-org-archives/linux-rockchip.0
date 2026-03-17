Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF8B4FB5EA1
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 01:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XqyhCSDaKHlGRQsfVZoJ5Jy1XvQNHJFj6Y4V7mVUcf4=; b=ZspyERjvOKNIs6
	3C/IWqCowYkpMZq2A+X/fdNP7VdEJqxCHlM2jgHzwmEjOGoq5Hq5k4x/gXYlpyAmYp5WGRQtO3DSV
	aT1B8EPGYRlv7QrnEHpFhJQUzmlC0G4LQzG2c5dnWoeeKLal8qh0GRxp0dFdwrdOV2herD5+1OI38
	oouiW4r1iQ5hX9ujRyvJGmjFUs1gPqQyu+cAqHttmSS6eoDoQNRNbd4tD8/vH7W5C02i9sUirnpOG
	ANv+Dg6GRJ3RpcApV6cp/e9p5xxrkF2LjVRWtuoQaYBPhQbcIQNcWq3YShs0o2DgWfHJL+GKdu/KZ
	gmDAOugyiLicsA1DFSDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2JQN-00000005CTo-3ogx;
	Tue, 17 Mar 2026 01:40:47 +0000
Received: from mail-m32122.qiye.163.com ([220.197.32.122])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2JQK-00000005CRt-0vni;
	Tue, 17 Mar 2026 01:40:46 +0000
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 372f4c86a;
	Tue, 17 Mar 2026 09:40:38 +0800 (GMT+08:00)
Message-ID: <62e28820-066c-42af-82a2-a9c95449b176@rock-chips.com>
Date: Tue, 17 Mar 2026 09:40:38 +0800
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
 <bebadd3b-2fd1-404e-bc64-205c8b44880c@rock-chips.com>
 <DH46EQM1PED9.2BVW9DWVIMEJZ@bootlin.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <DH46EQM1PED9.2BVW9DWVIMEJZ@bootlin.com>
X-HM-Tid: 0a9cf973bf6e03a3kunm936f13bf2236b8
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkhNTVYYGkoYSE0YGENMSk5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=PMpp2P0XBVwcx8LLPcRmL5qfKUI3Ti5xc0q4KnELILlo+we4wYdKwzRCQV4/e6ecU4tOo4RgMj8xL8hBj7AHUupPd4ibMmmJjCC4E0LzUVuiABJjZeO01qG190Qa3VPM4Z6FubQyG6Chy5j61GUcGd9TEmvDbuOU41QtfUYXvCA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Z7g0mhmika0FKKGECUI1aZl6PGeXN4tAHtnClVoIoOM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_184045_598676_42C3E6B5 
X-CRM114-Status: GOOD (  13.15  )
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

CgpPbiAzLzE2LzIwMjYgNzozOSBQTSwgTHVjYSBDZXJlc29saSB3cm90ZToKPiBPbiBNb24gTWFy
IDE2LCAyMDI2IGF0IDQ6MTcgQU0gQ0VULCBEYW1vbiBEaW5nIHdyb3RlOgo+PiBIaSBMdWNhLAo+
Pgo+PiBPbiAzLzE0LzIwMjYgMToxMCBBTSwgTHVjYSBDZXJlc29saSB3cm90ZToKPj4+IEhlbGxv
IERhbW9uLAo+Pj4KPj4+IE9uIFR1ZSBNYXIgMTAsIDIwMjYgYXQgMjoyNCBBTSBDRVQsIERhbW9u
IERpbmcgd3JvdGU6Cj4+Pj4gSW5pdGlhbGl6ZSBicmlkZ2VfY29ubmVjdG9yIGZvciBib3RoIFJv
Y2tjaGlwIGFuZCBFeHlub3MgZW5jb2RlciBzaWRlcy4KPj4+PiBUaGVuLCBtYWtlIERSTV9CUklE
R0VfQVRUQUNIX05PX0NPTk5FQ1RPUiBtYW5kYXRvcnkgZm9yIEFuYWxvZ2l4IGJyaWRnZQo+Pj4+
IHNpZGUsIGFzIHRoZSBwcml2YXRlICZkcm1fY29ubmVjdG9yIGlzIG5vIGxvbmdlciBjcmVhdGVk
Lgo+Pj4+Cj4+Pj4gVGhlIHByZXZpb3VzICZkcm1fY29ubmVjdG9yX2Z1bmNzIGFuZCAmZHJtX2Nv
bm5lY3Rvcl9oZWxwZXJfZnVuY3MgQVBJcwo+Pj4+IGFyZSByZXBsYWNlZCBieSB0aGUgY29ycmVz
cG9uZGluZyAmZHJtX2JyaWRnZV9mdW5jcyBBUElzOgo+Pj4+Cj4+Pj4gYW5hbG9naXhfZHBfYXRv
bWljX2NoZWNrKCkgLT4gYW5hbG9naXhfZHBfYnJpZGdlX2F0b21pY19jaGVjaygpCj4+Pj4gYW5h
bG9naXhfZHBfZGV0ZWN0KCkgICAgICAgLT4gYW5hbG9naXhfZHBfYnJpZGdlX2RldGVjdCgpCj4+
Pj4gYW5hbG9naXhfZHBfZ2V0X21vZGVzKCkgICAgLT4gYW5hbG9naXhfZHBfYnJpZGdlX2dldF9t
b2RlcygpCj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhbmFsb2dpeF9kcF9i
cmlkZ2VfZWRpZF9yZWFkKCkKPj4+Pgo+Pj4+IEFkZGl0aW9uYWxseSwgdGhlIGNvbXBhdGliaWxp
dGllcyBvZiBBbmFsb2dpeCBEUCBicmlkZ2UgYmFzZWQgb24gd2hldGhlcgo+Pj4+IHRoZSBuZXh0
IGJyaWRnZSBpcyBhICdwYW5lbCcuIElmIGl0IGlzLCBPUF9NT0RFUyBhbmQgT1BfREVURUNUIGFy
ZQo+Pj4+IHN1cHBvcnRlZDsgSWYgbm90ICh0aGUgbmV4dCBicmlkZ2UgaXMgYSAnbW9uaXRvcicg
b3IgYSBicmlkZ2UgY2hpcCksCj4+Pj4gT1BfRURJRCBhbmQgT1BfREVURUNUIGFyZSBzdXBwb3J0
ZWQuCj4+Pj4KPj4+PiBUaGUgZGV2bV9kcm1fYnJpZGdlX2FkZCgpIGlzIHBsYWNlZCBpbiBhbmFs
b2dpeF9kcF9iaW5kKCkgaW5zdGVhZCBvZgo+Pj4+IGFuYWxvZ2l4X2RwX3Byb2JlKCksIGJlY2F1
c2UgdGhlIHR5cGUgb2YgbmV4dCBicmlkZ2UgKHRoZSBwYW5lbCwgbW9uaXRvcgo+Pj4+IG9yIGJy
aWRnZSBjaGlwKSBjYW4gb25seSBiZSBkZXRlcm1pbmVkIGFmdGVyIHRoZSBwcm9iZSBwcm9jZXNz
IGhhcyBmdWxseQo+Pj4+IGNvbXBsZXRlZC4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IERhbW9u
IERpbmcgPGRhbW9uLmRpbmdAcm9jay1jaGlwcy5jb20+Cj4+Pj4gVGVzdGVkLWJ5OiBNYXJlayBT
enlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Cj4+Pj4gVGVzdGVkLWJ5OiBIZWlr
byBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiAob24gcmszNTg4KQo+Pj4KPj4+IC4uLgo+Pj4K
Pj4+PiBAQCAtNzMsMTUgKzcyLDEyIEBAIHN0YXRpYyBpbnQgZXh5bm9zX2RwX2JyaWRnZV9hdHRh
Y2goc3RydWN0IGFuYWxvZ2l4X2RwX3BsYXRfZGF0YSAqcGxhdF9kYXRhLAo+Pj4+ICAgIAkJCQkg
ICBzdHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlKQo+Pj4+ICAgIHsKPj4+PiAgICAJc3RydWN0IGV4
eW5vc19kcF9kZXZpY2UgKmRwID0gdG9fZHAocGxhdF9kYXRhKTsKPj4+PiAtCWVudW0gZHJtX2Jy
aWRnZV9hdHRhY2hfZmxhZ3MgZmxhZ3MgPSAwOwo+Pj4+ICAgIAlpbnQgcmV0Owo+Pj4+Cj4+Pj4g
ICAgCS8qIFByZS1lbXB0IERQIGNvbm5lY3RvciBjcmVhdGlvbiBpZiB0aGVyZSdzIGEgYnJpZGdl
ICovCj4+Pj4gICAgCWlmIChwbGF0X2RhdGEtPm5leHRfYnJpZGdlKSB7Cj4+Pj4gLQkJaWYgKGRw
LT5oYXNfb2ZfYnJpZGdlKQo+Pj4+IC0JCQlmbGFncyA9IERSTV9CUklER0VfQVRUQUNIX05PX0NP
Tk5FQ1RPUjsKPj4+PiAtCj4+Pj4gLQkJcmV0ID0gZHJtX2JyaWRnZV9hdHRhY2goJmRwLT5lbmNv
ZGVyLCBwbGF0X2RhdGEtPm5leHRfYnJpZGdlLCBicmlkZ2UsIGZsYWdzKTsKPj4+PiArCQlyZXQg
PSBkcm1fYnJpZGdlX2F0dGFjaCgmZHAtPmVuY29kZXIsIHBsYXRfZGF0YS0+bmV4dF9icmlkZ2Us
IGJyaWRnZSwKPj4+PiArCQkJCQlEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNUT1IpOwo+Pj4K
Pj4+IFNob3VsZCB0aGlzIGJlICdmbGFncyB8IERSTV9CUklER0VfQVRUQUNIX05PX0NPTk5FQ1RP
UicgdG8gYmUgZnV0dXJlLXByb29mPwo+Pj4KPj4KPj4gQWhhLCB0aGUgZXh5bm9zX2RwX2JyaWRn
ZV9hdHRhY2goKSBhbmQgZXZlbgo+PiAmYW5hbG9naXhfZHBfcGxhdF9kYXRhLmF0dGFjaCgpIGhh
dmUgYmVlbiByZW1vdmVkIGluIFtQQVRDSCB2MTAgMTYvMThdCj4+IGZvciBjb25zaXN0ZW5jeSBh
bmQgc2ltcGxpZmljYXRpb24uIFNpbmNlIHRoZSBvbmx5IGJyaWRnZSBmbGFnIHN1cHBvcnRlZAo+
PiByaWdodCBub3cgaXMgRFJNX0JSSURHRV9BVFRBQ0hfTk9fQ09OTkVDVE9SLCBsZXTigJlzIGxl
YXZlIHRoaXMgYXMgaXMgZm9yCj4+IG5vdy4gOy0pCj4gCj4gQXMgeW91IGFyZSBnb2luZyB0byBz
ZW5kIHYxMSwgSSdkIGRvIHRoYXQgY2hhbmdlLiBJdCBpcyB0aGUgcmlnaHQgdGhpbmcgZG8KPiB0
bywgaXQncyBjaGVhcCwgYW5kIGluIGNhc2UgcGF0Y2hlcyB1cCB0byAxMS8xOCBidXQgbm90ICh5
ZXQpIHVwIHRvIDE2LzE4Cj4gd2UgYXZvaWQgZW5kaW5nIHVwIHdpdGggdW5vcHRpbWFsIGNvZGUg
dW50aWwgcGF0Y2ggMTYvMTggaXMgYXBwbGllZC4KPiAKClllcywgSSB3aWxsIGZpeCB0aGlzIGlu
IHYxMS4KCkJlc3QgcmVnYXJkcywKRGFtb24KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
