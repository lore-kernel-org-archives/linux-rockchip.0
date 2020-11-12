Return-Path: <SRS0=8xFb=ES=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D37C2C5519F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 19:02:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 550212222F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 19:02:55 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="YvfmSVH9";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s4lVN2Hs"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 550212222F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c3gdVKDfHVbMeRtoXiCUyJ6r2VE4oBNx5NOscyn0QKs=; b=YvfmSVH9TQO18Srar0Ho+ECQt
	xl3Hm6+uDdBGz9swIlC0j5UMcjMZbZxjRTRRZ2aRHipdF0Iui5nMayr4bb7iKfrV5UDTE50/80cdk
	Gq6SETgZ78+oUkS1gW/8PZKPiO4/tWeTRpQL3PDrxYgAsxI218hofx7St9V4dMVPUq5TDzYxpRiLd
	7F0CuZf+JFVGbOA/jLX72xw9ZIulMifBUZqt624PQwGZnrP3tSgxr2Fp2oyRwLON2GxNZdeTn8ljm
	xZJjhWjYAW4qqTqXZJA+LndwV66z/+lF0X4/l9sTAcsDKEnqOJMF8mQYvnEx5bto3p4BQww3sWkdZ
	yEhWB1GbQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kdHru-0004Tz-El; Thu, 12 Nov 2020 19:02:50 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdHqr-0003zt-8k
 for linux-rockchip@lists.infradead.org; Thu, 12 Nov 2020 19:01:54 +0000
Received: by mail-wm1-x342.google.com with SMTP id d142so6188103wmd.4
 for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2020 11:01:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+WLjHfl3orvIQYtFk8cWNm313KtEs9zxT+XRuqJ/3Ug=;
 b=s4lVN2Hsx8GQ3TeqOoSE+KsBPJlUyYD142nagiXHMQJgIDfn1bY4BwRFQBD8Vbl9FQ
 O1+Z4SJSb0AKtr0z4NL7sqVeIdUmqJgfibxF7FcTPCDjxi72V/cgW+I45MyNR7hyQatY
 Qq6fLZTJliIXtLc70YQLXh9XCIkxcvBrW28WU+HTtjc9SLVqe0wfSak6HsnGU4+CHXD2
 TLxVHbtf1X+A4xTTQUaJmHS+quv06uqVKJCznn0DlN8LHoqBZKvJ05NZTDOTgolMzCmA
 p7dTjD0sVkTvS3CHvXQSUXtaP5QslSGjSxcJeX6go4uEcgyGTct/hmAMIrOA64HMzKE5
 4F9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+WLjHfl3orvIQYtFk8cWNm313KtEs9zxT+XRuqJ/3Ug=;
 b=Z0Ndsh1rtFLsv1/iBmvfhfv1pCfaRCvWzR3RkHjckZa7luQn/ASPhlW3yJ59Sk3Qdp
 /LGTx6HKUsgMaQ3U06HoopWhWvjIWsl3CPKABXI+bUeojRySGNn93i0eoSrqO+E3aaz3
 IiFA8H6+rrADq/GBZX+9EFQuen6idyq+0BGdl0HAZLquDjF4lda6dehWTCxw2PNQ0wW0
 1a7xtbhr0XhYSXdZQc6AmoG31tYVSSilIo2NXoFDuOD/UNJ5zZTiSAnPP6lJqRoOKL/Q
 F4SmSLSNdzSzn4edkAFfhcGs4MLFH8QwmiJj+dGec1HqFpAqIpSoyMKDGEE1tTdSbK15
 +gDw==
X-Gm-Message-State: AOAM533u3ruZ+4vrL3C6sRNbcDnvGrXNqDIKec7uW4Bx6IZK3Fy3n1lF
 XtkpcNOn7afXfnyDd3aWHuL2dw==
X-Google-Smtp-Source: ABdhPJxXaF3jZQ2mBJbDe3b1AG/65HW5oMGlPkeTd6SbS62ThvjaB4q1OUbAYzVP+iDACDMmHv8Kxw==
X-Received: by 2002:a1c:3d44:: with SMTP id k65mr999880wma.147.1605207703616; 
 Thu, 12 Nov 2020 11:01:43 -0800 (PST)
Received: from dell.default ([91.110.221.159])
 by smtp.gmail.com with ESMTPSA id p4sm8105214wrm.51.2020.11.12.11.01.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Nov 2020 11:01:42 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Subject: [PATCH 25/30] drm/rockchip/rockchip_lvds: Fix struct document
 formatting
Date: Thu, 12 Nov 2020 19:00:34 +0000
Message-Id: <20201112190039.2785914-26-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201112190039.2785914-1-lee.jones@linaro.org>
References: <20201112190039.2785914-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201112_140145_639685_A8EB5337 
X-CRM114-Status: GOOD (  12.95  )
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
 linux-arm-kernel@lists.infradead.org, Mark Yao <mark.yao@rock-chips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

TXVzdCBzdGFydCB3aXRoICJzdHJ1Y3QgPG5hbWU+IgoKRml4ZXMgdGhlIGZvbGxvd2luZyBXPTEg
a2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6CgogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tj
aGlwX2x2ZHMuYzo0OTogd2FybmluZzogY2Fubm90IHVuZGVyc3RhbmQgZnVuY3Rpb24gcHJvdG90
eXBlOiAnc3RydWN0IHJvY2tjaGlwX2x2ZHNfc29jX2RhdGEgJwoKQ2M6IFNhbmR5IEh1YW5nIDxo
amNAcm9jay1jaGlwcy5jb20+CkNjOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2guZGU+
CkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+CkNjOiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWxAZmZ3bGwuY2g+CkNjOiBNYXJrIFlhbyA8bWFyay55YW9Acm9jay1jaGlwcy5jb20+CkNj
OiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
U2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfbHZkcy5jIHwgMiArLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2x2ZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yb2NrY2hpcF9sdmRzLmMKaW5kZXggZjI5MmM2YTZlMjBmYi4uODY1OGVmODJkOTM3YiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2x2ZHMuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfbHZkcy5jCkBAIC00Miw3ICs0Miw3IEBA
IHN0cnVjdCByb2NrY2hpcF9sdmRzOwogCQljb250YWluZXJfb2YoYywgc3RydWN0IHJvY2tjaGlw
X2x2ZHMsIGVuY29kZXIpCiAKIC8qKgotICogcm9ja2NoaXBfbHZkc19zb2NfZGF0YSAtIHJvY2tj
aGlwIGx2ZHMgU29jIHByaXZhdGUgZGF0YQorICogc3RydWN0IHJvY2tjaGlwX2x2ZHNfc29jX2Rh
dGEgLSByb2NrY2hpcCBsdmRzIFNvYyBwcml2YXRlIGRhdGEKICAqIEBwcm9iZTogTFZEUyBwbGF0
Zm9ybSBwcm9iZSBmdW5jdGlvbgogICogQGhlbHBlcl9mdW5jczogTFZEUyBjb25uZWN0b3IgaGVs
cGVyIGZ1bmN0aW9ucwogICovCi0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
