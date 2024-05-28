Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E05CC27C44
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 23:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6QI4lx/qsY1Ku7B6p8Kv0CB3RR88Rokj1QNRx4/sw28=; b=s0539sIpRsdsZ8
	QS/QHsM+SrQkLW27JV+LdTkTNEGiurXzpIdusVdYbpW8v1y2hvgOPPzTn6udPZgLdatYseSo35JNa
	MUftYt18ODi4aPkHwq7W0MCxL+A1mI/ERtdHbN7ocmlvZcoPuDgJ03mKnha7cIg0BKAspLVKjDFD9
	Pa37R3UVp0XMl00dkBgsh5DtFPED7bQBX1lKg13KI40rEFemhlxR8/SaXe9H5HDIXnbigBc/ug67t
	X5QEXLj5wwEPqWKwf/TnkufUVb9oZa4DO7qxd7mBWdwmaX8b0SxKfQ5m/7lXuuU8bztvmwafjv6qB
	wrr+bQEWOqjGon9+VgFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC6cs-00000002Ldm-2gtS;
	Tue, 28 May 2024 23:53:06 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC6cn-00000002Lb1-31T5
	for linux-rockchip@lists.infradead.org;
	Tue, 28 May 2024 23:53:04 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-52388d9ca98so2290707e87.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 May 2024 16:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716940378; x=1717545178; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=epU7ofKFUVORXm5Zp3LH/iJERgxS72joIk8yaDqIF6g=;
        b=aqXfSP7AjZC4/eHK5Peu4WfxaGo5mv6n2ia05+bk6hqa7DA1XM0adkrp3VT8pVWwaF
         weybrfbt2k91oKW/swbfJkUxk9U+PcQTcKi1J+W2MCJtJ8j9CXdZ3sJpQG4iax9zKOL8
         cXJhYKw5XYhnR3v7hTty8kaMrhGNCNAZvHZuODQkyO9CfRfHAg+lCPx+SLvRVLBRGY58
         HxFx0ElyTQFMbIyH/oziAGkr4W1qhADGmNjnmY8r8/6udt+q0sRtKqaLlmZNo323mXkI
         DlRD56F6UgOPDYf/3itcvSnhFYuU74W9NCkmfrXoRWaBePoiSo+pmyCpthyWTAhCOcnR
         IlJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716940378; x=1717545178;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=epU7ofKFUVORXm5Zp3LH/iJERgxS72joIk8yaDqIF6g=;
        b=EJEkRMQ9Pl+RhktnHIS6fcnCHxf+OC9mEpx2nKpPpa9ihDwW/G6haEwpu/Ah+C4O0E
         rpxt+150P6L5BUOof3DMBv+wousxo2ajYeSQe1zAUbihumxK/U160ClMQbbXxyh+cdFF
         TaX8OkcJybx4J3GaSFHNurWbHWC5DzJxRIHCMoA4pMZLChijUdAclomlgh1jpEiT156C
         94HRrhFzvT1JesZKKBeT4VtokGjt05KUVWg+mw0kK3HDLsoEQyhkrAKg1RPkPhXdTaAf
         kKDC7dJiha2fbzBGmGZypl6oYI4TY8R27bNyAlI5NcF747MLaykubHOd77Qe+gMsVGY5
         ChqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRTjVo4/KDiaClp5IZ6gwiX/klYC63pmjbENPnXHZYUeE0XqEtB+C1tPtq9r2cIzIEjt/xMtfH+YBbD2kQpFIUrBZpSjWx9DtR8DfO8qclO3c9
X-Gm-Message-State: AOJu0Yy+/VP4QLxBu94MRZbZvuIa4aNbAX5Sx0D/nyINp8zbX/cmMWMz
	UR2ciDC39ofmyorR2GztQ26iLaI62FGGif1avO2TU8w2zD2DS8KHM14FLwYxOFY=
X-Google-Smtp-Source: AGHT+IF7uwaZgGb+yrWIOcUgI06JtcHOSDj/jnR7jimtQ12vuH4mIz1Vlkr4CD0g2/t5KduQ//gZ5g==
X-Received: by 2002:a19:2d5d:0:b0:52a:e7c7:4ce6 with SMTP id 2adb3069b0e04-52ae7c74dc6mr80914e87.39.1716940377383;
        Tue, 28 May 2024 16:52:57 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5297066bd0bsm1099869e87.165.2024.05.28.16.52.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 16:52:56 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 29 May 2024 02:52:55 +0300
Subject: [PATCH v2 2/3] dt-bindings: display: panel-simple: drop several
 eDP panels
MIME-Version: 1.0
Message-Id: <20240529-edp-panel-drop-v2-2-fcfc457fc8dd@linaro.org>
References: <20240529-edp-panel-drop-v2-0-fcfc457fc8dd@linaro.org>
In-Reply-To: <20240529-edp-panel-drop-v2-0-fcfc457fc8dd@linaro.org>
To: Douglas Anderson <dianders@chromium.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2691;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=DdrfEnSvoeRW1E2r/WH6/wGMDZXUBm6mjy8uD45GQWQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmVm5WY3yuKK2fQT+EbUmK8+P5TRcjqhHWqwSbS
 Z01hMfGKEeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlZuVgAKCRCLPIo+Aiko
 1eMRCACqLWRAzCgQAAIxGTwJ0u8YzGQCPZ3qN1HasotTwLUL35ficmtV5M6mL3J0NV5Q0E0fvyp
 6zHSZCfHRospwVgWkajrmaH/s+e4hEeBWvquC7k7JfXAA5U25rt8/E2jspVca65nSo/UbGkvI4F
 10Zul/rRkDoiyY1QVtpkPbX0gMSPt/xbU/cXSnFq/Xp8PQq3y73FAre/O8zchrJIX0kO6kuzr9w
 GBikOcttFJrNQziQstd8LuW1ITRwwMlE2lkDoBYSnwQoa9VrL8sPMmpuf8ybonypU5eFpkVL/EW
 8fDZF7tt4Znz/9RV2hXKZlora4vva+EsjNus+HBTM3aHP1+6
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_165301_803741_774B574E 
X-CRM114-Status: UNSURE (   9.83  )
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

The panel-simple.yaml includes legacy bindings for several eDP panels
which were never used in DT files present in Linux tree and most likely
have never been used with the upstream kernel. Drop compatibles for
these panels in favour of using a generic "edp-panel" device on the AUX
bus.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml        | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 5067f5c0a272..e5ed51226433 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -50,13 +50,9 @@ properties:
         # AU Optronics Corporation 11.6" HD (1366x768) color TFT-LCD panel
       - auo,b116xw03
         # AU Optronics Corporation 13.3" FHD (1920x1080) color TFT-LCD panel
-      - auo,b133han05
-        # AU Optronics Corporation 13.3" FHD (1920x1080) color TFT-LCD panel
       - auo,b133htn01
         # AU Optronics Corporation 13.3" WXGA (1366x768) TFT LCD panel
       - auo,b133xtn01
-        # AU Optronics Corporation 14.0" FHD (1920x1080) color TFT-LCD panel
-      - auo,b140han06
         # AU Optronics Corporation 7.0" FHD (800 x 480) TFT LCD panel
       - auo,g070vvn01
         # AU Optronics Corporation 10.1" (1280x800) color TFT LCD panel
@@ -172,8 +168,6 @@ properties:
       - hannstar,hsd100pxn1
         # Hitachi Ltd. Corporation 9" WVGA (800x480) TFT LCD panel
       - hit,tx23d38vm0caa
-        # InfoVision Optoelectronics M133NWF4 R0 13.3" FHD (1920x1080) TFT LCD panel
-      - ivo,m133nwf4-r0
         # Innolux AT043TN24 4.3" WQVGA TFT LCD panel
       - innolux,at043tn24
         # Innolux AT070TN92 7.0" WQVGA TFT LCD panel
@@ -310,16 +304,12 @@ properties:
       - sharp,lq101k1ly04
         # Sharp 12.3" (2400x1600 pixels) TFT LCD panel
       - sharp,lq123p1jx31
-        # Sharp 14" (1920x1080 pixels) TFT LCD panel
-      - sharp,lq140m1jw46
         # Sharp LS020B1DD01D 2.0" HQVGA TFT LCD panel
       - sharp,ls020b1dd01d
         # Shelly SCA07010-BFN-LNN 7.0" WVGA TFT LCD panel
       - shelly,sca07010-bfn-lnn
         # Starry KR070PE2T 7" WVGA TFT LCD panel
       - starry,kr070pe2t
-        # Starry 12.2" (1920x1200 pixels) TFT LCD panel
-      - starry,kr122ea0sra
         # Startek KD070WVFPA043-C069A 7" TFT LCD panel
       - startek,kd070wvfpa
         # Team Source Display Technology TST043015CMHX 4.3" WQVGA TFT LCD panel

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
