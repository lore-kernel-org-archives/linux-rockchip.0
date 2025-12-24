Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5C4EE6FE51
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 01:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfwGhtU5sNvHvQMPFkqWsUH9l+iciJVxIec+d/rLIL8=; b=BBHpqS0eIePMLz
	DEhYvlcstWPQR3XUZluOypHplaYIdouhq88ZLwPpm/un9/EK7SKwTqt41kSlGQaiJLiMCGkiuQTLg
	BeT7qlBLLpK6eUqKWtGY+lTkM1+yMCIOZ4nXbTep9esaxJxN2R8gkXWuyJPCFPnkLNzZ7J1ZB2SMo
	nyLLTiv9geqVp1zd+dwBgu8Cyo3/rwA7NtMDZ6jTfBOt4kqH5zvWQG2pV+eFoo+dmKkF9hmDAcDA+
	ssfH/+vG4SXl/1fLfeB5tLEMMBHzb+F7zVNoDVgeZAFPyDncKpeShIIJswXFALSCOWQfkVlUoudM4
	OpHTx4Vept6mCUTZE+dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYDHz-0000000GEy1-27PQ;
	Wed, 24 Dec 2025 01:03:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYDHx-0000000GEu5-0Juo
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 01:03:42 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNMhuoN1801684
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 01:03:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	j2BT4ALqtU5AjsTQozcF6Tmng8niaFOYcGnl/GxzzY8=; b=Bl0jOJV24JiFPMET
	xHzSY4DSukQHLXYvaS+j8AC2V1B7oTwCX/V4HE3eWFTq5cS6OcPRyrAqVDY+qCpe
	qrFYm27AFt8KkxgawPYL/Fe0FaD7KkT9u3yDdi2AmiHPp++bl3E8ECzsLRIu88Jo
	PvaOMF1dSP4/LJTXL81dgO0Pa9pdcH+1O6q1pRDc4tlgrNHbr87ywG+rGaofvEBZ
	XzUlymhYYoz5ryyo4G9IluagRkMxMBkjTodNRJQv/iSAW66J69otOk5hjpFyATm+
	s9XUpm9Lf9XcyKMP9SFUa7aIWGdeBNgNefrwznwxC+Mhh+cGxaMqYAk14PEYEr89
	IcsumQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7xjs9ahj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 01:03:40 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f4d60d1fbdso70878281cf.3
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Dec 2025 17:03:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766538219; x=1767143019; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j2BT4ALqtU5AjsTQozcF6Tmng8niaFOYcGnl/GxzzY8=;
        b=GMDxUWeuYtoU6w4GxjAH5PfKi60AtU/FRMgW0C7aMUOo97ZFhWrpsR1YXm26xVLvqX
         x0IPVxExRvBkZSlE+qncDvimNkcYS+Kw/Kjwe2jnaHroUTgcm/+juuUQ3h01vNojFp0H
         BX5CdCFkKv/HnV7F/K5Din87uKMFJLckY6os/7d2rOCnqLSPQ5h+LB0440UEyYu3FDWw
         4cUJuStJoj5uR0dw8EEbrd3TR/2Nz5wKm/zL/g2wyYi0xhqN/FDPMhQJ9PrbvwUmvFvQ
         WUF/GOIjaqRnyPkbHVH5HN1fupCtqCz69DHKU7hfdqG4EQVthMTbJCzKaF5FpKrj4mrK
         pxHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766538219; x=1767143019;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j2BT4ALqtU5AjsTQozcF6Tmng8niaFOYcGnl/GxzzY8=;
        b=hbwRb1KXVjtIZgC7waKpXa2+AkeDrdq5c6R5Pb5ITg20QuIdqYr1H+PpCcETc9fc7M
         PToWYpXwUr/WIEQxXTyBN4xKiqqp3EbWSaSi6KVTjxZIA7wQUd+mpZGz5VELTVyJeOIm
         yzrxmVxuS8H7Anb+InzHKMHTCCL3uEHj8svE6ptGI03BgBQzyOm4tc92vE8e6kmg2UAI
         e78x3fZ9/tMo4gAfn4iWTc+AdtaKEYTtlj5j82jEbRzymVEoYTABj47ZmrBuP0UR7Obw
         a8gMgudbj/W5gx00V51eJYWKhrUk12GKH763K51lPPjGXFajg0cF11ojAArzwQjiQLa1
         LSpA==
X-Forwarded-Encrypted: i=1; AJvYcCVSZvmAc0HA9cFY2nBtk704G4PI2+9VR9sQ2Cl/wyzQ1Bzx6VcmQWthZibNY8dBiNGyOlTO7VPkHvFoxOtCAg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxFlWOiNKnYmNWgMckvMp4vOBdJQ3aq8AyEzrsjD3fvIzEoC9yh
	2d5+mra0WgvjWCZVzVy3j7RToUPqZr7hPwPwNP5Bs/F7AAAWgminW+6DCMgnXrAV3nO8AGxyEwM
	jyZBBJ6idkzcH1FofCcsEtTU2J4Vy4oaJOlBtmwiN/2eWvM1D/CE0yXHZr6gbkPJnZOsCVYY2PK
	s=
X-Gm-Gg: AY/fxX44UyP4eF1ZtIdd+Q+Mgzt3hzk6N3J+uZQjE8SMR2GreDqhpaF6LqOs/g3+7nD
	R9HMo4Zf5p7W8tvs9p91y51gusa0r6TcI3yoSK6OQIHQHW1sHhHtIbEHgrEFVzzkEhwMhg9DOy9
	L7lSd42eIefYlEH4LN+FQj1tWezwld21slt40SLlSK1y3gr14Q1b9e3WGXlZnIEawYSHcGy/Bor
	AwCeswbcX+MeCf6comq6/8HyPNkx6Jxukxg7bBFlfh+/TarYmAOSwLNmBGSGDo+MoVFKP82mqR/
	suYSTSmfOK2QvgW33tYpPlOo9ehzsJCy8E8RepmCVwhD8XR91lv/SIVxDF9onXfungQIflTr6Q7
	SSAsu0xJL5Sspr1yfIz1A7yqZHp03aJQODxn03GdWwYw+h26x5XPwSPfh3uw8Gqb1VFprr3O+Yu
	3QfJwIvEIXKOKnlGDGCJfYJBs=
X-Received: by 2002:a05:622a:5983:b0:4ed:aa7b:e1a6 with SMTP id d75a77b69052e-4f4abdca79fmr229405931cf.81.1766538219484;
        Tue, 23 Dec 2025 17:03:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEwvXGbOT6oW55CWvGFCaGI9Z8vq9+dFl2bwrw/ngJaHdkAtC4PTePtFImzvZoy9oibBhKF7A==
X-Received: by 2002:a05:622a:5983:b0:4ed:aa7b:e1a6 with SMTP id d75a77b69052e-4f4abdca79fmr229405351cf.81.1766538218943;
        Tue, 23 Dec 2025 17:03:38 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18628284sm4545268e87.93.2025.12.23.17.03.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 17:03:36 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 03:02:52 +0200
Subject: [PATCH v3 03/10] drm/sun4i: hdmi_enc: implement clear_infoframe
 stub
MIME-Version: 1.0
Message-Id: <20251224-limit-infoframes-2-v3-3-7fd3cacfefed@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1354;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=i9/GyfQ7oCfW1uA2EJ42B3bpRaDaBcnVtDJI1DBQZYU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpSzvY+d+DN6B8oFFIbxWN6Mv+qvpFGNgFj0Zg9
 429cFCSW4uJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaUs72AAKCRCLPIo+Aiko
 1U0DB/9O5L3yXk2jLLqOmN8V6q8wWbokThIMSYo9wxIHSgy0M5PT1YvNv+IkCrajuHc7rLm0/Wy
 cAHvtRKaeF+QVunb5Ui4hiZx4SEbTrbizizbDcBXrW4jWiZ1w4OIEFSo9Ca2FBA/eLbTNfYILzi
 HQCpFhDfzos5m2svcelBiHZqryy14l9P2FF1hFVv73xKqoG79GEfcN56cxOyCxeLVVkSb5izUXV
 /Qi7gDaaGNrZhhP1D1d2VscJWoEi/L1VJ1MTZPr1mxGEaDugo8tx8aKiQtr2Q++hnZkOcfFfbZ7
 adTRg5h65Vh9hNP2Kvva0EBQb2XULPOZjxhcE0hxDNYLkX4A
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAwNyBTYWx0ZWRfX70wvA4K/XyS+
 JWTyWvsrHWSVTGOecxOYCrSuyvCbVLI/S2acoe1oDJUp65SpobcwKx83IQq9wcRhidxxjK5efJD
 2Zo4xOkoR2Sf91SjCNLuyKuFJX4uEqTgRNnzuwf6dmJZguhuCakgp4ShZiBn93nDEj8g6RWU1Ql
 n204ajQoTy+wmWVTF2ekMvKOMA5gBQQEG8SUuRb3u3ndW+nufFQ+oWfnm0+U/zYklxLRSP2Unyh
 xgoPmOz+5C2s+FEtR8bd+2UbsIy7OkcXHgiqpzUayGh3DUbb65jX3qfisptIqKW71Wc33gSWYkz
 X4R16f2y9VCFeQBjqsX9dqpW4VVuZQntlLl8A+QB7xXDXxnfPAZpS7IQy00DGg82QmluNhBcyDo
 YL8UForzc8Ey2ayiXL6pqZjNDnrH1gVen4zmcgRTYsdL4XdVH46I1rKxMZXfnpJNOSrW7k/k72n
 ZZmKGKMU74VIdjpTrqA==
X-Proofpoint-ORIG-GUID: nsiosPSQJCDhLRxjEsjOpTphFl84nNLf
X-Authority-Analysis: v=2.4 cv=YcqwJgRf c=1 sm=1 tr=0 ts=694b3bec cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=J8re_t9gDAGCMx8MSDUA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: nsiosPSQJCDhLRxjEsjOpTphFl84nNLf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 clxscore=1011 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_170341_248106_1DFC5A14 
X-CRM114-Status: GOOD (  13.57  )
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

In preparation to making clear_infoframes callbacks required, add a stub
to the sun4i driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
index ab0938ba61f7..6263ee15880a 100644
--- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
+++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
@@ -40,6 +40,14 @@
 #define drm_connector_to_sun4i_hdmi(c)		\
 	container_of_const(c, struct sun4i_hdmi, connector)
 
+static int sun4i_hdmi_clear_infoframe(struct drm_connector *connector,
+				      enum hdmi_infoframe_type type)
+{
+	drm_warn_once(connector->dev, "clearing of AVI infoframe is not implemented\n");
+
+	return 0;
+}
+
 static int sun4i_hdmi_write_infoframe(struct drm_connector *connector,
 				      enum hdmi_infoframe_type type,
 				      const u8 *buffer, size_t len)
@@ -236,6 +244,7 @@ static struct i2c_adapter *sun4i_hdmi_get_ddc(struct device *dev)
 
 static const struct drm_connector_hdmi_funcs sun4i_hdmi_hdmi_connector_funcs = {
 	.tmds_char_rate_valid	= sun4i_hdmi_connector_clock_valid,
+	.clear_infoframe	= sun4i_hdmi_clear_infoframe,
 	.write_infoframe	= sun4i_hdmi_write_infoframe,
 };
 

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
