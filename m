Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9660C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Oct 2022 00:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GqgdMw3hNUvdoYaXra6J77DIEsF92jEjoFrOMt26RsY=; b=eqPKeQIXES11dZ
	T5HBwHicwtsElYf0zZkZ51eHu/juYqzNzCfr9rFF0NoUFbMBjRXW40iErfZnllEa/Z3eNO7wPWjQO
	gwhm3npJ0j3qxVHj2yK0H41FS77ZZ27e+FcQlxoKyi85a94jw96MzEQaObNRHbZymfYKkjuQapBTb
	oQL5iIl06j2W9WpClpxxsTg8tPLmWno+peyJgE7ecGJsLt1AHuEjxoHcB1Dh2XAHkq93kRDRGpA02
	X8VbesWgrxkZ+nfDtroPlzdTa/xYP46wza5VakEDQhAMJyC7RuqwPSvdCSXKnDnuOXDDcQvTEyrQR
	7JUtr7e77cTPRMpHFuLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olJ2v-006xa7-6f; Thu, 20 Oct 2022 00:04:25 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olJ2s-006x2g-Fi
	for linux-rockchip@lists.infradead.org; Thu, 20 Oct 2022 00:04:23 +0000
Received: by mail-pg1-x536.google.com with SMTP id bh13so17710170pgb.4
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Oct 2022 17:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sTMXfwPxByKhRbLMaBxfNCc3mPRoF7RiiHgqUtdhFi8=;
        b=NzPUtom58NR34m2Vw7sS73ERU30rhe3RyOvvFRL8c790qf5KuZz3KvN69al/nH052u
         65SRaYt/WHp0PKjIXDaLYCni7KlNbgouTs8KNf5Fy7byqei7PQ3KRgBHVXjhzqsdhzY0
         or9yFqOg4L7gMu66IIQ9eWmxSPJ7xk7vRk2RQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sTMXfwPxByKhRbLMaBxfNCc3mPRoF7RiiHgqUtdhFi8=;
        b=5W4rvc78w94hKrvysWXMu1NaOD18F3sWkwmiPvUCSstjllW6xSKYy0Ausz4xbrziZJ
         env71q6aw1Aa3MCnkUZxu1Nfr3Eobbeit61s2o+4g8E2+RP+e6y8ipMTuOUcR+pa6sfx
         5RvNj1ivDnbzJjie0G5vnqFt6d1SEhbn56477qH6CucKTw0+CTc8PnzJPwsK626jR9LG
         x0MIYjsDIcl9Z14BlmhWWFnrY5QfWhZY5T79PXEXIz+yT2iPYCIBXu6cOiBHd6QLByHo
         ttovZGDfc12FeFabCrtDgaYk8+YH0s5cAtHgl/PbQWlKF8NZ1rtr/BuCer4hMxpddpfq
         Q2Rg==
X-Gm-Message-State: ACrzQf2GgwqAaTbuk7bGwX+lwwasxquCjGbVzVAQpu+5oRRVqmIlVC69
	JtmQGjVPxOrI7pYvSN7KS84/3Q==
X-Google-Smtp-Source: AMsMyM664xBzQRRznQW+wpuvkN2DiM8TEUvDJZUSO7BbmhIQUEq/kvX65aGrSxbs3usLThugxlDXJA==
X-Received: by 2002:a63:4283:0:b0:457:dced:8ba3 with SMTP id p125-20020a634283000000b00457dced8ba3mr9328251pga.220.1666224261493;
        Wed, 19 Oct 2022 17:04:21 -0700 (PDT)
Received: from localhost ([2620:15c:9d:2:57b7:1f0e:44d1:f252])
        by smtp.gmail.com with UTF8SMTPSA id lb13-20020a17090b4a4d00b0020a825fc912sm459119pjb.45.2022.10.19.17.04.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 17:04:21 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
	Helen Koike <helen.koike@collabora.com>,
	Brian Norris <briannorris@chromium.org>,
	stable@vger.kernel.org
Subject: [PATCH 1/2] drm/rockchip: dsi: Clean up 'usage_mode' when failing to attach
Date: Wed, 19 Oct 2022 17:03:48 -0700
Message-Id: <20221019170255.1.Ia68dfb27b835d31d22bfe23812baf366ee1c6eac@changeid>
X-Mailer: git-send-email 2.38.0.413.g74048e4d9e-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_170422_592233_2F358977 
X-CRM114-Status: GOOD (  12.92  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

If we fail to attach the first time (especially: EPROBE_DEFER), we fail
to clean up 'usage_mode', and thus will fail to attach on any subsequent
attempts, with "dsi controller already in use".

Re-set to DW_DSI_USAGE_IDLE on attach failure.

This is especially common to hit when enabling asynchronous probe on a
duel-DSI system (such as RK3399 Gru/Scarlet), such that we're more
likely to fail dw_mipi_dsi_rockchip_find_second() the first time.

Fixes: 71f68fe7f121 ("drm/rockchip: dsi: add ability to work as a phy instead of full dsi")
Cc: <stable@vger.kernel.org>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index bf6948125b84..d222c6811207 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -1051,23 +1051,31 @@ static int dw_mipi_dsi_rockchip_host_attach(void *priv_data,
 	if (ret) {
 		DRM_DEV_ERROR(dsi->dev, "Failed to register component: %d\n",
 					ret);
-		return ret;
+		goto out;
 	}
 
 	second = dw_mipi_dsi_rockchip_find_second(dsi);
-	if (IS_ERR(second))
-		return PTR_ERR(second);
+	if (IS_ERR(second)) {
+		ret = PTR_ERR(second);
+		goto out;
+	}
 	if (second) {
 		ret = component_add(second, &dw_mipi_dsi_rockchip_ops);
 		if (ret) {
 			DRM_DEV_ERROR(second,
 				      "Failed to register component: %d\n",
 				      ret);
-			return ret;
+			goto out;
 		}
 	}
 
 	return 0;
+
+out:
+	mutex_lock(&dsi->usage_mutex);
+	dsi->usage_mode = DW_DSI_USAGE_IDLE;
+	mutex_unlock(&dsi->usage_mutex);
+	return ret;
 }
 
 static int dw_mipi_dsi_rockchip_host_detach(void *priv_data,
-- 
2.38.0.413.g74048e4d9e-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
