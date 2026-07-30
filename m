Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1BF4C55164
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 16:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8U52WIsE7veSfvOriLb+zFmivLQtJsYNA0Kx9p8TvMM=; b=NmBKZRp+F1r1aR
	O/qldeKHVrYfoVZSba2FmBtViwxrWwuvRLMUoxdPjigFkKYCO9QNsP9anp/MDbfOwN1v6XfsmRpbA
	txFcs0MAL0GYbylqz70Yle3dLaFONFm+eEwLLNf91+Lwma4vC2+Gh4sYbxnE/u+EPi2MhldrUsbq3
	KzjGRcbICcSojPqzzY51CX4vUObBm/OcJleQwOpnOINnydvpSTX9eXAkKSqgp+g2Mu9YGzVU42xMZ
	/6bNgnUmzZZ93wvEPqXJrcrVhjYkpHM31gn3pJPd2FB6wFSsvW3mDBFxs53h1eGdrWIE6HzAiV64l
	m4cxlwj1PBO8zuSqZuIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpTFx-0000000AwDD-0lwJ;
	Thu, 30 Jul 2026 16:05:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpTFn-0000000Aw72-0XBe
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 16:05:04 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66UFR3n42401848
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 16:05:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	a8y0lJAoP13jgR+kOYEHrpotPr79UnqM6rwBXM92zVs=; b=gD56y8s5X6fP1JXA
	/Roy+/9TPOR8JHkyPbPsYdDJq3g9F7yudy6ISFyCqMh786EsH8hGGm3qpxcsw0y1
	80vIeNs/KoL3SlZnysWWcnXMR3E9N7fKGtu+/4vu3pdPUkKEN+1N0bOw2S+7ixal
	TFjLTZbuqlPnnRmNfIV+WNT8iLQzWL2FV6/spHrt6i9tV835raFhJd3aeds1u0uo
	KVvfCSYlEfTYhXPhPZEILnpzUhcVs6JGGl8rsb/r2reyK0ar5JszBay1nLR/YDCL
	xNQDyqo/+qUWBXDhdaDj9oi8h69AemQta2kWWs5dfYXZ8JaOxzyJkwwcCf72qgsP
	Ali47g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fr8168pjv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 16:05:02 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51c1d7886cdso43195141cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 09:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785427502; x=1786032302; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=a8y0lJAoP13jgR+kOYEHrpotPr79UnqM6rwBXM92zVs=;
        b=KBbynS8/o3ZTIBj1VGTPCxI16sVpcfCb9msheDp9BdO7d/mwzdo1/3kNmmjDpgPhua
         GgQwwayybhKaGkR3TsyKQENa1xHl3QHnqb/SBrZQ1N491IehYhrpipNplAVOEayFT8XS
         7yKaQMGr1a3lucYWt0YDHvTHvd/fi1HTnUKPPZmtmQdGRfBnsQRYAgTW8+3j38eQ5o32
         oEPfjNEemp6VjHG/RT/chlr3hjOyoeDOTrRYk0c7jqgnC+Vnrw1rdQJDEBtTsHBD8vc7
         1SskjJmO3FOBIpITwsJnl0aC3Hsio9RnqwQbcQLJAjR2owQT/zkx/P2vLo5457174/bZ
         v3ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785427502; x=1786032302;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=a8y0lJAoP13jgR+kOYEHrpotPr79UnqM6rwBXM92zVs=;
        b=saMx6sKX4KAvfqAr41M5L3giLFrFtA0Jtk55S3d9xTOtCEh3k35MirPY0rkx2ZrFpP
         KzE1TEw2SLmktxu8tmtttfVcJQc0zMnaJ7iz6dUPqRDvb7radpswqLOJpLtmegfDx4wl
         d1VQ8VTk9kDVzJ0wVInWzXvySTT3FA7Zr//RLoAZCJzq6UTRj3SaPfZ/y/XY4vckMVlg
         wD6HTif1j1d3vTrAjkFwq7ZrLTrz8+CsLhPuWdLDdn4aH1IZ5RRk20Dy/ICkfx6NVknq
         csA7SDxWFNBK7ceDTp6cog3LTMQV98JTs/N1JFpNXV2osXKHdjQ72dRnQzG9w84zgrZx
         Tr1w==
X-Forwarded-Encrypted: i=1; AHgh+Rpf9qowzfwLwpoCZTP8AtcuyhS7xY8VdMJ7vDqld1IY+o4FlgTuXwR4tqiFpuvGZ/Qb6J3VGIDCDdV/upVB/g==@lists.infradead.org
X-Gm-Message-State: AOJu0YzrUDLAI3QxU/OLFfjWln4yPQ1GOzQrl9/HfMSgKak3eut6Q8HV
	0e/cGWFecJt6GXCUKNpOdVu+9cj4pQUrWSWpJaJUNOEzh1wc8S9KjjQFVEXMY2Mwn3gnfKuxIwD
	FdHd7SDWxdd4jPONcLoEaq7eE+EZEOOoCOtRXfJ6r+H/vlQBjRdDYlx7M3uwUUjjab11z69RRQN
	bGZ88btqE=
X-Gm-Gg: AR+sD10115iSnR0FLiTjk9NGdRpmSiC7xJm5h8GThnGoCwJ2bixrNZZZQyC1HuOiCyc
	LqtO3rtusnqqMhNU1NNjjy+KnPWQdnUtJc7EExMn2UEvWhSVNcVH4EZtfOtIEiTCHkoJ7j/ROdm
	2YFS05qyqmHxeamCmD/aaTnQoRaYNZZh2dC40/a5piHugqpH3Ezy7FA0CVPWrVQpYk1528n0uLq
	ZIg/5HWd6+m1z6/qKLVDGhb0zCJuaUgNOU3oF9oq2Si8EJquqAMNIWRfQg1tQbSiCkKRPV8gYb/
	mD8PulmGzmkIkmuLeYLya7/mDZjrvHGjGffDf4Ek6m+p5UN3RxGC1eJtud3VOekuMzc2h19Z3M4
	IgCkU7WjcJdepLH/nnvpiVv3VylNtIxYu0lGvOKTWzgb6nFXhIiT7sI04DUWmbKEfORxRkabT8+
	WiLiAyz90+hVADEw==
X-Received: by 2002:a05:622a:410a:b0:51c:7b12:5fd4 with SMTP id d75a77b69052e-52b38701050mr31840311cf.80.1785427501692;
        Thu, 30 Jul 2026 09:05:01 -0700 (PDT)
X-Received: by 2002:a05:622a:410a:b0:51c:7b12:5fd4 with SMTP id d75a77b69052e-52b38701050mr31839361cf.80.1785427501076;
        Thu, 30 Jul 2026 09:05:01 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2db8a3bbbsm455174e87.0.2026.07.30.09.04.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 09:04:59 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 30 Jul 2026 19:04:55 +0300
Subject: [PATCH v2 2/3] iommu/msm: use the IOMMU device for page table
 allocation
MIME-Version: 1.0
Message-Id: <20260730-fix-qcom-smmu-v2-2-18e0daf2d836@oss.qualcomm.com>
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
        linux-rockchip@lists.infradead.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3976;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=yylnZwZL30zYazuVfjsidUHvHDh1/ZHcvFZVH/q3EiA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqa3Yn4LRMmKH2hP112MTUGn1A2CzlJEBLVqtPp
 LAeD7A4P0SJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCamt2JwAKCRCLPIo+Aiko
 1cx+B/98g7StpIO2hL9jj/qBiRFSU/vSn9xglHxuoBbQMs2HR9pt0gcz+IK/S1FaTLF18Ve5azl
 FsSckp8I/juT6AAQTlIAnG/GRiY3S9omseCRp6S/HQX9Tm/2NWbLGlHfFHREoOWYf2h8kH9Cpdy
 S24hPjqZzJOrpQaZ83gw2tVqAioJmv2JImnoZxeVXw8PX/Hyxf3tIvxrnzmTfgqu2bsehCyjOnI
 XXrx8xa2guRBqdlYxxViI/y16QNfxvHWE/kNTDO0eSewLl0T5BHSiWC6q+/pf2yiiTyZZPm97AK
 ugnCQ0Sk0x5Xtn0oaa7gTExl2M5GkcBVRAHjhm+S3owboOsb
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMwMDEyMSBTYWx0ZWRfX2uEBFnN9PxPh
 FGgz41OehLTuHBQGhvAqXNSf/SFOE31kk/WOh+aMaFJM6g4RH1DCEfsqDPfGVDqZExQsiuSMvBV
 v8YODOBF6KoaaSFSfQn1JEUwORO7FcXwiiJDa6Ba87wXH/3t+3ccnS3bvHgUeR7/drl1qsDtmqf
 juhgkp8zKLZ39zoxNIca67NiOY3ItqnsChIALH+1dg2rokeAk91U+uutYbMGwqH/mbIeVP1ejcT
 17nUTq/TQKf/gcsXM+4OgxbPhM7knBxChSgW1kAWP35gtPAFyuMnzGwYWerQSmBp6KxDUl0+6cU
 i6RqXSkbosxDYiTWzplT+ge+U6BZuvhUFh+S0MdGLgA8Sgt3euHJHEPvDMv96pyIbLg5KsDkCbc
 efTgU6PEW29rRw3Kfnntdb+JCLJHh6FDM95ZEp8/csy1yWelT3/dwhvoA4AmAHwXCOlzwm0dLEf
 NgZA5ILSUrqQav8yz1Q==
X-Authority-Analysis: v=2.4 cv=LIlWhpW9 c=1 sm=1 tr=0 ts=6a6b762e cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=qBQ8OOdg5lpXHOzljU0A:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: 7K5PQaOQm0s1rmCl34bp9yvEFRw2JrbF
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMwMDEyMSBTYWx0ZWRfXyF3kazsM6qRC
 7e3GjiNYV1gPT0NFe68pkFSHXVZFVlH78W49rCdCp6s3m6/oO9SlPJPuGxwazcxKyeSuIUFLQR/
 vKLIGUqCmhviEIu94+27sVjinDoxilI=
X-Proofpoint-GUID: 7K5PQaOQm0s1rmCl34bp9yvEFRw2JrbF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-30_04,2026-07-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 suspectscore=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607300121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_090503_206749_4A59888E 
X-CRM114-Status: GOOD (  19.23  )
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

io_pgtable_cfg.iommu_dev is "the device representing the DMA
configuration for the page table walker": io-pgtable-arm-v7s hands it to
the DMA API to allocate and sync the tables on behalf of the IOMMU's
table walker. msm_iommu_attach_dev() instead stores the client device in
priv->dev and passes that, so every page table is allocated and synced
through the DMA configuration of the device being attached rather than
through the IOMMU's own.

That is wrong on its own terms, and on ARM32 with
CONFIG_ARM_DMA_USE_IOMMU it is fatal. The client device carries a
dma_iommu_mapping, so the tables are mapped and unmapped through the very
IOMMU they describe. The mapping happens while the device still has the
direct DMA ops installed, because arm_iommu_attach_device() only swaps in
the IOMMU-aware ops after iommu_attach_device() has returned, so
dma_handle ends up being the physical address. By the time the tables are
freed the IOMMU-aware ops are in place and treat that physical address as
an IOVA: iommu_unmap() warns "region not mapped" and __free_iova() clears
bits in an unallocated bitmap extension, dereferencing NULL:

  __bitmap_clear from arm_iommu_unmap_phys
  arm_iommu_unmap_phys from dma_unmap_phys
  dma_unmap_phys from __arm_v7s_free_table
  __arm_v7s_free_table from arm_v7s_free_pgtable
  arm_v7s_free_pgtable from msm_iommu_identity_attach
  msm_iommu_identity_attach from __iommu_attach_device
  __iommu_attach_device from iommu_detach_device
  iommu_detach_device from arm_iommu_detach_device
  arm_iommu_detach_device from arch_teardown_dma_ops
  arch_teardown_dma_ops from device_unbind_cleanup

This is reached on apq8064 (ifc6410) when the adreno GPU probe fails and
its DMA ops are torn down.

Locate the IOMMU instance before configuring the domain and pass its
struct device to io-pgtable. priv->dev has no other user, so drop it.

Fixes: c9220fbd7741 ("iommu/msm: use generic ARMV7S short descriptor pagetable ops")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Assisted-by: Claude:claude-opus-5
---
 drivers/iommu/msm_iommu.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/iommu/msm_iommu.c b/drivers/iommu/msm_iommu.c
index 109688d69e50..15220d79ece3 100644
--- a/drivers/iommu/msm_iommu.c
+++ b/drivers/iommu/msm_iommu.c
@@ -42,7 +42,6 @@ struct msm_priv {
 	struct iommu_domain domain;
 	struct io_pgtable_cfg	cfg;
 	struct io_pgtable_ops	*iop;
-	struct device		*dev;
 	spinlock_t		pgtlock; /* pagetable lock */
 };
 
@@ -336,7 +335,8 @@ static void msm_iommu_domain_free(struct iommu_domain *domain)
 	spin_unlock_irqrestore(&msm_iommu_lock, flags);
 }
 
-static int msm_iommu_domain_config(struct msm_priv *priv)
+static int msm_iommu_domain_config(struct msm_priv *priv,
+				   struct msm_iommu_dev *iommu)
 {
 	spin_lock_init(&priv->pgtlock);
 
@@ -345,12 +345,12 @@ static int msm_iommu_domain_config(struct msm_priv *priv)
 		.ias = 32,
 		.oas = 32,
 		.tlb = &msm_iommu_flush_ops,
-		.iommu_dev = priv->dev,
+		.iommu_dev = iommu->dev,
 	};
 
 	priv->iop = alloc_io_pgtable_ops(ARM_V7S, &priv->cfg, priv);
 	if (!priv->iop) {
-		dev_err(priv->dev, "Failed to allocate pgtable\n");
+		dev_err(iommu->dev, "Failed to allocate pgtable\n");
 		return -EINVAL;
 	}
 
@@ -400,8 +400,15 @@ static int msm_iommu_attach_dev(struct iommu_domain *domain, struct device *dev,
 	struct msm_priv *priv = to_msm_priv(domain);
 	struct msm_iommu_ctx_dev *master;
 
-	priv->dev = dev;
-	msm_iommu_domain_config(priv);
+	spin_lock_irqsave(&msm_iommu_lock, flags);
+	iommu = find_iommu_for_dev(dev);
+	spin_unlock_irqrestore(&msm_iommu_lock, flags);
+	if (!iommu)
+		return -ENODEV;
+
+	ret = msm_iommu_domain_config(priv, iommu);
+	if (ret)
+		return ret;
 
 	spin_lock_irqsave(&msm_iommu_lock, flags);
 	list_for_each_entry(iommu, &qcom_iommu_devices, dev_node) {

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
