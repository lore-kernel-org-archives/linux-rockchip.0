Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE047606A31C
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 19:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=pZS3kHPZ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=LtFOMXuJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=AAzeSPBnHJ0dhvptP1R7Cf6sIVVCewXdbTnh5ekQE5k=; b=pZS3kHPZzHvzzbSW3FVBtfP07R
	TKM/tL9Y4YNOuP0WWkzp8/8MUg3x9+9F7Pnc3MtB4PwtVRdmuE4l494tSmEzqV1fLwMKca3kcKsDU
	RL/xGiXlr8jQLBXSPcsnyHPppkxD6PPjLmMQnpmR1/wCze5oTqeTCnVazhIqxLWUu4ni/rO9OY11E
	HrrcAiYTsMJOscDJvZWiLVxpLKcV8eBrA8rurlLiwQKg0fAbJQQU61Xgq9q9li+BoWY7hVyNgRwwT
	SdIVcEH4lmAONTuaHAvV8CoFnvVj8qMA3Z1aBFyjHfQ/xbxqGW8QTVckz5NKq2UevBEEK/Y92Fv6G
	T4GBqOZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQrA1-00000004ryF-13Ah;
	Tue, 10 Nov 2026 19:05:37 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQr9x-00000004rxC-45RX;
	Tue, 10 Nov 2026 19:05:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1794337531;
	bh=Uz3BhBVImxItOoQKtHHtypAOcZNmLlMDT+UDThYXTEY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LtFOMXuJ9oY36UZepQyWbJGdaDUbedR9kzEldgu4NqYzeJltQNqahDZUmBHzomn9n
	 n5hT+LMgDCW2Tv5fXbR/Fe535XqydT4G5iywkeZemeqRmSmEFEqOxK+b7lp1HOoOdq
	 uGtUk2HMib6ufK+DtXvJAsdlFMOKxnsGtBKbTx327CXgufpLnhht0PQNtlCnMO5+cd
	 0OoTTVhtM7NarFALOwW2rcn6XT0rpJt8PH6ZYzEajQy8j3CEKt4mOFHFfHz329hgcK
	 v+/8QOD81fb/+iL3IFH75gxRxOTG+LJQMkXV6K3clMEd/J+zNQFUNSq+Roa31tbrC8
	 UpISE9nB+D/LA==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 890EB17E0820;
	Tue, 10 Nov 2026 20:05:30 +0100 (CET)
Message-ID: <cd6ff4c0-cd5d-4c42-8f52-5f3893aec015@collabora.com>
Date: Tue, 10 Nov 2026 21:05:30 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/7] drm/rockchip: dw_hdmi_qp: Set the VOP2 color space
 from the connector
To: =?UTF-8?Q?Jan_Clau=C3=9Fen?= <jan.claussen10@web.de>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20261018143135.5745-1-jan.claussen10@web.de>
 <20261018143135.5745-7-jan.claussen10@web.de>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20261018143135.5745-7-jan.claussen10@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_110534_209413_33CCA823 
X-CRM114-Status: GOOD (  18.69  )
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

SGkgSmFuLAoKT24gMTAvMTgvMjYgNTozMSBQTSwgSmFuIENsYXXDn2VuIHdyb3RlOgo+IFZPUDIg
Y29udmVydHMgUkdCIHRvIFlDYkNyIHVzaW5nIHRoZSBtYXRyaXggc2VsZWN0ZWQgYnkgdGhlIENS
VEMKPiBzdGF0ZSdzIGNvbG9yX3NwYWNlLCBidXQgdGhlIEhETUkgZW5jb2RlciBuZXZlciBzZXRz
IGl0LCBzbyBWT1AyCj4gYWx3YXlzIGNvbnZlcnRzIHdpdGggQlQuNzA5LiBPbmNlIHRoZSBjb2xv
cnNwYWNlIHByb3BlcnR5IGNhbgo+IHNpZ25hbCBCVC4yMDIwIGNvbG9yaW1ldHJ5IHRvIHRoZSBz
aW5rLCBhIFlDYkNyIG91dHB1dCB3b3VsZCBiZQo+IGVuY29kZWQgd2l0aCBCVC43MDkgYW5kIGRl
Y29kZWQgd2l0aCBCVC4yMDIwLgo+IAo+IERlcml2ZSBjb2xvcl9zcGFjZSBmcm9tIHRoZSBjb25u
ZWN0b3IgY29sb3JzcGFjZSBiZWZvcmUgdGhlIGVhcmx5Cj4gcmV0dXJuLCBzbyB0aGF0IGEgY29s
b3JzcGFjZSBjaGFuZ2UgYWxvbmUgaXMgYXBwbGllZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW4g
Q2xhdcOfZW4gPGphbi5jbGF1c3NlbjEwQHdlYi5kZT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9ja2NoaXAuYyB8IDE2ICsrKysrKysrKysrKysrKysKPiAg
MSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9kd19oZG1pX3FwLXJvY2tjaGlwLmMKPiBpbmRleCA5YzRjZjY4ZDc5ZDUuLjEw
YzViNmQ2NDA2ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRt
aV9xcC1yb2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlf
cXAtcm9ja2NoaXAuYwo+IEBAIC0xNyw2ICsxNyw3IEBACj4gICNpbmNsdWRlIDxsaW51eC9waHkv
cGh5Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9waHkvcGh5LWhkbWkuaD4KPiAgI2luY2x1ZGUgPGxp
bnV4L3JlZ21hcC5oPgo+ICsjaW5jbHVkZSA8bGludXgvdmlkZW9kZXYyLmg+Cj4gICNpbmNsdWRl
IDxsaW51eC93b3JrcXVldWUuaD4KPiAgCj4gICNpbmNsdWRlIDxkcm0vYnJpZGdlL2R3X2hkbWlf
cXAuaD4KPiBAQCAtMTg3LDYgKzE4OCwxOSBAQCBzdGF0aWMgaW50IGR3X2hkbWlfcXBfcm9ja2No
aXBfZ2V0X3ZvcF9mb3JtYXQoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyLAo+ICAJcmV0dXJu
IGJzdGF0ZS0+b3V0cHV0X2J1c19jZmcuZm9ybWF0Owo+ICB9Cj4gIAo+ICtzdGF0aWMgdTMyCj4g
K2R3X2hkbWlfcXBfcm9ja2NoaXBfY29sb3Jfc3BhY2UoY29uc3Qgc3RydWN0IGRybV9jb25uZWN0
b3Jfc3RhdGUgKmNvbm5fc3RhdGUpCj4gK3sKPiArCXN3aXRjaCAoY29ubl9zdGF0ZS0+Y29sb3Jz
cGFjZSkgewo+ICsJY2FzZSBEUk1fTU9ERV9DT0xPUklNRVRSWV9CVDIwMjBfUkdCOgo+ICsJY2Fz
ZSBEUk1fTU9ERV9DT0xPUklNRVRSWV9CVDIwMjBfWUNDOgo+ICsJY2FzZSBEUk1fTU9ERV9DT0xP
UklNRVRSWV9CVDIwMjBfQ1lDQzoKPiArCQlyZXR1cm4gVjRMMl9DT0xPUlNQQUNFX0JUMjAyMDsK
PiArCWRlZmF1bHQ6Cj4gKwkJcmV0dXJuIFY0TDJfQ09MT1JTUEFDRV9ERUZBVUxUOwo+ICsJfQo+
ICt9CgpNeSBtYWluIGNvbmNlcm4gaXMgaW50cm9kdWNpbmcgVjRMMl9DT0xPUlNQQUNFXyogbG9n
aWMgaW50byBhIERSTSBicmlkZ2UgZHJpdmVyLAp3aGljaCBzaG91bGQgcmF0aGVyIHJlbHkgb24g
ZW51bSBkcm1fY29sb3JzcGFjZSAvIERSTV9NT0RFX0NPTE9SSU1FVFJZXyouClRyYW5zbGF0aW5n
IHRoZSBEUk0gY29sb3JpbWV0cnkgaW50byBWNEwyIHZhbHVlcyBvbmx5IGZvciBWT1AyIHRvIG1h
cCB0aGVtIGJhY2sKdG8gYSBDU0MgbWF0cml4IGRvZXNuJ3Qgc2VlbSBmdWxseSBqdXN0aWZpZWQu
CgpUaGUgcm9vdCBwcm9ibGVtIGlzIHJhdGhlciBvbiB0aGUgVk9QMiBzaWRlOiB0aGUgY29sb3Jf
c3BhY2UgZmllbGQgaW4gc3RydWN0CnJvY2tjaGlwX2NydGNfc3RhdGUgYW5kIGl0cyBWNEwyLWJh
c2VkIGhhbmRsaW5nIGluIHRoZSBDU0Mgc2VsZWN0aW9uIGxvb2sgbGlrZQpsZWZ0b3ZlcnMgaW5o
ZXJpdGVkIGZyb20gdGhlIHZlbmRvciBrZXJuZWwsIGFuZCBJIHRoaW5rIHRoaXMgaXMgYSBnb29k
IHRpbWUgdG8KY2xlYW4gdGhhdCB1cCBpbnN0ZWFkIG9mIGJ1aWxkaW5nIG9uIGl0LgoKQ3Jpc3Rp
YW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
