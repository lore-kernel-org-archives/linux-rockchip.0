Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D61F3C83F19
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jul 2025 22:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vmOROpZOCIlV1xRaHcQi6ZdX2l0Il5qc9c6/8LlXqWs=; b=Rb/ZvryoQWsINu
	7zwgyV2PtqJ7iEGCalVbqoIRe8ewtAoST2NZo8jkCjA1+VsXhHjoesKwiLoh8fo3I7s2Um+wKXy7Z
	nnU1GeHB8b+/2+7HkUl7qVPee7UplkrB0k5fTwu6dfCqVSVsGmVPPzUsJSVHUZG0tfa1X1yPDxiUk
	XSl6WkrhEQ3v43+dNwivv6zvJJI5sTP5gtFIb5sdQ2mpVFPaSdFosAwDrQ8JhZVY8B4m+sK/JY0Qb
	Df65PPh0Vol17cs7eGRRRTnfzlD90rhumD3Yp61izQJ2ERGSFg7ywrppGEJYb/KXKOw0RMJnNt+xA
	copA/JM/TDbv+0NMs5Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZdiF-0000000A7ye-3JDo;
	Wed, 09 Jul 2025 22:56:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZawN-00000009kRf-1VRe;
	Wed, 09 Jul 2025 19:58:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Oi+8ljfF+JQ62/JezDSEUuiZkb455tkEy3zZWjAXllY=; b=CplRT5r6vcPr6kjF6esg0ft930
	B90fQvkTqExfjC/bI9ln9oLal5rexREbxOjnqMv5pb0a18gQDO/sUzrXkC7Tuqyq/UnM4SJD5Q4js
	vJsLIbGSTvV1bEHWxzhmjgOm/rA/4h5hAB4ob+Mw7zL6XdA6rE9zvyCo/QOg4P8+894UnFF8CYXi/
	1IF31V+e1mgGDD3pGhy4KUTzB3UcJbZLDkIVFeRNotAoqE6RKf9arcc2Bz3qB6CpXwWSGq1BfspbA
	GA+h8dm92fFcTEf85HDWVt5VBHBqQYhMdxrjDcu7jBP3mQMgUlZw6Cjx6lJ1IzVJRpmrOxbT++sHQ
	lK7lIn7A==;
Received: from i53875a79.versanet.de ([83.135.90.121] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uZavq-0006bE-Gp; Wed, 09 Jul 2025 21:58:18 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
 Damon Ding <damon.ding@rock-chips.com>
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 jingoohan1@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
 hjc@rock-chips.com, andy.yan@rock-chips.com,
 dmitry.baryshkov@oss.qualcomm.com, l.stach@pengutronix.de,
 dianders@chromium.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v2 05/12] drm/exynos: exynos_dp: Remove redundant
 &analogix_dp_plat_data.skip_connector
Date: Wed, 09 Jul 2025 21:58:17 +0200
Message-ID: <6306541.2iPT33SAM4@diego>
In-Reply-To: <20250709070139.3130635-6-damon.ding@rock-chips.com>
References: <20250709070139.3130635-1-damon.ding@rock-chips.com>
 <20250709070139.3130635-6-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_125851_395746_355ED81C 
X-CRM114-Status: GOOD (  15.83  )
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

SGkgRGFtb24sCgpBbSBNaXR0d29jaCwgOS4gSnVsaSAyMDI1LCAwOTowMTozMiBNaXR0ZWxldXJv
cMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIERhbW9uIERpbmc6Cj4gVGhlICZhbmFsb2dpeF9k
cF9wbGF0X2RhdGEuc2tpcF9jb25uZWN0b3IgcmVsYXRlZCBjaGVjayBjYW4gYmUgcmVwbGFjZWQK
PiBieSAmYW5hbG9naXhfZHBfcGxhdF9kYXRhLmJyaWRnZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBE
YW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJvY2stY2hpcHMuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vZXh5bm9zL2V4eW5vc19kcC5jIHwgMSAtCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0
aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2Rw
LmMgYi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcC5jCj4gaW5kZXggOWQ3ZDNmMDA5
ZTU4Li45ZTEzMTNmZGVjYWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9l
eHlub3NfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RwLmMKPiBA
QCAtMjM3LDcgKzIzNyw2IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2RwX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlkcC0+cGxhdF9kYXRhLnBvd2VyX29mZiA9IGV4eW5vc19k
cF9wb3dlcm9mZjsKPiAgCWRwLT5wbGF0X2RhdGEuYXR0YWNoID0gZXh5bm9zX2RwX2JyaWRnZV9h
dHRhY2g7Cj4gIAlkcC0+cGxhdF9kYXRhLmdldF9tb2RlcyA9IGV4eW5vc19kcF9nZXRfbW9kZXM7
Cj4gLQlkcC0+cGxhdF9kYXRhLnNraXBfY29ubmVjdG9yID0gISFicmlkZ2U7Cj4gIAo+ICBvdXQ6
Cj4gIAlkcC0+YWRwID0gYW5hbG9naXhfZHBfcHJvYmUoZGV2LCAmZHAtPnBsYXRfZGF0YSk7Cj4g
CgpJIHRoaW5rIHlvdSBtaWdodCB3YW50IHRvIG1lcmdlIAotIGRybS9leHlub3M6IGV4eW5vc19k
cDogUmVtb3ZlIHJlZHVuZGFudCAmYW5hbG9naXhfZHBfcGxhdF9kYXRhLnNraXBfY29ubmVjdG9y
Ci0gZHJtL2JyaWRnZTogYW5hbG9naXhfZHA6IFJlbW92ZSByZWR1bmRhbnQgJmFuYWxvZ2l4X2Rw
X3BsYXRfZGF0YS5za2lwX2Nvbm5lY3RvcgoKQmVjYXVzZSB3aGVuIHNlcGFyYXRlIHRoaXMgY3Jl
YXRlcyBhIGJpc2VjdGlvbiBpc3N1ZS4KTGlrZSB3aGVuIGEgYmlzZWN0IGhhcHBlbnMgdG8gbGFu
ZCBkaXJlY3RseSBvbiB0aGlzIGNvbW1pdCwgeW91IGFscmVhZHkgaGF2ZQpyZW1vdmVkIHRoZSBl
eHlub3MgYXNzaWdubWVudCwgYnV0IHRoZSB1cGRhdGVkIGNoZWNrIGZyb20gdGhlIGZvbGxvd2lu
ZyBwYXRjaAppcyBub3QgeWV0IGluIHBsYWNlLgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
