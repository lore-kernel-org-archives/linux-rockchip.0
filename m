Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1565ECAC5B8
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Sep 2025 01:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0aCzmb6VWo04Z1K2Hz0b0Z4dp86Xcp03/JTwYOKomDg=; b=0vx7RBt7Sc9pl5
	zDLvYKKZnpBV6sQhkzbYqxDpFnxsmOvj2jMBhHWefB1K3tXHIW+i5sN4PWWwMAMekV/uugIw5vVSF
	DsRZ62oYy8QKOdj6emY9/SJUr0kCMoJaabwb/SaPtkOTcwUTUuYRtbfdio0BMjKI/e6IIZPXF+RkR
	f2CPyie/4sUqIoagkeFVcH2FtfVIUDEq2Fh4wQu9ypw9wF/Tj97REh4CLPZqPEp8LmiGQ2Ju18Car
	k/Lnsvue2Ii81QZA1FavtkB6R7POpZTzm4r3O3o7wFNMhyLzKimdqxTB02XjiFbXDKsx2KF+vnrFT
	GGZxJEHZzEh2C13oxDfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2JMg-00000005sPJ-00GX;
	Sat, 27 Sep 2025 01:04:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2JMd-00000005sN6-33lB
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Sep 2025 01:04:41 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58R0Jraf011067
	for <linux-rockchip@lists.infradead.org>; Sat, 27 Sep 2025 01:04:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Qc5ocY3tSciWpBAvhCZm/2
	AVYNgu26K/bDoBWBIx65s=; b=XXxXeZpQoQZGfQAi2J3GHrxvHFMaIqSGA8mLTB
	rnF2pRGvy4DfAWzwdfPwq1G1VkzwbRpa+DNA/e4Mod/7Hg5r4jyvIHCBDIYiVxjJ
	pnYpMjy6S9CKxRLa2Og1MkeO64/smHZWkYXXCODCFETfDud3kKM3TPx0WD0OBwx1
	NrFXorE+zOCSYPwPageBqGT23TBYlS4T4FXqsup/uf0BepZ1JVUjM0G3PFXYZyAf
	0yhiJZ3JSKwjWYtM02HVQDEVOTT9FMznbznv042MZBgS0UH23Ek/vnQs9A+7P7pr
	aaZWbwxX+5336Ur9HGVIokMuoMj+yfa3ZP+n8mBet6CxwVJA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59mr1y4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 27 Sep 2025 01:04:38 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-84853e8e61eso530782785a.3
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Sep 2025 18:04:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758935078; x=1759539878;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qc5ocY3tSciWpBAvhCZm/2AVYNgu26K/bDoBWBIx65s=;
        b=t4ChoVkx4vO4yXIR12q2pXnjs5BN5bD67/qNb203KYkIcQG+8G2HDb/PLSNd9FMfAa
         xptQvRPDd+SovjzcoeWTc3sgiOJlB7iUKtlfTzvHQWnRRaeWFbGKZhWZ6n9QyGAEX8OV
         nJw5p53HN3lTC1nv1FC2KqG22xO0zqBr+5ShXjdqoZn7AllCZ0SX4l0E7MgYQ38J4NwA
         1bBx2Hyxpmvv7cRzXp5/qz54OxNnskz+Nno3HXkY7eQpYEpVooudiYIx94ycUqFBQfDG
         uZhlIlyAid5WaIm/O7NKERqP4chcgLIZZAjcB3B5RY8sJQbRTeZIbNNnBbuysMCrtit9
         mQOw==
X-Forwarded-Encrypted: i=1; AJvYcCVNB39lfnzlfjLfsWeiUjy+/lYwSw4/2ZwZm56345vMa7d1J56aWq6fWfcKlGjrJasLyXOIfNewgmNESyoLiQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxEbc1yn7yTggalHXeBkG599Nv9No3/ul37N/WueSbIXw7ToiNx
	XwuuN32aTKprMnJjkFh2yt/FOMOl+79MNBMDizKivOfB/zeZBtH25eWELRFBoCB1NmfOmeoAUA7
	Tutq5KKBy1k0c//R6+NDabzIZbTicyx1VEDFuL+WoTnCyC4Ud6/+V2DMvxdJM2ynsG/0ekYk/WF
	s=
X-Gm-Gg: ASbGncthkWcf6tnRX2oeuOSRxvFy/wYPF3ZSmWf7a8p4vfY9jwbdTH5tj+kKuhGFk63
	XV33+eKXPKMwxifcCZUeautmd+pOEt7fq9gkxYxAeAKbnH2zvUyJoP18a3q9SH0aULAEhTwOU6x
	RBDGAeviNE3D+1CqhtIU0QaORQ8j93KPabGS4qhWeGBq8U+khYWTz3Ca5TNDVlP8kysNBoX8f6m
	ouoGfxq+UiApIG6u2OUCQ/wncK/ekKjoyNlS9xmPZVyKcWIy5Uf5gqlnqxnxxhxJKQ7sqUnFxC0
	ynUOPoDaAFl+pkLvJrOYx4ZpECWfBWnPYPnIqZ0omFes19acuGIcywA29BA4+ZdeKA0cEbgW6LM
	Ly6BMwacwUvZwwfMzVwoYEUB4SpsP0ZxWNStkHs/l284r6W60qrGS
X-Received: by 2002:a05:622a:4087:b0:4b0:677d:d8e1 with SMTP id d75a77b69052e-4da481d940dmr135262461cf.17.1758935077668;
        Fri, 26 Sep 2025 18:04:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHfLcwV5gyaQhWH6cMHnOYm2QjhypSrV9zAMf4Mjq0wafZNaibNe24/I99cJs5+682pxDxsRQ==
X-Received: by 2002:a05:622a:4087:b0:4b0:677d:d8e1 with SMTP id d75a77b69052e-4da481d940dmr135262141cf.17.1758935077228;
        Fri, 26 Sep 2025 18:04:37 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583139f99c1sm2156143e87.35.2025.09.26.18.04.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 18:04:35 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 0/9] drm/connector: hdmi: limit infoframes per driver
 capabilities, second approach
Date: Sat, 27 Sep 2025 04:04:29 +0300
Message-Id: <20250927-limit-infoframes-2-v1-0-697511bd050b@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAB0412gC/x3MQQqAIBBA0avErBsww2S6SrSwGmugLDQiiO6et
 HyL/x9IHIUTtMUDkS9JsoeMqixgXFyYGWXKBq20UaQtrrLJiRL87qPbOKHGZqCaDRFbcpDDI7K
 X+592/ft+cVBFNmQAAAA=
X-Change-ID: 20250927-limit-infoframes-2-6b93e599e79a
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Liu Ying <victor.liu@nxp.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2197;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Q78XSS/y8JtPNnJI6s3J7ArXOP9v75Iaz+LCtP6FojY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBo1zgfvqV9tNwSDjjNu1bYmTuEZAt+bf4bJeYD4
 z1GvExeq5aJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaNc4HwAKCRCLPIo+Aiko
 1YkbB/9JgqkHjaGTaOuUPOXbyqKe3xWoHX6CP+gZcmjWeLTPttNPll9tRPecwLTPJJzjqwb0Tpd
 eqnyT/OKyrEuPOjBZfBfYDV81Oe7BwMvlG9l+8UZrv7ek4sTJTW213DoX/sXyAsI9Pv4Xl9cAD/
 YZdFvqbUbR/PCDvU8iqBDjexW24uxIMybn+ywBSLeIRCCWkLYAkFXuvFTxTv+zAD/rqZXMfU/1J
 uxHBoTMU2CSIFXyngR6Ai9qcFLfRK8BZqqdUtMEVYvWvtKnlcfrNLyu0/IuFaKyobHtojURMCfr
 0qoCsi5cPINJIPi0VMgx0EIAwXBhbcnQKrtLOHJq5CDQ8gDA
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: M4zVS3-a_GX_Ly05Lu22j_lvff1oFCC2
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68d73826 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=BiG78YgtQv3mHEaFN1cA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: M4zVS3-a_GX_Ly05Lu22j_lvff1oFCC2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfXwMVLO3VXL1qT
 C1m3jHdGxEXfvyCSBntW3qZ9f07HBDqF8UdyIM7mpSvd4ovjjFKiW4pR8NPXeVmVyksKR/OUQB0
 koebPM7hnoQy66ROKKhfl8Yll+Yai+uJaTBAo4b1nljwJVqSXQnp8SdC4eg/fE5Ff/xP6bjVmQ7
 QDOc+WQbThmW1zF2ZA1TwZXaJibk7Q9nybMiynSfTDHkXE9GQVb8ap+mmIwk4ldLrcZBdt6TIBD
 ZjBHq0070KKUMb/nlj4dcWhjjndS0lfOgQSydw0eDyGEu2wLxkNTjxlRuKd5Kf4kSiLKdn75Kkn
 lDRMof1oI10O7nB+MG1sM1vapKJnsx8nKdeHUkChwSARBRWcI6iKHfZRwRWa7c7mr6MFcnaR8FZ
 7JP17kyOC4cvBvFxPdp5XXaZNB4Wcw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_08,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_180439_880679_1F807B89 
X-CRM114-Status: GOOD (  11.14  )
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
HDMI InfoFrames. Currently it's mostly ignored by the framework: it
calls write_infoframe() / clear_infoframe() callbacks for all frames and
expects them to return success even if the InfoFrame is not supported.

Sort that out, making sure that all interfaces are consistent:
- In atomic_check() callback verify and disable unsupported InfoFrames.
- In write_infoframe() / clear_infoframe() callbacks return -EOPNOTSUPP
  for unsupported InfoFrames.
- In write_device_infoframe() / clear_infoframe() functions warn if the
  callback returns -EOPNOTSUPP for the frame which is set (or was set
  beforehand).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Dmitry Baryshkov (9):
      drm/display: hdmi-state-helpers: warn on unsupported InfoFrame types
      drm/bridge: adv7511: handle unsupported InfoFrames
      drm/bridge: ite-it6263: handle unsupported InfoFrames
      drm/bridge: lontium-lt9611: handle unsupported InfoFrames
      drm/bridge: synopsys/dw-hdmi-qp: handle unsupported InfoFrames
      drm/msm: hdmi: handle unsupported InfoFrames
      drm/rockchip: rk3066_hdmi: handle unsupported InfoFrames
      drm/rockchip: inno-hdmi: handle unsupported InfoFrames
      drm/sun4i: hdmi: handle unsupported InfoFrames

 drivers/gpu/drm/bridge/adv7511/adv7511_drv.c    | 20 ++++++++--
 drivers/gpu/drm/bridge/ite-it6263.c             | 27 +++++++++++++-
 drivers/gpu/drm/bridge/lontium-lt9611.c         | 22 ++++++++---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c    | 20 ++++++++--
 drivers/gpu/drm/display/drm_hdmi_state_helper.c |  4 ++
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c          | 19 ++++++++--
 drivers/gpu/drm/rockchip/inno_hdmi.c            | 46 +++++++++++++++++------
 drivers/gpu/drm/rockchip/rk3066_hdmi.c          | 38 +++++++++++++++----
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c          | 49 ++++++++++++++++++++++---
 9 files changed, 202 insertions(+), 43 deletions(-)
---
base-commit: bf2602a3cb2381fb1a04bf1c39a290518d2538d1
change-id: 20250927-limit-infoframes-2-6b93e599e79a

Best regards,
-- 
With best wishes
Dmitry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
