Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0321CAC582
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Sep 2025 17:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JaNHrkTSi3TYTZ9029CSZc+GJUpkDxdwFeOZJboYZek=; b=ZuwRu5zIcnGEsr
	8zK/Ccshbly5zl/z6hOU0x7X6VKGqsORxShO5HprnjStaVJ/xE1j/qchlap8mqexFQvp1EkOhJd28
	nP76zFssoqGWoa5jrY4dlg9X96o1cNtufUadzUZBGIHk7k5wbYZjjta2d00V3gOMG8aPNdB6Ukx0B
	1lE2U+7wp48xmyY9zmB0mNA81FQarqgPA9pc6IHdQRwxHVae3nmVFYJlxkOAzPScWnF+LtmvS0wHP
	WUbUuLm0/A7d2hnDNVKWEKPSKzC3/87dImIgvFdyM60ey6rfeiEGxUDZW147t9vnNGKd3Me2cmqyY
	E3NJXXyvG4u4rPRIPpRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw22h-00000008yyp-3PWU;
	Tue, 09 Sep 2025 17:22:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvzi1-00000007sPw-1hh5
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Sep 2025 14:52:38 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899Lk2n032157
	for <linux-rockchip@lists.infradead.org>; Tue, 9 Sep 2025 14:52:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6ppe/L523pX1O8Slf7FEFSs+VXXiz+Rko9uu4CzdmWc=; b=LOVxT9wRqIMsdtxq
	cndOMoifYWVHpZc62EvmN7rj0LDQWAcqL3g7/Sl4DM4EXUog/Mxwe/VyUg0QzT2B
	z3MXkIFFVU1vvUsjuf2Q8uF46tuSQ2B8hUQoQZTMElD1fpy5TVBv6EfWoGO/86o4
	0adpamYkKQP5nECPo7ebms3B9bJmH3QuhNBuSAmhzI6LviBqhrZEuxVnF3eTVh87
	DvvYXvQ/4JxGujIctjPv2XB+Yo/1U1cQGa8IO9F894uEnE378XvCuYToH0angsNJ
	qOnafF9a54OBsWShEhA+PnaZ3Cs8DU0kqPeHqfR+38PTVJvvh+jNfOHZqhyzY7sU
	ii+zMw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bws8puy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 09 Sep 2025 14:52:36 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7296c012f6bso116936136d6.3
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Sep 2025 07:52:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757429556; x=1758034356;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6ppe/L523pX1O8Slf7FEFSs+VXXiz+Rko9uu4CzdmWc=;
        b=bqH/Pt9QBRKyNNKG6gvwyFIGu9Wu2j2RLh37IOOKrW8n1yCCIqfdUNmDpHw0JKIlDv
         o3P4LSUsj/QArAKYQpnN1KujZJ84RIDl+c+UiccUT9IQZmQ/d8CT6/nwMPDjQYPLpAwM
         bLKcXloMyarWaXZaM9weEsfnVz/T/IcF1NhgPogr8N1CHwwSBSK5OsQvMeAbRqSbYINj
         W+P2SlYSUXfitVKrdkFt5LTJkpGU2SQmszKgU+o+ruuudwLhP9eznG6+BxCh7NEKxIgt
         8K3Bja7MUmQUFxG8odGcaDGTVqnVNM5s0SGxOcdiGzoa1ZM+rCQnBBhgyKCmzf4zjhBg
         1W9g==
X-Forwarded-Encrypted: i=1; AJvYcCUAMWI/kY+WWcwvSKvd3qIEC2aW4y87YV4NErM2IyehWTNQQW/yx/aLcPlsmJQy1ii0qEhp6J+OQzNA/FJbhQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+Ta02j+e+gtqVgR0/at1ZzwlPpqQLZHoTqySW+9GYTuFoOwfG
	Tcai1xnP3e40+h/wMToMBBsYNKlDusVUVpXOGCHyRrfI8CoXoIAOIbXA2xhWmemVg0vc1dHXwxP
	iW22PtjYnVJVLdShrjuVuDpNOvbFgBAXx0PehFWoULwJFJ9G1LHbX0Rpw6I1wsdWxGJ65cEDsRX
	A=
X-Gm-Gg: ASbGncte4XTwu9L39kEBosRKGbtRLR6qfdM476G12SvpDHYLZVXaZKf/EPZK5h8QZjj
	NVkpZr2cz1lkllyOG54Nijf9GYT9nYQ9ge4w8YGIHEZFm62z6w3++/5IbAypNCAEkL4xfgZc1O/
	Iwsn03Nvu3lvUNMZqt1xFxrt4fefhT1Q3yosiYUJHbIFepbZ9U1bc5SCw/xq3Cv6ibwoWo6gEcm
	URgATp3Yqr9H6qM8xcVRtZLgRcCLHxxkCc+f2wj/E7VGZtOcEAryXOQcTcsRugmyz1seASbH4S2
	ajjy53nuZKSyDSEg8XUO+w9IhOpOQctFmRoLC6bDwCXmQtz7e7L71PUEU4hVtj6JR4IZSutgF/x
	H8rADzGz+aeKHkCwDfUqnQdyU5oPZ7ROSVV2pGqWO+Cu7tbBQZeA2
X-Received: by 2002:a05:6214:5192:b0:719:12cf:50ef with SMTP id 6a1803df08f44-739203491camr137707116d6.28.1757429555431;
        Tue, 09 Sep 2025 07:52:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvay4HegD7TczvnDmBbJppLQ/NXiZM/9CH2gAkzzaVEPN2RKdPsH+OPvsw7n0MbNu3XwLaHw==
X-Received: by 2002:a05:6214:5192:b0:719:12cf:50ef with SMTP id 6a1803df08f44-739203491camr137706716d6.28.1757429554861;
        Tue, 09 Sep 2025 07:52:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f4c90eb9sm38735781fa.22.2025.09.09.07.52.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 07:52:34 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 09 Sep 2025 17:52:07 +0300
Subject: [PATCH v4 09/10] drm/connector: verify that HDMI connectors
 support necessary InfoFrames
MIME-Version: 1.0
Message-Id: <20250909-drm-limit-infoframes-v4-9-53fd0a65a4a2@oss.qualcomm.com>
References: <20250909-drm-limit-infoframes-v4-0-53fd0a65a4a2@oss.qualcomm.com>
In-Reply-To: <20250909-drm-limit-infoframes-v4-0-53fd0a65a4a2@oss.qualcomm.com>
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
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        Daniel Stone <daniels@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1240;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=GCdbmTwssKDcXNKgdZbInJ/IsWBy3ZWBjV1zBKp4r0k=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBowD8bLgmA9Afor/SCSMBp6lvcMJNLH+y+3RLsg
 Edds4lkZH6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaMA/GwAKCRCLPIo+Aiko
 1bQjB/wIC+5fSLnstfGoZMGUfVuruiseL2SNqJJstUfTxGaowQkInoHQfnrNqiPYpowcSvPCRNl
 UHnaRFcqNgqF2eWsCXtVaCx10y4Xj3MtGesm0e5fNl/X47wnuZX1RlKVA+7gTnlshcZ1F1PyHq7
 4O3HqSqvwF+066FKwZL94tPSzVrV5ca4n9uB3H4tEJ1CodYONpSf5XEXIbVmBHdBZz6F5Gns117
 nYTWg54k1WItlRdXqTB1OhJ/BoctGr79fhRFb8LTSDBfGG/G7xLshm7FznkSl5DmrmqCsv9fJqw
 58UPBF9WUpSazqCvVhovhZ2tXkAQKvB4Xu+5lsWd/6WbhhXH
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: KaWnaWuCAnPXEQ7hNPaf0N_3fYFrm-6U
X-Proofpoint-GUID: KaWnaWuCAnPXEQ7hNPaf0N_3fYFrm-6U
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX8cNXm+EKFLEf
 xZguB5ssrbXrwGZ/O+cvp6qJhAdmNlhTaYHQPwJS+HT5FNPwqLkhQg8hcbnGIJK3AFkJGFXQ8Ba
 KtJv0OD7Gl0Nz+/ZFTzH8o/NE0oHx99ah6MO5WuS4bVUNoUAQkixlty96B73KKfXmSk7WvYtXJu
 kqKEBmTsERiYNCJg4arLhTt55tMHw4tg1RHhLjruFbeG6S/WlW1mTv8VEaDbmbFiKuzWfdNUd0U
 EhSu4uQbTLRyk8t84Rka2ZYnOwHd7O1b07bFZeXg07CXf9p+bJA5Cnt+QyuXKX3mIrb6VY2BIZr
 5qbbpWs5Sv4v0ngXowWMbl9nTYkuBOGgmsJ5ei1SkzpRwW6AD1ejm1KAt9hmDl5uD+r4Ql8wfWj
 bemkbEbO
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68c03f35 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8
 a=NnPSNIktjdB4Ge1gQTIA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_02,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_075237_464172_2351FCDD 
X-CRM114-Status: GOOD (  13.71  )
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

Check that connector initialized by drmm_connector_hdmi_init() supports
AVI InfoFrames and warn if it doesn't support Vendor-Specific
InfofRames (HDMI InfoFrames are more or less required).

Suggested-by: Maxime Ripard <mripard@kernel.org>
Acked-by: Daniel Stone <daniels@collabora.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/drm_connector.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index 92a75684a0f7375d3a94e8c666cb71064ecc8035..222a0ef66d9fdbdb56108ceeb40e7f369d810350 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -602,6 +602,13 @@ int drmm_connector_hdmi_init(struct drm_device *dev,
 	if (!(max_bpc == 8 || max_bpc == 10 || max_bpc == 12))
 		return -EINVAL;
 
+	/* AVI is required */
+	if (!(supported_infoframes & DRM_CONNECTOR_INFOFRAME_AVI))
+		return -EINVAL;
+
+	if (!(supported_infoframes & DRM_CONNECTOR_INFOFRAME_VENDOR))
+		drm_info(dev, "HDMI connector with no support for Vendor-Specific InfoFrame\n");
+
 	ret = drmm_connector_init(dev, connector, funcs, connector_type, ddc);
 	if (ret)
 		return ret;

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
