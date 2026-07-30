Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ED06C55165
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 13:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ixS5AHZZyfsRbTg+L1sJiyfviXMzANcUbJA+m2RG6wk=; b=uPrR0+n6Mj6OFR
	oCJLOXBbdBprnuXoT5k6B1fs7XRpnr+wCuiNfgl+TvtSY1+xtqE65wt5qwdpHaytBuwQ1h3w7nJSL
	WcbECmIqFImF+ZlP3kzDisRl1TWsbIbKRoJ9rq7M/opqfo/o1UsITHJ+PgDJFFeVHRv5zZNvD+/dz
	9r2x5y8sI2kPjdnNd4ZjM68I/D2xJLpKflFfpt19qk9Yg/gKMYcM/JWbKVPsM2pB+zM7zIo5nl6/Q
	zlOuKQRM9XOeWd7kdopRL2DccJeAlqZbAC5A0NRYHOeR1gu7ITcn1I1fZnrkq+UyZ1xBMm4S4zk2h
	woOsoCVWBXJxWveU0kJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRHD-0000000AgD8-2XmW;
	Thu, 30 Jul 2026 13:58:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRHB-0000000AgC9-1dzX
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 13:58:22 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66UDDR6J427148
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 13:58:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HAQjGeRZHjyUwhLQVrzoyan+
	i2a1c9ZmrG0BP4f4QSE=; b=JtDGpmHEJRmAYidb7xSW8UbrE6V3u1IQjp+WDhkr
	XsgLWPuDjJe//HelvH+nb5W4sUwseM2j5J1QJ7M4iFam4BlMoZ/5ou+24aoJITmc
	n1FiKdbsXbu4FZSJPzkCNpJCnfgUEbacSyeut+7NkPh+7IoiVIKMKTudfbhxRoXH
	OSFgsCpvJOYDJP/vjdvZ9GbyFzQmpAsd0jUTCB3zb4O6ATuUuZHxtvTtxTjcF3GG
	TwrGNkBlKvGg9kJLChk+4LbaSFCWrmkcTH1I3xF4QHRpl3V+kp+q5LUe9gD4YjtB
	+oi/x297yj3NAjW6h2d2iKiWwxTEgQxh6ZH1xl8EgBFeAg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fr3tyh5et-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 13:58:20 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c01ff996dso23799711cf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 06:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785419900; x=1786024700; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=HAQjGeRZHjyUwhLQVrzoyan+i2a1c9ZmrG0BP4f4QSE=;
        b=PVa/zQ/qCUz9uBC2+l7SZLZ2EsrxFIpdk3xyTSDOFGWzythVMzr1k5NbVmKSHhbBGT
         KZaumgCQBQdPojzMOXUdyOh7rckGz6fH2zjehu2ZDwcvYYkykXeGDXE4ffrt8DQcLuKE
         pdBSYXma4kCBNX6uU/V7GsL1MQq8sufoYtiUE68Plu4Vd1z2G8xTT2dATxgQxXVsy+zu
         DMwlKxCW8JZUyXhyjR2QZwuFKu0Px1p4/JqiWXRQ3qk0YMZNc05AhcYZHDfOxtJoiBMY
         jLY0Cz2DxYtmK4h33CfbCAIuA/4jwpCiWe0IAiQEcfU+gJBI09PkgVpeBaKtVtec2C24
         zILw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785419900; x=1786024700;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HAQjGeRZHjyUwhLQVrzoyan+i2a1c9ZmrG0BP4f4QSE=;
        b=XUuIZGPMRXG8MxXQjyu6PaBR4Z/2Hq9hxpPS7AqpLDPbjJWxsX1KeIM212GqGhtxvz
         HBtXAP8gzss7+cpQ5JZE92m+PTH+af+4xujDAd/XRnUBfIdCkp0C4To7TGigK8wVhWNI
         MPea8bmt3ytvKJdwPlnQ4XyJjZg1n+RmZoOmPOvsHzQa0IBhzma95bmHdoe+sQqO1/Ed
         DEbW6LHsXdFDlWIZC6md5qgqopUs9M6nQYMecw8D3xwjLyzKlpw9HfwTp5FZIAyMo71B
         E+Xngf1V7oVBKTR/3vQQ7Hmvaa1gHUPLiQulbc3EFV/GDrZ5ocvj4dkScoAspnkjJRno
         CORw==
X-Forwarded-Encrypted: i=1; AHgh+RrzCSreo/37PNIt5Z5Y32a13f3f393YMI7/Jvi0JTbLThkHZbjKxvlzvDex9XNW8s832mT0Z25+4vTK43q/Kg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyQqWzS/yGR6jH7WQp8XN/CwqeVp/a4+808YEA/fsmKfgTOoJo6
	JC2BFPKRnGGkRp7ox/4KwPyMljKNfSeTGPGUzAHPSN4IS9Ecn7lVmBj2xsgz2ECMSEQhH75Ld5o
	8lndeW+Xos/wTkZInlddtxUVksVvqchwfqBKSZl37bpsicB3jn8uo7jFTbic4j5HPzCI4sX3VKA
	g=
X-Gm-Gg: AR+sD10kIERNDlXjSinm/JVZ4KmlvfOfvvwrV7mQWO/3NgZsGrNNJ3R5GNGlW/h8VWw
	ZOxauGi0MCtB75bs32Eb99p14KPaMAlqcFjFIV++JGSYOZVv3Dpqrp81Ek5gkdwFPjL3Nc4MKKc
	z9mdE4CXoO8R8yA3aD33LP3n4idrK+ntKmdXcTGsKlMMCtwmVuNp/MLTZjrtV8MjOAZ6UvUBRW9
	Kl9KqvBsb89UmsORRObjj2Vxs3DieE28INSMtOmgnGVx/H/BFaPgA8EOMKbEX+/HMfT0XhOzgwQ
	nM5k+rky7XgZgJbwOq7gex94v1jE9Vcf91MUYIdEWKfgoIaTZsuoH/j+ZQqyXZ57OJ5U+ElmB/f
	1fQ3xiHUQ/6YmsqD+eqfMgGN+NxszT93yEolHSjewTaTXty/wLX3ClhTlREzHEWzUgOQnLkrrZm
	OfnyZTNCnirAmtZg==
X-Received: by 2002:a05:622a:281:b0:51c:7b12:1200 with SMTP id d75a77b69052e-52b386c480emr27808331cf.78.1785419899630;
        Thu, 30 Jul 2026 06:58:19 -0700 (PDT)
X-Received: by 2002:a05:622a:281:b0:51c:7b12:1200 with SMTP id d75a77b69052e-52b386c480emr27807931cf.78.1785419899145;
        Thu, 30 Jul 2026 06:58:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2db94febasm343902e87.19.2026.07.30.06.58.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 06:58:17 -0700 (PDT)
Date: Thu, 30 Jul 2026 16:58:16 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
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
        Heiko Stuebner <heiko@sntech.de>, linux-arm-msm@vger.kernel.org,
        iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 3/3] drm/msm: detach the ARM DMA mapping before attaching
 our own domain
Message-ID: <h3rfonvwkxkmschyypytwgwxbmnq4rou4iyk6iq577c5tcfdl2@zrz3xhfzpmlr>
References: <20260730-fix-qcom-smmu-v1-0-b12fa067804e@oss.qualcomm.com>
 <20260730-fix-qcom-smmu-v1-3-b12fa067804e@oss.qualcomm.com>
 <8e55ef12-6c4a-42b4-923b-238b3739ea51@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8e55ef12-6c4a-42b4-923b-238b3739ea51@oss.qualcomm.com>
X-Proofpoint-GUID: F_wRpF70VMpE8udRni6bEGSeZG_QrKSt
X-Authority-Analysis: v=2.4 cv=JZOMa0KV c=1 sm=1 tr=0 ts=6a6b587c cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=iwl2vSsomdHTBBcAHCgA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMwMDEwNiBTYWx0ZWRfX91TzMBTgP4AB
 QHi5wsl85iEbGIXyThNqeb9LUoJDJsa5NNHpNSTv+uobtg283damh3WXR1nw5E9OhHXmJbJTW7q
 XIcZwdGeDu9cu8PeW9sUK4eK3jET7zklH2nOB6fj8eyHmkhZOIaHYo0rz7sBAgPrrA6uV0AiqlM
 rSU2CZDXVsFzJoC+GhQAJU5ZszR11Zox2cQY0ktsr7z7h/LJOS8bFhF3aIWZwvmQTzLvlmZ4RHw
 LxvMdpR9FqbwTx09dDL2AN1wFEGLrE6EROhp1KfdN/CNPAj5T3lotJDs2ru5LRwwtXPUjONDbWI
 a6sH1m4yQ2bDQxXI5FCWC8jD0TzZCxjqdfP8U2HDdnyuxayE/nZJc+uSBGh+U5DkRF7NKBtXGQG
 ET1Ux3xp8rKqom8nlQ7Be/AQa5j7gV/g8w0eM16LWkiY8AQjGImdhTILdVh1+hqUTgfk2mQLiju
 w1k1zstcKT42VKy7Q/g==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMwMDEwNiBTYWx0ZWRfX158NHZvhukF+
 u/ApQ8K7wfepDSl5K0vbNJZ8qCGVwqU+l+i3pKhTOk34znfPBtNUFwp+7N3hnZHleqWlg367G92
 PBu/Mt5DarPAGSzpn6Efw2Fww3pLXDE=
X-Proofpoint-ORIG-GUID: F_wRpF70VMpE8udRni6bEGSeZG_QrKSt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-30_04,2026-07-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0
 phishscore=0 clxscore=1015 malwarescore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607300106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_065821_440739_7FEFB68F 
X-CRM114-Status: GOOD (  15.44  )
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

On Thu, Jul 30, 2026 at 03:42:58PM +0200, Konrad Dybcio wrote:
> On 7/30/26 3:29 PM, Dmitry Baryshkov wrote:
> > On ARM32 with CONFIG_ARM_DMA_USE_IOMMU, arch_setup_dma_ops() creates a
> > dma_iommu_mapping for every IOMMU-backed device and attaches its domain
> > to the device's IOMMU group. That domain is neither the group's default
> > nor its blocking domain, so when msm_iommu_new() later attaches the
> > domain the driver manages itself, __iommu_attach_group() refuses it:
> 
> [...]
> 
> > +#if defined(CONFIG_ARM_DMA_USE_IOMMU)
> > +#include <asm/dma-iommu.h>
> > +#else
> > +#define arm_iommu_detach_device(...)	({ })
> > +#define arm_iommu_release_mapping(...)	({ })
> > +#define to_dma_iommu_mapping(dev)	NULL
> > +#endif
> 
> I see this is prior art, but should we support this config being off?

Yes. For example, on arm64.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
