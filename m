Return-Path: <SRS0=8xFb=ES=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AD40C5519F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 19:02:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C5235206FB
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 19:02:43 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ebFFRaY1";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S9tZWZNQ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C5235206FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y/UB7RY/QW1No30WhNZa+hWMvlhFNWSH+7kggc86djQ=; b=ebFFRaY1ZB3lsXjNVPSzpEwIz
	rAKX5oKhRbwaXf7OA95tkCTDYuPjGiqL6EscqgRUbquV1qXUtRvNoidLoqksklHubkGjN/C4/maRG
	2HHgIRbsZ4k8zaaItidtLHXVq23ASlCeOSCKs7BdSEV60BBcUOseuoUPatfrBpFPXE6FtnyD7jexD
	YajmO+WPWM4VkIx4OIViLQ3Zwo+7Zf+A11Itbdd8SlQ1FYsZFGvFTsMyKjjkZxUV3LY5zDA0QNYAv
	Qv9S5uGRsfMctSyf5Ugdkgqci+2KEVhHvuh/Az1vY8BP5uNTRzxh2TdaqRQqC4fVF3fvsSuzjdFBL
	SeR0proug==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kdHrh-0004ND-C9; Thu, 12 Nov 2020 19:02:37 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdHqo-0003xu-AF
 for linux-rockchip@lists.infradead.org; Thu, 12 Nov 2020 19:01:49 +0000
Received: by mail-wr1-x442.google.com with SMTP id p1so7128057wrf.12
 for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2020 11:01:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vIBIVuzBlrGyaebIimJgPfSPXPdePz/jLOplaNl77Uc=;
 b=S9tZWZNQXIkRV9mPM6OEmeVeYu0c4QMcShen80UEKoX4pqHBh/GmCzilomqYNxV5r+
 Gvfd1aJzgRPBkD/CPATnf//LEkjmtVu73Mvst7Yw5of7zAwHLJiLWbOtttCx5SQ0HFYd
 HRAKO81DLHM+HxOmmHNxqpv4R5H1NdLISE28IMLAp83hNQ96sMDrtPXh3rhl1ZRlosu4
 3sd6MsCuUE/vPrKmay52fIdQIi0vi0tOvBK04HHiUj+In+L8e08Qlzamx2gTq+STIq5G
 HGbFhB8xc0BlejFY8N8U+27dYAqSatMBbQPiyHrOuFIw0XjG2VeuIN7LeOTTFKJ6XrWu
 fB+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vIBIVuzBlrGyaebIimJgPfSPXPdePz/jLOplaNl77Uc=;
 b=D4K2kdhMtTRcM1sfnh4zUXhaj554xkdyz5ZDvPjS/VN6zkymgi0IMKy801hfYA3JUb
 f45nNBXjDN3Zhk1Odr/8Rwd/4vh5C2VNl8VT5c6LMPPrbhi7mw6+BMnsfoS8NRzgHKfl
 mtjJDZIkEAnj7nOeUCpBiB2B8FdVqra5oDJ9WDgyHhHy4RNNkspBE7wxqQh6U/+UeRCe
 uok29hcSGyclmlmEZMTCVVfl6sg+ol3YyWf1Grj4a4TtIOT4FlFprP5QOCrTHmRFEzqz
 ls7puqF38gdfA8/7B8tnwfog/kkymTYve8dWYKs1iWEKs7Bm6oWpzmJ7yxI4MfZ3Z58d
 qw8Q==
X-Gm-Message-State: AOAM5304J2dMk/e/16MJzyWbihoPU3mdMurGHodsSLo4srRwqCBrlxCw
 nHY612VhXJqZgZyFscSRy2Jabg==
X-Google-Smtp-Source: ABdhPJzi00lpmiu98Uws9+8H0DTTCUdhvJWoWsZRfmSHcUmZJrPN5bkxKIJNvHUJveEjzIibaQ/d5A==
X-Received: by 2002:a05:6000:110c:: with SMTP id
 z12mr1108335wrw.214.1605207700757; 
 Thu, 12 Nov 2020 11:01:40 -0800 (PST)
Received: from dell.default ([91.110.221.159])
 by smtp.gmail.com with ESMTPSA id p4sm8105214wrm.51.2020.11.12.11.01.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Nov 2020 11:01:40 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Subject: [PATCH 23/30] drm/rockchip/rockchip_rgb: Consume our own header
Date: Thu, 12 Nov 2020 19:00:32 +0000
Message-Id: <20201112190039.2785914-24-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201112190039.2785914-1-lee.jones@linaro.org>
References: <20201112190039.2785914-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201112_140142_518136_421229A4 
X-CRM114-Status: GOOD (  12.05  )
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
