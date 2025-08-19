Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD3DCCA0EEB
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Aug 2025 20:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7stF6PKrOyuYkOkOVbmj6asM03bAaOD2lAtUnWfA8gE=; b=AtrtXGnnkAKUfi
	21Wp+4vzboO99jlFdZqm0ZY1k/Mr5R27dxIaVyRaGvxm39j8TYT6cJJ9PWMkbEwS8dr+S7v9G9sDc
	cYzJ57cuDRA4wjRxLTg5mEH8/w+hzOaY1Sb9uyMa4sgX8gy13N8n61ZUxiMZuidj7FOix6q/uFywH
	P0HjrqYew1JT+osmcddQmghWEIfArufRXeeg2gwRqBon6zAQllyvHnDWLUlEUuKhinzTVdeB7OU2o
	W9JM4qRCFLKMAOxULQJwJCVl7k0H61wmGQwSONVdCcPLAm3QbXWdfRNB3WIjr9DfxIEtM4fwzEr2O
	WrrUD8IZTlarA2wX798g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoTAb-0000000BZ8V-1Fm9;
	Tue, 19 Aug 2025 20:43:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoRWa-0000000BLzV-33rX
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Aug 2025 18:57:38 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57JHgDh1030280
	for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 18:57:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=oqOjX77awAS/zrhT5FXwno
	4UdMuKMxJTGpgJwd+TfEc=; b=mSV4tk+CZ+IF6h3GcePTADtySr/5lOcA4Z0Vxg
	i88WmaFoiQfjhN+BqKpqtADYy8fmfQ8qF3Lh9npdQSi7PHPHh1e4z8jozFvEkIb2
	pA5qQ+HZfvSgq7T9uV1UVdWI9J0LIzaS1i2M666WcsPa1XHIFj+nkEh+pJBFPKME
	bkY5LvKayarB/Qn7UReaoyXqaCMGK0VgZIAre+nwNYrcGTfjDJt8hhZHXD5mtJeP
	I8uXyM5USpCbBXikoTxtkfpVrXHF9/kPPv/uJWDB+FO1+RoBcnV0y/p1Zr+V++pI
	tju3D3nWmAZU0GbqmXEtwj+ZyIWkw0fr1jbo0xlQ+AMsf2qw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48kyunwwc1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 18:57:35 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a88dd0193so128558236d6.0
        for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 11:57:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755629855; x=1756234655;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oqOjX77awAS/zrhT5FXwno4UdMuKMxJTGpgJwd+TfEc=;
        b=ETn6cLqmoj+eS2RAf45PBZzTRlpYHOtbcMnz0dCyh9xnuPh6yNOx8cPxJ2CK3+jcbW
         zg5EMd4TbPk9uFtmP4e6J4xcq5PsAFrtJ9SQIXiLJASExOQoClJRK8FgNtpY1HFhpXju
         bXLPtdCcZTCHEtiOK+D9cwwM4zInESM0HKZqEKky5eSPLNZtiJe9HEPiIClvhJghlCTh
         v15MYJlwRHDhx+egmKEyR75RQgk4sB0TFKlxtghM5NoNsX8OXq4XYx3tvn31i4m6H/N8
         kPIsoocPMzsXWv7aPbxZMt1pTEjK4NJaStqh9TvPZ3gfsSXfGEb/Al9jyGPDL1gOKhTN
         75hg==
X-Forwarded-Encrypted: i=1; AJvYcCUg77n+Nz6KnfGUKCeD73RGMkF/j6Sge8ne0oeI2mwODCoGOL1Am/pa3ycZfgpW1nSIFiCqbnmb7npslm2VGQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyNYyQ4h8MaS8pbEXI2vMA1ucxYW/pFIRProjUtE3ZR+zlfv5I3
	5d5fiGM5wvIIdgpJsRR5MjAMvz8uyUKDtlaEIlFjLRsMyxy32iucqQMiH9d68qepbePEdHa3gH2
	6W4Fyh99TNV0vFVDM5sS49YAlLVcZpRavclbBYrhzoZ5Wo3Agc7fUr8I/Ekbu1mO+XUDt0f42W/
	U=
X-Gm-Gg: ASbGncu4r6uxRJfbJ+4vx9UVD+geGYdwZSfdgnoeDqt/XO9lYPiCdz7cvmiVkKQEH/U
	Fpe66F32h0wGIBIlG87V7BgWZd6X2ac7N6Je/TMsEM+EJ4jG5R/AnJgkfeDiUZOrLIVbBy+w9Ba
	2PxvHqpbh/u0g6/oqIaJ1qp5n+Gx+iDJmbd4FogBumS+w2Gejr6c2oAtvNUMA1VfXILb2rPk4Ud
	L6PcazGOiRpQhxl3AzvLjc7lB9WxbXjShnoju7F902qywca7NYsOI5I9uQXIM5DCmSlzKk/iZv4
	WfIhUgnGEpQmtaecXvTI61slOPV3N7RKAlzYf1VS+xarVP5x1v+rP0COlrLFq3UNLTfpFppcgx4
	HSCOuJXrPy6JYJlNvnOwC54/OYlzUTxjPevQVy1LCxTkLeqk7SuWs
X-Received: by 2002:a05:6214:5011:b0:707:5ff2:ae87 with SMTP id 6a1803df08f44-70d76fb03ecmr1180396d6.18.1755629854730;
        Tue, 19 Aug 2025 11:57:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5UH/CsaY1tu+iFGGIuXK7C4OrWbOsLF5EbSr4M5CMsV+dCVwfAZTb8EJovJissA5wfj2R9A==
X-Received: by 2002:a05:6214:5011:b0:707:5ff2:ae87 with SMTP id 6a1803df08f44-70d76fb03ecmr1179906d6.18.1755629854186;
        Tue, 19 Aug 2025 11:57:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef35f11csm2207314e87.51.2025.08.19.11.57.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 11:57:33 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v2 0/8] drm/connector: hdmi: limit infoframes per driver
 capabilities
Date: Tue, 19 Aug 2025 21:57:29 +0300
Message-Id: <20250819-drm-limit-infoframes-v2-0-7595dda24fbd@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABnJpGgC/22NwQqDMBBEf0Vy7koS0die+h/FQzCbumBMzVppE
 f+9qdBbLwNvYN5sgjERsrgUm0i4ElOcMuhTIfrBTncEcpmFlrqWrarBpQAjBVqAJh99sgEZ0LT
 aW+OrqpEiTx8JPb0O7a3LPBAvMb2Pl1V925+w+S9cFUhoXK+Mq700eL5G5nJ+2rGPIZQ5RLfv+
 wc4eO/LvwAAAA==
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2828;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=4snEPQfJfU4oBtKfJvvluAVI10o6iuDrs8O3eQOi2C8=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBopMkb63HDxqJrxIQYe1NyexPzL9xIHdWdRrTXA
 Fyvk8wsxq6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaKTJGwAKCRCLPIo+Aiko
 1fF2CACeVmUe9+BfdVASI3ZBc7dYSjYTv32FsbJb0wBdBiQ33bgUKXg7CUEUY4lzQ/Ej6RXQR+6
 tW6bD53HFX14S9dmZ3NLffKRyDYjECDps2zvX33zgL6VRulVaQQVEBICIGjgPzFVtxOUONgWhfF
 TOuqp/AVZTNFF/ZAZ1dROMQctWzPTfMTh5LJ4MVzogwY7q8+pDks6SUFop4idL7K4Ueqvus+ZWd
 g/lyjbhqqYB2b6A91fUC86essJ+mg6xZ9ni9Yo/OMHcQwdPEVTai0WuNOJfEe78kI37R2uyLzn4
 JB+AND2NaG77Gfk8DRYzlNZRV5s5JXJemZXYvg31cNBuUQRM
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: fegivRVS03ic0BHD7NQYVo9DtlKYQYPR
X-Authority-Analysis: v=2.4 cv=N6UpF39B c=1 sm=1 tr=0 ts=68a4c91f cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=lTUuHy-DAZNZ5WD40gMA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE4MDA3MSBTYWx0ZWRfXzFz++ijxAA98
 vjDpm2WG0TYCpIBhYEUoX5aQicThoCL/rd5tTCnt3Lm88md1csgUDXHtaykyox983LBhP0ADlds
 OjF+VkHPPPyZXbkfJUat4CNmojIQhoNjG3jg+yUuZJqflbOpbVP7v+ewdtQd16n8xY103gfwZz2
 PTUxojuSaMrIDEsbU+XT9o52NQfw/XKmrZ6Y+xWIGwUyou+eSf661tfROULSSGEd8f4jy0rVNgC
 2IqlQtPl7cpZQDCj+AVu5Dyiy84oO9jdI0n3rWLicG5N4hIsEe0p0oeguPqqCRWdzxyw2+gU2ST
 2bbqv8WllMI3JXBCpk5fjuWXjunNdehXRxEKzUjIUrG8INJpWqYQaUxvLrBeJf9JDVtPJnyEioo
 wexEu3nw
X-Proofpoint-ORIG-GUID: fegivRVS03ic0BHD7NQYVo9DtlKYQYPR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 clxscore=1015 malwarescore=0 impostorscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508180071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_115736_892993_F9C8B70C 
X-CRM114-Status: GOOD (  16.32  )
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
Changes in v2:
- Corrected whitespace / newline issues & other small syntax fixes (Liu
  Ying)
- Added audio to the list of InfoFrames supported by the VC4 driver (Liu
  Ying)
- Changed drm_dbg_kms() to drm_warn_once() in the Audio InfoFrame update
  code (Liu Ying)
- Corrected subject for ITE IT6263 patch (Liu Ying)
- Added patch, dropping default list of InfoFrames in
  drm_bridge_connector.
- Link to v1: https://lore.kernel.org/r/20250816-drm-limit-infoframes-v1-0-6dc17d5f07e9@oss.qualcomm.com

---
Dmitry Baryshkov (8):
      drm/connector: let drivers declare infoframes as unsupported
      drm/bridge: adv7511: declare supported infoframes
      drm/bridge: ite-it6263: declare supported infoframes
      drm/bridge: lontium-lt9611: declare supported infoframes
      drm/bridge: synopsys/dw-hdmi-qp: declare supported infoframes
      drm/msm: hdmi: declare supported infoframes
      drm/rockchip: rk3066: declare supported infoframes
      drm/display: bridge_connector: drop default list for HDMI Infoframes

 drivers/gpu/drm/bridge/adv7511/adv7511_drv.c       |  1 +
 drivers/gpu/drm/bridge/ite-it6263.c                |  1 +
 drivers/gpu/drm/bridge/lontium-lt9611.c            |  4 +++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c       |  3 ++
 drivers/gpu/drm/display/drm_bridge_connector.c     |  1 +
 drivers/gpu/drm/display/drm_hdmi_state_helper.c    | 37 ++++++++++++++++++++--
 drivers/gpu/drm/drm_connector.c                    |  4 +++
 drivers/gpu/drm/drm_debugfs.c                      | 16 +++++++---
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c             |  4 +++
 drivers/gpu/drm/rockchip/inno_hdmi.c               |  1 +
 drivers/gpu/drm/rockchip/rk3066_hdmi.c             |  1 +
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c             |  1 +
 drivers/gpu/drm/tests/drm_connector_test.c         | 28 ++++++++++++++++
 drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |  8 +++++
 drivers/gpu/drm/vc4/vc4_hdmi.c                     |  5 +++
 include/drm/drm_bridge.h                           |  7 ++++
 include/drm/drm_connector.h                        | 22 +++++++++++++
 17 files changed, 137 insertions(+), 7 deletions(-)
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
