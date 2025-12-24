Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7545E74905
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 01:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Znch9lqAbt0AGUbAwJYAbWL8pHwGrgTuEnbnkiRM0ew=; b=sX5CnqgDeAuwXF
	nky3ynAuVL79+EUiaPJSgJhY7wUaaHwgfHd6L6y6Q9ADeHX8iSly/aKDWOsr0G5Z9HqAxrUnakBjB
	aN5JRk1Y7bBy15F2SHXInV6XaeUQVyMyMbXIYzZTK2PI7ArmmHgMGRpQO/GLSD7DI94NlPH01NOpO
	fQ9UUEjgjOnqckThWMiLcvch4F3iomz+GQDRdymv9Mjo9xnR1AHVvWuOLkr39v9xwAZge51Ge7LP9
	ToPmEizt+CtlOllYEE27epUOA0t/ypREwkzQOMjWbZSYPevXBdFeqOotT/VyHPK/xO0nMLT3Hi+QW
	/yFDj2AHV7OUMPyNkenQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYDIb-0000000GFiY-2U0P;
	Wed, 24 Dec 2025 01:04:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYDIV-0000000GFaD-07Ev
	for linux-rockchip@bombadil.infradead.org;
	Wed, 24 Dec 2025 01:04:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=CHgg9IL7FE026ch0/W9DThBQX+0QxyHh6wbnCQb/hR4=; b=lAZlElQVFE0F/Lipu2rR+dkgB+
	5j/PwZchK2EBo/ssQDfdawxVCVGMv+n1QcLc+QZNeRnWJwa+ooA3nY6NPYZyTYCdADcTbLfq7rvGf
	rkJ5m9xRnV4neTehU/QbMUmS84Eb2CEqI2zCq9ca6PUUuhQBEni3p6hA5KG9DaTPuELyq7UVsI2hC
	Ao+oTMAGQNuxu/UNC4otnxgN0kzkCAqGrV04s9dKGsvEh/nNGjiH4Fl6trhtJWL1Z4QwMtTh8ztth
	9TCcbslX69MWXuY0hBrnCDcp6PjZ9MRKltgsf94f33IssTDXrqSL7WiDognGlXRkf/G7kTr5daOWT
	pH4DAhBQ==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYCQy-000000002G7-0Hfy
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 00:08:59 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNHrgXT678327
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 01:04:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CHgg9IL7FE026ch0/W9DThBQX+0QxyHh6wbnCQb/hR4=; b=jlqhWfoSus3AvDYQ
	rNg9bNMgYw3zocQdvrdxXy5zd9+nVPnYik3umQeq7Mmy5TnJxJsd+oTkcbSg02YL
	tJRoDy8grzJPGgruw6Maxu+YfHm6coLBuXuwydQGMU91gsjihn+disnYvNpaiYxJ
	ykGhPxjB8pKv76xpOyCwQX9Jwr5wSrHlYaXtQRIGxIyXo3f7NLyRqyhx4oI+pjR+
	k7YNcJdVZdT/hUIB2ZMPZ0Tj1SbWVvQ677CmJNXRRGCrosb8XlOFzSxJs4jjCygl
	uLcRnnKQV0wPWFIkJtQoSnI3IhTy89qHQ5TuDEMuzVZsBV+ghOHxSGDhxLmU5Uk2
	wzPqvQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7yvq11ae-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 01:04:05 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88a2ea47fa5so149348386d6.0
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Dec 2025 17:04:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766538244; x=1767143044; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CHgg9IL7FE026ch0/W9DThBQX+0QxyHh6wbnCQb/hR4=;
        b=Jtypv+ejvXLxnVXS4NWqMELgQXZFdyDOB9IXjgmU5js99bbDNIHsfymn3jXnhWP5ST
         KHjuK9WQWHksebYTiqRLcUJTWXQdK9qN8PSNmBCIpPgTWc5ZeP/J78CBO62vdJgosEKz
         O94rruQC00f58d1nPywzzct372UqGHDJr/mr0qD68OoM/8ZEC2xeHXGXdWjJtFGXzruR
         EBlILXvNg0EjlihdWSv5vw/cpy84oxMNRMgVOCCDIVVRoxdnbMjKulHhxkykIhQYbtEu
         58hRYBS7eJxZZQ/AsqgiiJk9TMRKsJsInzYpPyvY+vra64Kwr5cYRgkla+C/hAg8lpy1
         wBhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766538244; x=1767143044;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CHgg9IL7FE026ch0/W9DThBQX+0QxyHh6wbnCQb/hR4=;
        b=KdrAA8zJtfGBLOCndCTGgvw12qSLzQctSA9Fmi7+BCWQsE58o7tW/94UFk8UDwIkO4
         OUJjd4xH3wNKT0EgCrEYGamhuE9j2IzPo4CudNUKphhIZ+I/qP1wwiOZAS7mReD5LdSQ
         9ABhXM8ybFg5CepAUh42UHPXLCHZ943YE7SzcZJWLeiXASCDG7A3DzV8ck2GMG9B61Fw
         Ssdgsd6eZohb8ID+JK3PGIqi/kS+RWb/mgDUwZsz3naolXYHIH7ZeUgN+maAv8JpC2ma
         6uYc/KFeuo+NCE/TFsPJVDWJ4b0IbTn7TtFikIhJQY3QxMacgZ9zxXusXZ0Ml/lLToAm
         8oww==
X-Forwarded-Encrypted: i=1; AJvYcCU8SxtHwA8v81j8eeRkwKRdaXMwnRuav0S0aFq3SeKbW/xfTrqgroTKE/50rt3mIHLK0B8HKoIKF27oMadcsA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyDeHanZKjITDqD/UFozhmaP2N83kBOCwwQZ+xS1cGqdiUGop6y
	enkLx68bZWwLB9/JEKFHnnpf+Y73lfMc/fGLO+dNHL6I1kOTTKdrimS+LlAk4cAAAGC0htLrQCq
	pT7DvyolvqKJMltCYfBsOpdUqsKOuGn6jmXqSplE1X/I0JBMXvaw0Cm44PcpuNwOeO9VVZPvX0H
	E=
X-Gm-Gg: AY/fxX7i0WD1GftEN5H6PmJLJ6I4Ig55wh2DXvc7ui1TIkCLIWD6gvpu+FAGrdpCIwH
	H9nox5p3z5lkHlufwGIsaKy0D222mIkYg85mql7s3mNr1me3YtquCXb426YHdTPKKwCJyJCVTIW
	VHl0NHGOafi6KnyeJIDx5PBKCtDIx+MMlIypNftp+Z2Dgf28dYgVd5e7yMZ1VrZTovjF9BcDkds
	tmiurb9PUFychrvpa56CaDHL7syRPcE0uQexaXu12ejWUs4auOKKdRN/HyQZeizKvSdDM6E8XJ5
	r1inBQXE2Hjo4dA5DSKXPSCHHsIp2OOHQwvwT5p+CWFt0NDw6Y71zM+fs8glTAAr1PE/5BICx/r
	EraBjPNkETwSJhBq1UidG8mpo1MZ0hl6Fy8sEG+H7D91uCLcqxVVXjHEOKrNIXzDbUuwLKskCBM
	gY+ve9+awxBP8W9gL4+lWgQxk=
X-Received: by 2002:ad4:4e8f:0:b0:888:7d61:b218 with SMTP id 6a1803df08f44-88d81d47b5fmr175846536d6.11.1766538244299;
        Tue, 23 Dec 2025 17:04:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFu7+HH145K//WnhennzRUAZ/qC4YMZkCHH5OOgkflOfdjzzhnjIk8vQXkFQam/FvXO84smjQ==
X-Received: by 2002:ad4:4e8f:0:b0:888:7d61:b218 with SMTP id 6a1803df08f44-88d81d47b5fmr175846286d6.11.1766538243819;
        Tue, 23 Dec 2025 17:04:03 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18628284sm4545268e87.93.2025.12.23.17.04.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 17:04:03 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 03:02:59 +0200
Subject: [PATCH v3 10/10] drm/debug: don't register files for unsupported
 HDMI InfoFrames
MIME-Version: 1.0
Message-Id: <20251224-limit-infoframes-2-v3-10-7fd3cacfefed@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1244;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=e83riHemz7jmVSC1s86WzW2uTf0LnBtD9CtSbMUNt3o=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpSzvaPmw40jATyUWTrYBTNEusZxIc+obHstv5S
 b4iElplUN6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaUs72gAKCRCLPIo+Aiko
 1di3B/95raEOH5VDkaGoqgK45/yZh46TpjSkI0p4xAQ5QWmsMaaCn7Newqpeo25B8E3VpDS52aa
 up3rolkowr24CN+AOTFNP4qaLU+wQ5ufsLePmUId4/Sf7f/3uLCmTjU2bAAc7WkBJDBOUgESVoE
 VPOds3GCRBLX3X0qEONZ6Q6pJmz9433H5cMK5o5GZz3dTS0dZZqphPcLWyxJSLEmmZrEn2G8Wyx
 MZQXEWNaui7oT4aHMyYoZX0z2RTqrLwJAAmkkLQISa4jHnSF5bBJb4YQauizaBu+BJqV1TOmbVf
 WZtZHkfsakdCoN6Xjk8QGpdcOMYzMgS1IQv2DEwSOdtfE7Y8
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: qCtyKGa2CQLzdHx6vnX_c33jHBnIwVmQ
X-Authority-Analysis: v=2.4 cv=abZsXBot c=1 sm=1 tr=0 ts=694b3c05 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=tIAOKlZC_mo2NaXw_9IA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: qCtyKGa2CQLzdHx6vnX_c33jHBnIwVmQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAwNyBTYWx0ZWRfX2ptwp9qmlQ8X
 9rVmjMUKE+JEKuarqXpX52T0fVEb3DibzyLDPqCPLbVatJiI8/ifNSMP4r47VbMSy480ktt0qw3
 0FgijS6m0dmE7ZQY/PSLZX9Qfo2T8Tg/6ywvSshWpbZiGjDta9XlE3dFeId0ILQlMvkWlxG4pPm
 8bomEFIzQRj1/HSSba9jbg+LlAE6Ok3GLKUGm5ni+0qoDgT8MA8OXkcCPAb15XPZhxPJVvC8dDh
 fgmZJLrKKebiVHYiG+enL4KGEuWElvY5CXtqhZslUn7EsHEqf9L5XIs9rJTHFkRkIMsot+nGbPc
 gsboioFyxYMlkrmghrILC7SJ8fYgRpYQmr//8Yb+MteuQF8UAfcZarpXwBr8IFxHrmmjveMSK8N
 gfrjr146VltQzwsQLhq1mT97hk2WoW9tcdq6iMF3SI7LIzOkQurAigy4RIvBy/mPZHmdnEE2olI
 xmQzo6vUkkKvJIcSyNA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 spamscore=0
 clxscore=1015 malwarescore=0 phishscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_000856_907920_6D860E7F 
X-CRM114-Status: GOOD (  14.28  )
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

Having debugfs files for the InfoFrames that are not supported by the
driver is confusing, stop registering those in the debugfs.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/drm_debugfs.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/drm_debugfs.c b/drivers/gpu/drm/drm_debugfs.c
index 365cf337529f..ae1c6126c2c5 100644
--- a/drivers/gpu/drm/drm_debugfs.c
+++ b/drivers/gpu/drm/drm_debugfs.c
@@ -672,6 +672,10 @@ static int create_hdmi_audio_infoframe_file(struct drm_connector *connector,
 {
 	struct dentry *file;
 
+	if (!connector->hdmi.funcs ||
+	    !connector->hdmi.funcs->audio.write_infoframe)
+		return 0;
+
 	file = debugfs_create_file("audio", 0400, parent, connector, &audio_infoframe_fops);
 	if (IS_ERR(file))
 		return PTR_ERR(file);
@@ -726,6 +730,9 @@ static int create_hdmi_## _f ## _infoframe_file(struct drm_connector *connector,
 { \
 	struct dentry *file; \
 	\
+	if (!connector->hdmi.funcs || \
+	    !connector->hdmi.funcs->_f.write_infoframe) \
+		return 0; \
 	file = debugfs_create_file(#_f, 0400, parent, connector, &_f ## _infoframe_fops); \
 	if (IS_ERR(file)) \
 		return PTR_ERR(file); \

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
