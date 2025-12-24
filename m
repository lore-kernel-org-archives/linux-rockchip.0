Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C156DE748FC
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 01:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3EAgr5AiQJp3j9EMvBUh/X6FB+Uh88NKfBLPNOgCEqg=; b=EnQvrKzqyFVGiD
	7WO+Iebf1GfSSnLWDxqXuZtagjchubv6u4Mc2AUCbenD84VZOfrWrdTSaP0aDYIp5MUtr5ITEJqXc
	FEGnJRslU63Z1dSVTwXm50AA+rTGPrJgCeD7og99IQldVJS+xNx5QysPFgZlv+TnGiwdS1mvat469
	zzI62j3P9/iKZwNPQLYNRGjXBbhlVva0VqVk063z1+hd7+cN/fAiP8MPaaowt4kNQHkSoLNVHCnc7
	K7emB1u/ADjqdG08IKhKZLEYxCjgpaqvmSjHWHOLrhA06SvFMmWq9zzSSfDZDLLr17rvD+alJGWP0
	63JDB3We1qdxLPQUlLvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYDIZ-0000000GFg4-2dFn;
	Wed, 24 Dec 2025 01:04:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYDIQ-0000000GFVI-2TKv
	for linux-rockchip@bombadil.infradead.org;
	Wed, 24 Dec 2025 01:04:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=wLWwE3+OeE/g9lVfst6cEgHRxD/v4AAQeIf29KzVQzU=; b=qvMWQUNepQOIyR+Vwec8oiGe/v
	H1/+4OlALococFO9B2lF1omn4kVMJia8Kt+KzHxO9VjMDgGeBpjOH5WNSOKkMNv4uF6zqpE/+hrYQ
	/c/EATh6Tnsejb78iMkdctbzwi5BtSzpPBuuaFs/bjlbp6nzbN6VBUpq4+7esFavxzdowHVNpFzl9
	qvSq0U0sWkT7IrLxzbKiy4gr1YWXhdqiMLPy94HDbatGFkJQAiJkCvKwVSF7zZuf4+Bf+QURycAdv
	UIhHp6zEv8HfosYCXr4nCqWnqzHAUahLtJKBlTJG0yy01HdQut1jsS9NXAGnDYgoBr2713IE1nIom
	JwGIP8IQ==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYCQt-000000002EY-2vXB
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 00:08:55 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNHwsDq1246312
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 01:04:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wLWwE3+OeE/g9lVfst6cEgHRxD/v4AAQeIf29KzVQzU=; b=ocinDGINcuRyGvWv
	qgltR7lMm4frTJ+aSKEOdPX0aqzZyqJpD0PaCxOFOPgiQGr8laYQxH2lb7R7e7GV
	StCQHC4ToUZakKAcrVPgk8iBJI3GUxmqXWxjHc+jc0ITFaURqs/zzdephK0ypwMg
	c9+RTYdv7+i4SA5bdkwOcom1HHKM1OVl1zHW2rjDg3VtGG2mZKer/0Xt9/vzIZ1t
	QBiyCjKVR0pAYq4M5lmdEu+yxeZgw7/mFMGtCknAggjID0J53oUXjiHrgmUm4kD9
	QOuCLmI0lP5EuXkuauAhK0eSR+kY8bj4evofy818VH7lrm0NXy5OxS9h7ifZrQCi
	9qeA+w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7u9csxpr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 01:04:02 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edb6a94873so107532281cf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Dec 2025 17:04:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766538242; x=1767143042; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wLWwE3+OeE/g9lVfst6cEgHRxD/v4AAQeIf29KzVQzU=;
        b=OElkNveIAwuyCo1rCcD8/+oLivyxShhiWskOAt+8WQR6ub6kd0/p1hOqb11dCTIXlv
         4OeLcRUWaTTU+ed4yIbWxvFaWSumOSjffxx5OB6eazPQD3RWV5+ML2dbKBIIew7nhHUf
         +WUs10Wd9qEPVMyowf9mQ9ACjhg1e4bjSfILxQbDHxP2p7YcTIQ80KBgFHx4QeYnpBOa
         0Y0C5ZSd76GKehNmm6AbgXXuOXYkhAzjA6a+w7XkeAn1OINaSTSBcSjBftNrXUXkopNG
         /Pa+Puyc8ZA/87sbaEwfyZMmuLg1Lh6zaLy/aHYN7KwHzKhZhKnMel1uN/OI/e2Ebu/7
         6uJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766538242; x=1767143042;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wLWwE3+OeE/g9lVfst6cEgHRxD/v4AAQeIf29KzVQzU=;
        b=GxIY4WlYInN8c2L6kITMDu7UUvINSjx4+HmQPLoFhQ+9aQW96f10JpVztCHP9UVpSv
         iZU/+jjcNTKHWadofC8r3seNCAKtwhleUcA2xmLYyXBPyFKEQ/2FsmDngiety32635sc
         RxEAGa/3RfBX+WWEjKWH/Nuk12UXo2dWRzuZ32Xh45ox7JHtOM9k4U23Ne2KwsIwz++/
         ZRvcqRF63pu8EErJMCTimfYTj2hZwOgzKtwgWG1/LWuRkOAZ057RNph16Q3/VhSEGZuH
         Q6nznxkklVdchTRtDK+OkAQCK9SB2KnJuOd9nmHWs7hEfxXxcKxgBemVGIZ/4nR8kjxJ
         i3Gw==
X-Forwarded-Encrypted: i=1; AJvYcCVIVNuzwSsOt+WwBIBgr5CsZZFmofWziylzbze4/6FJd6Fa/GAa1yGpPH8RJsTOeNyxEaxdXeG5wblODmRGgw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yya6n07+GWkr5RwLgTPCoSrLm/PxKepEncA7B/JTv3C3S1e4JBe
	kEILjvzkVTbrcOieSK0X22MbKn72WZdSH+YYHOPqzKG387SWeEwNenOBgMfLrWr8pNI5Xs0w2t0
	7gUHNynrR+GTXEgQISpsY21sEgxrSEKCT1HvNxbzOeeWCf5Z7rty7Bn7RZB/hZluYuXgG5LRGn9
	c=
X-Gm-Gg: AY/fxX5OHBv5yUL/O2eDHLunfLMJIS7NpHrQ/3sMVHSd4nQ8a5kvxV2Btxd1v/t2tIi
	lLRPqfx/nC8pzeWQqD+Np04Jr4edRPcghSk0bpIiP9iIt3EfvDNrB8051l9i6B4Kseuq/Q87jqS
	+r3wfgDjaUP+6HWVjq+o0ODfMgN8yfQ1WIJiDoZj6hMeLPes8ltXjXKLpw3HwUmnW4Xkr06UT/m
	Fi8ZEG7tgaszQ1AI6lEATF11K0U+JqpOeQUJ4Dz3OKESQb52Ly6TOrTYx8bq/O8KZa9SrLqlU47
	P8i84rONqi9kYkBpKZLHYsDdCr14iX8PUsHQQ/wjnKsA7qDT0U0/ieP/C+APWDNu7Gzp7KybODZ
	8AUmU3ZwB9Pfs553kdcbW+r6bTNIQN6EkAg5qnu1QI7dsRVcCm5CjD9jkrYZimh4Jg9xUMGP6YR
	EH3RiufGzoRzlBRdbaeAasFUw=
X-Received: by 2002:a05:622a:1248:b0:4ec:ef62:8c81 with SMTP id d75a77b69052e-4f4abd8c6bdmr206266711cf.47.1766538241842;
        Tue, 23 Dec 2025 17:04:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFjEL6KpdvGkaIQESqzuIk0ruXwS4QCPmI+GKo0q+FP+/3F3vrZO4vptQGCTX9RSoNL/0h9gg==
X-Received: by 2002:a05:622a:1248:b0:4ec:ef62:8c81 with SMTP id d75a77b69052e-4f4abd8c6bdmr206266431cf.47.1766538241402;
        Tue, 23 Dec 2025 17:04:01 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18628284sm4545268e87.93.2025.12.23.17.03.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 17:03:59 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 03:02:58 +0200
Subject: [PATCH v3 09/10] drm/display: bridge_connector: dynamically
 generate HDMI callbacks
MIME-Version: 1.0
Message-Id: <20251224-limit-infoframes-2-v3-9-7fd3cacfefed@oss.qualcomm.com>
References: <20251224-limit-infoframes-2-v3-0-7fd3cacfefed@oss.qualcomm.com>
In-Reply-To: <20251224-limit-infoframes-2-v3-0-7fd3cacfefed@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6848;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=wjvfsQWX2SPvZmtfq/QDNeAsj27LvHfOsz915cSO54Q=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpSzvaCm570BXj+xIjC/HsGcDtU3JpA7khf+YXS
 u9a7QR7RCeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaUs72gAKCRCLPIo+Aiko
 1RcNCACKsTzltXBEDv5JA74NluYiKEOT2sk5yj6c9PVolhP6Av6n3Nd8/t+6XB3cYSb5w1io960
 9wqlW7vqJLAveCu+3Z7ebSvwfcaFyBSv3WTPBayBsfMzB6AqlUWornDKj76LVqhdKVSt7WBuDXD
 vatVEwKidWBUCYmkZVY6bgw3MHh1IavrIwmGwccrpBiOcKQX1569bdMvX2V/vrBdoY8npN/Vf3i
 9xPNMTYOWUmhlvG0QOffuyOf6enZ52Ukumfye5R7tjm0nOHqVQZqBI8rEAzGWq6Pp4W1J9M14XP
 oQc7kGcYfsQuNjirDnckyZJ7oCPqQPN1z3b/dJVZs+CcxwPT
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: E0_6hbKvb6Cho1Jv6jf1DIAlEBBHpM9l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAwNyBTYWx0ZWRfX4Fca7JJeFUUt
 88VSyVAklz2iyT9gr1PiTZkQ0+iTFopS3rA3jc8EZhTa2hF4/8ppIRD7v0CRA6w5mLSp9tL+xaQ
 nSGARpVE871b7cz7yi8V9euSaeSNFTMH2+RjmmUIeijXh/gD1lbr0tkWPHgG6vdl53mFXpADChh
 FNofQD7smSCuoq6pC8EO2br+lrk0jISo2OOT+zgj/On4EZ8b3IH6mJBp13Y2NZV7v5sm2A7DAcZ
 gmFmgK5JG+rdYUe0RcCbpFHtCuUq2hY2eHWHApdlt8T+V3STb+j/q0fEmXYZCrY44GCU6hWIGpg
 r+X2zIv6I/CZEr4r8QvlUAKUGes/fJZ3g8XR8Su6JSQI9wNivQ2i180qFMbWTtWH8p+/hfxTc1j
 8qFBceoO95/sTkTLeTovohRUPY33FT/F+RpdJ4oIuIgBqWlnQgOefbIwsNgXLKtc9JAjctkUe5N
 NoQbfFqT7fZ1DYuzsGA==
X-Authority-Analysis: v=2.4 cv=HsN72kTS c=1 sm=1 tr=0 ts=694b3c02 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=SmQ2dRXw9u10PpR7_9MA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: E0_6hbKvb6Cho1Jv6jf1DIAlEBBHpM9l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_000852_338057_73C64B83 
X-CRM114-Status: GOOD (  16.93  )
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

The rest of the DRM framework uses presence of the callbacks to check if
the particular infoframe is supported. Register HDMI callbacks
dynamically, basing on the corresponding drm_bridge ops.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/display/drm_bridge_connector.c | 94 ++++++++++++--------------
 1 file changed, 45 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
index c8858d48199c..2a8f586c6d13 100644
--- a/drivers/gpu/drm/display/drm_bridge_connector.c
+++ b/drivers/gpu/drm/display/drm_bridge_connector.c
@@ -123,6 +123,14 @@ struct drm_bridge_connector {
 	 * DRM_BRIDGE_OP_HDMI_CEC_NOTIFIER).
 	 */
 	struct drm_bridge *bridge_hdmi_cec;
+
+	/**
+	 * @hdmi_funcs:
+	 *
+	 * The particular &drm_connector_hdmi_funcs implementation for this
+	 * bridge connector.
+	 */
+	struct drm_connector_hdmi_funcs hdmi_funcs;
 };
 
 #define to_drm_bridge_connector(x) \
@@ -465,12 +473,7 @@ static int drm_bridge_connector_clear_audio_infoframe(struct drm_connector *conn
 	if (!bridge)
 		return -EINVAL;
 
-	if (bridge->ops & DRM_BRIDGE_OP_HDMI_AUDIO)
-		return bridge->funcs->hdmi_clear_audio_infoframe(bridge);
-
-	drm_dbg_driver(connector->dev, "Unsupported HDMI Audio InfoFrame\n");
-
-	return 0;
+	return bridge->funcs->hdmi_clear_audio_infoframe(bridge);
 }
 
 static int drm_bridge_connector_write_audio_infoframe(struct drm_connector *connector,
@@ -484,12 +487,7 @@ static int drm_bridge_connector_write_audio_infoframe(struct drm_connector *conn
 	if (!bridge)
 		return -EINVAL;
 
-	if (bridge->ops & DRM_BRIDGE_OP_HDMI_AUDIO)
-		return bridge->funcs->hdmi_write_audio_infoframe(bridge, buffer, len);
-
-	drm_dbg_driver(connector->dev, "Unsupported HDMI Audio InfoFrame\n");
-
-	return 0;
+	return bridge->funcs->hdmi_write_audio_infoframe(bridge, buffer, len);
 }
 
 static int drm_bridge_connector_clear_hdr_drm_infoframe(struct drm_connector *connector)
@@ -502,12 +500,7 @@ static int drm_bridge_connector_clear_hdr_drm_infoframe(struct drm_connector *co
 	if (!bridge)
 		return -EINVAL;
 
-	if (bridge->ops & DRM_BRIDGE_OP_HDMI_HDR_DRM_INFOFRAME)
-		return bridge->funcs->hdmi_clear_hdr_drm_infoframe(bridge);
-
-	drm_dbg_driver(connector->dev, "Unsupported HDMI HDR DRM InfoFrame\n");
-
-	return 0;
+	return bridge->funcs->hdmi_clear_hdr_drm_infoframe(bridge);
 }
 
 static int drm_bridge_connector_write_hdr_drm_infoframe(struct drm_connector *connector,
@@ -521,12 +514,7 @@ static int drm_bridge_connector_write_hdr_drm_infoframe(struct drm_connector *co
 	if (!bridge)
 		return -EINVAL;
 
-	if (bridge->ops & DRM_BRIDGE_OP_HDMI_HDR_DRM_INFOFRAME)
-		return bridge->funcs->hdmi_write_hdr_drm_infoframe(bridge, buffer, len);
-
-	drm_dbg_driver(connector->dev, "Unsupported HDMI HDR DRM InfoFrame\n");
-
-	return 0;
+	return bridge->funcs->hdmi_write_hdr_drm_infoframe(bridge, buffer, len);
 }
 
 static int drm_bridge_connector_clear_spd_infoframe(struct drm_connector *connector)
@@ -539,12 +527,7 @@ static int drm_bridge_connector_clear_spd_infoframe(struct drm_connector *connec
 	if (!bridge)
 		return -EINVAL;
 
-	if (bridge->ops & DRM_BRIDGE_OP_HDMI_SPD_INFOFRAME)
-		return bridge->funcs->hdmi_clear_spd_infoframe(bridge);
-
-	drm_dbg_driver(connector->dev, "Unsupported HDMI SPD InfoFrame\n");
-
-	return 0;
+	return bridge->funcs->hdmi_clear_spd_infoframe(bridge);
 }
 
 static int drm_bridge_connector_write_spd_infoframe(struct drm_connector *connector,
@@ -558,12 +541,7 @@ static int drm_bridge_connector_write_spd_infoframe(struct drm_connector *connec
 	if (!bridge)
 		return -EINVAL;
 
-	if (bridge->ops & DRM_BRIDGE_OP_HDMI_SPD_INFOFRAME)
-		return bridge->funcs->hdmi_write_spd_infoframe(bridge, buffer, len);
-
-	drm_dbg_driver(connector->dev, "Unsupported HDMI SPD InfoFrame\n");
-
-	return 0;
+	return bridge->funcs->hdmi_write_spd_infoframe(bridge, buffer, len);
 }
 
 static const struct drm_edid *
@@ -591,18 +569,22 @@ static const struct drm_connector_hdmi_funcs drm_bridge_connector_hdmi_funcs = {
 		.clear_infoframe = drm_bridge_connector_clear_hdmi_infoframe,
 		.write_infoframe = drm_bridge_connector_write_hdmi_infoframe,
 	},
-	.audio = {
-		.clear_infoframe = drm_bridge_connector_clear_audio_infoframe,
-		.write_infoframe = drm_bridge_connector_write_audio_infoframe,
-	},
-	.hdr_drm = {
-		.clear_infoframe = drm_bridge_connector_clear_hdr_drm_infoframe,
-		.write_infoframe = drm_bridge_connector_write_hdr_drm_infoframe,
-	},
-	.spd = {
-		.clear_infoframe = drm_bridge_connector_clear_spd_infoframe,
-		.write_infoframe = drm_bridge_connector_write_spd_infoframe,
-	},
+	/* audio, hdr_drm and spd are set dynamically during init */
+};
+
+static const struct drm_connector_infoframe_funcs drm_bridge_connector_hdmi_audio_infoframe = {
+	.clear_infoframe = drm_bridge_connector_clear_audio_infoframe,
+	.write_infoframe = drm_bridge_connector_write_audio_infoframe,
+};
+
+static const struct drm_connector_infoframe_funcs drm_bridge_connector_hdmi_hdr_drm_infoframe = {
+	.clear_infoframe = drm_bridge_connector_clear_hdr_drm_infoframe,
+	.write_infoframe = drm_bridge_connector_write_hdr_drm_infoframe,
+};
+
+static const struct drm_connector_infoframe_funcs drm_bridge_connector_hdmi_spd_infoframe = {
+	.clear_infoframe = drm_bridge_connector_clear_spd_infoframe,
+	.write_infoframe = drm_bridge_connector_write_spd_infoframe,
 };
 
 static int drm_bridge_connector_audio_startup(struct drm_connector *connector)
@@ -971,11 +953,25 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
 		if (!connector->ycbcr_420_allowed)
 			supported_formats &= ~BIT(HDMI_COLORSPACE_YUV420);
 
+		bridge_connector->hdmi_funcs = drm_bridge_connector_hdmi_funcs;
+
+		if (bridge_connector->bridge_hdmi->ops & DRM_BRIDGE_OP_HDMI_AUDIO)
+			bridge_connector->hdmi_funcs.audio =
+				drm_bridge_connector_hdmi_audio_infoframe;
+
+		if (bridge_connector->bridge_hdmi->ops & DRM_BRIDGE_OP_HDMI_HDR_DRM_INFOFRAME)
+			bridge_connector->hdmi_funcs.hdr_drm =
+				drm_bridge_connector_hdmi_hdr_drm_infoframe;
+
+		if (bridge_connector->bridge_hdmi->ops & DRM_BRIDGE_OP_HDMI_SPD_INFOFRAME)
+			bridge_connector->hdmi_funcs.spd =
+				drm_bridge_connector_hdmi_spd_infoframe;
+
 		ret = drmm_connector_hdmi_init(drm, connector,
 					       bridge_connector->bridge_hdmi->vendor,
 					       bridge_connector->bridge_hdmi->product,
 					       &drm_bridge_connector_funcs,
-					       &drm_bridge_connector_hdmi_funcs,
+					       &bridge_connector->hdmi_funcs,
 					       connector_type, ddc,
 					       supported_formats,
 					       max_bpc);

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
