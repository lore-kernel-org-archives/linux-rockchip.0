Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B714606A33D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 09:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jIKmQ60E;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=PZO5l/Ej
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JhjkqimDCfiTCBAqW5bjAKkByGL9FDG4zbCoZbDE9dw=; b=jIKmQ60EITyIYaErvsMzzJh8hw
	c+hbOlPsY3G1e781pOUhtVbS6QiaBukKvmkOLmjhuOtKXcoaL3f0wPPyRMsv29bLct98+B6ZzIN8r
	pc3RPWWVsqIUWbtufh9epShhUkx2JnBoAe95pQBgRcFEYs+AimUr0TeJiER5Y6eXdXjM5uSShORMX
	wvGznyLuV88WPMil6Bnl1FqUwpGwiYmx2NCGxfyP/j2Xmlnr47SSPG6jq+u8Vp9iDCvWmsgG+RfnL
	0MJzSOnShcdBPEEAJGQf6zBqoQhy4QGjvtY4rhN/+ce59sZqFTMKIFB++W9LFfV5tPzJMuTw6MuzC
	bwH5mvNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR4pt-00000006DvG-2DM9;
	Wed, 11 Nov 2026 09:41:45 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR4pr-00000006DuR-1BJd;
	Wed, 11 Nov 2026 09:41:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1794390100;
	bh=7bKfGK/qfrm5C2JrxSXmO8PZzjTGFJi/TFX3XJ6m2pw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PZO5l/Ejq89WXSLT0iNZzGbyMuSbknvtJVfebh0uGdhvmGRJVnrNAECtWICrY9xE8
	 fswm8tEuSBwZju0QcuZ1vJuzu6I6rzFDi/lG4sEYEqyAjJC89tZiOt2it9ip0R4k/y
	 K8WVytv8j7VTBgf3x6SDMRZ+MRIBYMoShLvcx/YbCsXtbzXjtMVs3JhYGjKWbN1ALc
	 Ddu6DWUFA1l8L4eCL54xMipncsJx8E/2rk9OTFh6g2TW/rXBGwNP0WiaV+7UExvcUT
	 t8pIgFRko+26XxFrq9UZiE9vBZRUcCjYDGWZp77jTgMyy+m1SoJGtrx9CKKPeA19Uu
	 7q6xKwXCc8ZfA==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3F74017E05D6;
	Wed, 11 Nov 2026 10:41:40 +0100 (CET)
Message-ID: <7f4c2132-bb73-4698-ab68-902fada398b6@collabora.com>
Date: Wed, 11 Nov 2026 11:41:39 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/7] drm/rockchip: dw_hdmi_qp: Set the VOP2 color space
 from the connector
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 =?UTF-8?Q?Jan_Clau=C3=9Fen?= <jan.claussen10@web.de>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20261018143135.5745-1-jan.claussen10@web.de>
 <20261018143135.5745-7-jan.claussen10@web.de>
 <cd6ff4c0-cd5d-4c42-8f52-5f3893aec015@collabora.com>
 <704571ba-af39-441f-9eb9-09d4a2c9feb3@rock-chips.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <704571ba-af39-441f-9eb9-09d4a2c9feb3@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_014143_502207_8F1E1D13 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQ2hhb3lpLAoKT24gMTEvMTEvMjYgODoxOSBBTSwgQ2hhb3lpIENoZW4gd3JvdGU6Cj4gSGkg
Q3Jpc3RpYW4gYW5kIEphbiwKPiAKPiBPbiAxMS8xMS8yMDI2IDM6MDUgQU0sIENyaXN0aWFuIENp
b2NhbHRlYSB3cm90ZToKPj4gSGkgSmFuLAo+Pgo+PiBPbiAxMC8xOC8yNiA1OjMxIFBNLCBKYW4g
Q2xhdcOfZW4gd3JvdGU6Cj4+PiBWT1AyIGNvbnZlcnRzIFJHQiB0byBZQ2JDciB1c2luZyB0aGUg
bWF0cml4IHNlbGVjdGVkIGJ5IHRoZSBDUlRDCj4+PiBzdGF0ZSdzIGNvbG9yX3NwYWNlLCBidXQg
dGhlIEhETUkgZW5jb2RlciBuZXZlciBzZXRzIGl0LCBzbyBWT1AyCj4+PiBhbHdheXMgY29udmVy
dHMgd2l0aCBCVC43MDkuIE9uY2UgdGhlIGNvbG9yc3BhY2UgcHJvcGVydHkgY2FuCj4+PiBzaWdu
YWwgQlQuMjAyMCBjb2xvcmltZXRyeSB0byB0aGUgc2luaywgYSBZQ2JDciBvdXRwdXQgd291bGQg
YmUKPj4+IGVuY29kZWQgd2l0aCBCVC43MDkgYW5kIGRlY29kZWQgd2l0aCBCVC4yMDIwLgo+Pj4K
Pj4+IERlcml2ZSBjb2xvcl9zcGFjZSBmcm9tIHRoZSBjb25uZWN0b3IgY29sb3JzcGFjZSBiZWZv
cmUgdGhlIGVhcmx5Cj4+PiByZXR1cm4sIHNvIHRoYXQgYSBjb2xvcnNwYWNlIGNoYW5nZSBhbG9u
ZSBpcyBhcHBsaWVkLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEphbiBDbGF1w59lbiA8amFuLmNs
YXVzc2VuMTBAd2ViLmRlPgo+Pj4gLS0tCj4+PiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3
X2hkbWlfcXAtcm9ja2NoaXAuYyB8IDE2ICsrKysrKysrKysrKysrKysKPj4+ICAxIGZpbGUgY2hh
bmdlZCwgMTYgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL2R3X2hkbWlfcXAtcm9ja2NoaXAuYwo+Pj4gaW5kZXggOWM0Y2Y2OGQ3OWQ1Li4xMGM1YjZk
NjQwNmUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9x
cC1yb2NrY2hpcC5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9x
cC1yb2NrY2hpcC5jCj4+PiBAQCAtMTcsNiArMTcsNyBAQAo+Pj4gICNpbmNsdWRlIDxsaW51eC9w
aHkvcGh5Lmg+Cj4+PiAgI2luY2x1ZGUgPGxpbnV4L3BoeS9waHktaGRtaS5oPgo+Pj4gICNpbmNs
dWRlIDxsaW51eC9yZWdtYXAuaD4KPj4+ICsjaW5jbHVkZSA8bGludXgvdmlkZW9kZXYyLmg+Cj4+
PiAgI2luY2x1ZGUgPGxpbnV4L3dvcmtxdWV1ZS5oPgo+Pj4gIAo+Pj4gICNpbmNsdWRlIDxkcm0v
YnJpZGdlL2R3X2hkbWlfcXAuaD4KPj4+IEBAIC0xODcsNiArMTg4LDE5IEBAIHN0YXRpYyBpbnQg
ZHdfaGRtaV9xcF9yb2NrY2hpcF9nZXRfdm9wX2Zvcm1hdChzdHJ1Y3QgZHJtX2VuY29kZXIgKmVu
Y29kZXIsCj4+PiAgCXJldHVybiBic3RhdGUtPm91dHB1dF9idXNfY2ZnLmZvcm1hdDsKPj4+ICB9
Cj4+PiAgCj4+PiArc3RhdGljIHUzMgo+Pj4gK2R3X2hkbWlfcXBfcm9ja2NoaXBfY29sb3Jfc3Bh
Y2UoY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpCj4+PiArewo+
Pj4gKwlzd2l0Y2ggKGNvbm5fc3RhdGUtPmNvbG9yc3BhY2UpIHsKPj4+ICsJY2FzZSBEUk1fTU9E
RV9DT0xPUklNRVRSWV9CVDIwMjBfUkdCOgo+Pj4gKwljYXNlIERSTV9NT0RFX0NPTE9SSU1FVFJZ
X0JUMjAyMF9ZQ0M6Cj4+PiArCWNhc2UgRFJNX01PREVfQ09MT1JJTUVUUllfQlQyMDIwX0NZQ0M6
Cj4+PiArCQlyZXR1cm4gVjRMMl9DT0xPUlNQQUNFX0JUMjAyMDsKPj4+ICsJZGVmYXVsdDoKPj4+
ICsJCXJldHVybiBWNEwyX0NPTE9SU1BBQ0VfREVGQVVMVDsKPj4+ICsJfQo+Pj4gK30KPj4KPj4g
TXkgbWFpbiBjb25jZXJuIGlzIGludHJvZHVjaW5nIFY0TDJfQ09MT1JTUEFDRV8qIGxvZ2ljIGlu
dG8gYSBEUk0gYnJpZGdlIGRyaXZlciwKPj4gd2hpY2ggc2hvdWxkIHJhdGhlciByZWx5IG9uIGVu
dW0gZHJtX2NvbG9yc3BhY2UgLyBEUk1fTU9ERV9DT0xPUklNRVRSWV8qLgo+PiBUcmFuc2xhdGlu
ZyB0aGUgRFJNIGNvbG9yaW1ldHJ5IGludG8gVjRMMiB2YWx1ZXMgb25seSBmb3IgVk9QMiB0byBt
YXAgdGhlbSBiYWNrCj4+IHRvIGEgQ1NDIG1hdHJpeCBkb2Vzbid0IHNlZW0gZnVsbHkganVzdGlm
aWVkLgo+Pgo+PiBUaGUgcm9vdCBwcm9ibGVtIGlzIHJhdGhlciBvbiB0aGUgVk9QMiBzaWRlOiB0
aGUgY29sb3Jfc3BhY2UgZmllbGQgaW4gc3RydWN0Cj4+IHJvY2tjaGlwX2NydGNfc3RhdGUgYW5k
IGl0cyBWNEwyLWJhc2VkIGhhbmRsaW5nIGluIHRoZSBDU0Mgc2VsZWN0aW9uIGxvb2sgbGlrZQo+
PiBsZWZ0b3ZlcnMgaW5oZXJpdGVkIGZyb20gdGhlIHZlbmRvciBrZXJuZWwsIGFuZCBJIHRoaW5r
IHRoaXMgaXMgYSBnb29kIHRpbWUgdG8KPj4gY2xlYW4gdGhhdCB1cCBpbnN0ZWFkIG9mIGJ1aWxk
aW5nIG9uIGl0Lgo+Pgo+IAo+IFllcC4gQW5kIGlmIHlvdSBsb29rIGF0IHRoZSBsYXRlc3QgdmVu
ZG9yIGtlcm5lbCBjb2RlLCB3ZSBoYXZlIGFsc28KPiByZW1vdmVkIHRoZSBWNEwyX0NPTE9SU1BB
Q0VfKiByZWxhdGVkIGNvbnRlbnQgYW5kIHN3aXRjaGVkIHRvIERSTS4KClRoYW5rcyBmb3IgdGhl
IGhlYWRzLXVwOyBJIGhhdmVuJ3QgY2hlY2tlZCB0aGUgcmVjZW50IHZlbmRvciBrZXJuZWwgY2hh
bmdlcy4KClJlZ2FyZHMsCkNyaXN0aWFuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
