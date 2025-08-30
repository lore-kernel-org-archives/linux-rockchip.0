Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F5C1CA0FFE
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Aug 2025 00:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1Dc6yWEzY8Iax5+/skN67E+1dTyfAVvLqEdREmQHTI=; b=b3+/2VmgcXV6E+
	babr7jTv0srLqG7NsxzPGwpNCbHDFBVaEeJaJgiyd6H3uyjTyyv67CKGBqc+v13H/LRJpXLzV46N4
	ea5kqECJQC2tes01nu8OcDQBIQmtL6ARWGtos4x8ViB5xhuCtGhRNTRhNXY+/V3qEoa6WI8wit16K
	ENyhzTezFEEgNkhwkSnfFVhI8l4eBV6yg1Xahlztb4s+et6eH8D5g3y/1pZYoIX+V/fy3U0q4Z5i3
	RB/SOa8PR8pwUwaElxY/Aw6EXAGqdef79vpR0U3iKylhY3iSvh9rwcsOAW7Yka/W42px9AqAJNYrO
	1aMBSd5EvV+7C9UtRVEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us9pz-00000007EKA-0uMm;
	Sat, 30 Aug 2025 00:52:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us9N6-000000074VD-0xP9
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Aug 2025 00:23:09 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57TMqA24001839
	for <linux-rockchip@lists.infradead.org>; Sat, 30 Aug 2025 00:23:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EC24O8coXPxIicmmvFhXHG7RuMMbE2/IeNTru9ezMlw=; b=DCtz4gtJxTkhOa/5
	bgoi8G8kCfWOYQZKf1bnpFYsbO7z1XE+zqrSI8B1k5OLYGFCp92I5Syd9vprgipI
	WapoLgN84xInkHmir17aYOfrY2PnHdsalVYFR0FtH3CtFLu3tZuIfJ5qGPRHbyTV
	ISI+UZF5EnPNhifJjO3IO7DokPGK7/gx3+t0htTE1Rl2NG9zKd5dfwrNTdjIcdTV
	KxrfBkuz0j1e9CMYXZWifYtN2BCfmwAlv4CVWPEZLbAc82r8Gwtn5GR0DfNiHsLW
	wt8l93QTnd4VVRgCZxA74sRRDpCo46WJfwQQUOxKeUhTBmqpi+0psjJBjcnNfJG2
	VDn1zg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48se1746gh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 30 Aug 2025 00:23:07 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b2f9e8dca6so57547351cf.3
        for <linux-rockchip@lists.infradead.org>; Fri, 29 Aug 2025 17:23:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756513386; x=1757118186;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EC24O8coXPxIicmmvFhXHG7RuMMbE2/IeNTru9ezMlw=;
        b=Er5wzT+6FtzI/mItEqOpSbh4RYiJG8fiamvGE3VHyBFaewhuIwrZLJDAX4xJHiRzjm
         E4tqc/5EPa7MriObzxEFKa+pKnTOmcoW+en/Xbv0zKant5Q7rGdizyUAcTErh/o8nrR+
         f+eSXZ3EakBw0hw5WdKqCg7jInVCILoqfPq0wzb3hJxI8DlG6G2sFY7oOc4sDy4VpOLp
         KYR4Ze18x9DpuZ5RSqTtcdF6XeoCJJ68AX9kNaL0ONOZnnDtL9gzFuONrFmgg/dyuxqs
         aQEH96gQTNktrZ/FopYaUoe37deGGbj3gZRIoBSNUWNhv0Nacuk/0TuVqBK2yNzHpXvT
         Rt4w==
X-Forwarded-Encrypted: i=1; AJvYcCVF68M9L/fB5HB50LLk90UnM+rHJnaL1E5LgwQ1U0iSaDahplzl0yVEejoxAmppLiHMG3+bVa93dgIyMtg+0g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxGd1NvPEzsfm/0VWjNCBRNMkO/NJ8h9pgq8wWNInXeWZAftrb6
	jjhOB2DZHnaI+oFh3gCMXlsJFn5LOT28qievPO9HoUwDs9JKDCDiMpc/6CEF4XsgF4cvShhclez
	njxKXCY/XBQ1uFKStew65MJdukpLSzZVFy/z4IUUI4MJ1CaoMRNY8gSa+V79Pn//KI8ze924Tsg
	4=
X-Gm-Gg: ASbGnct+R/XwkIEf8iW9iKZZLplR5vRlzZ5XII8pKA4AjbtBitUcRfpXEdtllf1yJKc
	jSXYaPpy9JCBOq4FgotMFnbYM9lceaa75+NGwoPvpIhPUUJt7buTFzNGgUcDqfTJe1h9eIc6dET
	+l95lZEl5wAzVR4fCGAUgVd67ZuriqOFPc3ozaYseUIwIU4hSl3z6qj8mI0EmFhfOYxSywIWPzJ
	IDvQS8oDvPvghb0yQHoH0pn6l75dIOLWq2qwXv3yynReUKfB1VJM2a4TerpGVH5vTzMH8M1BC9a
	hFJZm0EXH+NeT/I+wJeYgECpiGw3iNjZRmDfZOJuFSp0VVz7ITPShkxGjjvzxOvIpb4/ZjoXker
	kpwu6JJG9YotWFqwVY4/wIlhT6wo1wnbqaJsJfzjWJJ1juCCnflPO
X-Received: by 2002:ac8:5884:0:b0:4b0:aa5b:7c6d with SMTP id d75a77b69052e-4b31d8450b2mr7951241cf.16.1756513386131;
        Fri, 29 Aug 2025 17:23:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJMWSIAIjCYp1lT9McTj9bQ133h50tPHm6nwV01Yh4DnXv2EmLSxcQOP/1n5kMYt9GTSTzJA==
X-Received: by 2002:ac8:5884:0:b0:4b0:aa5b:7c6d with SMTP id d75a77b69052e-4b31d8450b2mr7950821cf.16.1756513385504;
        Fri, 29 Aug 2025 17:23:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f676dc52esm1019907e87.8.2025.08.29.17.23.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Aug 2025 17:23:04 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 30 Aug 2025 03:22:58 +0300
Subject: [PATCH v3 02/11] drm/bridge: adv7511: declare supported infoframes
MIME-Version: 1.0
Message-Id: <20250830-drm-limit-infoframes-v3-2-32fcbec4634e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1675;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=q7eYf8+3RQX7ESv2tHgdRnLYQ1j/MZwxzLEz7NwM9XM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoskRjIMzK+I5pUhzNv/gzIuu0qrnQQAgGGLA/8
 sqWoDGr3RmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaLJEYwAKCRCLPIo+Aiko
 1X46B/4ttG1//Uf3yzHz2UVvm8cP5B96gro5PvEoK3vjNCYja8hOZmVu6v9GW5CkmnOb+3jEy/A
 F3O2JkCE9qbaSinFwCxDG2IviHDn3R2MSLm0Oz38JU3THj1JqiqN9tkLVzqGWianYbVicOFDWLw
 ffgaoAshYzXH5V7xc09KzxsPqxBXnlpZraDTgrv8ahuF/tN7ra1jWUyA/Xa06DhQLj0cQZ/mOdT
 NVO7QobdWHWByEfRjFJEbZhhBnXbOVtNPRvwF3NyvPQcEcFZGp+KzxZI3EoIkBu34mYwHoNE+d9
 BT4naoD0RmK4tSKFUCczE4M+TIsdHkuH61/HLPB/sDlW+nSz
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: tQ7btg19UPBQC2KB35u-zvaU26eUXWiB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI2MDEyMCBTYWx0ZWRfX8T1LHI/w+Etr
 zgcRufxR0J0OOhQtl/Alb95ybQmFmrNrfEg1tOJfvGAffu4Z6N85AFgL1+ZRUpYOPpUjG3Vw9lx
 NfNnwzZl13RXPmnaiVbdRk5sad35SE8J+YQMjly+qpGWWzr/KlQq3Vv62jEV00YNuKMrmaF1O9p
 IAB4nz/wiS6EgJjRbqkwaKlGZ4X7/3xUqGfuYQikb84fJLKmp2mPTHBF8t+mrElpBvnILoJkQSJ
 XcxgdTpwujDNlsbx+J9quH2DdTf3Q1cJix/JxRoJzFmln4UcOv6IBFwR0GBudZLtSdKpG/+gVKo
 BkaqOUpcz5KviHsORkyXo3kKjO9lZhPy528SOjJ+MdXgXGmqC8dFmPTw9JvWdt+a4VqTSGJHi0z
 dGl2ckJU
X-Proofpoint-ORIG-GUID: tQ7btg19UPBQC2KB35u-zvaU26eUXWiB
X-Authority-Analysis: v=2.4 cv=CNYqXQrD c=1 sm=1 tr=0 ts=68b2446b cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8 a=4euzTov2hVyL0VtTdw4A:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-29_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 adultscore=0 spamscore=0
 phishscore=0 suspectscore=0 bulkscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508260120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_172308_288679_78E532A6 
X-CRM114-Status: GOOD (  13.34  )
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
interface. Audio infoframe is handled separately.

Reviewed-by: Liu Ying <victor.liu@nxp.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/bridge/adv7511/adv7511_drv.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c b/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
index 26f8ef4824235a9a85b57a9a3a816fe26a59e45c..fe30567b56b4f600683f0545ed270665e692b12c 100644
--- a/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
+++ b/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
@@ -904,7 +904,7 @@ static int adv7511_bridge_hdmi_clear_infoframe(struct drm_bridge *bridge,
 		break;
 	default:
 		drm_dbg_driver(adv7511->bridge.dev, "Unsupported HDMI InfoFrame %x\n", type);
-		break;
+		return -EOPNOTSUPP;
 	}
 
 	return 0;
@@ -938,7 +938,7 @@ static int adv7511_bridge_hdmi_write_infoframe(struct drm_bridge *bridge,
 		break;
 	default:
 		drm_dbg_driver(adv7511->bridge.dev, "Unsupported HDMI InfoFrame %x\n", type);
-		break;
+		return -EOPNOTSUPP;
 	}
 
 	return 0;
@@ -1299,6 +1299,12 @@ static int adv7511_probe(struct i2c_client *i2c)
 
 	adv7511->bridge.vendor = "Analog";
 	adv7511->bridge.product = adv7511->info->name;
+	adv7511->bridge.software_infoframes =
+		DRM_CONNECTOR_INFOFRAME_AVI |
+		DRM_CONNECTOR_INFOFRAME_SPD |
+		DRM_CONNECTOR_INFOFRAME_VENDOR;
+	adv7511->bridge.autogenerated_infoframes =
+		DRM_CONNECTOR_INFOFRAME_AUDIO;
 
 #ifdef CONFIG_DRM_I2C_ADV7511_AUDIO
 	adv7511->bridge.ops |= DRM_BRIDGE_OP_HDMI_AUDIO;

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
