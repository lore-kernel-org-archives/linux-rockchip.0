Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E581BC2BA15
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jun 2024 00:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2EC9pwAz3B2327Wwdf8JqGAegyAcNKfywCJDP6g3L9w=; b=1s6w4S6l01zXYs
	0N2hqnQItVSFQx7ysNY7TjwIqLeX19fgsU7vDVqYNPQZ6jSxpV5n1z0jRV77ywnFBI/YeYUJJCBfh
	kXEBiSS52q08wKZi4we4mASI65+0NMgekGDyq2rgkp5VGsLHnkBfDNouGH2vPh/X95N2LCEYg7GH7
	w0Z+PyUzualX51sQ6OYbG1Ooj3G+bfUgqWTv7FZFQR8XVOmuo1JnGEulDri1elJDjgAaEc/N72nZC
	5ZxOjzpu00BgkYtgu9wdA6nl9MxAJfky/kF4SenUoJdoBJ175gaGJDctnjRt6dEV6Y4lj9pd8wajb
	BWVUjxPssi1o/q2lxymg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHuOr-00000000qcf-43dj;
	Fri, 14 Jun 2024 00:02:37 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHuOm-00000000qak-1MXd
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Jun 2024 00:02:35 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-52bc274f438so2013482e87.0
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Jun 2024 17:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718323350; x=1718928150; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O6Pigrl3YMiYV0L2puz2MCBrwA4BsCn0v5eH3hYPj3M=;
        b=OuzQhJPOZus4ZksAi1xPmiHDoMmPx66P8qWz7uSybf/XfBBnjdm7fh8dgPuwCmUicB
         NUZgQ1cz91jCgGzUITqXcO460bVv2pipnUqpbDUvxUbLoOoOgEEui/mgj8nr0zNcUZU7
         ezHzizQJU1ZAsG6iWIBeJDdrg2VQTVZbSaw4rx9cPRVmcgk6GGnrUIPKLaIABqZYNdFP
         8YSK6aLxS7mYCwxN1avWbSgtD5lIzdySsstVBlTSt4svXEITKaqSUVhtN+SYsNkK5JGs
         3lT7mkbu/zaB0J+IQQKV4cs12IQ38BFYnxjni7LZWOTOkXQEQ8jL+poyTrpbFoNe3YzN
         EP1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718323350; x=1718928150;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O6Pigrl3YMiYV0L2puz2MCBrwA4BsCn0v5eH3hYPj3M=;
        b=PHVmcFY+FBXT/DMlAuRf+kdnGEELQ57aSz53DqQ1Xbnqwep6n9qs7VkkhupE593/L7
         xyn+HFls+9mupfpTIG+z+D35SZ2k1Rx8qssJTT6aUL2pGY0V5V1hC0Uu1Finzv1BPVuU
         aV9ZtRAE01hjC1noWMTVxZCAv0g8/D+rrQE4qQ1Q6uIOQxAvMgp4xf2uLDiPULBwQuCP
         S4VhtMpJRPd/JVfOs8UVMF04yJLwE6kFr2rdp5TFkaB2PecwriwXcJ0vBpGkeOIXFVTo
         EstGTUb7W6krGb5yHRAVNTSXlAjH4AEPrMSEiEPVhlQyNzhR83Qr+qycdpkaNrCQ+u0A
         whyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAUCm3MPF5qE+BomnsZWEtmUjAkLzKeVo12xw1jNiTRLwsD5o68GKOHMGm5GPSeupV79ZrFNvRog5lcL7qW9B7BcTvqzjyiQnEx1NZCUXT1z6J
X-Gm-Message-State: AOJu0YwC/bf/PkbN1KRGCrU4tn5L8R+FMV60wnmNxeOLiq8RsQj3ZUXl
	K76ioBzrrxv/1BT4gfTe9VvenaamZC5j1uFtKBHSnVnUdC20qc7m5h82n+VVY60=
X-Google-Smtp-Source: AGHT+IH5UIwXjKfdAlrtgtsP/gSAJqsbdrJZUJutPq0mL+YKqAKX7hdu9dO+j3gNoMNN5f3Ra3X8wg==
X-Received: by 2002:a05:6512:2204:b0:52c:8a3a:fe2c with SMTP id 2adb3069b0e04-52ca6e9418bmr803193e87.45.1718323350643;
        Thu, 13 Jun 2024 17:02:30 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca288804dsm374797e87.262.2024.06.13.17.02.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 17:02:29 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 14 Jun 2024 03:02:21 +0300
Subject: [PATCH v4 2/3] dt-bindings: display: panel-edp-legacy: drop
 several eDP panels
MIME-Version: 1.0
Message-Id: <20240614-edp-panel-drop-v4-2-4e0a112eec46@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2369;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=bwFTYS1LXMHaETrXdK5thhWhFT5+sEKZ6Z1fZtNY+wI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBma4iSZsRNQHJbZ2W+MlzIjjpWcJvGuGGSRSBPl
 oP3J++Uqg6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmuIkgAKCRCLPIo+Aiko
 1c4ICACTV5xKxTeR4arRjMWq6WVUa4a11qDoeZstp6WyrpASyxBgyXbvip2HW1SwbJxXFOhuUlq
 E9kJZMdQp1ENLl3oO482umdp3DMsEXlqlivUDazOSuVXt9NffF6tL5L15vxLd+eWSg/7USAY3zU
 xRlO66Y02jrnuYV6WJ4/xBXZl57y0rKQeFcQqSbQ0eYq7XFgq5TCN6iHB2o6k8/gUagTxdUEk+b
 BkhTxoZ1lYwwqdZJV9FHijzdRFqpRbZcyvfh5eUVs0BTlyZrjVBw25iEpaVLtjPNO6E6FXlt2Dw
 sGW1cCncmCkFnU6RVYWKZjaqIKIcLifZev9xXLuGGabDlJUb
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_170232_405513_C97D24C8 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
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

The panel-edp-legacy.yaml includes legacy bindings for several eDP
panels which were never used in DT files present in Linux tree and most
likely have never been used with the upstream kernel. Drop compatibles
for these panels in favour of using a generic "edp-panel" device on the
AUX bus.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/panel/panel-edp-legacy.yaml    | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-edp-legacy.yaml b/Documentation/devicetree/bindings/display/panel/panel-edp-legacy.yaml
index 9e5864de49e7..b308047c1edf 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-edp-legacy.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-edp-legacy.yaml
@@ -31,13 +31,9 @@ properties:
         # AUO B116XAK01 eDP TFT LCD panel
       - auo,b116xa01
         # AU Optronics Corporation 13.3" FHD (1920x1080) color TFT-LCD panel
-      - auo,b133han05
-        # AU Optronics Corporation 13.3" FHD (1920x1080) color TFT-LCD panel
       - auo,b133htn01
         # AU Optronics Corporation 13.3" WXGA (1366x768) TFT LCD panel
       - auo,b133xtn01
-        # AU Optronics Corporation 14.0" FHD (1920x1080) color TFT-LCD panel
-      - auo,b140han06
         # BOE OPTOELECTRONICS TECHNOLOGY 10.1" WXGA TFT LCD panel
       - boe,nv101wxmn51
         # BOE NV133FHM-N61 13.3" FHD (1920x1080) TFT LCD Panel
@@ -56,8 +52,6 @@ properties:
       - innolux,n125hce-gn1
         # Innolux P120ZDG-BF1 12.02 inch eDP 2K display panel
       - innolux,p120zdg-bf1
-        # InfoVision Optoelectronics M133NWF4 R0 13.3" FHD (1920x1080) TFT LCD panel
-      - ivo,m133nwf4-r0
         # King & Display KD116N21-30NV-A010 eDP TFT LCD panel
       - kingdisplay,kd116n21-30nv-a010
         # LG LP079QX1-SP0V 7.9" (1536x2048 pixels) TFT LCD panel
@@ -78,10 +72,6 @@ properties:
       - sharp,ld-d5116z01b
         # Sharp 12.3" (2400x1600 pixels) TFT LCD panel
       - sharp,lq123p1jx31
-        # Sharp 14" (1920x1080 pixels) TFT LCD panel
-      - sharp,lq140m1jw46
-        # Starry 12.2" (1920x1200 pixels) TFT LCD panel
-      - starry,kr122ea0sra
 
   backlight: true
   ddc-i2c-bus: true

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
