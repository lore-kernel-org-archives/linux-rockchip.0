Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72E30CA0FF0
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Aug 2025 00:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8cgXFz4FaSyfPwhlMCQmytvjaNBqKmk14UFkrnIy5ag=; b=CG0+amtbtNRlBp
	OYGK95bIQDEMWHHOD7frpKkucH9sGNlE5WAaRArC4BOAx7VyBrygYxtaCYIA5sjxEMwq2A/mj4KjQ
	HsreUXLXRLKqfspMUKypv0AfQptAJdfKCS7WTNJnBqEeMMMVcHusMCp3XY7baoy8DAWkwgyx+t3Pt
	vQLdLI+DhBjexb8xhnxk9CYChfBvg67TjhNhBpDLZ2iAIilTH9yxOjTf+QED3n9JhXVimBgqCw7Zx
	90xMlhDCD/clFJEnjmFKICVeF31nN2QT9NBLbH0X1V+sF6hkwMluMK+/6DOCNUTTOJFmY/nZ3L4Gf
	OkQybTHnwmgs7+l/X/Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us9qW-00000007Evq-1RYA;
	Sat, 30 Aug 2025 00:53:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us9NG-000000074bI-2qoZ
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Aug 2025 00:23:19 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57TFapld002259
	for <linux-rockchip@lists.infradead.org>; Sat, 30 Aug 2025 00:23:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	43JahB/w4Q9qr3p194NSk9uDBkqDfwBgTH71oZZD5dE=; b=fyLAuIR1IcILuZsH
	jXu6O6Tque4rEy2YIcJd6RPskLnjiWIEb9VXBaFQ1RRRXB3BKrVXss+Z5saHca8h
	fTx9wZEvMFFI4CXX18xMZKtM1FEee6O4g427IzKzZfnLQn5pEHVagJ/kYSJeYMC0
	rcOseGW9ufIJtlUNi4HD3Zaj/K48YG94k7GkgD2dg0rcwt4+6xyrqtDegL0JFdS4
	D4fMry66nEU0aNHxptwvqrsoOyzNCTCHtb0cKTQMkn2GedJvvIeiwn7b0WlMth1u
	i2LqJ8buj3UBuTQIsshr2yuD8pxGZKrnZZ86ysanf7BfphgLZ/aZIbD6W3hycpJC
	d2ITiA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5y5vvpv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 30 Aug 2025 00:23:17 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b302991b39so39755451cf.2
        for <linux-rockchip@lists.infradead.org>; Fri, 29 Aug 2025 17:23:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756513397; x=1757118197;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=43JahB/w4Q9qr3p194NSk9uDBkqDfwBgTH71oZZD5dE=;
        b=Hg/hzL0tvTycQXqUyoHtFhQe2dH6UEUMk24sDDzZW4pUBmWPYZHEuVTXAidtFhmEZ5
         Jg2hWb6vP9xMwzHMlyISjMSpHANoSlbDj37vkud+0nmdhl/cUGJdsbc5+V70tWEhnkMp
         2jWVqZpdxqLCBU4D0AoAglGOw9UB8bEAMkVuu+Cfc7jnBb8MORfL4THKE+Wt0pCD/ZWY
         bAY1vDLLd923vpZJ8cclmQZvERAXHLGVMPTpELrU4xGsldrVlpC/qJlpXqlGL9nGbu5X
         6Y2aRKolGwdp3SNhHq7bDp7ZU7yD8K05VD3RwWSpNZd/BEToJdxd0xZKbZrBeFQb6DN/
         BxIg==
X-Forwarded-Encrypted: i=1; AJvYcCWfRR2SCfra/TkI5MTqos4lqCxpYpFvYkbjCNXorB+usv9uoW1aeUFuoOCDydZeYLPLj1qqqmmXMPtgMQRftA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxNR+0hOWuUbeyNQQ9oTIvpwSjUmVpty74rsvA2ZfD0Fw+iqVgP
	O7uAGnVmCjqYV6bnB5lYzYuDRn0UDWntKMcg8iB2f9xMvuPpqt5w9ThQGVjKQ5kvRHgvIZdOnMc
	M4lazL+jqUyNEKF67HcA5WIjMzOdED8Y6XdNjc4mXUbvHQXkXRE9sTh+sVwu9j94f8klYqFfpq8
	I=
X-Gm-Gg: ASbGnctTdHlp01Zs5KEmehWqzwhueOeJm6jXp4COz6XSGfBVdJliE6AWRuJgxBna60e
	K55YAJaXobo+WDPI4I+nbTUvoH8KRaNl31SpUECHTPp2YEKpg6WKKGSk5b6gTxF1cW8C3jhldj1
	LKteOLVEJ5IYfx+GdbG1uEMMJ9yYsfKEXmErFGSgxsR7lPlLUE0asVMjlHsFVga/CMf1CfmdrNS
	JC0d+5PtyGGnMxoMYgH5AJ0CMH9AqDiCY30+vzOaXaQ00zSH9euxVcwmecO9oDk2i1fHm0L4LSE
	f5ym5BF2MLMQnQQcG0w64N2nOJWYYCJJEBTazAfzu0dYFF7ksZqxVzZleQpmz6ppkLw8e27ODYB
	07s3u7MHn7bT/eRsRFne3ewsnFp3KdqcVObjjZXzoyhaq01Yac3B/
X-Received: by 2002:ac8:5d14:0:b0:4b3:104:792c with SMTP id d75a77b69052e-4b31dd03c17mr6898781cf.57.1756513396953;
        Fri, 29 Aug 2025 17:23:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4oJ6O6HUL3QeLNimMJy0MJ4h9jyGyWC0EDFCrFCF4+QEafGCozsLgZkA63r60xpdo27y8Fw==
X-Received: by 2002:ac8:5d14:0:b0:4b3:104:792c with SMTP id d75a77b69052e-4b31dd03c17mr6898491cf.57.1756513396484;
        Fri, 29 Aug 2025 17:23:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f676dc52esm1019907e87.8.2025.08.29.17.23.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Aug 2025 17:23:15 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 30 Aug 2025 03:23:03 +0300
Subject: [PATCH v3 07/11] drm/rockchip: rk3066: declare supported
 infoframes
MIME-Version: 1.0
Message-Id: <20250830-drm-limit-infoframes-v3-7-32fcbec4634e@oss.qualcomm.com>
References: <20250830-drm-limit-infoframes-v3-0-32fcbec4634e@oss.qualcomm.com>
In-Reply-To: <20250830-drm-limit-infoframes-v3-0-32fcbec4634e@oss.qualcomm.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        Liu Ying <victor.liu@nxp.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1590;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=/A/l0DP2POBzFZyyzIjBAuem9l4ed0fHlnMMJOHp1Ss=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ8YmlxT5296sO5kLeZM2n3p1M+/z9QjmgHnJS6tXfjsTZ
 fvOL6auk9GYhYGRi0FWTJHFp6Blasym5LAPO6bWwwxiZQKZwsDFKQATOb2Z/Q+H+Z4t1z+UTCpr
 ihGM63rdtftGwUyFjQpvlqzSYNPI4bvaq+/7ZDU3T0azBUvytver33ccXfDWvORvXfD7mddcUs1
 rdH/aTFs4xc1r74unr3IzNjDwTfGbMbPZ58gS530c7UarUzolFvoH+lVVF8XFy2R2N7a8VnnTHC
 T75EnMTp/5a89vdik/E+p7tWh7meDOLXOY2Bs3yhR+11XR85kcUh4b01V8bMaTK3xmvwSmsraty
 zf/m3cqesWWcKuS9a3J4loOd/nvpDOf8xd8VLA277VoHkeaSdYEX4Gq2q41y69v2JuwNbesx7s3
 smeXjsQmySCPlfze9gs0C97zHYvj/M8WuO7ctByN+ervAQ==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX8JxkIxo7bEUt
 e+sijEnn8iN7Coh7rgxvlaGKxFmFwiV+59Imz5iSzRuU46frMk0N/YEIWIXKaCbDHoc/n3QWk0b
 YEVIUfBDU4G+l4HKpyKZYAEC48Y9x16jeFV6QXqWh2+c/99gWX//rtGrRFA8NiH5xf9BSrss8Na
 3LLT2L8IEGMPrssw3XrAAVC5S+owq2F5+Nj63iT4VE7R0zCl6okjUXQbhKQ97YTe9OX7PO4l9WY
 0TsQTEy3Up76YdpJSNoV2Mcr7icUcqkHxeNpQcWdYSvGMdrvlQT7Qc2pAGmtHwsbY5SiACBWORT
 HgEszmVOVy6R5sF+eJWkk9wgLWGcDXJ7a3pTVKnBh9WIaZKnk/T25FxJXF6PgwSww20xfZfuYPX
 dPv02Ows
X-Authority-Analysis: v=2.4 cv=Lco86ifi c=1 sm=1 tr=0 ts=68b24475 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8 a=xyXfUSUFIH5c4GhWOVcA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-GUID: Xr5a4ADBdRzQr2nTgc9Zxkqja8lFJGMN
X-Proofpoint-ORIG-GUID: Xr5a4ADBdRzQr2nTgc9Zxkqja8lFJGMN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-29_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_172318_852702_C33459BA 
X-CRM114-Status: GOOD (  14.28  )
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

Declare which infoframes are supported via the .hdmi_write_infoframe()
interface.

Reviewed-by: Liu Ying <victor.liu@nxp.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/rockchip/rk3066_hdmi.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index ae4a5ac2299a93a49f87df7604752f6b651c839c..330c3e6ecaaca1602aee497c1a1be9599d1f886e 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -164,7 +164,7 @@ static int rk3066_hdmi_bridge_clear_infoframe(struct drm_bridge *bridge,
 
 	if (type != HDMI_INFOFRAME_TYPE_AVI) {
 		drm_err(bridge->dev, "Unsupported infoframe type: %u\n", type);
-		return 0;
+		return -EOPNOTSUPP;
 	}
 
 	hdmi_writeb(hdmi, HDMI_CP_BUF_INDEX, HDMI_INFOFRAME_AVI);
@@ -182,7 +182,7 @@ rk3066_hdmi_bridge_write_infoframe(struct drm_bridge *bridge,
 
 	if (type != HDMI_INFOFRAME_TYPE_AVI) {
 		drm_err(bridge->dev, "Unsupported infoframe type: %u\n", type);
-		return 0;
+		return -EOPNOTSUPP;
 	}
 
 	rk3066_hdmi_bridge_clear_infoframe(bridge, type);
@@ -696,6 +696,7 @@ rk3066_hdmi_register(struct drm_device *drm, struct rk3066_hdmi *hdmi)
 	hdmi->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
 	hdmi->bridge.vendor = "Rockchip";
 	hdmi->bridge.product = "RK3066 HDMI";
+	hdmi->bridge.supported_infoframes = DRM_CONNECTOR_INFOFRAME_AVI;
 
 	hdmi->bridge.ddc = rk3066_hdmi_i2c_adapter(hdmi);
 	if (IS_ERR(hdmi->bridge.ddc))

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
