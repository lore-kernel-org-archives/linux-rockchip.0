Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51C60C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 18:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1h21/2KMjnvkkDGyFST0HR2U0dXeWL9+YSjWgbwHvno=; b=DWXSF9QID7N6pg
	hSBTOn/72moMsu/WWxkdZeqvv6bNjQ52/WTTVWDs+nwOlB4X/aERujknuhUi+M1jqxxBHu6B//V3V
	ITOizk1Kg6KAaSrZyeYVBU7CwXAyUNGjdrs4OYLLTgmUu9DWGiLuQh239GNabBkFNESmMoqjToWVa
	bry8b/TlEzSU7MfRv2pJiv18oZz1tjGrdUpas+ugw9gYe9Km0Fkt20NqRZfWlZGJlk2OtnOWfWnA4
	bjob7SESuqx1+1bxmOLXhd33jcaGsigUL18gqNP7PV3V5ll5cSUbhoOqvXRtt2UIQrQrFH0jiT3eX
	EnKtyZTmWaJ7q/mvghIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE8N-005Nrd-23;
	Mon, 04 Dec 2023 18:57:35 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE8G-005Nm4-1a
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Dec 2023 18:57:30 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-6d8ba6c9b4bso1218749a34.3
        for <linux-rockchip@lists.infradead.org>; Mon, 04 Dec 2023 10:57:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701716247; x=1702321047; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pRNLoGhO2BMO9ciLNfM1W1rhqOoDcDjvlbAJTebh+yo=;
        b=VjZDIJWCvMc7rW2RuiI98BLNm9MoN4h6sp3jBKxZUydgLU3NamE/UXuhM7BRbxnmsK
         rAm/hUdZq5lhczufoM3FyCbjkxyzAROFKR25wWO+Db+vmQXpQCL5VF1kkwUnSj4hb8SP
         /pGdDI7ZsptRsSxX8XBRQLajo+adbj5EdWlfHf5a0MMTYbUCJF+1ZxQVjJvx5foD7vF4
         HHpASNXtrvYgdEWfQR/54H+8oQ4my+csROPFhKpJdQ2ls4DjwiuJDcArcqeoD9NNNPda
         sCxdfAT/TbHx9Zs4LW+fFi0FHI/IbYiCBZeUCuqIqtAKPXqhIveTPh08es8FwF4T8qx9
         rIfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701716247; x=1702321047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pRNLoGhO2BMO9ciLNfM1W1rhqOoDcDjvlbAJTebh+yo=;
        b=ILMWZwNueJ1xZwSSR4pqO0e0m9lsd+Mnbs/C6cPORuF2v3bBMYVbIWro8al2FcNcFQ
         2RUaHKX5ay4kVrw36jHpBKcN86eV2fOkc/s+uV8wGkVyZ2hC+RZ3DqXt5Ls7mt4mrdjI
         jCogu2WM3UfLMkCRJk1qBZZMu3oCu4hFMaVIcVY5573QSPM5Qal/oZn5RIopJ+avq3PU
         U2Op5CqR6pLgDGPXD4jajd8JnlHKMZceFCqQp8kUjdlRFKh+qACZ4edaIFXFOgIaLV/A
         x09IuXuHTvMwxbigmSumm4MKShFQ8vwhcPeXDZ2y6mOmKdKHogGCj895RR30DbcSe5hT
         9zFA==
X-Gm-Message-State: AOJu0Yzoqz0kaW4ky6EfmiFVQ1K2qsnOXjNyCk5HJMtbVOjDDCWego5u
	Tv5nSV/dmekI/q2HX2Kn17LzXkMyqJI=
X-Google-Smtp-Source: AGHT+IHcWm1h1Em1kIkk/o+9cIGFYSuJffLp9RQVhcgIZgRMRwVf1HJ4lBuXR12rytbhyYdoJFAN0w==
X-Received: by 2002:a05:6830:1283:b0:6d8:7eb4:ca7d with SMTP id z3-20020a056830128300b006d87eb4ca7dmr2963949otp.54.1701716247207;
        Mon, 04 Dec 2023 10:57:27 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y25-20020a4a2d19000000b00581fc1af0a7sm2073303ooy.28.2023.12.04.10.57.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 10:57:27 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 02/10] drm/panel: himax-hx8394: Drop shutdown logic
Date: Mon,  4 Dec 2023 12:57:11 -0600
Message-Id: <20231204185719.569021-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231204185719.569021-1-macroalpha82@gmail.com>
References: <20231204185719.569021-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_105728_822614_E2273E00 
X-CRM114-Status: GOOD (  10.69  )
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

From: Chris Morgan <macromorgan@hotmail.com>

The driver shutdown is duplicate as it calls drm_unprepare and
drm_disable which are called anyway when associated drivers are
shutdown/removed.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/panel-himax-hx8394.c | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-himax-hx8394.c b/drivers/gpu/drm/panel/panel-himax-hx8394.c
index 3823ff388b96..d8e590d5e1da 100644
--- a/drivers/gpu/drm/panel/panel-himax-hx8394.c
+++ b/drivers/gpu/drm/panel/panel-himax-hx8394.c
@@ -390,27 +390,11 @@ static int hx8394_probe(struct mipi_dsi_device *dsi)
 	return 0;
 }
 
-static void hx8394_shutdown(struct mipi_dsi_device *dsi)
-{
-	struct hx8394 *ctx = mipi_dsi_get_drvdata(dsi);
-	int ret;
-
-	ret = drm_panel_disable(&ctx->panel);
-	if (ret < 0)
-		dev_err(&dsi->dev, "Failed to disable panel: %d\n", ret);
-
-	ret = drm_panel_unprepare(&ctx->panel);
-	if (ret < 0)
-		dev_err(&dsi->dev, "Failed to unprepare panel: %d\n", ret);
-}
-
 static void hx8394_remove(struct mipi_dsi_device *dsi)
 {
 	struct hx8394 *ctx = mipi_dsi_get_drvdata(dsi);
 	int ret;
 
-	hx8394_shutdown(dsi);
-
 	ret = mipi_dsi_detach(dsi);
 	if (ret < 0)
 		dev_err(&dsi->dev, "Failed to detach from DSI host: %d\n", ret);
@@ -427,7 +411,6 @@ MODULE_DEVICE_TABLE(of, hx8394_of_match);
 static struct mipi_dsi_driver hx8394_driver = {
 	.probe	= hx8394_probe,
 	.remove = hx8394_remove,
-	.shutdown = hx8394_shutdown,
 	.driver = {
 		.name = DRV_NAME,
 		.of_match_table = hx8394_of_match,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
