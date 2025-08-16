Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22158CA0EE6
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Aug 2025 12:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R9Gz4+FdEuvj7m5vHI8g7bWZU0tNnpTeMsmzpM8yEXk=; b=0EcRK9wW10iJ78
	l4sD4XCDbkHp7tiKLLQIy1BX01jgDqYaOevWMpA59lOh+9JgkGEHuCtBUWuuaXyxSB1ikilsIhUm7
	a+civUVCeyr3YGOhL64o82bH9UJvadM4VpXlXBtwhHRLRrc1fv6JqUz7BjuwT7L7PuxP+ak2/Gvqk
	XBd6ql+nbySw/VIEPKF0qo0+874l/lgSOCgOnW/RZKMRBdpIA1dEOBMuQiqqUOxqN/riJWu1rq6iD
	mHassBFwXbJX+UI0YqnLNoyqmfvWhhuG+4PkaA3mhB4QAHzXIWiZ3IUfy8kMj68xjBafw6/1gx+wk
	qHRs4DiVHlqRWj2N/hEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unGGP-00000004d4c-0sAJ;
	Sat, 16 Aug 2025 12:44:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unGDc-00000004cfv-1rOe
	for linux-rockchip@lists.infradead.org;
	Sat, 16 Aug 2025 12:41:12 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57G3ADHM030305
	for <linux-rockchip@lists.infradead.org>; Sat, 16 Aug 2025 12:41:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=DJa7R2QHaJhhfx1abJv+FW
	4NHkh9fI+yxSQ5uteT5y0=; b=TYAQaqdLTrxEbLSRC85k4O+GgU0kii/k12kbpM
	j9Ad4msHSHl1HaZrZUmg4NdOwSx01AkfeA1ZEKnIgDJ1vLFiLAJoXdxSvJRFo2D1
	38C6IFsp72fjP8eGc0cBLoobWIXnCh+wZtNWCE+bQis+zrPco24nE9vO9faV6piP
	p+eNVcxzYTaEYUri7fu81LmZSbD/aLS1X1NtPAo9Q8bLG1COM9iGF069/5or2gEJ
	C6q8XG7Szu6XKREScdJ9MFSyb6cRyjKrvpMb2CDJVy0GFarIOk3U52SwuzVVH4Hy
	VysuPJ+0cri59lAwWdogBmH5S2gRO2KOPyPXY4fmdE5psMLg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jgxt8qwy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 16 Aug 2025 12:41:07 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b109bc103bso74046841cf.2
        for <linux-rockchip@lists.infradead.org>; Sat, 16 Aug 2025 05:41:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755348066; x=1755952866;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DJa7R2QHaJhhfx1abJv+FW4NHkh9fI+yxSQ5uteT5y0=;
        b=exMjFq18Y6IpOVd1ShTxi22/A6YcIK5OYnNWNe1C6fPsDS5FQpjNA9zg3QYxfPAvwU
         Ufu869/tZr39Xdh+OhJsDKW/qGVL3SOPjcvohWQL2sQ858nfYoOLkKURqJ1lr6ltRnex
         wAiyE3dehIUopj4Zq1ChQnpZoRMulKedv0c9fPqxnci2AXasYXB2GqKL85H7heQlrHdS
         giN58tBlmOuAPb0vVr3A68jCNTWBAesCjVEbKpG9kc24jJ7NKVPZ1frVmTb3fn7m8isK
         BGXodIiQg9mmnFAjeUyZvYxMM1RLOeVEAzMAMMq7FlnFZ/qUrgI2k+h4A6jvrCM93ZRC
         WWhw==
X-Forwarded-Encrypted: i=1; AJvYcCWbScdzv74PPhfdTTuQWW93N6VXTqeZy7GY6cTNRsRoowY44jQYiW03Lt1RuxWf+jmSrgtA1liwvVGKwd4x3Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YxqK87jDWPZJyhrD0yhMZDwga0vFGB1Kr+vxy96MXYQHbjtVQdR
	VCXA3n3nEId77ffxT5spp5N7iXYEB8IzbZYJuHOxxxA1+3dnkQe5XMvnkUVrxkkDh2DqB+Yg7Vr
	74wizKq9jr7eS6Ls2rNl01P5lIGlJA8sTrhjVTCTFlRyg/oUOIqsHPeM42YA9xWa9TMqFHqWUBh
	s=
X-Gm-Gg: ASbGnctfA42nDTlvYw7l4TolYH/u9y69T+BRi1S5NjdSy9XsE2I/YoLdUrZKSCCJaLj
	S/WbTZNq5XYZg5TYO2Jh63orqafWn6qhnDj3mxPBRG63+M0QSYxT02GQ00EfXkU/3+Y9WEYRPMR
	wAMduJlY9O0p+4LN5kenseKmBJoCx04855vyJ7gHyPD19EcYZyFhZvbc6F6olwkWHHe6fPDTqGU
	M4CPbepk4nHK0COu3eCYaxZNJOV0MqMQm7pg0etFsBZhUVw7+W/7zAJ9IyCfg5H3wFVK8O4tPrv
	V2NDJb4p1TDVae9rsH3AQRud9e9zRkVFnbPxTs4WBoY8KpvPGf2ipuR7kpNtG/ilV5FwHOfNWK0
	6npUK+MaJ98oBNE/pOM1ao2RVkBezE/RC+btQ6ZA2QhQEwKqIqfl6
X-Received: by 2002:a05:622a:1445:b0:4a7:18aa:121b with SMTP id d75a77b69052e-4b11e11fadcmr70445081cf.20.1755348066176;
        Sat, 16 Aug 2025 05:41:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDu/rhFRVUxM6MMA7J2l6dXYr4ZCedu/K1PSwVZjoSHNuoLvoUjgkhh/mHkUAxjnQKCA+q9A==
X-Received: by 2002:a05:622a:1445:b0:4a7:18aa:121b with SMTP id d75a77b69052e-4b11e11fadcmr70444611cf.20.1755348065731;
        Sat, 16 Aug 2025 05:41:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3cca21sm856554e87.104.2025.08.16.05.41.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Aug 2025 05:41:04 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 0/7] drm/connector: hdmi: limit infoframes per driver
 capabilities
Date: Sat, 16 Aug 2025 15:41:00 +0300
Message-Id: <20250816-drm-limit-infoframes-v1-0-6dc17d5f07e9@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAF18oGgC/x3MSwqAMAwA0atI1gZqix+8irgommjAVklFBPHuF
 pdvMfNAIhVK0BcPKF2SZI8ZVVnAtPq4EMqcDdbY2nRVjbMG3CTIiRJ5Z/WBElLbWfYtO9cYyOm
 hxHL/22F83w++h3ZyZgAAAA==
X-Change-ID: 20250815-drm-limit-infoframes-e782fa7f3360
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2224;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=rdcPrfCA8M3yJ02gdAYNdSPeQnvEBJT/WVjtw9rGblA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBooHxel4gzygfQobSNeCeCVgeypJ9lKzy5dsSVX
 uc9QkQAbKiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaKB8XgAKCRCLPIo+Aiko
 1YxCCACOim4bCjHIWqX1M1bZiVMLzRI3Y8QTdbuiNgrmLKiOaXRYiFmSpaZRI5eGf0CarO1iNUi
 IQjq0N0dSpJFtGKIfadH9PJ8064ZG7NIpU68xmKG1OFzxevGRyfeNJZ7i4GhEi/tV6G96JOSs8H
 iwPRsqFRQrzhwp8qORn+7d2WO/i9IRJf/2vrpu6496ztu9HTv0ZNQjECzwcE8yDWeZttI0+4gR5
 LzTcTBEjoqQ/4IYz9y6hTrl+OeWEdnWvuOJ3FPXWNrBp/wJ3O5D8k/YbUSYRsDcSwrd/5CllFgA
 XVjiF+Q3Rz/QlzANj6UXQ7V7QH3pQwvw9ipP0T0b3jfjVNWw
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: z-U_849SC7I-UUpZHcu8hrGr0-zpjQRb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyMCBTYWx0ZWRfXx2onbdzKlaB6
 XxbskXE7SripYFgC9CTMQ+bE3AdWQ8jVXpMWD5qSR/REDTa2tfAx5Tpi9nIvUx7qoZQXCNHOxG6
 arkfACTid9N02r6i5BppPFmmftpdCLeCtMuuGbvpuGvb04wVDUd+khEh+F+NUmfbjfCSHJizEZp
 VhwiI5Iyq9d2cyeO3+TaVZ6l51P1krkRSSnJ67HuY55MI224t37JfDJnsGeYqBZTXQ6kp8c6Tpa
 1xsgbapX2DQ5x/0FppIJK4hE/m1ggUC4PO5cX1AUEuvv/h23IkIHlUk1jtf2Vm84GyrF09OuuIX
 1ylU7kuX+aQJbn3x5xsKwf29eU2SCJqxB9osAu6JjK86cF1/QroZ8P8LoKiWXJeM/7BgDYwF095
 0lBWZUMX
X-Proofpoint-GUID: z-U_849SC7I-UUpZHcu8hrGr0-zpjQRb
X-Authority-Analysis: v=2.4 cv=V7B90fni c=1 sm=1 tr=0 ts=68a07c63 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=lTUuHy-DAZNZ5WD40gMA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-16_04,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 adultscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 bulkscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250816_054108_494722_8C7FA356 
X-CRM114-Status: GOOD (  13.31  )
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

It's not uncommon for the particular device to support only a subset of
HDMI InfoFrames. It's not a big problem for the kernel, since we adopted
a model of ignoring the unsupported Infoframes, but it's a bigger
problem for the userspace: we end up having files in debugfs which do
mot match what is being sent on the wire.

Sort that out, making sure that all interfaces are consistent.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Dmitry Baryshkov (7):
      drm/connector: let drivers declare infoframes as unsupported
      drm/bridge: adv7511: declare supported infoframes
      drm/bridge: ite-it6232: declare supported infoframes
      drm/bridge: lontium-lt9611: declare supported infoframes
      drm/bridge: synopsys/dw-hdmi-qp: declare supported infoframes
      drm/msm: hdmi: declare supported infoframes
      drm/rockchip: rk3066: declare supported infoframes

 drivers/gpu/drm/bridge/adv7511/adv7511_drv.c       |  1 +
 drivers/gpu/drm/bridge/ite-it6263.c                |  1 +
 drivers/gpu/drm/bridge/lontium-lt9611.c            |  4 ++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c       |  3 ++
 drivers/gpu/drm/display/drm_bridge_connector.c     |  6 +++
 drivers/gpu/drm/display/drm_hdmi_state_helper.c    | 43 +++++++++++++++++++++-
 drivers/gpu/drm/drm_connector.c                    |  4 ++
 drivers/gpu/drm/drm_debugfs.c                      | 16 +++++---
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c             |  4 ++
 drivers/gpu/drm/rockchip/inno_hdmi.c               |  1 +
 drivers/gpu/drm/rockchip/rk3066_hdmi.c             |  1 +
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c             |  1 +
 drivers/gpu/drm/tests/drm_connector_test.c         | 28 ++++++++++++++
 drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |  8 ++++
 drivers/gpu/drm/vc4/vc4_hdmi.c                     |  4 ++
 include/drm/drm_bridge.h                           |  7 ++++
 include/drm/drm_connector.h                        | 23 ++++++++++++
 17 files changed, 148 insertions(+), 7 deletions(-)
---
base-commit: cb640b2ca54617f4a9d4d6efd5ff2afd6be11f19
change-id: 20250815-drm-limit-infoframes-e782fa7f3360

Best regards,
-- 
With best wishes
Dmitry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
