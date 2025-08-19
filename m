Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E867CA0EE6
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Aug 2025 20:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=koQUDYOA31xFahjJ6PgqBEO8x6oMr5fzm9/dJ8H+STQ=; b=EyCRCAXOdLxW+g
	Ut+ZeZho2iTSC9TNXB9w/7qE5BK4apjWq3UKU9vt31+/xSCWEAw2VbxgICDuikwbM4YnoUcCHNDov
	Nv64Vz5aEv/jZAlaQ5EKW5flo5Pugcpkv/GPgCWyujOTUyeoljhWXmr/Tn4qdgQNoSGUlDz+jmAqR
	826qKe0aZiF9j5TUbSbDparp10gVZhWfxb+OlUn9ihLD4bi3cObnbJE1Gswy/GuUfdRNAU/J/XOJP
	b8pvgwKsY7ut4y86oD4Ahzl/I85aH/329ZQ2jG58Of96/0hUNNNZSrKD7do/qrN1PbHUnQ8kpJDkm
	/qWQXZBwfRUcVCrExYvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoTFa-0000000Bacj-1qib;
	Tue, 19 Aug 2025 20:48:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoRWn-0000000BM6c-1eIm
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Aug 2025 18:57:50 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57JHflnA023038
	for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 18:57:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XTXVZvn8yUTRjhlUwhGxkNee4aGkCZL4GH6QswhQXtc=; b=QIb0QRa8heAIzrGP
	AXBqzKI4ZHoUfSR1eAb8IDNQwoM6dTZ8QzzO33m+pcHsZPU2mh4+8JDIOEKKfLD/
	RCin2Ol4oAV9CCWBL+mMoXJT3flTPK1uxYersHokYLdxrdouCcea743RP+Vrb7FG
	YkyrVHNrMgGE+BIrkqr485rdSu+CdoUFsZjZMRlWCYye4rHVYwG7pPAczwy4ODNN
	6ArnXqWbguFKRFZRoqcRqLjXkXIRooAx4kVaRlLV55sokedXGdRxH/arCJHkAtw+
	148WK3+3kWYxrgsAGsG5oh+sre0XUowP5XizgM1Stmk63+Ft68IehdKO59/HqOWJ
	9vmx0A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48mca5kd5y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 18:57:48 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e8704d540cso680088185a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 11:57:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755629867; x=1756234667;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XTXVZvn8yUTRjhlUwhGxkNee4aGkCZL4GH6QswhQXtc=;
        b=CukFyHITqxrAdkqhPJ4cXUp0SeS8WUAB9X4IoXhR0lVpVzMPSNUT9l2nMgJW2k8QKD
         03zlD40skiQ21npZeD+/TXRVALWXH3iEYghPOtYiVD+my5dvF28ELEK41s+7SUVc9E1L
         v2Bb32/Yo1MGa8GL5Oo233C/zE0qu434Hy+CRXmJ4SHF//tYBpACTnpgIXA3T5HMqUI9
         96my/UTHtpQueR7Pr6ygpbzfvg9YYDFaaKOoyOWNXhuFZ57JhJWE17qyvQI5lVQoKQ/O
         IhToZf8r2zxa7n7EKPI3Ny1PxjhBu8Lv+wANaVDzT8UUUILk9boly1hS2yHMH3S5+AN/
         tydg==
X-Forwarded-Encrypted: i=1; AJvYcCXpn3lubsA01Mg2+ZZ8h3MRaGDnbGowp4BD/pB1fiQqi0Wg+b7c/CbKsMX8KUbBomoeF3LV34PbgZLOWQkxdw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1hcisn8W2XjPJSGWMaIUuzINCAJWu2q0uxHL3W2Yj1ZrFJ7Jy
	inORZdNPUvUd2DGL3X7nqmR67GmAxuFRJ5ustf8MpDpEUj7cvK1w7NyYSAjOTzuvdY+Q5qIkDHv
	hqZ7/yu/m+hgBP1thtT0xb6PR6J0XMaSImprXUes12V8md1v7n1FKC2Ipa/JkMSyS6FeuMCPjVN
	k=
X-Gm-Gg: ASbGncsfKDvQYvdBQKtnghpFpH8xQtOgsTH/4imis1T9BipchsFDekxp7OxAO6SCUd3
	FmsxaGELFTBGcqR/lz6CRRrIMmw1sNuNFEX/r/DHHtPLtmMuyZvjgs2OluFQ/q2GP7JWM2rGBiD
	GbJzy1o8ci2lF7/eesMrao/c4AY3a0CVghR5w4wrzMTSFBb2oGI0/R92+EFaZ9m7TZwmuXuAftR
	ueSs7rZDOnRgeP6c42gISuiCsVl9cMKYd9t87PG1SjSZliqDVPHW73oZTQJiSc8cra2I6+XTUUD
	51dOE17gUU79UaqOosNmFHrdLy4rldw1zXB1FpjpFAJKEYDseStF18EHclBEB5uo0Ll31EOcV+E
	NxZGRShYrsKh7qT8MOjngPybnUJY3xKn/Bc69c0+kRe+b+ISmtHU0
X-Received: by 2002:ad4:5ca7:0:b0:709:e54b:262a with SMTP id 6a1803df08f44-70d770ebb1dmr765006d6.44.1755629867442;
        Tue, 19 Aug 2025 11:57:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGHHRhBEXHu7meuKjfvfUMQyn/xX4sNy+2tihw2l9EfepkouN6qL54x+P99KY0cIm6m4WW1Tg==
X-Received: by 2002:ad4:5ca7:0:b0:709:e54b:262a with SMTP id 6a1803df08f44-70d770ebb1dmr764446d6.44.1755629866811;
        Tue, 19 Aug 2025 11:57:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef35f11csm2207314e87.51.2025.08.19.11.57.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 11:57:45 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 21:57:35 +0300
Subject: [PATCH v2 6/8] drm/msm: hdmi: declare supported infoframes
MIME-Version: 1.0
Message-Id: <20250819-drm-limit-infoframes-v2-6-7595dda24fbd@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=980;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=7pF6L0JAujP/P/iu+e8rZjaaHJekyZiCiogkcTbsoPg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBopMkcjJzhrdtpr84jU23CUsYEilRvFhX2YX678
 OfZlm01HoqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaKTJHAAKCRCLPIo+Aiko
 1UoSB/4jVjE0YR5wd+GnJ4DK5xi52Yuek7jhDdfrlSH0K80rX/NeKDdZbhLPORAVZ6CFMmsGvPw
 evXQXVUKHZF4ZuiuYTU4gmioVd6RB9vt5FPallgHoGlUW3qgaftCPXNKrZeH5Wovx396cpCFImt
 QfDLUlANeAi0ageLVmUbhJXpqnX242+4QNBYG9U5T8LvWXMljEEaSxbIashznRokT1+T4g6+sIt
 srqvF+4q1MJNHBUQkQYGmlT2/jCX6lrir1n57VxR5ZNFnhR9QrSUMvq7EgZKAfcL9yo11tVpDxN
 OUkM0U9K++rQnD+B1bCpD/MrmOIzhCArcz2/bcZQCfzch/Wd
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=FdU3xI+6 c=1 sm=1 tr=0 ts=68a4c92c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=gXnERKRtccFGBIMzwWQA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: WxaOjBwBikyKSrh2mTRTeuKdCYWmF530
X-Proofpoint-GUID: WxaOjBwBikyKSrh2mTRTeuKdCYWmF530
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE4MDIwMiBTYWx0ZWRfX0qyfD4pDxZM1
 g00XkncBtBSGymCNTY5XAdqmwQTDhRTxJjLraya03nxQMjocnr7PWrmF2fwEBQ4TeGlEM2am78Z
 SB6G9vlMikeG4PUtqcXVpGrXhmsVhgmk3SjKzQaDcs++Yl/T0+hIlPBBZOBOYDx7ixR0jkCd1qv
 PiqBk5XwGpilK09//ECbeRa7G2uJnAVp+wE2yc7pcBFT+gXodRE6+ZxKAAvOACabWISf5kOPdc9
 vq1MEf3y3M0uK208KBX6H+LrtxGWtlvNwGzLz8fED+Takpo4YlteDF/t1LdxR4MYWz44QnRgMnL
 g/HiyQ8DW/19P4iqLK2otoz1vEarb09JwyYRoJJJSclUBKYTC7GiWEMzBM77E2nNK4+DPIuH1jF
 9IOOlB8I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508180202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_115749_428904_391BEE52 
X-CRM114-Status: GOOD (  12.56  )
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
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
index 46fd58646d32fd0611192595826a3aa680bd0d02..aa36d203f38f0f5a197afa8493fafb20cdc43476 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
@@ -498,6 +498,10 @@ int msm_hdmi_bridge_init(struct hdmi *hdmi)
 	bridge->type = DRM_MODE_CONNECTOR_HDMIA;
 	bridge->vendor = "Qualcomm";
 	bridge->product = "Snapdragon";
+	bridge->supported_infoframes = DRM_CONNECTOR_INFOFRAME_AVI |
+		DRM_CONNECTOR_INFOFRAME_AUDIO |
+		DRM_CONNECTOR_INFOFRAME_SPD |
+		DRM_CONNECTOR_INFOFRAME_VENDOR;
 	bridge->ops = DRM_BRIDGE_OP_HPD |
 		DRM_BRIDGE_OP_DETECT |
 		DRM_BRIDGE_OP_HDMI |

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
