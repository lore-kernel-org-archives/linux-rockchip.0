Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFB17CA0EE6
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Aug 2025 20:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k4o5+tuB9k7Z92eiNPoou+sdU9q52B+zxmtlZe90JXY=; b=dzs2N4i2y6pd7a
	rkRneX/l8/hj5XUM/s8pp+i9Z6mor4cxXtPlCN5dY7etgnZpEvwrI5AH8e1J1zGXH8EhJNRNBOvdw
	vdjs25F+B280Ox6QGm8kqvTI2HgZ0OezT/Nk21y54+RO9T9ESlHfdmTtvswqhwGUY8o8eP5MqxI49
	ZUQIsP6FhW74LfJicsadss9ovYHA+g+rFARDnic14w41Ermj0qRS1K6iaySeH/TpnUluPzp2OMLa3
	eao/7LrtHSvzkSGCHOPuGvwfg1XQ8musQ9SEZRdWPkOzMd689nJCnDvOW0E5E5jxP4nMftgnR6WEn
	LLfGO3IBGZvObpjEgqeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoTAr-0000000BZWZ-1iVA;
	Tue, 19 Aug 2025 20:43:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoRWi-0000000BM2c-1r5m
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Aug 2025 18:57:45 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57JHpctr027019
	for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 18:57:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Z+zXyN1a2bnqpBRyBAM++GE0cnz1QaFhTiRC3XSmnvs=; b=NtMlo2zuHwaiL9oG
	+6oBzhNADdym+pcp4UfP4pxGo6CXzfL1l55KjQPOH62+3+KvrdLqGWJ0Q9BN9lGP
	0PWBwMECEWUIHBRPyPVzKTHkzpbZuBG4vFnHmvob0QBqfW5l0U+b2VbcPruf2egR
	eMdfBxl1Zodj+wTfwzpDSPzCgWBRYeElbfMqmgYQuzGeiFgIz5f2QFokoago8M8e
	meAkjhtgdfQuo9Uc5D3H99PuDfOmuBpJoB6E42bR0SyDHt+lVWlIQbxy6zAB3TvZ
	Fk8ghk0t8bReHbTflKO02GPrGqigQ/sF1UgvC8AXN4VQwVAvGP2U78G4gBjmgqUe
	nHoTcw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jhjyhnb0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 18:57:43 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70a927f4090so129303296d6.1
        for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 11:57:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755629863; x=1756234663;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z+zXyN1a2bnqpBRyBAM++GE0cnz1QaFhTiRC3XSmnvs=;
        b=jfY3jt35y9BT4y52l5iiaudObKQxn35E0QPNcS6/gQDoL4aQQk311VzuAMybSbLJev
         jcgJUDKSdgqpNRb6wwoEuznr9ZvCFDzPeUP1sb0jW//z4Xb5mhfjcypjxS3U70u5gf/h
         OoGxOcSjbHhJJ/87ggMw6bXjxlt+NhhCC9DFumN09MIEmMWijlNoPFMPgOrKIhVzHfHu
         awNjOBIAiTp+uO3H+096E11BUb7VJHAtufHjZ5RImARaj5UqvecIKSi+n7+ynSISWfS9
         Q4EYz0lgVMIDDISb+jSgCiI2/TskMQPUlyqAfBIXZ3oxTCfLwoqWBFYqkMVJfQUSeNCd
         Dk3A==
X-Forwarded-Encrypted: i=1; AJvYcCVQ4xPDDNJtMAZJGtlfVyEt6rKII3s9WVczOcovBVcNQCKbVOzhSdRLHb0oqS3hJbWTldbo9KiPvVrimAeGZQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxkcAu+LMWqNgHRlOO8Fr9aSXhhz9mJ/001jb3jDWD/tcfGlqqb
	7xCcBhVPU4WmDN3m6M6Jn/DKBfxT64O2vA7nXKhkZcdqE8O+FOpNXFfN2ZxEG9l6wIGPyjFcCkZ
	dtDXFNcklsIAnT3aYQglvNyKMrsmeuXuQ4XBTOSA0UzjzKwrR0mDhxsPEWTkKnL/US/GW4jfkbZ
	o=
X-Gm-Gg: ASbGncsgSx3ek171WYVDtxNCFOZEjsud/rm3JwmY6MtE4pLGOmnzX/b07fwG8+uM0U2
	wskTqZ8ws19u78KvrlfwNkT7cKEILahXwQ60VG9iKSsMC0wznmQ6wM3prXfcaI1gp6UKw0//qCo
	5LvWUCTqVg4WvCADmFxzd42AAlqUhvRjkvs+WCXyBwkxQ5eEcx5Fq2C1loP27nVXqztKLg1Dpuu
	/QTjqx9ShxtW2+7gd/3v3gBLqiwwSOryL8Plaw73kfD8HdEZluhLfWW1czMmz0dlRezDzTtft+E
	PPShgSw//NsM75IWNtFmY4CQ02t/zWDLq1+g9fwQ+NTEY14aTPUeTHrYehybzICFPCluYQ1pp5F
	frm4pxwG4EtZB0p15AxMtI5lpJ3BoXc0xSgv9VusdW6WdDFXVoMfM
X-Received: by 2002:a05:6214:1c85:b0:709:22e8:af63 with SMTP id 6a1803df08f44-70d770fea50mr922436d6.43.1755629862430;
        Tue, 19 Aug 2025 11:57:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGKM9kPLVNwAU+bvUfA+7/m/OHAH6NtrmF/qIQAh9YPaU7rN8LrKKEiWT6K2FNQ1P8YaY/sGQ==
X-Received: by 2002:a05:6214:1c85:b0:709:22e8:af63 with SMTP id 6a1803df08f44-70d770fea50mr922136d6.43.1755629861896;
        Tue, 19 Aug 2025 11:57:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef35f11csm2207314e87.51.2025.08.19.11.57.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 11:57:38 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 21:57:32 +0300
Subject: [PATCH v2 3/8] drm/bridge: ite-it6263: declare supported
 infoframes
MIME-Version: 1.0
Message-Id: <20250819-drm-limit-infoframes-v2-3-7595dda24fbd@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=874;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=juDAsWub75mHxwaDcxpjH5487zukYFMn1kp/7OjeF0c=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBopMkb8nOT8FASvsz3bMJPIraDMeMAkHyPHsS3Q
 Xv/SOD/116JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaKTJGwAKCRCLPIo+Aiko
 1aLtB/9MqLp+3iH3JT+lENH5R0C1gr4ued94BGnwQe1nEDKXwvO/EuCNITfHqWdOnakv9+TLs5C
 sYMtHIxsmUUWmkXrom0z3ihAtphZhlfkAZYvx06wQnjz0ipG3VEMTs0PgzYqbbg0cmTH4+OGuXD
 FIww+if45ZCZfnDtDfviMT/LPQpva3PA++LXedI3Mn2QncxY1FIrNrMGRrz3C0XkpWjYCpN/cKH
 KKlR0dDwoP9hRAz95mZs8t3XIgpaovsWwYsRm4kyFAAEKEp/8cZgJN8cpwrRu+5P9B/7OtZmN7F
 RQpSbXy8k9NYU0pz0jhxxwgWauZriRfjrQJ+0sQVOX3wOA5I
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: i2XXdUaEtscv6co2GV6v1ZN8WAqiqfsV
X-Authority-Analysis: v=2.4 cv=ZJHXmW7b c=1 sm=1 tr=0 ts=68a4c927 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8 a=0nAs0j3DZZh6uBALfPUA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-GUID: i2XXdUaEtscv6co2GV6v1ZN8WAqiqfsV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyOCBTYWx0ZWRfX4l9dC7oDFYaY
 Lcg/mETyFeHFmBmobCRM84XT8vJfOJpwyPMmAg4c+CL52Avgi3Wnaf+qRV/XWzicFTGh6loaIZd
 g/fsbBDlSOJ4M9ji7WDmuobgynXzOnOdrVDSXQmzi/NdQammjfmk3LMstyy5c3umE8gNPQqc8dC
 svQi6HdbijrBZjmNPEh0qjL+wE88fvJlXmCqpDciuj2OAazJ2+EL+42h3v4u0WfSfUDA1+H7wmP
 BUo9h7Emus+o6xHk05jGbRl88nTxGcVTv5ZusCTnBGUeKVMUBqEFk/uRmX8pPN+HF8r5Qbr0jB2
 hC3jKfKvAuHwgdVRBFYBxnAonzFUzKhOdPvGzsnSoNzOUA30AfwrFScMHYUnWi5186z0kS8dYif
 jrYP2lHw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 phishscore=0 suspectscore=0 clxscore=1015
 bulkscore=0 spamscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_115744_600260_694C2EE3 
X-CRM114-Status: GOOD (  12.15  )
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
 drivers/gpu/drm/bridge/ite-it6263.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/bridge/ite-it6263.c b/drivers/gpu/drm/bridge/ite-it6263.c
index cf813672b4ffb8ab5c524c6414ee7b414cebc018..b1956891a8388401c13cd2fc5c78f0779063adf4 100644
--- a/drivers/gpu/drm/bridge/ite-it6263.c
+++ b/drivers/gpu/drm/bridge/ite-it6263.c
@@ -875,6 +875,7 @@ static int it6263_probe(struct i2c_client *client)
 	it->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
 	it->bridge.vendor = "ITE";
 	it->bridge.product = "IT6263";
+	it->bridge.supported_infoframes = DRM_CONNECTOR_INFOFRAME_AVI;
 
 	return devm_drm_bridge_add(dev, &it->bridge);
 }

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
