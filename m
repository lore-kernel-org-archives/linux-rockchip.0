Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0575C87FCA
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Jul 2025 00:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qb43porHobaZUVBBVBJzLvSGLTyRhWrFkdy2k3akI1g=; b=JdsEAF/RDno7K/
	e8yyPkj0pKdIe4Xyi4tpBRNgZUBamKLd0TwLhvxg+xY1xRQWtQ+zvIPIHVQk8zTFHARH+ly6nZwPu
	42M+c2nm4B/LkI5NEJKZ3ZOEgGfGdpnv5PROG/vOfJPeYXwF2JYMzcX90UPkf2hW2AjiSZOZJAsu8
	3JfswcfgjkHuFruXqWCq6XhBJTn5M9K53d4nWW6VLqV8kkW1VuOkO19eASx1W7tv5oIBsr4owGVN8
	MO0URg9skj8TKgA02h8VmVS6p5WakuNRD+Yrh/3aC+14RtU4oklESM1D6+XQsktcWg2moX3sOflA1
	BVbN75+4+bs/JO6QXkxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufSdb-0000000Aws3-0Imr;
	Sat, 26 Jul 2025 00:19:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufSYm-0000000AwPx-09ih
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Jul 2025 00:14:45 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56PJJRob026745
	for <linux-rockchip@lists.infradead.org>; Sat, 26 Jul 2025 00:14:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=CTGcg8JogZ8+3e2c1J28j27/
	pKoaqY9rvoZ/CTXAvIA=; b=WQIrZPLebG37A2p/sAaV1c+nhCPLOEZ7dKd/z8Wc
	1EWqTW2Dz1/JkNdJ/nCiPKnFh+PmSQpBnc1k8kRzygJXo7V8ICN5XTBWNsfXWlNM
	+FVL5Exg4RjvNzbJGVJjC8pWr4B0KXC0bIJs8Xms3O1OBi3j/oh3PiKlnCaMwbaH
	YTWlWvjdgaUtEWO8HHhmyMwsKcVPr+Ey8b4iyE7Z9/uffJa+F9TdUyhLRAfFgqHC
	nZxLN8TKMrteknF+bwg2wtMg7kpADmN+c6doR8bKUja2yay1ysDov89fq2vJeE5X
	mKhZ/Lz4qMRy99m+IS26LwS4s37nq+L04LIc3aOco0Gw7Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2u3uvt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 26 Jul 2025 00:14:43 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e350915d2aso877855585a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Jul 2025 17:14:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753488882; x=1754093682;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CTGcg8JogZ8+3e2c1J28j27/pKoaqY9rvoZ/CTXAvIA=;
        b=FFLQDSJ0ikzkCnPIO7+LDkA5gHh2SJqiabQkKRV8XZeQ9jpR4Xgz3inlJrvVGvBFmB
         IPe4bYkac2sR/S7tYOhc96wYN6K4u8KNTbG+GUoasiDltGtAhef/ThMZ38fvLbYeFl5u
         uZfg5hf+kn/sgmC+7kGD0n+F8pFMBXnkSnQiPkmvSzefzHisWZskSbnW7W9D+caenyQX
         GZl3f32eHj/xoKf1G9vSUUQDREheBoucF2z2KUgQM/EQ6vDdUBifjeSQwjdAUhqg03ec
         mohrSnKI90IZ/QdQH4X23QX0/TD9H+ZHzOOb+1tiD5Vty60uuGMKNQnIp2oaqUgfKVhj
         Ungw==
X-Forwarded-Encrypted: i=1; AJvYcCVUGxw5JsfLMU/94FWQzzGB1xrCkIjqZ8of8N92/dZiakgD8oy3phx6ZpH4dQt4nnY1PbmcNXdWUpuewA00Lg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzNow/rqyw+ltbtnan4DpEYEo1NyyujyU4X5YHi04AxngwsLOWF
	GXNI5b/aCitSe52G9/t3GMft/fm2fr3pFpzv6BwjYjOa+3R16Fwj2u5/CJamoMHpI6b6SMFq2sU
	MjxFDD1EU50YsTXbsXFFK5k9chFnIDr/3FQM69oviksiuURDXGPVHTa2nWyRjAYfJG8pNzC7Jsl
	8=
X-Gm-Gg: ASbGncu8BnbNTbaUyBW66IaVZfigA83GvZyP2p8x4Z6BomG/7DgNC3JBM80z+qALxsp
	OXX/3dTd5LbERl8QqqgV0KZlYLW2lmF+V0pHsxxRVrdyElpHXXOglOmE/OuLxM4EaFGGUMw6aIL
	d7qoFPCwf9MDhaeWh8En4YDoSzBo1n9uNOn2eKDOsQrWK7rn38IShiBmzMPx0nKu+1k+cyLmyUl
	8cWG4OJfGjinvPC49jF2/DhQfAm5KmoGlNOBsVws7ULIYtq6ki0eYSrNgw5PmYw95nfbBBRB3fp
	TStc2JvPN5keEfsw0OS1vXJ94naMHoVe82nU+WdbGtUraTTeTtZHOxJAF96Q+h4GQQ723kYmP9N
	kk5wDvYd46lj6UaRaoU2q455AIJc2v4PZESUFGKCjmaPtg+aD8mZP
X-Received: by 2002:a05:6214:1c41:b0:6fa:bd17:313 with SMTP id 6a1803df08f44-707205a701fmr50122936d6.30.1753488882361;
        Fri, 25 Jul 2025 17:14:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGdQpwGUCkqR1lOUKTKaqZouyRm9icTapQyzE9JidQYLs6U2H/kr9H1AePaGwZvW49Mwo6Dww==
X-Received: by 2002:a05:6214:1c41:b0:6fa:bd17:313 with SMTP id 6a1803df08f44-707205a701fmr50122636d6.30.1753488881831;
        Fri, 25 Jul 2025 17:14:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b6337568csm188598e87.129.2025.07.25.17.14.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 17:14:39 -0700 (PDT)
Date: Sat, 26 Jul 2025 03:14:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, jingoohan1@gmail.com, inki.dae@samsung.com,
        sw0312.kim@samsung.com, kyungmin.park@samsung.com, krzk@kernel.org,
        alim.akhtar@samsung.com, hjc@rock-chips.com, heiko@sntech.de,
        andy.yan@rock-chips.com, l.stach@pengutronix.de, dianders@chromium.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 06/14] drm/bridge: exynos_dp: Remove unused
 &exynos_dp_device.connector
Message-ID: <ovlz5hotvqyn4gnrmidfq3aafq6tkjjpnpgt43yterf2cd73ys@dkarreyoctbh>
References: <20250724080304.3572457-1-damon.ding@rock-chips.com>
 <20250724080304.3572457-7-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250724080304.3572457-7-damon.ding@rock-chips.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDIwOCBTYWx0ZWRfXw4YjF7EZ860c
 IBKBwZWmbvmHvzlr3xG2dR+qPvqvjIAeCtWN2TRRi5TEuCr/zuC+uvQCCZVab1tbmLVIdPEm3IC
 t5fK/uiiCiXyoftr5aea2PJgBxjHCSM62uxa5x1U1Mxo4P83E3JCMqO/C5K+sOsoaUnWS8YHHLX
 J1RiPK3eqSckT89Lx0vW/zzNs7wC1S3f2vz1Kl888yx9uWp9VRge0ChgG/hMcE/I/NanYtfaykH
 ApZeNy084cfiVxBRx4M0YQGD0B9+TPOuDIWSP6WtcjXv+oNHWRSDvH+BN4ZpXyCA+RvoQYsZDe+
 q+Ah8QRO8KDrX/iS1KJ2sEXmgRoRbH9eW7+FZG8zfNKwH6MmD5BtTAEIt4ZBWIhaez+YRc/5osU
 3aSakB7S1AyfoaVqhppFErAqiUPC+ywRFvNayN90Zn/M8hOxiEPtWkT9fdN+APsCi+GULo0H
X-Proofpoint-ORIG-GUID: kPIyNWcGJ7T5D_yMEexVRkRx-MWXUE6X
X-Authority-Analysis: v=2.4 cv=FcA3xI+6 c=1 sm=1 tr=0 ts=68841df3 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=xX9fryL7oNgbU_NKkWoA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: kPIyNWcGJ7T5D_yMEexVRkRx-MWXUE6X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_07,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 suspectscore=0 impostorscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 mlxlogscore=771 clxscore=1015 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250208
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_171444_075954_F79FB87F 
X-CRM114-Status: GOOD (  13.31  )
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

On Thu, Jul 24, 2025 at 04:02:56PM +0800, Damon Ding wrote:
> The &exynos_dp_device.connector is assigned in exynos_dp_bridge_attach()
> but never used. It should make sense to remove it.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/exynos/exynos_dp.c | 3 ---
>  1 file changed, 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
