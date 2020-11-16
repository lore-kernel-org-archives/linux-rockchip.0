Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 325E5C4742C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 17:46:00 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A689522265
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 17:45:59 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="rnAe+BHd";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dJjWPHa3"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A689522265
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y/UB7RY/QW1No30WhNZa+hWMvlhFNWSH+7kggc86djQ=; b=rnAe+BHdfVQ/jZ7cubyuND2E4
	04jTVMizXeJBrJtt+h6IuNwCLIcnOxkwLP17YyhL7kECdwLXvhsw9KnZAiUibkltoVhEV0FzA47fS
	vnfcA+nHSmTt70kqnoU4GKI8EKdFeEG8wq/3spzB84UJvGFf5bJbjVxrjyfeddeb5mWbtGKH1xMvC
	I3qBGBPkAtQN2+cgE9SU84HZjUfWiaJtPgyK/kCoROz7Ac5ME5e5w2pbH/Gh5cwYmcbna9Iz4S3GV
	ZZ6nEzS8HRsRJrDWHQoarJyhdx4vwiQEFRug3NDysATdyUb2lKrzTPyy3am5p6Ijj/7V/iw849eEq
	H30bk9Ifg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1keiZc-0006L7-KF; Mon, 16 Nov 2020 17:45:52 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1keiVp-0004Ev-14
 for linux-rockchip@lists.infradead.org; Mon, 16 Nov 2020 17:42:10 +0000
Received: by mail-wr1-x443.google.com with SMTP id p8so19674415wrx.5
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Nov 2020 09:41:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vIBIVuzBlrGyaebIimJgPfSPXPdePz/jLOplaNl77Uc=;
 b=dJjWPHa3XSW+Ks76T1YqjrP8Dal9w+IUPXB7B0WHSP7xUCjZgNZc1GMjFypJy45vz9
 iRTaxjVnCRfTzngcfrS/4Refr2BTlaNkKolSVU5w93MFZHZvZtYlw/GYpoPROQ3wieWI
 4/bncU60X4rvtrzb0eVCC5XTG+4wcKsdWumjKq9VnsyeKq+eyPfQ/2JJAQgU/QnLrjlq
 wm3lnnvmPZHgysqF5d5pd3mSZMy5/H0Fco7jajp+mDVA6a1Y+Uo5R6jJtticd68vu3r0
 YwT4a3Qsyysuyt2/3Xd7BVvi/t3DjsfVrjNQSldCF3NNn0JZO36Y8iz6FdKQ+aUEFuMO
 ektw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vIBIVuzBlrGyaebIimJgPfSPXPdePz/jLOplaNl77Uc=;
 b=DSXJKO1WOUIi7o4p0St7O/unRo5ACLMLWCynOLq76T3TOUOJZ6wId8uw9CyM2e5oBB
 bPof+uY/lbkAIRX0Ak31ezVXw7PGIhbUpxDZgvBpceaSyIKP5NQWtwdKOcVRZsBf45gO
 +icJ7WTHWNqEJ6+5XlQXO2red/NbS5pr7ZqLv67BPtumm5zTKGV1pipIpA/JTnkCzESK
 rkJo6jHEoOWYsMzboKT9aUNq1+hCYuI0j7EOyHDZjpc5eKIwlrDPa9lWjM4xiyw8qb5N
 od/n31pSV5+mL2l4BoqWclKdyuzRqjutSJ2e9vHpFeVBwFYNCA+l+DMySlbAHC3sIXFc
 kIcQ==
X-Gm-Message-State: AOAM5330uCnDAq/GS375JpOWBs5Paa9CGTxteRcKs+MX7+/Izd3P9jCE
 +lfcxIDJWvnxBWTobAIARqkH2tYlx5odCm2P
X-Google-Smtp-Source: ABdhPJxDDINDffKvoqG3eEdIP5lWfvrdKvY5h8rEXr/nMWkPCPHtkoWbEr/dVNpmPZeeG4ec1Xg7cw==
X-Received: by 2002:a5d:6783:: with SMTP id v3mr20186302wru.45.1605548516035; 
 Mon, 16 Nov 2020 09:41:56 -0800 (PST)
Received: from dell.default ([91.110.221.159])
 by smtp.gmail.com with ESMTPSA id n10sm24667224wrx.9.2020.11.16.09.41.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 09:41:55 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Subject: [PATCH 25/42] drm/rockchip/rockchip_rgb: Consume our own header
Date: Mon, 16 Nov 2020 17:40:55 +0000
Message-Id: <20201116174112.1833368-26-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201116174112.1833368-1-lee.jones@linaro.org>
References: <20201116174112.1833368-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_124157_225378_2A7A32C2 
X-CRM114-Status: GOOD (  12.31  )
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
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6CgogZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3JnYi5jOjcxOjIyOiB3YXJuaW5nOiBubyBwcmV2
aW91cyBwcm90b3R5cGUgZm9yIOKAmHJvY2tjaGlwX3JnYl9pbml04oCZIFstV21pc3NpbmctcHJv
dG90eXBlc10KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9yZ2IuYzoxNTk6Njog
d2FybmluZzogbm8gcHJldmlvdXMgcHJvdG90eXBlIGZvciDigJhyb2NrY2hpcF9yZ2JfZmluaeKA
mSBbLVdtaXNzaW5nLXByb3RvdHlwZXNdCgpDYzogU2FuZHkgSHVhbmcgPGhqY0Byb2NrLWNoaXBz
LmNvbT4KQ2M6ICJIZWlrbyBTdMO8Ym5lciIgPGhlaWtvQHNudGVjaC5kZT4KQ2M6IERhdmlkIEFp
cmxpZSA8YWlybGllZEBsaW51eC5pZT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5j
aD4KQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IGxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpDYzogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9yZ2IuYyB8IDEgKwogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JvY2tjaGlwX3JnYi5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3Jn
Yi5jCmluZGV4IDlhNzcxYWY1ZDBjOTUuLmMwNzk3MTQ0NzdkOGEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9yZ2IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvcm9ja2NoaXBfcmdiLmMKQEAgLTE4LDYgKzE4LDcgQEAKIAogI2luY2x1ZGUgInJv
Y2tjaGlwX2RybV9kcnYuaCIKICNpbmNsdWRlICJyb2NrY2hpcF9kcm1fdm9wLmgiCisjaW5jbHVk
ZSAicm9ja2NoaXBfcmdiLmgiCiAKICNkZWZpbmUgZW5jb2Rlcl90b19yZ2IoYykgY29udGFpbmVy
X29mKGMsIHN0cnVjdCByb2NrY2hpcF9yZ2IsIGVuY29kZXIpCiAKLS0gCjIuMjUuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
