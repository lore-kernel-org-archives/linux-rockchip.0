Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31DCEC55164
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 16:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J2Jpf4fjQd+FMOyJ8UYZQXVifzKyAWyybzPyZpa2BwE=; b=m/hGidPx1goZXA
	mY9BId/MZzItg1JSpuc5TMidltkCnrXdJO12SgizM71+3rWFI1mcMSOV5X8SmOq/cjnPeSx7vaaeX
	+gAKPHhrm2Gu+zZAi/6Btnq5a1bLwma1RC2Cd0BAYRxlVwvaB5plhoIHNoHEeBucDUwiKNq7Xy/a8
	oSplKoUHZHoESoR4Rp+8RyA8KL5vCXS5d20Wp0AqkSA17oic9hxxe2ordlxhHd/VIUTKi+UI+qdbi
	lmsuNUr39SwHTObsXqFxOgKqtr5n6R75UZJdxDoLcY8b36YApoMyS+OaqZZc1fZB8btXbIxZ2eXgY
	donk0DtEqP9twRYznijQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpTG6-0000000AwIw-2Flu;
	Thu, 30 Jul 2026 16:05:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpTFp-0000000Aw92-39bs
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 16:05:07 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66UFQlVc2401442
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 16:05:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hQB705iUg9cjPgL+aBVmOnrDJY/xYVqVa7zVBN3y69c=; b=P59Y+N5L7cVuDVWt
	zuGX2bG32jSGlZ0SovPg35dI0f5HBwFVcTOylO2/2+c0jWwVxPe6hLPbUzca5YpW
	m0bVcOX1RqOi5WQscJW8y3z5r3DIAV9/b00ZallZvsOmpPLHJvgPK4Mk99MH50fF
	bR3/G57+apjiZKrKSII6IgvcW6NcKQHgCndt2bhKx37reFi0e1N3QhLAOyEb0SwY
	uqJEq7TnZQKJwC09dSHbYLXPwzwIFwpAfc7mwHc9aYFGLFbLcvf23nVn1AQ/aoZr
	zhZoyN0JphAcyA2Az3XtQvSE7dUC9+oRmboSwakPqFwq2+nvg4FwYi+ueo8TXJcy
	fs/cSQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fr8168pk7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 16:05:05 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c0e702df8so24611881cf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 09:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785427504; x=1786032304; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hQB705iUg9cjPgL+aBVmOnrDJY/xYVqVa7zVBN3y69c=;
        b=IAnc+idwR+ZkhGHHdXGd3FjjsmSe3OcD0QP43tL2hLjQnaymiotCf9SULSvOoO59kO
         thw8i32PS8UiRNhN0Y66mrq4mC5eWqJS4H8RHLiulzHEwMvSYzFYegt03wA5rWIPZ1z5
         gITtH0z9hCL7427dpQ3uMTzavAlIDCAI/GxjDPR1Do5UtEsqqRn20XiGbKjc97zj4TiC
         wZhT75XxDnwLP/op+povEmK7ARRn5MY5QiW75FWHYDC0CrGxd0F4mtzfSpPs91jZsR9o
         dkyTFCGbjjp+XCTjuWfLt/wH8TJ7MhyjwFNHZ4qoROGRJqYmHmFs6r4TZ4psb+dAmaZ2
         QXvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785427504; x=1786032304;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hQB705iUg9cjPgL+aBVmOnrDJY/xYVqVa7zVBN3y69c=;
        b=mgycKzldxPmEMLkAFBaIdUx1M9dqdrlBKq1BVb6d5JNHs/o6BvCGaU5If1bkRFFQ7o
         qjF+060FtXtudc7EbWcqTadyJZMF7cJkSofNiPGfHLUaRaXRec3cVzj1Ni8hI6qf1th6
         N8GroglSKtGAxSmoZay2CZ6lFhZiJKByhSNvKWy9Q0tF3T9IYU5UdEYT29MjDKvT1Rfq
         SDOvihs6j3wgBPybrPKClRi/nXRa5krP4jqlM2IHwEZekZbes3SfKEOvP5lStAfLOGO6
         VNAcRpURLkD6tFzwWfbnvyx2foVdWSZ2Pqgi8BG/ORuUHVvIQjFLYkfVpRqpshPqBCaK
         Sk4w==
X-Forwarded-Encrypted: i=1; AHgh+RrSPEheiPcvwEQr6uHKlULPD+GQSBIZthOKwaKmV/hsvKMxooF7ji/ugKXeVKTCdK/Z4BGQ8Wx6vC57O4/wDw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1Nh7HbHaa/zKypbgFQHU/t850rYX/XBmRy8TXFvh2NNIsANGj
	elZa8uKEbW9ODkkC2dtkqi1hDHd/FetFzVCD4ZSGrvRyWfMxOFFRBzLjJ4FqwTZa2moTzEAlfA3
	GcYJoVayBVnYExmerrGWNPbv/FNFNGl4cxRREvTHv4dZbpVe9Pib0vcLC/FgmHQmDWz1Kp7CPNZ
	gkcj3DOjo=
X-Gm-Gg: AR+sD10jccBhBUr+R0hKJcVRzwxsvoSaos05b9ze/evWPNwDXD+/AhzeSZ2lrwT1Fpr
	rswAxJJU/AJNG1IEIPurc4VT0sDkTa00gbY4wd3WLUkwvuOWDfg5mK8UmqMwJ9iU4NPncoLBndc
	3iISqn6xsYDl5vZhD2ZPSlvFupCK9dxgBRuorEpEX8oxdUr2/Bz4+4zr4fzwx1aokK3mfGA+9Ze
	v4yf9rDBMbDFKZP4kTxu2nHVZXYIOlqlrZpa5egPDRMrI3xs3TriYf1vkh7FgXItbhqUFS6zW60
	BTNMHgMc/wTq5sSFE4eA64zkF33FWC/h+Tx/jZFQJlUIUHFnX/rz5YL5CVvhx8DRsM+aouNw8Pk
	F5ceEJG/zKqt07V2au85bFvkDD8wqvvq8d6j4g8vrS2BXouS9DZ76s6hU7enosC4rtoyN2tw/pW
	s3VsHImRBVCMXGbQ==
X-Received: by 2002:a05:622a:2512:b0:51a:bec0:1040 with SMTP id d75a77b69052e-52b383784b6mr31061141cf.12.1785427504086;
        Thu, 30 Jul 2026 09:05:04 -0700 (PDT)
X-Received: by 2002:a05:622a:2512:b0:51a:bec0:1040 with SMTP id d75a77b69052e-52b383784b6mr31060261cf.12.1785427503397;
        Thu, 30 Jul 2026 09:05:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2db8a3bbbsm455174e87.0.2026.07.30.09.05.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 09:05:01 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 30 Jul 2026 19:04:56 +0300
Subject: [PATCH v2 3/3] drm/msm: detach the ARM DMA mapping before
 attaching our own domain
MIME-Version: 1.0
Message-Id: <20260730-fix-qcom-smmu-v2-3-18e0daf2d836@oss.qualcomm.com>
References: <20260730-fix-qcom-smmu-v2-0-18e0daf2d836@oss.qualcomm.com>
In-Reply-To: <20260730-fix-qcom-smmu-v2-0-18e0daf2d836@oss.qualcomm.com>
To: Robin Murphy <robin.murphy@arm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Joerg Roedel <jroedel@suse.de>,
        Sricharan Ramabadhran <quic_srichara@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Heiko Stuebner <heiko@sntech.de>
Cc: iommu@lists.linux.dev, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2786;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=YMHA00MGVdMnlcJxJUco7AZri2HHepPYlEdrPa5Y7M0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqa3YnaPFREPHCdxSgZcp5fpVW9xlJ/nlVPFcVS
 v0UUSRLrMKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCamt2JwAKCRCLPIo+Aiko
 1VQHB/4jV3KN0jQQp5q7JC3OLW/+7/9QYHQszWWEPbzovZ7YSoVIaUjgRZYI/1ctEi+wcrpzaAv
 Va5WmD7hjl/D2fCOXFhNsDNVitwbyzMoFcySrFAP6HHiFtTWfb0LolQS2OWn1XDa6L78DNFut9s
 fJJlX6ARuf/n9NgAbt3aVC3gHG+EXDp7uX0Dgo5NNP72nh/ericsR62eeX3/BOo2HjazwEyDnqh
 76tcLP0DlMrGzVG4djvTwWelXB6ADuZvwe4f2F8EtHfEzsw0GpbMok6Z+pcijQJU69cv/8GOjvc
 qO76MtdwYmfE05Nk6nmAJJcIncdyXlN+lD/MqChGEPSB6DSi
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMwMDEyMSBTYWx0ZWRfX327c4buFwUQi
 3UD6GrPwHQn2sKbBd2rrl2RfLg4ueA4mmV9wv7q0sIdocqXPXK28Dasjm8ou80itGEFY29gYTME
 E71yJ2InuHLjxRR1RW/UQGAdeL8gUuQydF2bXwU5y3+niZSLqMsnEa6qmHdSRG03UJJ13gCzNK/
 TyLg9rDm4C6LD07WF73Qxo5j/l7AQWzjqRUebELaM0tE2V+oDP3XZ+b9As0jZ0Jwk5s8ilhi3N9
 2CQc7MFw1SmG7wx+1kiknYkQs80oj7Hookx3NTsdwHZifaPot1TD/Nu1VYi2sNbskxP9QGJYK4M
 XqJvbc1Ns6mayIn8qaW53ihLAAqpEUm/1cG5Z5A20920mqx59hvtpCkw35fUo9guDxPS6/GjjhW
 XeVN+yhr/t2tKF0wNNbTwXqLfXTXg6IYFRlrNcXN03/v5jJzWPUyJRiEdixdXsJ+03hRZPkrF6l
 cHxs2ud7Yz+jTzN2sUw==
X-Authority-Analysis: v=2.4 cv=LIlWhpW9 c=1 sm=1 tr=0 ts=6a6b7631 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=epCurf6C53ZFYVxhAokA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: j2ETa3ThCrZaBlAoZDbFZwjmPmWWQweh
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMwMDEyMSBTYWx0ZWRfX/NWIvXnCShTa
 rm4MurnN+LNar1a4SEo9anK2I6jOV1HCnrvY4SgOUKusQIRb8vLhKEj2jUzFTFdGc0X2n1KejVJ
 mBTbsWzNuF31y57nUUDVD4PpE84lgJk=
X-Proofpoint-GUID: j2ETa3ThCrZaBlAoZDbFZwjmPmWWQweh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-30_04,2026-07-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 suspectscore=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607300121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_090505_797373_CEEB0D19 
X-CRM114-Status: GOOD (  17.46  )
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

On ARM32 with CONFIG_ARM_DMA_USE_IOMMU, arch_setup_dma_ops() creates a
dma_iommu_mapping for every IOMMU-backed device and attaches its domain
to the device's IOMMU group. That domain is neither the group's default
nor its blocking domain, so when msm_iommu_new() later attaches the
domain the driver manages itself, __iommu_attach_group() refuses it:

	if (group->domain && group->domain != group->default_domain &&
	    group->domain != group->blocking_domain)
		return -EBUSY;

Both the GPU and the display controller are hit by this on apq8064
(IFC6410), leaving the board with no GPU and no display:

  adreno 4300000.gpu: failed to load adreno gpu
  adreno 4300000.gpu: probe with driver adreno failed with error -16
  mdp4 5100000.display-controller: [drm:msm_drm_kms_init] *ERROR* failed to load kms
  mdp4 5100000.display-controller: adev bind failed: -16

Other ARM32 DRM drivers that manage their own domains (tegra, rockchip,
exynos) drop the arch mapping first. Do the same in msm_iommu_new(),
which both the display and the GPU paths go through.

With this the GPU and the KMS device both initialise:

  [drm] Initialized msm 1.13.0 for 4300000.gpu on minor 0
  [drm] Initialized msm-kms 1.13.0 for 5100000.display-controller on minor 1

Assisted-by: Claude:claude-opus-5
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/msm_iommu.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/msm/msm_iommu.c b/drivers/gpu/drm/msm/msm_iommu.c
index 897e42c8d5c8..da6782fca6bd 100644
--- a/drivers/gpu/drm/msm/msm_iommu.c
+++ b/drivers/gpu/drm/msm/msm_iommu.c
@@ -7,6 +7,15 @@
 #include <linux/adreno-smmu-priv.h>
 #include <linux/io-pgtable.h>
 #include <linux/kmemleak.h>
+
+#if defined(CONFIG_ARM_DMA_USE_IOMMU)
+#include <asm/dma-iommu.h>
+#else
+#define arm_iommu_detach_device(...)	({ })
+#define arm_iommu_release_mapping(...)	({ })
+#define to_dma_iommu_mapping(dev)	NULL
+#endif
+
 #include "msm_drv.h"
 #include "msm_gpu_trace.h"
 #include "msm_mmu.h"
@@ -749,6 +758,19 @@ struct msm_mmu *msm_iommu_new(struct device *dev, unsigned long quirks)
 
 	mutex_init(&iommu->init_lock);
 
+	/*
+	 * ARM32 attaches a DMA mapping domain to every IOMMU-backed device,
+	 * which would make attaching our own domain fail with -EBUSY.
+	 */
+	if (IS_ENABLED(CONFIG_ARM_DMA_USE_IOMMU)) {
+		struct dma_iommu_mapping *mapping = to_dma_iommu_mapping(dev);
+
+		if (mapping) {
+			arm_iommu_detach_device(dev);
+			arm_iommu_release_mapping(mapping);
+		}
+	}
+
 	ret = iommu_attach_device(iommu->domain, dev);
 	if (ret) {
 		iommu_domain_free(domain);

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
