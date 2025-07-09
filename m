Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1C48C83F1A
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jul 2025 22:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Si43cKGIefsIYM+T2rs65m2YuR4a2ZZ3h0Ha11O4pqo=; b=B7B1XQg6/1btP6
	WFFpYwGIyEnlGvvxebAexclF4PDNFaUMqVUOhAOgJQyCyrUQ1eR92Z8N45T0x/yE49SPv/DDGbEyu
	WTZgyzHA7bfRlN+bU/SYeZwpMic0YQVeJmWqtmxxQILbb09h02Vr2bL/L00YOaqDghkUCNh6M4nUp
	/leLte0/98AZpIGBOurHKZ/QuMIo1dmb+8jnHI2uMIIoEjrwoZRdKIAupzsiErOrHdT5Gx/P12qz1
	FNcBRuLxxmaI1FzKhmJaVguQ9kKQHjfp6exGuTORroxgkqnQ51xdsgvJMCYd/+55MYrpt2xPXm7g6
	swKhJdwH/p7llSoWcU5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZdiE-0000000A7xX-3JwJ;
	Wed, 09 Jul 2025 22:56:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZatg-00000009kHK-2IAz;
	Wed, 09 Jul 2025 19:56:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=JFhcVY1ZSSoc/XTpIZicoEuxmwFVa6EOH7jKZUvbqJs=; b=BFRzFXD5Nbw5HVW60D6pQXWEb8
	3rkb7z3l/vfTl5da3duXtLdc/TgsbxYZiEhh4XeVUvi10UQOSOZpgQMQVwle74iJrcXN7cEqlizaX
	xcuzHez4FLT7kuIr2EwMrRwDh6ywlS0OrgwOon9hRnVkWz2PE+yRX3esQDmCP61Iz446VQx9+Ido0
	Xv6mXFIbpfjbwMIa1PD9kbL6YLx9AGX5m7FLKX8EewJFkxjKzEobi5gYdGSkmpYhzrJZ4N5oM+dFN
	A067ULINjLEdxlBlUroBOwKs6oTOhlhoSEOXwX3H/Je5oLleHGRyTUrd3ndmq/Y5UPVXlP/3uFSVr
	+O1ZAOHw==;
Received: from i53875a79.versanet.de ([83.135.90.121] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uZat6-0006ZI-2e; Wed, 09 Jul 2025 21:55:28 +0200
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
Subject: Re: [PATCH v2 04/12] drm/exynos: exynos_dp: Remove
 &exynos_dp_device.ptn_bridge
Date: Wed, 09 Jul 2025 21:55:26 +0200
Message-ID: <4596850.bcXerOTE6V@diego>
In-Reply-To: <20250709070139.3130635-5-damon.ding@rock-chips.com>
References: <20250709070139.3130635-1-damon.ding@rock-chips.com>
 <20250709070139.3130635-5-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_125604_592756_83915313 
X-CRM114-Status: GOOD (  10.21  )
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

SGkgRGFtb24sCgpBbSBNaXR0d29jaCwgOS4gSnVsaSAyMDI1LCAwOTowMTozMSBNaXR0ZWxldXJv
cMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIERhbW9uIERpbmc6Cj4gVXNlICZhbmFsb2dpeF9k
cF9wbGF0X2RhdGEuYnJpZGdlIGluc3RlYWQgb2YgJmV4eW5vc19kcF9kZXZpY2UucHRuX2JyaWRn
ZQo+IGRpcmVjdGx5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IERhbW9uIERpbmcgPGRhbW9uLmRpbmdA
cm9jay1jaGlwcy5jb20+Cgo+IEBAIC0xNTUsNyArMTU0LDcgQEAgc3RhdGljIGludCBleHlub3Nf
ZHBfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2UgKm1hc3Rlciwgdm9pZCAq
ZGF0YSkKPiAgCj4gIAlkcC0+ZHJtX2RldiA9IGRybV9kZXY7Cj4gIAo+IC0JaWYgKCFkcC0+cGxh
dF9kYXRhLnBhbmVsICYmICFkcC0+cHRuX2JyaWRnZSkgewo+ICsJaWYgKCFkcC0+cGxhdF9kYXRh
LnBhbmVsICYmICFkcC0+cGxhdF9kYXRhLnBhbmVsKSB7Cgp0eXBvLiBUaGUgc2Vjb25kIHRlc3Qg
c2hvdWxkIGJlIGZvciBkcC0+cGxhdF9kYXRhLmJyaWRnZQoKCj4gIAkJcmV0ID0gZXh5bm9zX2Rw
X2R0X3BhcnNlX3BhbmVsKGRwKTsKPiAgCQlpZiAocmV0KQo+ICAJCQlyZXR1cm4gcmV0OwoKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
