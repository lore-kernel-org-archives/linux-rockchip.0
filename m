Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A977CC27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jun 2024 00:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FtMRwXMxndFE4UsaUQaj12QZTl1Z+67Hagq8OkzxPLM=; b=u8SsVrA4j/MYyw
	+OHHpoDzJ77uUjgUiRiASdOGSpp3u9LbYSHRLYih/ZrJSEXnoGEzm5gNMtaqKzlV3bU8N6rElGOxF
	+rMO2l5/LHrS/CrZmHRJBhygdWerQlE+Z7SoeY6BhySU2PMCP4B42Uju71uG9qhLjMoqMAUaqG1VD
	8BThqeLXP/kjeBGOYrs5BcEIPiQwpWFH4aywQufQppXboM+rfaDLJfwgpFPvKkWnH+JDv8GB4mhLc
	ff1EFF8m6SWm4he9QNwvLUUKukNJEokYx/W1aQGg3oO3uQie9TsdchCMSKGJF72byFNYh1Fp+jl1E
	ZTWLLAAarKPFOeESaObg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHuOp-00000000qcK-3KUa;
	Fri, 14 Jun 2024 00:02:35 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHuOl-00000000qaE-1m8w
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Jun 2024 00:02:34 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-52c815e8e9eso1767459e87.0
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Jun 2024 17:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718323349; x=1718928149; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vkpCvK5EJTTZ5JzjKWIiKlKTNiomLgsRfQupOZcIcJE=;
        b=rDR1NVzioUuR3oxgkOD8RMAhBgBeRoqAL9HHYF+CrzFkdmQU8n7m+EwPzJR6e7xNfy
         V7COFiYoT3bdAYPdguiZWaAhU//GF6SLKkZFkjkgb2jgJvwZ7i9JOmycgFNO+y/wvtd5
         0hBxzRxTV9lc/V3SEZrWSApoXunYqa4Sw+QA2LyV89hhcoaGtZyiHgeZaK3gUN4O9WvH
         ayXEdvrGgpHQMIxO0hkfrK+oDTEn3HadVp7kwAHrYAGT5vskjaK7lRVUb+CBgnRSaRo/
         0wlwMsnTMDAJXRnZ6S33heRPURIhLGS/XnVEysVPWXty50XAtsUWrZXV5dBBXnDXzkMB
         dVQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718323349; x=1718928149;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vkpCvK5EJTTZ5JzjKWIiKlKTNiomLgsRfQupOZcIcJE=;
        b=nZjH4/xTwsax6ICXOwWf/hXYiff4GBP1E5TyIQCAGT/Y57ibmDGuTU4hwoxAzZwY5d
         XQKgN+sX5yROKv55S7bIWW0pW84ysCDQ9UqS4yQVax90qFCmoxslz8SIU2oDlMBgQ9M6
         uDdBhQZfnb51jbXqVFtI1lKmUU2G5azL/9LxXFaa90xZXobAxoWk5my8sMG2kk39orto
         hK/OZGjQ8XnjJwmkOLL9SiHj0MvEjjsjHZt71WhtJzoQ9vk6F0f7rgO74W+f0FkPeR6X
         sAUFmuWhoDLBfJLrcf63j+UQaMQKiGIEob3TZeVSHmjE7XLUMqSFvZLkMIr+FnhI9MFa
         4sfA==
X-Forwarded-Encrypted: i=1; AJvYcCUBZPVc4Pb8jbPa3Gbq8h972W5qoPuANOFNk0KijSZbkU+CP7HGXJkDCNRH1fqeqNZHsBtYCqdPU7XaRULxzu8VW7cMG0eI62KxZ37UHqAagJPv
X-Gm-Message-State: AOJu0YxotktL3urGat9dXGuKj+XLaacVMXeHueUfeG+IJo20vpai1l3G
	eJZbFI0MG0md15eIqgAnB541WoM4EutlDMGGenwd/lDBwLbM9mLha952MwJaEGU=
X-Google-Smtp-Source: AGHT+IE9BLBhYpbu8JV4xf74wnBpCPiJUBFcxX6WNhMf1mJ+tJupZI8mMcrVtFEFb4OG5G8Qwnt76A==
X-Received: by 2002:ac2:4ada:0:b0:52b:c27c:ea1f with SMTP id 2adb3069b0e04-52ca6e91627mr570592e87.55.1718323348734;
        Thu, 13 Jun 2024 17:02:28 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca288804dsm374797e87.262.2024.06.13.17.02.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 17:02:28 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 14 Jun 2024 03:02:20 +0300
Subject: [PATCH v4 1/3] drm/panel-edp: add fat warning against adding new
 panel compatibles
MIME-Version: 1.0
Message-Id: <20240614-edp-panel-drop-v4-1-4e0a112eec46@linaro.org>
References: <20240614-edp-panel-drop-v4-0-4e0a112eec46@linaro.org>
In-Reply-To: <20240614-edp-panel-drop-v4-0-4e0a112eec46@linaro.org>
To: Douglas Anderson <dianders@chromium.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>, devicetree@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1789;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=ly28wJZAdwzm4TkEnW8cpppYMs8mXFFUqZf4RJIpHsY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBma4iSY+Yydhiuir67MsMxJdnd2Q8Ogxxf/FjtW
 28+90lvPdOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmuIkgAKCRCLPIo+Aiko
 1XGACACfi39l6OxtT8igatdQccpf9x3vBJq5skcjoGrat0PbMc8DgVkX7morDBPARu7RHfFBkNt
 xzWrqoHmJ9vkgMf7bWLP2q3A8zQ9SMJGxTBEbsmVRyPuslO3LWe1HlYzG36+7MGTSUMqB5Hy1Hx
 9uBx2CMq2UeA9QgOBhA+ma3H99VPMjzDcGsN9fQ+hj3l3CmSou4/L5TgjBBBTSi1ppdHYEWX/xj
 2ZQ6qOZNY8Ob88E8By6lCDov3+bjsItFrHkDGkCDE5ru1jQO3LRIVz9/+h7VZHthy9Mw3jHCMuJ
 BpSaGD4Fr8p5MkT4mxWughrf3EM4IMkuvAdfwd1kPYbMMGAV
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_170231_527513_648B06B2 
X-CRM114-Status: GOOD (  14.54  )
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

Add a fat warning against adding new panel compatibles to the panel-edp
driver. All new users of the eDP panels are supposed to use the generic
"edp-panel" compatible device on the AUX bus. The remaining compatibles
are either used by the existing DT or were used previously and are
retained for backwards compatibility.

Suggested-by: Doug Anderson <dianders@chromium.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/panel/panel-edp.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
index 67ab6915d6e4..85edfd3d59f3 100644
--- a/drivers/gpu/drm/panel/panel-edp.c
+++ b/drivers/gpu/drm/panel/panel-edp.c
@@ -1762,7 +1762,24 @@ static const struct of_device_id platform_of_match[] = {
 	{
 		/* Must be first */
 		.compatible = "edp-panel",
-	}, {
+	},
+	/*
+	 * Do not add panels to the list below unless they cannot be handled by
+	 * the generic edp-panel compatible.
+	 *
+	 * The only two valid reasons are:
+	 * - Because of the panel issues (e.g. broken EDID or broken
+	 *   identification).
+	 * - Because the eDP drivers didn't wire up the AUX bus properly.
+	 *   NOTE that, though this is a marginally valid reason,
+	 *   some justification needs to be made for why the platform can't
+	 *   wire up the AUX bus properly.
+	 *
+	 * In all other cases the platform should use the aux-bus and declare
+	 * the panel using the 'edp-panel' compatible as a device on the AUX
+	 * bus.
+	 */
+	{
 		.compatible = "auo,b101ean01",
 		.data = &auo_b101ean01,
 	}, {

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
