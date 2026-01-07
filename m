Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21B68D0D15D
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 18:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FtkJZmBPSVmXuXrxfcLN1rzZJn+64T3AIej14XFvpoo=; b=qmHEROEPfm5pSy
	5zW9mAHEdavbSY73YOjKujHGbRg8+gfingmpgmZEIwZVaczHsXrNSdtN7l6W+VusfmMbC8ezzF1Qz
	bSOdJxw9yzZFzdeVq2U3IDK4RIM68gqG6xIeT2cC7frZ6HSK/fmgQHvNybK+I7LZZKaMPDAVeVhrb
	tusrZzZLH/3ditU8Jo+WksyJ7i7QQdeIAQQ9rqFGzzvLyUA2rEy+FkpDtS1nr6g1VTe7ZLIfcrae5
	3ZJEzzkwH1UkhjU94A6Xr5lC22iO+XU+6fKc5bg0uSMkH43I2fG3cp2ZCCUgPeeG9i5zgFMZczXJ+
	nRQxDIL5kfwNiXEkD3Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdY3t-0000000FRNy-3Hcb;
	Wed, 07 Jan 2026 18:15:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdY3n-0000000FRJ0-3N3m
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Jan 2026 18:15:11 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 607HYgDB2593277
	for <linux-rockchip@lists.infradead.org>; Wed, 7 Jan 2026 18:15:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CvOBqRWntd3xVSUEtMwnv/Rm6Go596skSwj2MkU+rb8=; b=LcvKs90co5qyoc2Z
	d/DIjr6T4wp6peOapih1HLy3dVAbvLTC7P2Kndnry/iEomJs8OzmIVngr3ixTOg4
	tVc0xZ0DdmPlAIFS82JO8PKad+Hq37EPFHDDYa0GXy6zgBOnPD7vJ+6HgBeCQiT+
	G8XV72EZ8iahnPwLPnscVkw1z9E1UZMXnq1dgZHv7GYsWAjoLBiC4TN5mTDh6g/J
	6uEGqMsEJNdB6obsu3FYwEUHg8rQ/O4SdEcPEIwhJuQIkWpFmUB31BYP1mcGpKNr
	8ZksV4agCherUaArKSC/9gV6QqRKNRz+GmwyFyV4PyNrFAU9PP6VNmmcPKTYAFYo
	Lf4E3A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhn291n2s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 18:15:07 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b259f0da04so605096285a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 10:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767809706; x=1768414506; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CvOBqRWntd3xVSUEtMwnv/Rm6Go596skSwj2MkU+rb8=;
        b=P7QzqBhkqofOFuQUZNVFfX6OrSMtcQLXr+pujaSe+db3s3snHJMtXk56G9ItxNl9Sd
         JNQU4ssjkEeutwctXRRmw8AjGewd675FYfFl0gxUEYlsSCTfIcH6nQZzX5O0NSjWy5Jy
         1QGK19FKme6h+XR9ukYu6Tcf8q33cDP6l7ASgNLxRr7C5WoaO4J5qxQdnBBBSb1Ytv0Q
         wWCyVrwbTOiGHo7q7BaJNFtA8NfDui3RUxZ2E5wvK8WYbR/+d7de256K654Y/yIGKyS/
         AnKESczjc5Et+4SYUeUd8iOGZXX2wvAmsQJUrx/CJ2NEX8lAFi7tBpIW6JBsj+KW5rD2
         G0Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767809706; x=1768414506;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CvOBqRWntd3xVSUEtMwnv/Rm6Go596skSwj2MkU+rb8=;
        b=wLZsYQyNxrMouQqQ3PhdrSj5OTCo6jWa54KUG+V0HGNOgc1bU0u/hf76KrwbkN/RLi
         U3xM4e7OVoqhjbfkQIsPQuLBKJ5vKACjozxuAJqmw5zSl9sumzLFa13Ez7Rx7N7G7rEA
         Nn1CrH5NfWTAi/Le0CmKdL2vfBNmLDWEojHFLHzdbOrLRtTJsD++JWT4o7m/pRXVFVcb
         2aKqSdJKiumMzYmjUhzeZV7rK/1eeKFwV8qtrzD8audnKjQIzqn4Fs0tsZCq1NltAxjW
         BSX4uuDej17sLdM4gkIE+lQrBWLD6nvoxHFoLq3EGjT9SMwhQ7KeHMzxx9QkskjhgsQg
         QMPg==
X-Forwarded-Encrypted: i=1; AJvYcCXBiyhhyUvGaeMMFK2ynUOs2xocSO70+IK/sk9IhQJl/zXYHIPNTTrfKc6j/z/omq6hha2ISvKxzlNJbQazmw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxRDP3yHS5z4DVo4hrmggGPGbirJafi5lQTzbsXKJ29HaPoYcU7
	7FKJEbar7LLjtt+WAvDmfM8KZhiJbisH6WGo7Vsb5v4XlbaOqvINXHvXFUYNyhWDx28F7Ed2a1P
	rCCDnfPVRUtHd5k3tBmkaIsv5TiVARdW6aOIwZAzAVKZo8chqSe116sg9I1hCYB0m3uBsmF0VGF
	M=
X-Gm-Gg: AY/fxX7BHU5RHdJ7K1glEKk+YtbOr/ZYFqK7/idMhddvWP9oAJnXWHBsCh3iCr5VXlP
	5YLWKQ6KEPA6V9LlxaqFBhictBODtWG1/UULSstMhn12+cECRp9WhBEbPkOmQaheEap2N59P02V
	W+3hRB7FqZfWB6ONtJwe5icPeAh+t+gQbG7DjSv1UV/55wIdmjl8UAFOJEq2du4P9QqdVIGadkm
	7FNBT7Jhp+RTnFtESRW200KnN/AFtXudZsxNV1zDLzzYIZjAiifU2Gf75i1vqkS+TaXeYvVS9Cp
	uJde5BQWVK/ukBU7R22+Md5BSw7OAJmwU4dyl7Izr/mLZMXdj+f1Ff6wWRihybOTnjYh/D8S4ru
	ewmML/EtTi/HlvROaXE2CR8du5HeAl+Jryd1S4l0PkkWnGK7LN1aYSUckV+Z/oDvtU2K8xmoAQO
	ExRX06j3T6aztRVjXAW+07Hjs=
X-Received: by 2002:a05:620a:298c:b0:89f:5541:b5f5 with SMTP id af79cd13be357-8c3893751a1mr451572485a.17.1767809706393;
        Wed, 07 Jan 2026 10:15:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IErco6iIlONdm8FoPmBoVGT4sMle7p6Daei/gbTGJZ8AsHe90PS3UuyAzSsRgYRNtmFv/UWZQ==
X-Received: by 2002:a05:620a:298c:b0:89f:5541:b5f5 with SMTP id af79cd13be357-8c3893751a1mr451564685a.17.1767809705824;
        Wed, 07 Jan 2026 10:15:05 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65d6988asm1436884e87.80.2026.01.07.10.15.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 10:15:05 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 07 Jan 2026 20:14:59 +0200
Subject: [PATCH v4 02/10] drm/vc4: hdmi: implement clear_infoframe
MIME-Version: 1.0
Message-Id: <20260107-limit-infoframes-2-v4-2-213d0d3bd490@oss.qualcomm.com>
References: <20260107-limit-infoframes-2-v4-0-213d0d3bd490@oss.qualcomm.com>
In-Reply-To: <20260107-limit-infoframes-2-v4-0-213d0d3bd490@oss.qualcomm.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>, Liu Ying <victor.liu@nxp.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1749;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=YjRxdH2GhgCXavyWIwCH6N3bsC345EISvDP2gtesFFg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpXqKkcDiQpwhgi0U0jf8JGOrxJBwtl/l5GypPK
 coPxI4tELuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaV6ipAAKCRCLPIo+Aiko
 1fRWB/92FTnBMUcYj37wwL0tkj2+9WhnXCNr6YaqOXhJHzBvMN3Ric79sLxWIk6V2x3r2jYCRTc
 BkdlD9X0pnL+Hq2degXIglnJH2gA1p7PGCVq8s0gm0v1ELu41JL4luLf8f6sJieWu1QXoaJk5qP
 79zPwaA5N2vB9hfx5p+R6t4e8pTVe1kMeFaRCUvqmAe1Kovi1sIZ1KaVq04n6rv6Vhjro5yFiFn
 LyRakv9HjVWBfthh1kbm1YCWTU0Rh+rmb3pMmr07+I6SSf6xRRJ0Yq6B0EcopvIhZhVA3ayoLhz
 savBzIEyxFTHux8IDyABCGHnOtOfh5srllF0nQkfQKf8sNtQ
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: qx58n1538nDKTlRUu6oALzwc5B0YDmnV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDE0NCBTYWx0ZWRfX9RIjZF9lvcLE
 UrxHmi0k+52tSQfQRdy9/AGzNhAVtNSCo7wUOjZmjUAMQM2ZhMc2G8HZGZmCszYP6R2ZJEZF4MW
 LXFNlRNJYVGjKvDh2vuglAj8duH9I4ehN3ZAiJR1AaP2LaZ12GYpUqppH9uF3PrL5lxg4B/Pgx3
 rxqPdrmvrH3yO7bzA5j6i05QKOb24LMtTxB7oaAIeJp2Rv/BaDWIlzHPP06P3XH0rFeY4xZK0h5
 Fg9qNHfD+PVtFr/lNg59Xfg+aVE9qxpQ5NVw0nIxBicORSYSkmcfJOTYziaF6iVfD1nP/OWTEMK
 vd0y5v+Sls0TxsDNWlV8l1hZe9v/F+kwXZDbfisztuKLJnzEsJwIXqLQK0/m/ySLlAedKyq8oqR
 pKdwBNS+EJjqPSXg7CqGDlBboeiCZ5JLhRrmms28vZuPVvRKckHu31CPwXRg2PxdP801F/yxL1w
 cCImtq13U/XjoqI1DXw==
X-Authority-Analysis: v=2.4 cv=P7k3RyAu c=1 sm=1 tr=0 ts=695ea2ab cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=gsP-wGJUQ9tQerkYUh8A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: qx58n1538nDKTlRUu6oALzwc5B0YDmnV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_101507_853836_31B11083 
X-CRM114-Status: GOOD (  15.35  )
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

Implement the clear_infoframe callback, disabling corresponding
InfoFrame type.

Acked-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 1798d1156d10..4cfb7ebc0c81 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -624,6 +624,30 @@ static int vc4_hdmi_stop_packet(struct vc4_hdmi *vc4_hdmi,
 	return ret;
 }
 
+static int vc4_hdmi_clear_infoframe(struct drm_connector *connector,
+				    enum hdmi_infoframe_type type)
+{
+	struct vc4_hdmi *vc4_hdmi = connector_to_vc4_hdmi(connector);
+	struct drm_device *drm = connector->dev;
+	int ret;
+	int idx;
+
+	if (!drm_dev_enter(drm, &idx))
+		return 0;
+
+	WARN_ONCE(!(HDMI_READ(HDMI_RAM_PACKET_CONFIG) &
+		    VC4_HDMI_RAM_PACKET_ENABLE),
+		  "Packet RAM has to be on to store the packet.");
+
+	ret = vc4_hdmi_stop_packet(vc4_hdmi, type, true);
+	if (ret)
+		drm_err(drm, "Failed to wait for infoframe to go idle: %d\n", ret);
+
+	drm_dev_exit(idx);
+
+	return ret;
+}
+
 static int vc4_hdmi_write_infoframe(struct drm_connector *connector,
 				    enum hdmi_infoframe_type type,
 				    const u8 *infoframe, size_t len)
@@ -1660,6 +1684,7 @@ vc4_hdmi_connector_clock_valid(const struct drm_connector *connector,
 
 static const struct drm_connector_hdmi_funcs vc4_hdmi_hdmi_connector_funcs = {
 	.tmds_char_rate_valid	= vc4_hdmi_connector_clock_valid,
+	.clear_infoframe	= vc4_hdmi_clear_infoframe,
 	.write_infoframe	= vc4_hdmi_write_infoframe,
 };
 

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
