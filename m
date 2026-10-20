Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0B6606A31B
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 10:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ftwBGvyp;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=RDYqua2h
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHRbxt3h70K3/agXknZdBN6az9THyLLqd/QOoDOya3U=; b=ftwBGvypdHRm20
	ZFDB5/Uvsjh5QrmRqxal6qcFGJu3c1c1dI/F2IiY1+T/3YVp+LiurpLZnbtAkkq1hM6sfkE+uZEyn
	14bwNcjV63TBt7cBGOAlT5kY9LTpzsVXKQT2dg1vhKwh7+43CmxF6aZnX48yfoRre9OwECDhN8Axj
	Rf4WdN/t4Aayun2pSQUwqFKqJlBnRl0g8Cf0NZUIc+fP3hYmZSXmJamTNhjxnuVdLBLau1qJ8kClU
	JuiIcqOrA/UFY4bhmzVCHEKv5Gj0AOU9PmwsvARCnhVZZ4N3gAHUNpupbA7udayLKoSLuJFEiPlDI
	MQY5fXFETAnBpvFTg6Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ7Fi-00000009SE9-0QZM;
	Tue, 20 Oct 2026 10:39:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ7Ff-00000009SDM-17eh;
	Tue, 20 Oct 2026 10:39:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=bw4/okksoRkUbBbA6VAqfuKBL2BrJlcyGwLFcSc0aos=; b=RDYqua2hibY5Y9+ULdSMC18aV8
	sN34brcWE7sKFlJIajiNTpa6rzVPfC8B5hUEzmPws8uoqk4jSoSZdsNJV0SA9pjzHFn/yhGK3jo11
	z9LxoPi8J5wnoUQNCdUmgGmtGVRl7DG2CZB0pat02Sjf0Egk3hgpvZmdqC1ZRozk7Oyoeaxj8hEli
	oFTxHPgV1XwIeaCoYaT9QXDNMzD/8pUXIApTlsm/91mFD33wwTFyDvdpgOHEL5lAH8s+u9AKcvF/r
	KLVJ69QRyWon6hajjUlrPte8dSSSKIIxdoc7msg/g+3lnrLn9f9EaWHdjkRQ3NSBOfpXcfgAVgGTB
	l3Li1UAA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Damon Ding <damon.ding@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jingoo Han <jingoohan1@gmail.com>, Inki Dae <inki.dae@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Peter Griffin <peter.griffin@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, kernel test robot <lkp@intel.com>
Cc: oe-kbuild-all@lists.linux.dev,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Dmitry Baryshkov <lumag@kernel.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v4 11/14] drm/bridge: analogix_dp: Use bridge->next_bridge instead
 of plat_data field
Date: Tue, 20 Oct 2026 12:38:50 +0200
Message-ID: <3789853.R56niFO833@diego>
In-Reply-To: <202610201309.w3JSXlP5-lkp@intel.com>
References: <20261019085836.3065008-12-damon.ding@rock-chips.com>
 <202610201309.w3JSXlP5-lkp@intel.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_033927_326330_94F4DEE4 
X-CRM114-Status: GOOD (  14.61  )
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
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRGllbnN0YWcsIDIwLiBPa3RvYmVyIDIwMjYsIDA3OjM2OjIxIE1pdHRlbGV1cm9ww6Rpc2No
ZSBTb21tZXJ6ZWl0IHNjaHJpZWIga2VybmVsIHRlc3Qgcm9ib3Q6Cj4gSGkgRGFtb24sCj4gCj4g
a2VybmVsIHRlc3Qgcm9ib3Qgbm90aWNlZCB0aGUgZm9sbG93aW5nIGJ1aWxkIGVycm9yczoKPiAK
PiBbYXV0byBidWlsZCB0ZXN0IEVSUk9SIG9uIGRybS1taXNjL2RybS1taXNjLW5leHRdCj4gW2Fs
c28gYnVpbGQgdGVzdCBFUlJPUiBvbiBkcm0vZHJtLW5leHQgbmV4dC0yMDI2MTAxOV0KPiBbY2Fu
bm90IGFwcGx5IHRvIGRhZWlua2ktZHJtLWV4eW5vcy9leHlub3MtZHJtLW5leHQgbGludXMvbWFz
dGVyIHY3LjNdCj4gW0lmIHlvdXIgcGF0Y2ggaXMgYXBwbGllZCB0byB0aGUgd3JvbmcgZ2l0IHRy
ZWUsIGtpbmRseSBkcm9wIHVzIGEgbm90ZS4KPiBBbmQgd2hlbiBzdWJtaXR0aW5nIHBhdGNoLCB3
ZSBzdWdnZXN0IHRvIHVzZSAnLS1iYXNlJyBhcyBkb2N1bWVudGVkIGluCj4gaHR0cHM6Ly9naXQt
c2NtLmNvbS9kb2NzL2dpdC1mb3JtYXQtcGF0Y2gjX2Jhc2VfdHJlZV9pbmZvcm1hdGlvbl0KPiAK
PiB1cmw6ICAgIGh0dHBzOi8vZ2l0aHViLmNvbS9pbnRlbC1sYWItbGtwL2xpbnV4L2NvbW1pdHMv
RGFtb24tRGluZy9kcm0tYnJpZGdlLWFuYWxvZ2l4X2RwLVJldHVybi1iaXRtYXNrLWZyb20tYW5h
bG9naXhfZHBfZ2V0X2lycV90eXBlLzIwMjYxMDE5LTE2NTgyMwo+IGJhc2U6ICAgaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9taXNjL2tlcm5lbC5naXQgZHJtLW1pc2MtbmV4dAo+
IHBhdGNoIGxpbms6ICAgIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjEwMTkwODU4MzYu
MzA2NTAwOC0xMi1kYW1vbi5kaW5nJTQwcm9jay1jaGlwcy5jb20KPiBwYXRjaCBzdWJqZWN0OiBb
UEFUQ0ggdjQgMTEvMTRdIGRybS9icmlkZ2U6IGFuYWxvZ2l4X2RwOiBVc2UgYnJpZGdlLT5uZXh0
X2JyaWRnZSBpbnN0ZWFkIG9mIHBsYXRfZGF0YSBmaWVsZAo+IGNvbmZpZzogbmlvczItcmFuZGNv
bmZpZy0xMDAwLTIwMjYxMDIwIChodHRwczovL2Rvd25sb2FkLjAxLm9yZy8wZGF5LWNpL2FyY2hp
dmUvMjAyNjEwMjAvMjAyNjEwMjAxMzA5LnczSlNYbFA1LWxrcEBpbnRlbC5jb20vY29uZmlnKQo+
IGNvbXBpbGVyOiBuaW9zMi1saW51eC1nY2MgKEdDQykgMTEuNS4wCj4gcmVwcm9kdWNlICh0aGlz
IGlzIGEgVz0xIGJ1aWxkKTogKGh0dHBzOi8vZG93bmxvYWQuMDEub3JnLzBkYXktY2kvYXJjaGl2
ZS8yMDI2MTAyMC8yMDI2MTAyMDEzMDkudzNKU1hsUDUtbGtwQGludGVsLmNvbS9yZXByb2R1Y2Up
Cj4gCj4gSWYgeW91IGZpeCB0aGUgaXNzdWUgaW4gYSBzZXBhcmF0ZSBwYXRjaC9jb21taXQgKGku
ZS4gbm90IGp1c3QgYSBuZXcgdmVyc2lvbiBvZgo+IHRoZSBzYW1lIHBhdGNoL2NvbW1pdCksIGtp
bmRseSBhZGQgZm9sbG93aW5nIHRhZ3MKPiB8IFJlcG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2Jv
dCA8bGtwQGludGVsLmNvbT4KPiB8IENsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvb2Ut
a2J1aWxkLWFsbC8yMDI2MTAyMDEzMDkudzNKU1hsUDUtbGtwQGludGVsLmNvbS8KPiAKPiBBbGwg
ZXJyb3JzIChuZXcgb25lcyBwcmVmaXhlZCBieSA+Pik6Cj4gCj4gICAgbmlvczItbGludXgtbGQ6
IGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5vOiBpbiBm
dW5jdGlvbiBgYW5hbG9naXhfZHBfYXV4X2RvbmVfcHJvYmluZyc6Cj4gPj4gZHJpdmVycy9ncHUv
ZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmM6MTY2OTooLnRleHQrMHhiODAp
OiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBkZXZtX2RybV9vZl9kaXNwbGF5X21vZGVfYnJpZGdl
Jwo+ID4+IGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5j
OjE2Njk6KC50ZXh0KzB4YjgwKTogcmVsb2NhdGlvbiB0cnVuY2F0ZWQgdG8gZml0OiBSX05JT1My
X0NBTEwyNiBhZ2FpbnN0IGBkZXZtX2RybV9vZl9kaXNwbGF5X21vZGVfYnJpZGdlJwoKSSBndWVz
cyB0aGUgUm9ja2NoaXAga2NvbmZpZyBmb3IgdGhlIEFuYWxvZ2l4LURQIGFsc28gbmVlZHMgYQoK
CXNlbGVjdCBEUk1fT0ZfRElTUExBWV9NT0RFX0JSSURHRQoKc2ltaWxhciB0byBleHlub3MgYW5k
IGlteC4KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
