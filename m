Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB728F3C265
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Mar 2026 13:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+UlFU5RE+uTNH9vP4gNMDna14b269qh3xZyPr8RRj8=; b=Fk0pU59R5gNagl
	FhfAgPAwjGfiBDruJD1snPFRKNA+sZ47gtQZOSTw78H2Syd+sBdbRNUDJMgGSTB4nnreHor/Amp8c
	LCt8ldtPC0C9yR8h1v2mDCdUI9SDZW/dcWE1iZCwuuPpw1WC/Eapqfb0slUb+oAyVdwkZzWVv6NiQ
	9GqE2Cro3yUc2MM7Wfh47eTlXVjOw7bwC/lWF9vsnjyVY/AqV8aG50h/2k4YcFQm7op9CMWh+V/S+
	k5ncNFbV4Y48naQsgcDKf9N9ee46xWxVqYf3kFXk9B+9anj5IYB2OFieNuLB4A/Nqj4IU1r31Rl3j
	QdaWcYngsOJtSfNxmCCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzasZ-00000007QBM-1K6w;
	Mon, 09 Mar 2026 13:42:39 +0000
Received: from mail-m32122.qiye.163.com ([220.197.32.122])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzasW-00000007Q8H-2GL9;
	Mon, 09 Mar 2026 13:42:37 +0000
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3645d2e29;
	Mon, 9 Mar 2026 21:42:31 +0800 (GMT+08:00)
Message-ID: <f755bdc8-7324-4dcc-8fc7-8d6224bc89d6@rock-chips.com>
Date: Mon, 9 Mar 2026 21:42:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 10/15] drm/bridge: analogix_dp: Add new API
 analogix_dp_finish_probe()
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
 <20260210071225.2566099-11-damon.ding@rock-chips.com>
 <DGT20ZJ3Q4WP.3OTQJYWGSYGUD@bootlin.com>
 <01983e92-dabb-47f7-ba01-988ea41641db@rock-chips.com>
Content-Language: en-US
In-Reply-To: <01983e92-dabb-47f7-ba01-988ea41641db@rock-chips.com>
X-HM-Tid: 0a9cd2d5c65c03a3kunmaaae204b2e0d75
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkpJTVYeSU5NTx4eQ0tJQ0JWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=QLJRBN+1lBKotyDGfES/FQ1dQd0Hseec/2zNw/086u6K9Sb1Ig22Tw8gsND7iIO4YlRcsIuWEhuy2I93KTOkG9nhe/cY4xwFBhbCPcM/8HUFEfyDRJ5w0kengu/iNDGUepsMWf5yMeWgdMD6OB9QDWnJNsCfYMwUY/EFI6FV5vE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=dYCVj9FOVuINcVWSh8M7sE+cs2K2DH+OErpTWPY9/Og=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_064236_764861_6A8EA567 
X-CRM114-Status: GOOD (  20.41  )
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

SGkgTHVjYSwKCk9uIDMvOS8yMDI2IDc6NTEgUE0sIERhbW9uIERpbmcgd3JvdGU6Cj4gSGkgTHVj
YSwKPiAKPiBPbiAzLzMvMjAyNiA1OjU0IFBNLCBMdWNhIENlcmVzb2xpIHdyb3RlOgo+PiBIZWxs
byBEYW1vbiwKPj4KPj4gT24gVHVlIEZlYiAxMCwgMjAyNiBhdCA4OjEyIEFNIENFVCwgRGFtb24g
RGluZyB3cm90ZToKPj4+IFNpbmNlIHRoZSBwYW5lbC9icmlkZ2Ugc2hvdWxkIGxvZ2ljYWxseSBi
ZSBwb3NpdGlvbmVkIGJlaGluZCB0aGUKPj4+IEFuYWxvZ2l4IGJyaWRnZSBpbiB0aGUgZGlzcGxh
eSBwaXBlbGluZSwgaXQgbWFrZXMgc2Vuc2UgdG8gaGFuZGxlCj4+PiB0aGUgcGFuZWwvYnJpZGdl
IHBhcnNpbmcgb24gdGhlIEFuYWxvZ2l4IHNpZGUuIFRoZXJlZm9yZSwgd2UgYWRkCj4+PiBhIG5l
dyBBUEkgYW5hbG9naXhfZHBfZmluaXNoX3Byb2JlKCksIHdoaWNoIGNvbWJpbmVzIHRoZSBwYW5l
bC9icmlkZ2UKPj4+IHBhcnNpbmcgd2l0aCBjb21wb25lbnQgYWRkaXRpb24sIHRvIGRvIGl0Lgo+
Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IERhbW9uIERpbmcgPGRhbW9uLmRpbmdAcm9jay1jaGlwcy5j
b20+Cj4+PiBSZXZpZXdlZC1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBv
c3MucXVhbGNvbW0uY29tPgo+Pj4gVGVzdGVkLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXBy
b3dza2lAc2Ftc3VuZy5jb20+Cj4+PiBUZXN0ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IChvbiByazM1ODgpCj4+Cj4+IC4uLgo+Pgo+Pj4gQEAgLTE1ODEsNiArMTU4Myw1
MiBAQCBzdHJ1Y3QgZHJtX2RwX2F1eCAqYW5hbG9naXhfZHBfZ2V0X2F1eChzdHJ1Y3QgCj4+PiBh
bmFsb2dpeF9kcF9kZXZpY2UgKmRwKQo+Pj4gwqAgfQo+Pj4gwqAgRVhQT1JUX1NZTUJPTF9HUEwo
YW5hbG9naXhfZHBfZ2V0X2F1eCk7Cj4+Pgo+Pj4gK3N0YXRpYyBpbnQgYW5hbG9naXhfZHBfYXV4
X2RvbmVfcHJvYmluZyhzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4KQo+Pj4gK3sKPj4+ICvCoMKgwqAg
c3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHAgPSB0b19kcChhdXgpOwo+Pj4gK8KgwqDCoCBz
dHJ1Y3QgYW5hbG9naXhfZHBfcGxhdF9kYXRhICpwbGF0X2RhdGEgPSBkcC0+cGxhdF9kYXRhOwo+
Pj4gK8KgwqDCoCBpbnQgcG9ydCA9IHBsYXRfZGF0YS0+ZGV2X3R5cGUgPT0gRVhZTk9TX0RQID8g
MCA6IDE7Cj4+PiArwqDCoMKgIGludCByZXQ7Cj4+PiArCj4+PiArwqDCoMKgIC8qCj4+PiArwqDC
oMKgwqAgKiBJZiBkcm1fb2ZfZmluZF9wYW5lbF9vcl9icmlkZ2UoKSByZXR1cm5zIC1FTk9ERVYs
IHRoZXJlIG1heSAKPj4+IGJlIG5vIHZhbGlkIHBhbmVsCj4+PiArwqDCoMKgwqAgKiBvciBicmlk
Z2Ugbm9kZXMuIFRoZSBkcml2ZXIgc2hvdWxkIGdvIG9uIGZvciB0aGUgZHJpdmVyLWZyZWUgCj4+
PiBicmlkZ2Ugb3IgdGhlIERQCj4+PiArwqDCoMKgwqAgKiBtb2RlIGFwcGxpY2F0aW9ucy4KPj4+
ICvCoMKgwqDCoCAqLwo+Pj4gK8KgwqDCoCByZXQgPSBkcm1fb2ZfZmluZF9wYW5lbF9vcl9icmlk
Z2UoZHAtPmRldi0+b2Zfbm9kZSwgcG9ydCwgMCwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgJnBsYXRfZGF0YS0+cGFuZWwsICZwbGF0X2RhdGEtPm5leHRf
YnJpZGdlKTsKPj4+ICvCoMKgwqAgaWYgKHJldCAmJiByZXQgIT0gLUVOT0RFVikKPj4+ICvCoMKg
wqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+Pj4gKwo+Pj4gK8KgwqDCoCByZXR1cm4gY29tcG9uZW50
X2FkZChkcC0+ZGV2LCBwbGF0X2RhdGEtPm9wcyk7Cj4+PiArfQo+Pj4gKwo+Pj4gK2ludCBhbmFs
b2dpeF9kcF9maW5pc2hfcHJvYmUoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHApCj4+PiAr
ewo+Pj4gK8KgwqDCoCBpbnQgcmV0Owo+Pj4gKwo+Pj4gK8KgwqDCoCByZXQgPSBkZXZtX29mX2Rw
X2F1eF9wb3B1bGF0ZV9idXMoJmRwLT5hdXgsIAo+Pj4gYW5hbG9naXhfZHBfYXV4X2RvbmVfcHJv
YmluZyk7Cj4+PiArwqDCoMKgIGlmIChyZXQpIHsKPj4+ICvCoMKgwqDCoMKgwqDCoCAvKgo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqAgKiBJZiBkZXZtX29mX2RwX2F1eF9wb3B1bGF0ZV9idXMoKSByZXR1
cm5zIC1FTk9ERVYsIHRoZSAKPj4+IGRvbmVfcHJvYmluZygpIHdpbGwKPj4+ICvCoMKgwqDCoMKg
wqDCoMKgICogbm90IGJlIGNhbGxlZCBiZWNhdXNlIHRoZXJlIGFyZSBubyBFUCBkZXZpY2VzLiBU
aGVuIHRoZSAKPj4+IGNhbGxiYWNrIGZ1bmN0aW9uCj4+PiArwqDCoMKgwqDCoMKgwqDCoCAqIGFu
YWxvZ2l4X2RwX2F1eF9kb25lX3Byb2JpbmcoKSB3aWxsIGJlIGNhbGxlZCBkaXJlY3RseSBpbiAK
Pj4+IG9yZGVyIHRvIHN1cHBvcnQKPj4+ICvCoMKgwqDCoMKgwqDCoMKgICogdGhlIG90aGVyIHZh
bGlkIERUIGNvbmZpZ3VyYXRpb25zLgo+Pj4gK8KgwqDCoMKgwqDCoMKgwqAgKgo+Pj4gK8KgwqDC
oMKgwqDCoMKgwqAgKiBOT1RFOiBUaGUgZGV2bV9vZl9kcF9hdXhfcG9wdWxhdGVfYnVzKCkgaXMg
YWxsb3dlZCB0byAKPj4+IHJldHVybiAtRVBST0JFX0RFRkVSLgo+Pgo+PiBVaG0sIGlmIGl0IGlz
IGFsbG93ZWQgdG8gcmV0dXJuIC1FUFJPQkVfREVGRVIuLi4KPj4KPj4+ICvCoMKgwqDCoMKgwqDC
oMKgICovCj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKHJldCAhPSAtRU5PREVWKSB7Cj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKGRwLT5kZXYsICJmYWlsZWQgdG8gcG9wdWxhdGUg
YXV4IGJ1c1xuIik7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+Pj4g
K8KgwqDCoMKgwqDCoMKgIH0KPj4KPj4gLi4udGhlbiB5b3Ugc2hvdWxkbid0IGRldl9lcnIoKSB3
aGVuIC1FUFJPQkVfREVGRVIgaXMgcmV0dXJuZWQuCj4+Cj4+IEVpdGhlciB1c2UgZGV2X2Vycl9w
cm9iZSgpICh3aGljaCB3b3VsZCBhbHNvIHNpbXBsaWZ5IHlvdXIgY29kZSkgb3IgY2hlY2sKPj4g
Zm9yIGlmIChyZXQgIT0gLUVOT0RFViAmJiByZXQgIT0gLUVQUk9CRV9ERUZFUikuCj4gCj4gV2ls
bCBmaXggaW4gdjEwLgo+IAo+Pgo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBhbmFs
b2dpeF9kcF9hdXhfZG9uZV9wcm9iaW5nKCZkcC0+YXV4KTsKPj4+ICvCoMKgwqAgfQo+Pj4gKwo+
Pj4gK8KgwqDCoCByZXR1cm4gMDsKPj4+ICt9Cj4+PiArRVhQT1JUX1NZTUJPTF9HUEwoYW5hbG9n
aXhfZHBfZmluaXNoX3Byb2JlKTsKPj4+ICsKPj4+IMKgIE1PRFVMRV9BVVRIT1IoIkppbmdvbyBI
YW4gPGpnMS5oYW5Ac2Ftc3VuZy5jb20+Iik7Cj4+PiDCoCBNT0RVTEVfREVTQ1JJUFRJT04oIkFu
YWxvZ2l4IERQIENvcmUgRHJpdmVyIik7Cj4+PiDCoCBNT0RVTEVfTElDRU5TRSgiR1BMIHYyIik7
Cj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vYnJpZGdlL2FuYWxvZ2l4X2RwLmggYi9pbmNs
dWRlL2RybS9icmlkZ2UvIAo+Pj4gYW5hbG9naXhfZHAuaAo+Pj4gaW5kZXggMzQyOGZmZmYyNGM1
Li5iYWU5NjlkZWM2M2EgMTAwNjQ0Cj4+PiAtLS0gYS9pbmNsdWRlL2RybS9icmlkZ2UvYW5hbG9n
aXhfZHAuaAo+Pj4gKysrIGIvaW5jbHVkZS9kcm0vYnJpZGdlL2FuYWxvZ2l4X2RwLmgKPj4+IEBA
IC0zMCw2ICszMCw3IEBAIHN0cnVjdCBhbmFsb2dpeF9kcF9wbGF0X2RhdGEgewo+Pj4gwqDCoMKg
wqDCoCBzdHJ1Y3QgZHJtX2JyaWRnZSAqbmV4dF9icmlkZ2U7Cj4+PiDCoMKgwqDCoMKgIHN0cnVj
dCBkcm1fZW5jb2RlciAqZW5jb2RlcjsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IGRybV9jb25uZWN0
b3IgKmNvbm5lY3RvcjsKPj4+ICvCoMKgwqAgY29uc3Qgc3RydWN0IGNvbXBvbmVudF9vcHMgKm9w
czsKPj4KPj4gSXMgYWRkaW5nIGEgbmV3IHN0b3JlZCBmaWVsZCBhIGdvb2QgaWRlYT8gQ2FuIGl0
IGJlIGluc3RlYWQgcGFzc2VkIGFzIGFuCj4+IGFyZ3VtZW50IHRvIGFuYWxvZ2l4X2RwX2Zpbmlz
aF9wcm9iZSgpPwo+Pgo+PiBOb3RlIEkgZG9uJ3QgaGF2ZSBhIHN0cm9uZyBvcGluaW9uIGhlcmUs
IGp1c3QgdGhlIGFkZGVkIHN0cnVjdCBmaWVsZCAKPj4gc2VlbXMKPj4gb3ZlcmtpbGwgZm9yIGJl
aW5nIHVzZWQganVzdCBvbmNlLgo+Pgo+IAo+IEkgYWdyZWUgdGhpcyBpcyBhIGJldHRlciBhcHBy
b2FjaCwgc2luY2UgdGhlICZjb21wb25lbnRfb3BzIGlzIG9ubHkgdXNlZCAKPiBkdXJpbmcgcHJv
YmluZy4KClNvcnJ5IGZvciBhbm90aGVyIHNoYW1lZnVsbHkgaW5jb3JyZWN0IHJlcGx5IQoKVGhl
ICZkcF9hdXhfZXBfZGV2aWNlX3dpdGhfZGF0YS5kb25lX3Byb2Jpbmcgb25seSBzdXBwb3J0cyBw
YXNzaW5nIHRoZSAKJmRybV9kcF9hdXggcGFyYW1ldGVyLCBtZWFuaW5nIHdlIGNhbid0IGRpcmVj
dGx5IHBhc3MgJmNvbXBvbmVudF9vcHMuCgpJJ2xsIGFsc28gYWRkIGV4dHJhIGNvbnRleHQgdG8g
dGhlIGNvbW1pdCBtc2cg4oCTIHNpbWlsYXIgdG8gd2hhdCBJIGRpZCAKZm9yIHY5IHBhdGNoIDkv
MTUg4oCTIHNvIGV2ZXJ5b25lIHVuZGVyc3RhbmRzIHdoeSB0aGlzIGNoYW5nZSB3YXMgbWFkZSBh
bmQgCmF2b2lkcyBjb25mdXNpb24uCgo+IAo+Pj4gQEAgLTQ5LDUgKzUwLDYgQEAgaW50IGFuYWxv
Z2l4X2RwX3N0b3BfY3JjKHN0cnVjdCBkcm1fY29ubmVjdG9yIAo+Pj4gKmNvbm5lY3Rvcik7Cj4+
Pgo+Pj4gwqAgc3RydWN0IGFuYWxvZ2l4X2RwX3BsYXRfZGF0YSAqYW5hbG9naXhfZHBfYXV4X3Rv
X3BsYXRfZGF0YShzdHJ1Y3QgCj4+PiBkcm1fZHBfYXV4ICphdXgpOwo+Pj4gwqAgc3RydWN0IGRy
bV9kcF9hdXggKmFuYWxvZ2l4X2RwX2dldF9hdXgoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAq
ZHApOwo+Pj4gK2ludCBhbmFsb2dpeF9kcF9maW5pc2hfcHJvYmUoc3RydWN0IGFuYWxvZ2l4X2Rw
X2RldmljZSAqZHApOwo+Pj4KPj4+IMKgICNlbmRpZiAvKiBfQU5BTE9HSVhfRFBfSF8gKi8KPj4K
PiAKCkJlc3QgcmVnYXJkcywKRGFtb24KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
