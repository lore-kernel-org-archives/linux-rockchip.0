Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1A19CA0EF5
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Aug 2025 20:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KIjZUZHX5GzTvAuhdZt199AEQn+5Zl4Ey5YBu0S24WU=; b=Uww9t4X7bR3mVq
	W4bwbQPAouwxaOb78m3863PIPSC5hty/GBv/4AcINsq5Pfr3evjAnyP6FKk+GrObXvhJS/0DbdObA
	VZH7OVaYFKE7LWeuw8jWxPhVfAf80JqSMBHKEwdfgRlimDJFX2u/0+Fyijma1O+LWan3+zERJd2zG
	Rei/Ch+CdhC5RLiBrTGbzjH01hIYerAruNsF40aVCpKXtnLBpz8n1RT1hcMRT3CIeqRxcSh93uY7j
	ZvhF40ZWtSP7A75IbH9ubDyKUyc/EFcxtT4CPWag8f5W056JgbvxnI0be9xqw7jEGMzICIUdVTc+J
	CEx3SRgx/C84vIBVM7xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoTKs-0000000Bb91-3YcF;
	Tue, 19 Aug 2025 20:53:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoRWo-0000000BM73-1LkW
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Aug 2025 18:57:52 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57JHSf6M018032
	for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 18:57:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g+KCHHTqRR+QvQr7TO6S5/RPZnrNqLEy6fhDbfe+NhQ=; b=REYuRK7LpEaB1jrr
	Ps4bdB3jWVAoC4qC190kXkBmvfnqG6tuHQ5TkcYMSpo889j3DVi5EwJkdvGlgiLO
	tUZcMwpnap8pvBftk7CBGDXOo0Z3CBKI0fqwIT6IJ3UgCCM85AP9SYuaFgCTy1n6
	+pGK5/X9/bbSZdE5KdmSLXVHyJIdM0+CrlfiOTvP0VOmAYwjJMwi3gWOTrjT+O+o
	O4oSIuZTJxrGsokxzPk3IJ3fqG2vPApZEoTtZafmoLNpIORV6S7NilvqzGHbLVC8
	wE6NcKfhj8gpllgVo4BjXC3KkTcbZunp6iqHM9bwQZxN2wjMIr2ltLv5r0ToBMII
	wAVHVw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jhah1kme-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 18:57:49 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70a94f3bbdbso118113776d6.2
        for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 11:57:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755629869; x=1756234669;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g+KCHHTqRR+QvQr7TO6S5/RPZnrNqLEy6fhDbfe+NhQ=;
        b=a0E2/65S6w4QhvDQMpb3dKSWLCGAHsrUqL2vUDMd1CtXsMjAkrXysr9w7ypKKawt3j
         cyR6E3eUIMD/ZrsBKPbQ9ifYXdmD1gpshnvPlGM+N2xVLzDtEJOLvnTTXs4vzNKutowl
         e1kCiB23yM0iNsWJ+y3PbmoR8vXjuwFdF9rejZNqzHdtvFN0ic7ho5uJcMMe7QW1f4bQ
         3fQD+RaDF9fJHszB3l/5t0W+RMOTtheIy5eeieuLv66lA6hOyr9TIh4d+Vmwf6BrQdID
         9IpVx/6hRNIRS/fPyqBwnEg2zoXQCUo6txQJW/k2QV/HlXVbRcxOCn9OaTNIP4rhljdM
         Dtxw==
X-Forwarded-Encrypted: i=1; AJvYcCXztmxkgSjcsOB9oT8GS5QmTDJ/pAPADgSMmOI5MXXL/T9RCB5GzYznFW8qwHppwGzCf4G44ViTj8pebUXe+g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzc9Q0GnWK9DG2+YNc2iTHOfajnHE709KLC1ZDTmX73Xyy/t+Rf
	hmLn5OoLliQ8IKbUSu1uhjRxEROvqcSuM8E/CmOPNTrmEsOVOM3HrcrPSaRBj4SwoeErg07IwnZ
	evb1HEQhDPU4EKjZpRpjELxExk+1bDGY3GeZNi2+9WDh4DGZcSZW5AmKb9sM/i5rtpt1AusMwc0
	w=
X-Gm-Gg: ASbGncu2BkqCoSCagpUt9+A9gmUFnY2m1qX7nWn0F3yJOQzJSwRXXKsZsArUlkK1Z76
	l69uclc4JRQ+ctEaw0pOza0cNTlWUT1RONVPE/+Slnlr+wFJdL/xE97yZXwPi7sNjEn5cC//dAR
	FGxzZfgTVzNgOe1QadilgsqBg0ggZsqmzsUPKrn49NYZtu4925ilgQYyuXutaq6s0f+tXEW3HjM
	5fwd/VxbHXCsTxEnJ9wGZ02t/dfPMI9cbC6LCgUjFzOGhswDdIp6wRxGlAjq20Tgxiz3afmx+W4
	T7Oq6abAl0dFw1mOGqagG4csTJYnE/IdX5spSR//GbaKeFQYMfyzMoA6lDVxIiSW0kNh7lLsFI5
	WppPYy3DcgsTJQvYvZQtr4lGcYx9R3VJnNYmjIArv1qcO4QRKuawm
X-Received: by 2002:a05:6214:d83:b0:70b:a525:be29 with SMTP id 6a1803df08f44-70d76f5bc39mr1350806d6.5.1755629868720;
        Tue, 19 Aug 2025 11:57:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7Rup7AhSw4BJ9NwhIDAaqvNpzhK90eK4MaobbpgThtVtwvxC7zzjZweXs4ATCoIwbiBFBpw==
X-Received: by 2002:a05:6214:d83:b0:70b:a525:be29 with SMTP id 6a1803df08f44-70d76f5bc39mr1350296d6.5.1755629868153;
        Tue, 19 Aug 2025 11:57:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef35f11csm2207314e87.51.2025.08.19.11.57.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 11:57:47 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 21:57:36 +0300
Subject: [PATCH v2 7/8] drm/rockchip: rk3066: declare supported infoframes
MIME-Version: 1.0
Message-Id: <20250819-drm-limit-infoframes-v2-7-7595dda24fbd@oss.qualcomm.com>
References: <20250819-drm-limit-infoframes-v2-0-7595dda24fbd@oss.qualcomm.com>
In-Reply-To: <20250819-drm-limit-infoframes-v2-0-7595dda24fbd@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=916;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=7eaknZdIIVgkzyGpeqyWY92kXnNZwGkNmo13tFbwgVk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBopMkcSLkRBvL0pMwSNLmEAMo80IQ6eKzuBYdmQ
 c/Ssrh2nvOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaKTJHAAKCRCLPIo+Aiko
 1UjBB/0bEDK9goN07vzlvUrx4/uSf/QCLfLAHGPDaDSCPqe7Wl54y4kNyRCy+aLt4LJ3bP6rTlB
 8etPp+lpeftFkzYybXjLoha1F8bnExHGkttCagiyw/qETQUEea62dP6vYL+vczmXkKuzax9ChhS
 4njNZ0Bqe+i226T9H1brFHCpfAvuenLiOkFeu21UGrpXDSa6KvlzbniugRK53i7qR0MA1fdDfwu
 drLueW09uFn5fxOhbe2nFGWXm1I6T2bscZ1qs0XFtT+YcT9AeGuMmIXvMzaJ5Wd87o4kQzA4qQi
 /zKuVtV3uKZfeat3nHuFrrUfMmgch27HUc/CFJvruhmgfCS9
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=D9xHKuRj c=1 sm=1 tr=0 ts=68a4c92d cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=iNCKscWTIkh_2y45CzQA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: BiryVPlWb_ERMywn9Nwy2pa9H8bvZxpG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyNCBTYWx0ZWRfX7LByrhexfgGL
 2GooPyW7ylBAtrQwAfOMK8FX2f0/Cp4S5lIg9gl66PNJMRcs1p0IUlW+Nbx6dbr5+z4CDNp9k5L
 LduhzMVCegBDHV1o1ZJBC8/B4gxcCNHlhtuaZkYGlALAUjRqBuAYwdPD9wNMlpa9JOLFf7o/Jls
 K7p0QijlrGOHxrG+ghH9sJg7U7r+AmjcIVwyrSPBqsbtinQmQ3lAsv028zopMqeq51ZMEnxRspj
 U+iL5DLEKcHSMJH1M5nhwhljmOFB4GKTtynM2DgDvRR471SU2wH3IPshueSLkgFuj5hyGxCWYGV
 lWyou/kDTN1YWAWQ1qRseEdUbOOZZAxA3qXJ76gp3wPKo0jAh+P1KeN/E6ijJluNLfiYoR+udrx
 ZkNr5tyQ
X-Proofpoint-GUID: BiryVPlWb_ERMywn9Nwy2pa9H8bvZxpG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_115750_509864_84B309FD 
X-CRM114-Status: GOOD (  12.36  )
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/rockchip/rk3066_hdmi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index ae4a5ac2299a93a49f87df7604752f6b651c839c..75bf9a13d8cde1471e8b7e8a8f5f4c0457dd0a14 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
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
