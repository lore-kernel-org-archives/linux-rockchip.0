Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC2F606A31C
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 06:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=5GM6D5fJ;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=NlIsZpPS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+yGmhdLKd9cCQvc73zDlqvbHUdJbzHy+YHm9Vnu+Vu0=; b=5GM6D5fJEtiXWJ4cAeCwV38vYi
	toegblHa+HvxXvHQ30zKjqVciCkTVeS85e/5Bgl7EZ+BcJ3w6XqGRiRR5FOHPpk5Gkr9ys3/P7e5B
	vvBX5iZA3xfQOzwX6AzPFnQXdGGVuL01++xF3WWrgIFP8T8yakmQgIu+G3gSSE7JZnn5nmw05iv/M
	icu8kU5CsB9u1u3+rcPkApqmbygiCCRdI7zEf6GATtzYsaYHu0zFZw7hRfE4B7GFTVrHGdw4wlz3i
	wn3eddyQ4Rnbbfh88uU5NGfiLoFC119s2i45zisKxSkGdeSg+qo4jvc+mY2FvspIDG3eK4G04JHb9
	D1VWcnhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR1lC-00000005mRW-1Vv2;
	Wed, 11 Nov 2026 06:24:42 +0000
Received: from mail-m19731101.qiye.163.com ([220.197.31.101])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR1l9-00000005mPH-3h5I;
	Wed, 11 Nov 2026 06:24:41 +0000
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5443da424;
	Wed, 11 Nov 2026 14:19:30 +0800 (GMT+08:00)
Message-ID: <704571ba-af39-441f-9eb9-09d4a2c9feb3@rock-chips.com>
Date: Wed, 11 Nov 2026 14:19:24 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/7] drm/rockchip: dw_hdmi_qp: Set the VOP2 color space
 from the connector
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
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
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <cd6ff4c0-cd5d-4c42-8f52-5f3893aec015@collabora.com>
X-HM-Tid: 0aa1c942f20b03a7kunmef3b884a81d8c9
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDQktPVk1PTE1JTR9CHhgaSFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=NlIsZpPS+ZAgSnMCOJyZ/fhpuRI6ICncfbRAEYIDCGzmKhhHkjrPZUwly1aNVM2tLOM+CozijxecNUuQP1FmSvpAvviyK2jnpcm+Exwdf80ojPZnAg2ay8vUMcLN6QrckT7XLVHk8hkiv+PvBvU1iF2v6nFTo0nvxrQ0B2obmnY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=XS5mBLwVG/2WkI+k9TR/yW0nuz+R1AOPXfUeB4VXSF8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_222440_109334_39FB80FB 
X-CRM114-Status: GOOD (  18.70  )
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

SGkgQ3Jpc3RpYW4gYW5kIEphbiwKCk9uIDExLzExLzIwMjYgMzowNSBBTSwgQ3Jpc3RpYW4gQ2lv
Y2FsdGVhIHdyb3RlOgo+IEhpIEphbiwKPiAKPiBPbiAxMC8xOC8yNiA1OjMxIFBNLCBKYW4gQ2xh
dcOfZW4gd3JvdGU6Cj4+IFZPUDIgY29udmVydHMgUkdCIHRvIFlDYkNyIHVzaW5nIHRoZSBtYXRy
aXggc2VsZWN0ZWQgYnkgdGhlIENSVEMKPj4gc3RhdGUncyBjb2xvcl9zcGFjZSwgYnV0IHRoZSBI
RE1JIGVuY29kZXIgbmV2ZXIgc2V0cyBpdCwgc28gVk9QMgo+PiBhbHdheXMgY29udmVydHMgd2l0
aCBCVC43MDkuIE9uY2UgdGhlIGNvbG9yc3BhY2UgcHJvcGVydHkgY2FuCj4+IHNpZ25hbCBCVC4y
MDIwIGNvbG9yaW1ldHJ5IHRvIHRoZSBzaW5rLCBhIFlDYkNyIG91dHB1dCB3b3VsZCBiZQo+PiBl
bmNvZGVkIHdpdGggQlQuNzA5IGFuZCBkZWNvZGVkIHdpdGggQlQuMjAyMC4KPj4KPj4gRGVyaXZl
IGNvbG9yX3NwYWNlIGZyb20gdGhlIGNvbm5lY3RvciBjb2xvcnNwYWNlIGJlZm9yZSB0aGUgZWFy
bHkKPj4gcmV0dXJuLCBzbyB0aGF0IGEgY29sb3JzcGFjZSBjaGFuZ2UgYWxvbmUgaXMgYXBwbGll
ZC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSmFuIENsYXXDn2VuIDxqYW4uY2xhdXNzZW4xMEB3ZWIu
ZGU+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9ja2No
aXAuYyB8IDE2ICsrKysrKysrKysrKysrKysKPj4gIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRp
b25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRt
aV9xcC1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9j
a2NoaXAuYwo+PiBpbmRleCA5YzRjZjY4ZDc5ZDUuLjEwYzViNmQ2NDA2ZSAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9ja2NoaXAuYwo+PiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2NrY2hpcC5jCj4+IEBAIC0x
Nyw2ICsxNyw3IEBACj4+ICAjaW5jbHVkZSA8bGludXgvcGh5L3BoeS5oPgo+PiAgI2luY2x1ZGUg
PGxpbnV4L3BoeS9waHktaGRtaS5oPgo+PiAgI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgo+PiAr
I2luY2x1ZGUgPGxpbnV4L3ZpZGVvZGV2Mi5oPgo+PiAgI2luY2x1ZGUgPGxpbnV4L3dvcmtxdWV1
ZS5oPgo+PiAgCj4+ICAjaW5jbHVkZSA8ZHJtL2JyaWRnZS9kd19oZG1pX3FwLmg+Cj4+IEBAIC0x
ODcsNiArMTg4LDE5IEBAIHN0YXRpYyBpbnQgZHdfaGRtaV9xcF9yb2NrY2hpcF9nZXRfdm9wX2Zv
cm1hdChzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIsCj4+ICAJcmV0dXJuIGJzdGF0ZS0+b3V0
cHV0X2J1c19jZmcuZm9ybWF0Owo+PiAgfQo+PiAgCj4+ICtzdGF0aWMgdTMyCj4+ICtkd19oZG1p
X3FwX3JvY2tjaGlwX2NvbG9yX3NwYWNlKGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRl
ICpjb25uX3N0YXRlKQo+PiArewo+PiArCXN3aXRjaCAoY29ubl9zdGF0ZS0+Y29sb3JzcGFjZSkg
ewo+PiArCWNhc2UgRFJNX01PREVfQ09MT1JJTUVUUllfQlQyMDIwX1JHQjoKPj4gKwljYXNlIERS
TV9NT0RFX0NPTE9SSU1FVFJZX0JUMjAyMF9ZQ0M6Cj4+ICsJY2FzZSBEUk1fTU9ERV9DT0xPUklN
RVRSWV9CVDIwMjBfQ1lDQzoKPj4gKwkJcmV0dXJuIFY0TDJfQ09MT1JTUEFDRV9CVDIwMjA7Cj4+
ICsJZGVmYXVsdDoKPj4gKwkJcmV0dXJuIFY0TDJfQ09MT1JTUEFDRV9ERUZBVUxUOwo+PiArCX0K
Pj4gK30KPiAKPiBNeSBtYWluIGNvbmNlcm4gaXMgaW50cm9kdWNpbmcgVjRMMl9DT0xPUlNQQUNF
XyogbG9naWMgaW50byBhIERSTSBicmlkZ2UgZHJpdmVyLAo+IHdoaWNoIHNob3VsZCByYXRoZXIg
cmVseSBvbiBlbnVtIGRybV9jb2xvcnNwYWNlIC8gRFJNX01PREVfQ09MT1JJTUVUUllfKi4KPiBU
cmFuc2xhdGluZyB0aGUgRFJNIGNvbG9yaW1ldHJ5IGludG8gVjRMMiB2YWx1ZXMgb25seSBmb3Ig
Vk9QMiB0byBtYXAgdGhlbSBiYWNrCj4gdG8gYSBDU0MgbWF0cml4IGRvZXNuJ3Qgc2VlbSBmdWxs
eSBqdXN0aWZpZWQuCj4gCj4gVGhlIHJvb3QgcHJvYmxlbSBpcyByYXRoZXIgb24gdGhlIFZPUDIg
c2lkZTogdGhlIGNvbG9yX3NwYWNlIGZpZWxkIGluIHN0cnVjdAo+IHJvY2tjaGlwX2NydGNfc3Rh
dGUgYW5kIGl0cyBWNEwyLWJhc2VkIGhhbmRsaW5nIGluIHRoZSBDU0Mgc2VsZWN0aW9uIGxvb2sg
bGlrZQo+IGxlZnRvdmVycyBpbmhlcml0ZWQgZnJvbSB0aGUgdmVuZG9yIGtlcm5lbCwgYW5kIEkg
dGhpbmsgdGhpcyBpcyBhIGdvb2QgdGltZSB0bwo+IGNsZWFuIHRoYXQgdXAgaW5zdGVhZCBvZiBi
dWlsZGluZyBvbiBpdC4KPiAKClllcC4gQW5kIGlmIHlvdSBsb29rIGF0IHRoZSBsYXRlc3QgdmVu
ZG9yIGtlcm5lbCBjb2RlLCB3ZSBoYXZlIGFsc28KcmVtb3ZlZCB0aGUgVjRMMl9DT0xPUlNQQUNF
XyogcmVsYXRlZCBjb250ZW50IGFuZCBzd2l0Y2hlZCB0byBEUk0uCgotLSAKQmVzdCwgCkNoYW95
aQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
