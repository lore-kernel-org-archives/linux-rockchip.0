Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0F3FC55167
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 13:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CuF7x4Y3vIrYg8Rgs2ybxft8XmTDp35vddzGd9OsXG8=; b=FUSbYdRcEmGxMR
	BfwqZhmMyZKOWfl1u4xPfP37bLyrW3+w2YpFoPUINujEJzN6GzTM3mEeO5apOqxdPwYXzZd52fngm
	M+QcRoezk4r0Bt1GwYplri2KYpPWZYIdF1YCxOTEfOlApH6wDmD13aN8cuUYFaAsR2CVGCrXrGYQf
	E92Xj28lU3M7kInrbHQwzwZyKOO4MTJyLv6FlZVebgf8gAgdjkgBu6qYTZYQe8zR/CY0gSQjWO0F7
	ErGLO1fJv0DoMz1qriUSoWL3WmZPu33GdGU8yEBnyQR8eRzxXL79kuAMaKuduAbTDyvuQl7qUZYxl
	yRNH89QyzhNx0TIysh3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpQpQ-0000000AbHN-3y3U;
	Thu, 30 Jul 2026 13:29:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpQpN-0000000AbEx-3Wiq
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 13:29:39 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66UDDGIl1373000
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 13:29:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=FrBxWxjqRXZNRvOm43VwxP
	FxRLqKBA6+pd4WCL/GOZE=; b=W1Ki/nu1aVDuyPmM9trr6PPb7poeN5QDAOHsEd
	jbhxiSE6nzIRlG6VNHVvOWDlxFMQViG076Bqb32lcOWyDA11SbzoNQuFcWndSZMR
	coFq/pFW78LlK7l6/SU8ZAfJEF1kqB6mhymB891IP2occB8EOuORh89+Z3umwfiu
	3nJpXOCbyDIlG2AHNzAA9xVamUUf0z+LaE5AXSPC3N6D3F37fh7gnq2WekrmZEbv
	jU8oNIbAamDOLMHLdYipWTirAWXO/57+xL347zRIFM3qABSy3Qz8Ww0ucD33k8t1
	HnqTJiKpmwfYcme6ZpzR2LIkHopmHTUrYZ5P64P3tutXgW+g==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fr70bg5ea-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 13:29:36 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8f0ed4fe79aso41178476d6.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 06:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785418175; x=1786022975; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=FrBxWxjqRXZNRvOm43VwxPFxRLqKBA6+pd4WCL/GOZE=;
        b=euqDu9ySYoYHlP2dPjPqUKlh3fk2fFPxbgp4yrzMIwFwJuQiYxeMMStH/3IL4fImzM
         GK9s8A08RurQ0D20CNZq1Vj6a3H+9ZjAMK4ARWcVV/oYR1a2fIFoa6x2+zoqhZCqYthr
         WhhXgPSfNSjlZEJNFSSr7P+tHvy9IJ8QxsCpIHjkQxdel57Wef5Hf/2kAaIJ8NBQPp8e
         4pMxU8UhQn+w3HIVwh6Ap2XtCWN5qe2ztpROv/P8gVR6nVHH+t3rT5FcKlGeXOXAcAe1
         a4yvuskiUPRGvTsHy3tQiF8IlQ/cRao2EPYsezqHF5TsPdw7JQzAi1H+EDsidlImwkV9
         i6Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785418175; x=1786022975;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=FrBxWxjqRXZNRvOm43VwxPFxRLqKBA6+pd4WCL/GOZE=;
        b=JM4rCXGWdx4wFFsn268EpBqBdU00ZZhDRJlk/X8kYi5L7/h4ht8YbeeVflrFfr5JoD
         wdn9WmMhjTmzlgR+T1Yq665nIJkEC8AJ0GlGOD6mQqfB3NrZtC4iqos/0GxMG0IpcB3q
         c320xZIgVz/U4JaT1Y/wu5bFtnC7cW9FN6X452jra4MA7HudLG01cS3LlP+O2gE1CWvZ
         YoSA1cXEAE1OKC5m6V9z5Op00Dsn0n9Rzu6hMybZjk7D3hCe298NAEycNAv/9rMogZJq
         WqlivWrJwxpeecYFO5TmBdpY2w2aH/a4MxOW+d4jlzeKoFT8s/ogujsnH7nsd0rHB+gF
         1HHQ==
X-Forwarded-Encrypted: i=1; AHgh+RohBSBdqBAVrZjaKGiYquXpv15skyKpc7HHRdGdYKzYJ07ptIbkVX+t4BGn/V8m2Ykffh9DFi8bDmoRHZNY7Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzFGigcNAh7cXPHlw1C07BmuKMREvYUzSxiDnUHa5Fmx7afjpie
	4k/QLcU8cipk/D456NmSEBTTovcmsxtDDxy1QJC6/XXdUDpm3oszBC2LeDLmWbc+xrcI7CQRhU5
	xv6466ktOtY4fWSTw1YQwmf2/gWT0gYPrgkvVoYxhojg0YnVoK/Ogm2DjJb1x3kw0wjF4RTdjnn
	s=
X-Gm-Gg: AR+sD11eJ1rrVmikXy194Dp8rQNMgGsSelNEf8xTieztbdrsKhxQUcsqW1gwYtGE5TP
	o9qp301sF4Afe2j0dPnqlbvoBAn+Qp1lUpMvQYgDeXeI2yQCImFWfv0vTgwFQesKZkRDZij2V5O
	qPs2Sw8qpKPrqx1ztpZCYZozSK0Jo0SI57y/mHFo5+QdTKFnM1+GhcWFFfBmVUeFs+jHsvqZBlV
	SQCBOITrI2HPRWECGUtbWK50LT2rC2v0ZOCW1f2apYjlE/rE1wtMNkUGaSJebdMMlVvHfjnbBC3
	qCYq7FmcAa+ToYQtdnB8tS41+EAuvvQg+OupNmw9sVmYjXf22PFVVVk+URpKNjWUgv1qXW/UDKC
	2iaGDbs6N1OGXi4JaleqTaT+FhQnoHakPIvfhEADnwnOrQSv3esTT/b7kBurxOEF07Ek27Zar1R
	l7LBDJLZjN4+iOfg==
X-Received: by 2002:a05:622a:1aa0:b0:51c:61a:50fa with SMTP id d75a77b69052e-52b385eded3mr25658261cf.39.1785418174944;
        Thu, 30 Jul 2026 06:29:34 -0700 (PDT)
X-Received: by 2002:a05:622a:1aa0:b0:51c:61a:50fa with SMTP id d75a77b69052e-52b385eded3mr25657711cf.39.1785418174288;
        Thu, 30 Jul 2026 06:29:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39f6acaa009sm2976631fa.34.2026.07.30.06.29.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 06:29:33 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 0/3] Fix GPU and display on ARM32 platforms using the MSM
 IOMMU
Date: Thu, 30 Jul 2026 16:29:30 +0300
Message-Id: <20260730-fix-qcom-smmu-v1-0-b12fa067804e@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALpRa2oC/0WOQQ6CMBBFr9J07UQoUqBXMSxKGaUmBekUQkK4u
 wWMLn/y5r1ZOaG3SFyxlXucLdmhjyO9MG463T8RbBs3F4mQSSEyeNgFRjM4IOcmaPKiKo3MW1l
 WPN68PUbg8N3rc9PUvNCEXfIlPI5TDIUT+3cU+1UcuaNkvKYOSpNmQiRtdZO5mtNd02hCiG84G
 xTrcQlXpymg5/W2fQAr4Tap1QAAAA==
X-Change-ID: 20260723-fix-qcom-smmu-b5798c65d689
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2815;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=QeuOZ/3E7srmsN4kZYdWvz+jVIa+pIBlQp4fMxk0c0c=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqa1G8vHFfUkazJpdtkfWB5qcSLTbcR9WeggcWK
 ZnHvv659nSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCamtRvAAKCRCLPIo+Aiko
 1Q4KB/45W5IuLGMfukDxWtAm4Kn8WpvsrZCG43DTGKSpOFCALq9XgwWFi8s9keLSIB4kYrYNe06
 XtyxqMCC0IkQ0FM1E//oevvm9bvqUqL/VeNT9pSZykkGfRuEFxlwC04OkBZMAY86IHws8iYgGeA
 TBNi1Xu3GnAMhqtBzcqeHzGdVUn87pGMjczIsbbM8CX2dT+xSCjA1ztwD6ZIPhEC4eeYw8XhlyA
 Oew1C0tmhzqsF/zcB37ma81WyXwpOiLc7RGR66XnWNPAIvKsmhyC6UUHLA9v7La6w5GRi890tNo
 uTB4CSpg9MoHUsrXHeKMbwt/nxWdl1Z0ZcaMEM7DxFp2bEvp
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMwMDEwMiBTYWx0ZWRfXyN6rgRU0I1iS
 ySUw+eBfZGTisHBgQPnDF2q8PMVx+/tmXq006aFuLskub6ubDOqw7jeptE1S6W7esuQgYPW9e2l
 /JnMJDhPkGtKzCmuUoq318hRTxqOkrd33mYvZ3N3LaJn0DFDrafjnd8c6wdQB7Eata3u4aScV0/
 WulO0ONGYV+BkelguLXIHCDc4RUPBKPl3AX1qyMBweu42f5dVvKrql9aaoM2h0JTuf3/n4G91Fq
 zWBEWMTMG7lXgM9WqtELlOlzrqMdqyw4TLfVly8OGbsaCwRF0DMedmp5nkJuqBHSgnSTUwlPa5i
 0xefiTnGIUv4H7Zz8arknfGgs8b0OnL9JCfqQHc4ElB3FqjXMFF1D2BuFAfkZt78JkM0cC0k6h6
 9IiiTZzfG19U5AoHZuRNgTM26sJ40iOoqhjZJ+cZQo0DNrfBANt2rKMHutZllz4lHDWeX0KzZ24
 4VypR2RAdcoU/cPowhQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMwMDEwMiBTYWx0ZWRfX0PlnAREzTl46
 4qyeH6eW24CBA7fqml8a0CG4auZTE83jENt6JYIPUMGnPU8lQ6TMrKt3GkVOEkySVWhGMbDLenU
 uj2IBLu5jW01zLiEAO7LxJge22SKxt0=
X-Proofpoint-GUID: 6nD2t3lKjBfoGdl-bfFvbeaeP73YVH2s
X-Proofpoint-ORIG-GUID: 6nD2t3lKjBfoGdl-bfFvbeaeP73YVH2s
X-Authority-Analysis: v=2.4 cv=P58KQCAu c=1 sm=1 tr=0 ts=6a6b51c0 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=shkEvlnnkTupmQYayisA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-30_04,2026-07-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 bulkscore=0 adultscore=0
 malwarescore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607300102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_062937_877557_EDD67FAB 
X-CRM114-Status: GOOD (  16.67  )
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

On apq8064 (tested on the IFC6410 board) neither the GPU nor the display
controller comes up in mainline: with CONFIG_ARM_DMA_USE_IOMMU enabled
both devices either fail to probe with -EBUSY or take the kernel down
during the ensuing unwind. Three independent problems stack up on that
path, one in each of three subsystems, and only fixing all of them makes
the board usable.

First, the MSM IOMMU driver does not handle a device that is attached to
several IOMMU instances, which is exactly how apq8064 describes both the
GPU (&gfx3d and &gfx3d1) and the display controller (&mdp_port0 and
&mdp_port1). It keyed the per-device bookkeeping off two mismatched
things, a per-IOMMU list and a per-device pointer, so only one of the
instances ever got programmed with the stream IDs. That had been merely
wrong for years, but it turned into a NULL dereference once the IOMMU
core started deferring probe per instance, so today the board does not
even reach a shell with the display enabled.

Second, on ARM32 the arch code gives every IOMMU-backed device a
dma_iommu_mapping of its own and attaches it. drm/msm manages its address
spaces itself and cannot take over a device whose group already has that
foreign domain attached. The other ARM32 DRM drivers that are in the same
position (tegra, rockchip, exynos) drop the arch mapping first; drm/msm
has to do the same.

Third, arm_iommu_detach_device() undoes things in the opposite order from
the one arm_iommu_attach_device() set them up in. An IOMMU driver that
allocates its page tables during attach therefore frees them with the
IOMMU DMA ops installed rather than the direct ops that mapped them,
which ends in a NULL pointer dereference. This is trivially reachable as
soon as any of the probe failures above unwinds, and it is what turns the
GPU probe failure into a crash rather than an error message.

The three patches are independent and are expected to be picked up by
three different maintainers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Dmitry Baryshkov (3):
      iommu/msm: track a context master per device and IOMMU
      ARM: dma-mapping: reset DMA ops before detaching from the IOMMU
      drm/msm: detach the ARM DMA mapping before attaching our own domain

 arch/arm/mm/dma-mapping.c       |  5 ++++-
 drivers/gpu/drm/msm/msm_iommu.c | 22 ++++++++++++++++++++++
 drivers/iommu/msm_iommu.c       | 27 +++++++++++++++------------
 3 files changed, 41 insertions(+), 13 deletions(-)
---
base-commit: 3652b49adac266a3d27cb41cdfdb7d8790fc3633
change-id: 20260723-fix-qcom-smmu-b5798c65d689
prerequisite-change-id: 20260723-msm-fix-crash-8c13220d9465:v1
prerequisite-patch-id: 3556d41e924ad64e8e9c06cc5bd1972c66957f42

Best regards,
--  
With best wishes
Dmitry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
