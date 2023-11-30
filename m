Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3207C10DCE
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 15:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1h21/2KMjnvkkDGyFST0HR2U0dXeWL9+YSjWgbwHvno=; b=DDFpa7jAMFbera
	S6uvAgwn5kL+kPl8nkLDyQkx9l/FlxvqkdNEy/LkgDvhNlaRUJCMYnWf2Si3OSqQSARVMlSCW1Q7q
	nVjHLcgXvrNtAth6syK4GLJJK4Fa0ujhwmoSm1kx3cwKR7iOG/qNJEbcLkymTUsjq58faC43OQ7Bt
	dT2cCCNsCQ1JZ5hrOmMo3ddP+fAsoe3FL3kae4A8IFvng6+QoILTBXh5xehqCmQDistHULnPIp5C+
	mUBN0OkOwhBfDZqgcR9ewgTJ1mmrC39R81K5Izv30yedP8QFkeg0xgz0wPoVUT+Qp2J+//52e/IBK
	gKA+iBQ7m3M4q+qe1sTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8jPE-00BGqS-27;
	Thu, 30 Nov 2023 15:56:48 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8jP8-00BGjx-35
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 15:56:44 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-6cd0a8bc6dcso657219a34.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Nov 2023 07:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701359797; x=1701964597; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pRNLoGhO2BMO9ciLNfM1W1rhqOoDcDjvlbAJTebh+yo=;
        b=UqF0AIIuHpNIBCXgrOs3y1E60CCfZBme0XyguknN0s2idob0R2PpFZWmCjMqBHiPSx
         e+hSi16Ym9NsWShr4MQ/CuHMhR8SYCHO+3cLhhnzFvnlZGutY3DMCPeEITxEzJWFUWqu
         5WcuAdnK114aMDES62nUZPVGAXxwIFdhNyTr9X7JRWzBep+aZXllShuSvjf8fuD9FVHx
         c+ck6o3CVaCCZL8buAC84qsvMN8wpeSCYgaSSACmYGXfvlsm/AKw7RQv0BIMl6Ezulou
         PbGCQYUkTmH/wpX11Vdim+Qp9DDvtwKBkttoitxkqU5T/We3hZQVZAYqxLa5peCmxm74
         sKPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701359797; x=1701964597;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pRNLoGhO2BMO9ciLNfM1W1rhqOoDcDjvlbAJTebh+yo=;
        b=EmxvID8RHclIsE2wenap0YV/GB7FnKLFT4o53GS7nIwGGsf++yygX2GhxY1V4s25tu
         7mCb86xpZI2fzXMpBvFJ9v4ho6cDI9yMIAschua0EBHAMC1J+BpRRtyvumzXGDzOA+2H
         C2Oy5Z98GfH5DQqU8jZUroyOdCKldS4GB+1fk+62D/OavBUogHOmPodn6cSfJ/N60REw
         Un1NAuI21l2RE1+85w/JDhfRN4aRMaBpPoCIj7nkLFyto7UktImkLkEaGrSqPrCX2hQq
         IHgjKAtJCH/LKYxpSE3pl9eJVK53SQq38sv9Rlz07rT3KGAjR5p8OMEmdIS0RTwikbyI
         SyQg==
X-Gm-Message-State: AOJu0YxetLqg1JlUR+dtsSdNDo79BDmKCDeTnxdNUeZrPv4s5r0Njpci
	RoKs/81Nz7RlYo4re+cXncPx1tFh4RU=
X-Google-Smtp-Source: AGHT+IFDN2KO5mhmb9kkTeoiK/iTdFDlSusXFHxnNmaSKuAZ/ISuF82jXLCkerZAI+gGVdXWyroc9A==
X-Received: by 2002:a05:6830:2047:b0:6d8:4a96:e4db with SMTP id f7-20020a056830204700b006d84a96e4dbmr7537200otp.31.1701359797425;
        Thu, 30 Nov 2023 07:56:37 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id n25-20020a9d6f19000000b006d7ff27a47esm187852otq.77.2023.11.30.07.56.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 07:56:37 -0800 (PST)
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
Subject: [PATCH 2/9] drm/panel: himax-hx8394: Drop shutdown logic
Date: Thu, 30 Nov 2023 09:56:17 -0600
Message-Id: <20231130155624.405575-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231130155624.405575-1-macroalpha82@gmail.com>
References: <20231130155624.405575-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_075643_002403_AAE41965 
X-CRM114-Status: GOOD (  10.86  )
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
