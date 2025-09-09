Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3404CCAC582
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Sep 2025 17:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rx3UTTIq5UW3UtsuWg9NPYXSloAqn/BEhoyYBFN+jjg=; b=yuJTirlrsyKS6Y
	1n54sByZ+y1/INKgC+S3Ad0oiUlDVW5itND+YZ1Z43VCshrINbQt3gtP4SbtSQmYHqL6aJ8FsEMWw
	1OTfQ9AOtd/DqWYZM8rvflI0yuJ30a92d/FFLrgyF4Imft6KluQdMIeM/hRocInWU7lNgMUKeJ0GK
	ZDjlrd/zuTJY5mkZW7us+xYgCSLQJEqsIAGUYaZx6+Umo/g5UgR90nLtg1qGIB56BLCJGd3Y2we2s
	IDnLkvIq09ltLW+Xor9ObUB4Mc/BWirefQkDBP5gpepZHYm196wlf2XZ504sgPEbbA7w4AQzZFG8V
	6gn2F5BQM3ci3jQG0u0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw22Q-00000008ybS-3luk;
	Tue, 09 Sep 2025 17:21:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvzhs-00000007sJ2-1Mqi
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Sep 2025 14:52:29 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899M186000993
	for <linux-rockchip@lists.infradead.org>; Tue, 9 Sep 2025 14:52:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kdVSeIKuXTDzsb1f8YtSPNgLNA0VYyyck2+ZYEf3zp4=; b=KguWA7JRiHwdSubP
	gIgUX5U8rJR9evqjY/OTKPWycFLytfleVbA3JGx05fJeSXD3vvydeTWKz22i+pBd
	JuYFQbNhLbrnJZnDJjMkqNtTMOxstH+8A92uqWWw3Vs79nIlSufsK50wv/MGonH7
	MNKOUI/ayf5VG0UijxTtaTt7KxTJ5j0IN3FvF4gW2x0GIiL9jffURHxo+WmeMCWb
	p6kbZqrnQj1H3NOT1ARpzJ5mFYj8KZwPyPUaGB0GXAqEv3FIAOc2cDjtp0OnBZXe
	/rMUikho++7PUVS/Ajssxzic3MbohvRDyedLi1TGyRxB6EWqv75/SrFaYrL0OFqX
	Ws/yFg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4m0f63-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 09 Sep 2025 14:52:27 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70fa9206690so113501676d6.0
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Sep 2025 07:52:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757429546; x=1758034346;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kdVSeIKuXTDzsb1f8YtSPNgLNA0VYyyck2+ZYEf3zp4=;
        b=W+6dPGo2QGySxI8y6UycLMfOHRw9/aCeClHM3kxLQzBBC6RX7Wf8PFhKmkHEX5HlPT
         iVd7wOmNLXNgkPvBtqNNy1j09IwdghYhbVww7VFOZ7XYelVttQ8j3D4HNfHQhoWOvT4w
         dA2/oOoWviIUFHNLs+SQHLDFdzOhPyLIo7YQITJK8gp5ijet10RcmbyTH2Db1KVnZBeE
         fvhpFn45gY13W5SnjzXz/iV7CUMsR+ZiqMxQiNQi73Zm+wuGJqm3TGPsuMF8lalkvgQH
         boV8NxBFc7pf5XNCxtRMmtAYeac6i2IxTMqbPcQRvM8g588EBxpBBRqeLj5/bRSmBH3w
         VnMg==
X-Forwarded-Encrypted: i=1; AJvYcCXlgX6Uqyti8Bv3Q7rFypAW8zSrtwYrTues6J8NXFYnJSEizdjuZQkfc4qhu/FjppNcnzpw2W9h9qaCR7MeeQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxVCuqyLCyVIq+IOMV1IZ4OHcmbfVQR7HsPCfwd/8r7rOQ0mrQV
	dDROehXhbXFVBHRExRAF3VG8dvjZ0TZh0MuofAssZSbIG2/Nbp9dRhdr9dAiKsyjyS10rysnJJn
	GHEWuIyo/rkjCXZWFTwJk0RWBMK+WLEL5uUAKdPwo43yEttPptlxJ3ZJUfIc6qXbMF2FF+rV12k
	E=
X-Gm-Gg: ASbGncumfRoQ1wRplt8Z61r9CmKLK+dbYtpBOn7uWKNIZUjcQYf0o1ROmpuwBhJRbzA
	rVToi1lZVnVXvAgN1oMf0WtYxDdCCwLk3Q17taR4cXveqPnV1Ee/gPO83GU1mFM+U1x3QdvNx1i
	rrzgNAGiKvi24AkBqrU/H31KVtIRDPoSY8oHezlhq80Ty83gbVlGkCWgKNgjqcjoyXomFtN7W36
	OAeQ8NH4uVamj9NPHvIAP8gmErLk/PQVadlTvuTmRqPBuAWa5KDtLgWKFxYVuQnfsxsPk9UN4u1
	PfcwCMcIjhuIUY85Efapkcbvu0xLzQXljzPxy4UOp9MAqc39V4Y5SCjrMYXsb8v+8aijeWHX88P
	tz44wCk1i5qTqojwt4kMCNzYr4TGcbDuBra/5qjWcM5dnFHdP5QGf
X-Received: by 2002:ad4:5fc5:0:b0:707:6cf8:5963 with SMTP id 6a1803df08f44-72bbf3fb0b1mr158064836d6.9.1757429546340;
        Tue, 09 Sep 2025 07:52:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+0czZpNTxq9KgOE3QwkI3s44ERVHWu12W7OPI2XDlhVfpfdH+nJD0CIFl4aY+6gycdCccrw==
X-Received: by 2002:ad4:5fc5:0:b0:707:6cf8:5963 with SMTP id 6a1803df08f44-72bbf3fb0b1mr158063976d6.9.1757429545199;
        Tue, 09 Sep 2025 07:52:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f4c90eb9sm38735781fa.22.2025.09.09.07.52.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 07:52:24 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 09 Sep 2025 17:52:03 +0300
Subject: [PATCH v4 05/10] drm/bridge: synopsys/dw-hdmi-qp: declare
 supported infoframes
MIME-Version: 1.0
Message-Id: <20250909-drm-limit-infoframes-v4-5-53fd0a65a4a2@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1676;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Aq2mDEHmgp1SiIn37OLqW93okHrHKspB826EOGNpiU8=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ8YBe+mkx4yTHKo7u9dMr8stfj3H6f7aW3MzQnfyHjz6Y
 d670FTJTkZjFgZGLgZZMUUWn4KWqTGbksM+7JhaDzOIlQlkCgMXpwBMxI6J/X+ugGhLp7fzDxHn
 IluFvF35U3R8m2zjXqrUcp+8eGctR8zvKoEMv2huvaqa0C7Gmw8y9KayMcf+b54ZxjJ9U0rci6M
 HOQP7WjLUmt1lLnvpam+r5YpQLJ2Xc31u+95Tl7bdPdhbN5ujXq7RXfdt383Ud3UfbCZtXb/O+C
 b34cavM9/O9Z2vF+Dte+1uS2qCitekI3N5K9f3KzX1h4d9U5ALsLZjvPhW3X7rwx1CC3UX998Ov
 5zOOMFx5oavPjJGdaZuJ914O63uJvJ3lNx85rzc8VzqX9ljM6/n2OsfEI+5E7Xhyq7lFyXrIufZ
 Xc6y/mFx495BzWAPF8GyjP+euh73dzUVJq1vuf97SkUoAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfX4voFmJjYjzDV
 PSuWlRh6u6w4Msbjf381Vb18g22xrmgBII4urs7wv9N4FfSnRWC2Bb8Brsqoenvp13MmRjOIbP8
 T1uEwBG3aLKwaGFgvDEjc2U7KdxhGG7eI6ZBDcXLcBxtdlXye25jtPmbLj5qwShb9UuQ88N2VvB
 euo0fRHxUy0SatwM93NLeHBGJBVjGpBYGJPjxtznraQxzS/L0eXP6XrTj42Megpp9n5gHs1qnSZ
 2AOYet1l4hkTCjVLliks/p9BhlnjtxgCb5ww169MU/im0uOK7JX+lh36bQsEq6lcQ0UGLZpgH4K
 HsBZdL+aMTLZhmank83m46owPZbKHTX2b4/y8so7b6KYMjZl+d3KKD3PdILgEM2Zak8Yxcm8YaW
 12ZbpxiL
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68c03f2b cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8 a=vfAEGMZ_7ZOHtlG3iVcA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: Z1eDckZC44D0N-aD1NzK17eEXUUE9iw_
X-Proofpoint-ORIG-GUID: Z1eDckZC44D0N-aD1NzK17eEXUUE9iw_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_02,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_075228_376080_E4D5ADF1 
X-CRM114-Status: GOOD (  14.61  )
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
interface. Return -EOPNOTSUPP if the driver is asked to write or clear
the unsupported InfoFrame.

Reviewed-by: Daniel Stone <daniels@collabora.com>
Acked-by: Daniel Stone <daniels@collabora.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
index 39332c57f2c54296f39e27612544f4fbf923863f..9a195c479bcaf112f67b6a2f085402d0e33896de 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
@@ -936,6 +936,7 @@ static int dw_hdmi_qp_bridge_clear_infoframe(struct drm_bridge *bridge,
 		break;
 	default:
 		dev_dbg(hdmi->dev, "Unsupported infoframe type %x\n", type);
+		return -EOPNOTSUPP;
 	}
 
 	return 0;
@@ -961,7 +962,7 @@ static int dw_hdmi_qp_bridge_write_infoframe(struct drm_bridge *bridge,
 
 	default:
 		dev_dbg(hdmi->dev, "Unsupported infoframe type %x\n", type);
-		return 0;
+		return -EOPNOTSUPP;
 	}
 }
 
@@ -1084,6 +1085,10 @@ struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platform_device *pdev,
 	hdmi->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
 	hdmi->bridge.vendor = "Synopsys";
 	hdmi->bridge.product = "DW HDMI QP TX";
+	hdmi->bridge.supported_infoframes =
+		DRM_CONNECTOR_INFOFRAME_AUDIO |
+		DRM_CONNECTOR_INFOFRAME_AVI |
+		DRM_CONNECTOR_INFOFRAME_DRM;
 
 	hdmi->bridge.ddc = dw_hdmi_qp_i2c_adapter(hdmi);
 	if (IS_ERR(hdmi->bridge.ddc))

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
