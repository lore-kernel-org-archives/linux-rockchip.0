Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28F9CC55165
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 13:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E6tEBjgvkSe0p2s5lv1drXpA/wMmM1htUHdcJ3OQoA4=; b=kNGyAdYboW+jHQ
	lKhjOUzAeYjugJjkSzOTxM00rrLgq2hUDfJgCFz1BwKe0GkSM2lwmKVSJVtfDY1Zn3fXCqZKAQpMm
	XmG/lcrDPFASpmnzTxO3S8qsJFhBZzWdfqf8exZT9YrnmBdogMk8UrIGZd0G4v1wggGLNz9Kr3X/I
	jOxjIA+hI41SF6H5UeO2hEYDh4IvUzwb9Q9ekvbqrUcxJNmQ/D9k2hzs9xFB3cDR/NYOtRUj9LE5u
	D4zVXtDjsPO+9pGWJeuyObWXkxUKE2C6ZCZiuSi0rB8tdWiRxOXwaI5CJETycRjUFg6FzCq0y5iuQ
	YLqMTgACuvTcxXz88e+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpQpZ-0000000AbO0-3j80;
	Thu, 30 Jul 2026 13:29:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpQpU-0000000AbJr-2UQN
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 13:29:46 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66UDDYc0716313
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 13:29:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4GiyYr8BNvsq5rBrfJ99f2IOVz7T7wBUN5vtVYuv3w8=; b=LYURgvp1IOeS0d3m
	HJGWxB91RSgH72Uo0Wdct4qEB0Z5w9mxpcC7DbYvvYgDuF1tehH0if988qoHbQYq
	Le4FvAaQhwnLlpAhDjC+Uf2YdruL91L9z3E/sI6FTdT6/uBoD8ABT8NfEreerjze
	TUut3vh+uCVTZltfqpNOLy4MeoIYwudZua9D0jXR8J4tbo3jB1qBLkpAkJ22i2zg
	UudXYyrIDWVIK7zHsR4SQ62EX7OnbzzAQEWXvV1kRqS0fuY6ClwmX62gWdItC+ed
	zMIWYBBCVSmlxo21fpgvXeVO9+NLYuIDXOtl9x+2YmLOxlS+lWoJlzX9vsL7aOqL
	LzdfQQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fr6ucr6x7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 13:29:44 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51c21c01cf3so36208591cf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 06:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785418183; x=1786022983; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4GiyYr8BNvsq5rBrfJ99f2IOVz7T7wBUN5vtVYuv3w8=;
        b=A+SG/q4gEECqQUcrRNLuJ00mdlXXzZsILGwFj87QSCCmV82aO+FdcMkXEufensDwIj
         L8IkKa73qw6EtN/vMzan2T9QeFSr94t9A2/tXfxDZSBt/TVMdSIf4vvMLUyq/szBvU2j
         ysoPikI/senFMGKkRlSGZKsLG+8ZXu9G/E+DhQLH/Kxdhec55X6QIGU6fpfrAuazTQ5/
         vdUxvT+psMTHJLF43umhxIwNSv3oFMUrHktuVtsmgO/dUFUZVFgXCpqsQgkqjnEp/2TW
         uWAOu4nz9hxLZ5BSdJdyvE7FmeGnRyeYScAeaEA27tAhLKo+UEy2vzvHLh8S/U/8GJVX
         avSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785418183; x=1786022983;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4GiyYr8BNvsq5rBrfJ99f2IOVz7T7wBUN5vtVYuv3w8=;
        b=XgoGOMCbKVYoJyz5gUrbWzTQPY0g62dkRHVcvE+WIu3KQEfHuP55ZgNMPUFKeYl4rU
         YMRIOaEpx83AbzOCTMk4TelqPk3voA4VBhm/Gaw+0ZwEFd3yYEigS89sf6UaKEgZIk/w
         kJuLCzYzr/abOTKkJw0UMwIa0EA+cGkEEgD/QhFIzLlncXuVzTYqF+68YmQzhlK4eje7
         dVsXT/z4eOxOpesL1TY4o4CoF7tHeMdLd2de+qm4fZSq5Ifsn1Y1zThntmzRB0apFm1D
         xKFrw8L4Ub2ga8mkCdOFdqc7DjcmM15FobmgGnwD2RPjDQOgoSqcD4LgXVJmpL+dzmHD
         MW9Q==
X-Forwarded-Encrypted: i=1; AHgh+RoOVyTNRf4qo9pjlvmkYrYIibJT6+CL63Kczym00XrV8p6bw7lnXVUZjrx688TgdJ88C0BCFHGv2VQUaT9N0A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzFNPIGjnGINDDBl0BepfZN0UERjaf3CZwReheU4Ri8ORGRtL7Z
	8sQMVE5qeKNj+s3uxsWCH7q7FhyQ5jO+ZRSqGfb8RTBMAM458OYl07I6NyBnZrSaG5NR5gKzaYn
	XbvC6MZgQiFsLEwvyG6LeEmGvHZSCpo1sRmKYds/Winc46zBJXMkParsKushUki4BGx5w+VbYXM
	w=
X-Gm-Gg: AR+sD13fDZ6Y/ZJoem28837jlOxP5mtNeSJFTBLXh8s43NokRDr7R1gFJ0MSkQK/Gpf
	mYfL7QaOGxSMl7J7pEPmTF+ENH0TU6IKjBTxKBMe9NhScFR2aEcCWjeW9RD66dMJm1VYPEqsi8M
	bR6xaFhbub6u68PmidFvImKP8f1IhqB/VF4AC0aEZZCHSx7uFjt1VK2IbFUBXdgE10K1ApULYsZ
	AC+SYWlII/hWb8QssJDi2G3SAtBrHMyz+rqKduy0CuXo6hO3rVY/XdkbtVfY7rgYElLqoZTnWV6
	qpVLu06pps7A0WHKRNvm0/Gp0AtHGkjYG7pF9hIUHmuwKfDPGJf9Qsstf8zneF4HknFVdPba2zW
	rH23Wltw/lSqQgyR2w0gTB0KC7qFWdHQg6AgJak8ovg0RVKBCdyZkcUIDXp4ON5KhltagYPtTKI
	/rPdngl+wbMrmeOg==
X-Received: by 2002:a05:622a:5ce:b0:51b:eb55:2916 with SMTP id d75a77b69052e-52b384c4702mr28152891cf.34.1785418182590;
        Thu, 30 Jul 2026 06:29:42 -0700 (PDT)
X-Received: by 2002:a05:622a:5ce:b0:51b:eb55:2916 with SMTP id d75a77b69052e-52b384c4702mr28152121cf.34.1785418181713;
        Thu, 30 Jul 2026 06:29:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39f6acaa009sm2976631fa.34.2026.07.30.06.29.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 06:29:40 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 30 Jul 2026 16:29:33 +0300
Subject: [PATCH 3/3] drm/msm: detach the ARM DMA mapping before attaching
 our own domain
MIME-Version: 1.0
Message-Id: <20260730-fix-qcom-smmu-v1-3-b12fa067804e@oss.qualcomm.com>
References: <20260730-fix-qcom-smmu-v1-0-b12fa067804e@oss.qualcomm.com>
In-Reply-To: <20260730-fix-qcom-smmu-v1-0-b12fa067804e@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Sricharan Ramabadhran <quic_srichara@quicinc.com>,
        Joerg Roedel <jroedel@suse.de>, Russell King <linux@armlinux.org.uk>,
        Lu Baolu <baolu.lu@linux.intel.com>,
        Jerry Snitselaar <jsnitsel@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-rockchip@lists.infradead.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2725;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=0nxp1o2ipBKscUADiWjzkVftGYkzppsXEG9Cty/+pmo=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ1Z24J6b6wVbFP1Dv968/8bQ87nekTkSTCwmWXuZJ85pD
 0p7dd+ok9GYhYGRi0FWTJHFp6Blasym5LAPO6bWwwxiZQKZwsDFKQATYZZg/5/7tEvjz+Qk7vJX
 k3zOtPEfveHQZOPl4cMrqnnMZovt2isnJ07bw6x5j8vBskrclyXQJOLU3mYN69k+OdufMkn28yd
 oXdC4vNBQvF0jvuL/n/j/7K8ND0z8nx1RFSH2t/XxES9nFumAE3fvXWXY3DaTe9kqjnu9bZuNdo
 dLV1y6baTwef+y11rGEiq3b7B7s71kDXk0Z+4zrVfqWba7mTbLbGKtv2mh8vb1iVWJ3zx2CRku9
 i18yJBVJC0nkiZqmZ1xIevEvNvmuSaTanI/pWr3Ou90PDhR7LSPW+8h1VfV63zFRHgmWO5Su/0z
 ZW7YKlWpl857L8hvdYlhjq6SKXyqyHe6lFEr5nTGR6P5AA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMwMDEwMiBTYWx0ZWRfXxg57rUQocoBR
 2S6cwUnRrlTm9IwBCcqBHYlL1PZbpFByD1WOY+T7JXRu2MK1MOqbzrzYgmvfKHpZU47lwoN9kE5
 AomYjHxRbvYoecihudzAusQ7llAhS1Y=
X-Proofpoint-GUID: f8IrEELUcif_vUX3MxM6GsqcuxBLGuQq
X-Proofpoint-ORIG-GUID: f8IrEELUcif_vUX3MxM6GsqcuxBLGuQq
X-Authority-Analysis: v=2.4 cv=W6QIkxWk c=1 sm=1 tr=0 ts=6a6b51c8 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=epCurf6C53ZFYVxhAokA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMwMDEwMiBTYWx0ZWRfX6480Ujeui+pz
 KG0wW5pfR4HXd2DBRATj4FqVsVKtlRWmgnEJCGt7WuOCNwohyWkZvavhDgJooiNIgWRQt0SZq4R
 6nULQOtT9MALyvvQtWzCp/jKX+6NnIfV7a0AhvZHbQBmJIP6Ypp9a1ftGMOeX69JOp5Oy6DAQFt
 ucBcdgjfX/cDOS15qdHj4RtjDBbke/A0UxlIQOTkYuqP5aBXI2WKzQv4gIR/USF+5KPIQHdEZCa
 mTdW9cCXzpVOVbhMbmy2Ax060/99y3BX94MK2zp3UiqXSgGKvkVMSLKDn7Kfc2u3pzSY0HxhVaw
 E7Jt0OeDDm+6zZlR75LfbJpb9m+RiWwo3+njAb6BRgqTeOvQA+RN3GwB0gEPAR/41EHUUMzcuj8
 WRaVuVb0W/CERiyRpbVMawCRc2eIrFLMC32nbrxBxqp32LrG2fsvB+vwBTNAstEeXS3a5WZvyLn
 tJc/nFyc2XX6s0f9zTw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-30_04,2026-07-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 adultscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607300102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_062944_652650_BEA5C21F 
X-CRM114-Status: GOOD (  16.76  )
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Assisted-by: Claude:claude-opus-5
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
