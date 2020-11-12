Return-Path: <SRS0=8xFb=ES=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915C1C5519F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 19:02:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 160EF22241
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 19:02:40 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Mqt9MUER";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="luGD853v"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 160EF22241
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wUnSCFVd9RTU44uSfCQO7/1fK4Hy5yxXafCOzWQP2wc=; b=Mqt9MUERjMCXJMM40k1iJZCn5
	mGMNfIjTdAIisr6dvJQ5oaZmnU31KjVUgKK10oj4fGXHnLn0OK2xx4clnKbcfRXwzBGW5+J/JZjm0
	rTseP2tsoHY2KMvFQzfq1tcVr4fzNjPP98Z76Ab0LmI7lh/z1e2UdOI/ueNFAFlb5oDztthsulCZi
	QyaDSI4UVwCqfUQFWBda9cl16NMaLDzScCedxkPurLpEKtI0fLJpsRn8LAF12+WsF8E7jsx07ddpW
	4wLoRBf3gukyqm/375PzacoqtHYYBh8qMcRp5iIjzvdxXP+N3FFZmKJ3TxN9elG8H2apA7mubSRcK
	2nFRraM2A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kdHrd-0004Lk-CN; Thu, 12 Nov 2020 19:02:33 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdHqn-0003xL-Av
 for linux-rockchip@lists.infradead.org; Thu, 12 Nov 2020 19:01:49 +0000
Received: by mail-wm1-x341.google.com with SMTP id c16so6438278wmd.2
 for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2020 11:01:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CEyFJOSSbdvLfYxo1nswzgxPyZwwh2XfGKJvNAOyE+k=;
 b=luGD853vRdhiDvEzMuqlML/DI46z1HchP7kIYP7123hCXjIDgT+HMOCnSJrjwbOs5T
 dyI9rFHG0jjrNjVTuoAMKToPrIkva/LkzsMRcVNzK9cBSG2xBrrMOPXjo/YLDV+uHCjF
 H7vK6vwlbKYitJyuncaAeAWzP2EWg44x3fmsTEpg53cocdLYVkxg3dTjJzwp9W717Bbf
 m9syiXJiuReemJUapLpUUPWPavpT6L8UOkIrtVnpFmG1FGBdZvF3DcldZyWeqB3hxnnK
 eNzI7U1bN53rVphSw0qjmtxO0V1pGzv6KhP75YnlQNU7GvWZJiHb0QSUJwnj1C6EckMd
 hDEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CEyFJOSSbdvLfYxo1nswzgxPyZwwh2XfGKJvNAOyE+k=;
 b=thjZ7WoKPeLnA4ymbUNkQMkJwjYtBul43B5r8iBl6fW3Y3k0t4pOoYqObw6yxbDz6J
 iDvIKJonI8QKaqYEQ4MDZM4yJxrdmfUya56R0fwdHDHx7m56aHF8D52ZDj2GwJlq+X+u
 3JpHnSu9LOi6Imr2hqm7p1Dau1iFfNHx7Dn9rpIGA7Ax0dFKieKQas7FDWLm4QOYedRE
 /uTRJ6qKziMgx68d4G5q+MfPDD9AtrTVXOYUlGXaV9lMOXCPDooDfWqsu17RFjZMwV8+
 ELQGiC9ZEUgX5wLdFJeQOchyoor1gF/DuBm/Nv072Cq+hIQywX2NfEMYSSMAqB+nrMgM
 7cSw==
X-Gm-Message-State: AOAM530KtCbS09PEAnZnG6EtxAKKdMc2/P7e5keKui8IRB3uxFfYaxcw
 j1gi/Itp8EcqHArfqS+fcTSGqA==
X-Google-Smtp-Source: ABdhPJzJ0+Yyv/37xYPSl7RKQhEM9Vy9lp/Wn8yEAkQh4vhITJTf2t4B9xuaXBBI/2x2qd6o8Gl7Dg==
X-Received: by 2002:a1c:1d82:: with SMTP id d124mr1156353wmd.12.1605207699167; 
 Thu, 12 Nov 2020 11:01:39 -0800 (PST)
Received: from dell.default ([91.110.221.159])
 by smtp.gmail.com with ESMTPSA id p4sm8105214wrm.51.2020.11.12.11.01.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Nov 2020 11:01:38 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Subject: [PATCH 22/30] drm/rockchip/dw-mipi-dsi-rockchip: Demote
 non-conformant kernel-doc headers
Date: Thu, 12 Nov 2020 19:00:31 +0000
Message-Id: <20201112190039.2785914-23-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201112190039.2785914-1-lee.jones@linaro.org>
References: <20201112190039.2785914-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201112_140141_698544_9B8A07FA 
X-CRM114-Status: GOOD (  13.38  )
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
