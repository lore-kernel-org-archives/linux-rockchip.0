Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C775EC2D0A3
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 17:45:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 77FB020B80
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 17:45:30 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="e4BoMu6m";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gjEJWyJw"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 77FB020B80
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wUnSCFVd9RTU44uSfCQO7/1fK4Hy5yxXafCOzWQP2wc=; b=e4BoMu6mH2SN1wTSK2M3iGOvU
	zOh8o/7tWUy+mZJQc4BeQ7By083aee0pTR65I+6if9E8bFCYoOaviHG1tFdZelq43d8pEXDbW+xfy
	z1z9A9cFObbgL0n96oc1G/6TiWkubuIzoGe4IK4CoBX9juiW7QP1u+vZCsYNqh5pLG1q9dZbW2Yq0
	I/tXR0d1IOmCcaau8unr/Dhqtqx/oo0xFMAByt7XZ6dTnlUwZHt04jFjQZxIIe+0IjPJ3n7dirJw9
	u9qIbplLuNwxS4mH4IQN1qHCoMDnbLwudgrzIbJK+MtCFGHGOLKoEHU0mrtS1L0dCKoSb66nd/cME
	i9eR0Rd8w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1keiZ9-000649-TT; Mon, 16 Nov 2020 17:45:24 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1keiVn-0004Dk-PL
 for linux-rockchip@lists.infradead.org; Mon, 16 Nov 2020 17:42:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id b6so19669083wrt.4
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Nov 2020 09:41:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CEyFJOSSbdvLfYxo1nswzgxPyZwwh2XfGKJvNAOyE+k=;
 b=gjEJWyJwzFrX7dC3f76aducJiYprGZ51SMUFwBK0DQrAv2ywbkD8FzspryEi7eqbmU
 NXN1+uLfqPrmytc1nA4abMsKa57dKeJvezW7Rwn+7yCHAylw/EoLcg9k6NvPlYerc67F
 QHekoEKTHsinLMc3sfH0j8TI3MZbJXOfA58QULxB4oq1DmI1kEj8W8/yjoiry5RfRYjb
 hwxFEINkJg6rRbF27qnkxPUEz2B1K+Gwpmg8fZp/SXQRDZKiHYeHpXXTyxGIKh40CdHu
 Wp26Nhmd141+vPVeDCootPazEl9rUNZH5qUXvPTcRM89akPJGhDuAYOv8WSU2mHvgXfy
 4dkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CEyFJOSSbdvLfYxo1nswzgxPyZwwh2XfGKJvNAOyE+k=;
 b=erVxzgYCP7Xqh1DHM1clNY3aC8Lcxgxhn0gwzilwMFgOSN8ww6QwL90bczMenU0ecL
 w61k/R7ztLaghHOziqIoiKPXf+Ic47ZTKymjp8XA1yqcTGyDO707TOvML3MSg9yIY8g+
 hnQdGDcmZ14eAU072BR8oQX26WlQENLWL9ccK3K228svQbO5E/NU1Hh+CXujDCoSiuw9
 d+z1eCyFmbLSEXPJV7j6RGXvIl/rhdx9VmGjwuhoDe4m00OqqTRsXe/k6m0WVvrLcKrB
 GoktvPtf4Q32ci4KRRAWoGrmzrDrZKVLIYVRwuyI7ndAOBqleRGiE5MhJNc2qPicYc5b
 dS+Q==
X-Gm-Message-State: AOAM532SGcA027J1z3yM8byuwNjAe+5fa2tFoSkqkne7W/epNOo/SSfB
 sBfhQ6nlCxFFnwqscmBOiLMdSQ==
X-Google-Smtp-Source: ABdhPJzEz6hKtbXBg6S6mlCSEzioxtEnXfOHuGEg87lALXMzEVHRmwq7gEtk9990PpeLgnNOh0pLRQ==
X-Received: by 2002:adf:cf0b:: with SMTP id o11mr20117453wrj.162.1605548514868; 
 Mon, 16 Nov 2020 09:41:54 -0800 (PST)
Received: from dell.default ([91.110.221.159])
 by smtp.gmail.com with ESMTPSA id n10sm24667224wrx.9.2020.11.16.09.41.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 09:41:54 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Subject: [PATCH 24/42] drm/rockchip/dw-mipi-dsi-rockchip: Demote
 non-conformant kernel-doc headers
Date: Mon, 16 Nov 2020 17:40:54 +0000
Message-Id: <20201116174112.1833368-25-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201116174112.1833368-1-lee.jones@linaro.org>
References: <20201116174112.1833368-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_124155_967643_788C4614 
X-CRM114-Status: GOOD (  13.54  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Nickey Yang <nickey.yang@rock-chips.com>,
 Daniel Vetter <daniel@ffwll.ch>, Chris Zhong <zyw@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6CgogZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLXJvY2tjaGlwLmM6MzU3OiB3YXJuaW5nOiBG
dW5jdGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdkc2knIG5vdCBkZXNjcmliZWQgaW4gJ25zMmJj
JwogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLXJvY2tjaGlwLmM6MzU3OiB3
YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICducycgbm90IGRlc2NyaWJlZCBp
biAnbnMyYmMnCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2ktcm9ja2NoaXAu
YzozNjU6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ2RzaScgbm90IGRl
c2NyaWJlZCBpbiAnbnMydWknCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kt
cm9ja2NoaXAuYzozNjU6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ25z
JyBub3QgZGVzY3JpYmVkIGluICduczJ1aScKCkNjOiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hp
cHMuY29tPgpDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPgpDYzogRGF2aWQg
QWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xs
LmNoPgpDYzogQ2hyaXMgWmhvbmcgPHp5d0Byb2NrLWNoaXBzLmNvbT4KQ2M6IE5pY2tleSBZYW5n
IDxuaWNrZXkueWFuZ0Byb2NrLWNoaXBzLmNvbT4KQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpDYzogbGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMg
PGxlZS5qb25lc0BsaW5hcm8ub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1t
aXBpLWRzaS1yb2NrY2hpcC5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9kdy1taXBpLWRzaS1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1p
cGktZHNpLXJvY2tjaGlwLmMKaW5kZXggNTQyZGNmN2VkZGQ2Ni4uZTg0MzI1ZTU2ZDk4MCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLXJvY2tjaGlwLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLXJvY2tjaGlwLmMKQEAg
LTM1MCw3ICszNTAsNyBAQCBzdGF0aWMgdm9pZCBkd19taXBpX2RzaV9waHlfd3JpdGUoc3RydWN0
IGR3X21pcGlfZHNpX3JvY2tjaGlwICpkc2ksCiAJZHNpX3dyaXRlKGRzaSwgRFNJX1BIWV9UU1Rf
Q1RSTDAsIFBIWV9URVNUQ0xLIHwgUEhZX1VOVEVTVENMUik7CiB9CiAKLS8qKgorLyoKICAqIG5z
MmJjIC0gTmFub3NlY29uZHMgdG8gYnl0ZSBjbG9jayBjeWNsZXMKICAqLwogc3RhdGljIGlubGlu
ZSB1bnNpZ25lZCBpbnQgbnMyYmMoc3RydWN0IGR3X21pcGlfZHNpX3JvY2tjaGlwICpkc2ksIGlu
dCBucykKQEAgLTM1OCw3ICszNTgsNyBAQCBzdGF0aWMgaW5saW5lIHVuc2lnbmVkIGludCBuczJi
YyhzdHJ1Y3QgZHdfbWlwaV9kc2lfcm9ja2NoaXAgKmRzaSwgaW50IG5zKQogCXJldHVybiBESVZf
Uk9VTkRfVVAobnMgKiBkc2ktPmxhbmVfbWJwcyAvIDgsIDEwMDApOwogfQogCi0vKioKKy8qCiAg
KiBuczJ1aSAtIE5hbm9zZWNvbmRzIHRvIFVJIHRpbWUgcGVyaW9kcwogICovCiBzdGF0aWMgaW5s
aW5lIHVuc2lnbmVkIGludCBuczJ1aShzdHJ1Y3QgZHdfbWlwaV9kc2lfcm9ja2NoaXAgKmRzaSwg
aW50IG5zKQotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
