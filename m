Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8DCBC55167
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 13:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8cRIEUt9vugl/Re20NK3qh3DIeAYNwY0UNhhR29vR4=; b=x9E9qVUZIFbhD5
	3yeGfjPbglmUFdztW9hhMk20ZP4/6OOAKp5EAnO7q2nYoQllyUr6vYN0CMenQQy4KVa0dAAXbGtIC
	Xfb6VX7fb/IF4fwG6n8xxD/Rrhw3rN/aeQwPSou1EIVOguC4b/dEwlcRMp2+4opqYSfGef9rCpqy9
	i0Or6Mfljj7kN1lS83nKK9Q76kaShA3NoT+CNr+Jn9KIJpoA/JkIuaByf/SKak3OyBqJBnE4P4nqr
	kfnTsYiTsvKG9dScgfDOwd78qsBtW7qkSY1xnc4vY1Fctzp6HKCDiTWWCxhLhDmZ4jKNq7He8L7lc
	jTc1JGiPZb+DXd+zwI2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpQpZ-0000000AbMo-1y0S;
	Thu, 30 Jul 2026 13:29:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpQpR-0000000AbHd-2Exf
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 13:29:42 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66UDDFXS1372963
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 13:29:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oKomwFAwUezzDTIBZ3q145K36werjmHbPF4H/yZ/x6Q=; b=OGPuxWrRMmU2PzD/
	mKwmrbMpkX6jKvRyejXSJfhrzmADzBmBvV5C2lfN93sWUAVbNLw5HonQDm8+kVU8
	IdCnxNP9mvNbUxwyUyStUqoBIY48bISG2zPPa4AN5h7YZmmeRvrlq8r8TDTF8Ru7
	Zmwb0opGC0dJ+N0lcbJPgOsuqfR5vE2TzyKeknewcTjfYj6YyYs6+X03D0qCtP7l
	TaQ21vRB2MLrY/5iRQE3dDMGDxcEMwP28PkkdI6ezrUkYmZo2K5IMGRfRz4dSSR2
	BIp9ni7Xg37VIyT+0IROuSJKa78ynVAKJo0PscQHHPWudnb7JKWGrp5xzc7VuRRK
	nhVbqw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fr70bg5et-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 13:29:41 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c26012cd0so20445021cf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 06:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785418180; x=1786022980; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oKomwFAwUezzDTIBZ3q145K36werjmHbPF4H/yZ/x6Q=;
        b=CykQrL797e2i//gx1BDVvgeTPfh2HspCnne4LyM0LhO+rLsWYUXlOGOnu0RcCD+szL
         iQQ4XZJDexJRmLTGkdJ6KOjizZc55YAnzjLoIMwgJQnhyCg48G2bafvFOZlZSVNFNhjx
         7MjDsj1eW0Vo8Tw7Aw02QJnVJvbXsBuxax09L0tga22Cta3AUEc84QNazPde3F5FrbO/
         yZTqKbYQEjiVbHj3NIHTAMNkSGbnFrNqkWTCf7NvBuIP/RagpOchl218Nuj9zN9waI5P
         d4M6hjNoNtMoTHUurfELOZ/2IcOgP1ZE4OphygjiHBHJrdRceDXjz+hUuA8zLwwMTGlx
         5E8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785418180; x=1786022980;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oKomwFAwUezzDTIBZ3q145K36werjmHbPF4H/yZ/x6Q=;
        b=d6GVWDhK7MRBg25Kt5tY8D6Uqq/ssWAWsKSr6q22UqIomLIV/Vp0pmGv1l3VCx+ENT
         v5qORrziti+kivnd3NKE6vSLgx47XkO8c+391mLpucRNPQ0XYOG/WlJYFhN/yn4Swjyg
         QWmcXP7hKws8cAADtsfCtE4pD8qnggngovejy78wMwE332q9bnygasCjdqFQ7pBclC9R
         anI0xnk8TrGbOF9LzF1ScNoAlQq6Sn6XP+mg2M+36uI9TTFp4xmXerlyVTBiNxHiOS0L
         L1T+Og3MhWqVFjyM5jUGxvroF/bcndiThd+eMn6SLm+m8zYn9huYwaBgghcwnemeNYwE
         Jmjw==
X-Forwarded-Encrypted: i=1; AHgh+Rozdj+MGCPrEfVzQpGYbNVfV7vL7DAxxv3xWwU1F7CR/nXYOrbrLrLH/tmX/HP5cWb3SDwSnganu7JLHbD+tw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzF3sz70oZd5g+uHjBOD+mAN8xoouS9Uzl/jELcnk/aMfIzr35l
	W9AiePdinaspSQJ7siH431zN720XNarzv0Rp3x7EsC443kWtBHl97tEE2XZb2HldMgSgcPl65w+
	p/1CP9W9YFi1g32htoTqoocfmR30C1JUgSTgxL9Xe/Fs1isxrEYbtODvhu7Rn+jTIyaofzdKMUe
	U=
X-Gm-Gg: AR+sD13RGQHmMltwzWqIaUqqozPV2ul5wJXOEd2nHcyBKZgenrK4E5qXwEy74S6YTSI
	CJzemxkNSbbUXTeXxQTZnrAo47Abafo2e9ibsTl8WP8nyhiKCZhgHD4BfxOMTn9O6VMgZd9rFgs
	o7l4YHcJW2xgidkdVZv0OR08fQX1JHPd9w/xD73TknO5dSjr74j80r3w7CtF8NCEA/E0dILpfik
	gdGa+waQLH/aKiz8vcaiUCHJ3YlRVjEDFu996UysHJPBjUYpW7M3cJNgQBq/yuo4sFLbLSgTTGc
	ZoH5YiqW4j3ZYWT05GNuPkv+kzXscFCK53JXLmk/AgI2UNlBbvkzWG/RD81MRJ98mxBHbqk5EG3
	UD814kmhM+Hd7wq/qotVZJLtrBnSGXt5xa8uQnEEVOvGav68jvATmLGaW8xm3a6B0h2ruxGmbYG
	8BqTtro3Hu00vsDQ==
X-Received: by 2002:ac8:5801:0:b0:51c:7b12:5fff with SMTP id d75a77b69052e-52b386ddf71mr27986631cf.75.1785418179740;
        Thu, 30 Jul 2026 06:29:39 -0700 (PDT)
X-Received: by 2002:ac8:5801:0:b0:51c:7b12:5fff with SMTP id d75a77b69052e-52b386ddf71mr27985881cf.75.1785418178960;
        Thu, 30 Jul 2026 06:29:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39f6acaa009sm2976631fa.34.2026.07.30.06.29.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 06:29:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 30 Jul 2026 16:29:32 +0300
Subject: [PATCH 2/3] ARM: dma-mapping: reset DMA ops before detaching from
 the IOMMU
MIME-Version: 1.0
Message-Id: <20260730-fix-qcom-smmu-v1-2-b12fa067804e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2474;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=zQmiJpPoZNGhjY+XUsKBhhVoMysorcpbs/s+cw3ZEFM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqa1G8zRjknHYqUBI8o2MzKUGuZ4oF+rXCx4jn2
 zhq+XjJrpuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCamtRvAAKCRCLPIo+Aiko
 1fYcB/wO3cMw7FHxc1VUZwOfY2Tooa/OXl2aPOMopt0xCYxUwpZ5yVYjRHgrQrzKG+mUO93tFGw
 H7pbYScFoKJ2AzsMoN+uN+v8t9Mh3yY1Ud49mcH5NE2zMD9zQK5bM/IksKMNuLWYdtNdkG42CTs
 9j/x4WTPKOrGL7zpcDM76Vfl8slVplqaRrhvGpQmLi8AL9I7jsQWL3Ryyn3uTFjVCXITZAkaSUi
 wdo2aKOX5IdqnZGhap8RWpPU8rPCMTFsvAtExWsnqhoMBkUAwDyw52qu50f9mo0kDdv0RWMzrto
 KRpI9flM9iK+ZUsRzNJxJiOFKou5u7H5EKzCnbAAVDlwcIEf
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMwMDEwMiBTYWx0ZWRfX+EaBZANdqyOW
 Snx8+pFgG3qziibjqi2+z1dN1r8Co5ecbOMCbNj1t4Fee+UVfNPxEVDSPp/68QgdDR/yu2ua6w/
 GN+iW+iB1cplKDdxczk2aUsPVqyl7pHVQfK1I8gedwbURSRZhgZ3sxFblDvmeNrJOVfowd3ARFF
 QlmoB/tHOfLRX47P+fyOSmcygqnijtBOIsygW1ZaWcz0ODvfAPT8derc/dCVD0Z6bOWbpXohw+s
 2xKVILBmpWriHXdEN6c6HrFt8bMzthxIYxAmwreBhj+VBRDgcogCsBxOq07wS1EJ4eFBvi/hG+D
 xnfUthulBEjY3hjOGS1NmJmv5qM8HC3CTNzFDB80kxC0xzm/CKkGE6GUjW6V2rlYuL14bTwZwiK
 O4qKMFb12P6pSugp8CTWCzijYY0e5A+d52WjZw4SgRkSbR8LbWUmiijLpuXBHUVOZlW+lMOIdfi
 K2CdmwQAC1QQYupBoMw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMwMDEwMiBTYWx0ZWRfX3dTU7wBX3IbN
 K++qM8MI0H1BpE6UxBGOUrqAJUDqwaWYxJLrunYdlQ99/KmXV9B3bT0t0Mj6vCajnUP1FzEoRHN
 LtHhUx4eMZObKo9hPyTVHYzy3a3D67c=
X-Proofpoint-GUID: mJVCvYdo7nItJiJE0HOxZGUCvaukUkR6
X-Proofpoint-ORIG-GUID: mJVCvYdo7nItJiJE0HOxZGUCvaukUkR6
X-Authority-Analysis: v=2.4 cv=P58KQCAu c=1 sm=1 tr=0 ts=6a6b51c5 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=Js9RLbieTBECFtt6-0oA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
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
X-CRM114-CacheID: sfid-20260730_062941_581321_395CA571 
X-CRM114-Status: GOOD (  16.73  )
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

arm_iommu_attach_device() installs the IOMMU-aware dma_map_ops only
after iommu_attach_device() has run, so a driver that builds its page
tables during attach (msm_iommu via io-pgtable) maps them while the
device still has the direct DMA ops: the resulting dma_handle equals the
physical address.

arm_iommu_detach_device() does the reverse in the wrong order. It calls
iommu_detach_device() first and clears the DMA ops afterwards. When
detaching frees those page tables (msm_iommu_identity_attach() ->
free_io_pgtable_ops()), the freeing dma_unmap now goes through the still
installed IOMMU ops, which treat the stored physical address as an IOVA.
iommu_unmap() warns "region not mapped" and __free_iova() indexes an
unallocated bitmap extension, dereferencing NULL:

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

Reset the DMA ops before iommu_detach_device() so page-table teardown
runs with the same direct ops that mapped them at attach time.

Fixes: 78fc30b4bb35 ("iommu/msm: Implement an IDENTITY domain")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Assisted-by: Claude:claude-opus-5
---
 arch/arm/mm/dma-mapping.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index f9bc53b60f99..a467e0d01a5b 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -1642,10 +1642,13 @@ void arm_iommu_detach_device(struct device *dev)
 		return;
 	}
 
+	/* Reset DMA ops before detach so page-table teardown uses the same
+	 * direct ops that mapped them at attach time.
+	 */
+	set_dma_ops(dev, NULL);
 	iommu_detach_device(mapping->domain, dev);
 	kref_put(&mapping->kref, release_iommu_mapping);
 	to_dma_iommu_mapping(dev) = NULL;
-	set_dma_ops(dev, NULL);
 
 	pr_debug("Detached IOMMU controller from %s device.\n", dev_name(dev));
 }

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
