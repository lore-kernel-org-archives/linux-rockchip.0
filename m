Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5CA8C55165
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 13:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JipJGFW8XhyakJXAd/T12uGPUtbeWqaTdqKqdIXqkU=; b=UGxpZhydm5ci5Z
	fzXR5E5jpU7VZZjwdMxsvsmnTMsH0lTOPQ0ki3jKmq5IGVry6kHBn8lFxGnHggTjRXWgufNW9kOXU
	9CyZGPHkccXPvDbF0CCeHkypjTi4swcAu0r6wB+fwoJS98cL/qj92beckSJEqcVOJspl3jB8hRX22
	HGtn6gR8SW7ri2P3qvokTi4vWZoWLua2BeKHwci5Fs59JDFdAb6HBvaD5rOetc++yM77zs0elPAFO
	G6Oq2kpBJbKxrK6MdFb2H20g07WOsKM9VdNApu7c5aBFPyk4ysK0rXgAzVnlndnQolhENo7HlXJfW
	vuVgGLWohJWghr0n04ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRGk-0000000Ag3h-1fcq;
	Thu, 30 Jul 2026 13:57:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRGg-0000000Ag2F-0Hwl
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 13:57:51 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66UDDCZI1372756
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 13:57:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dXD32x4UKkxDB6V0sSMv60ZLLDNzi7VhRUUM6/9KUrQ=; b=iTZIKINYXBw5rW1F
	0AQNyPGsB/xxWodIgL7ZH5aZtW6UW+dQXYZlejGZoFK/y8a6YTQTG3elh0ukDGiq
	lZk6EuCJfERrCZesngkrpSNEDsYfHEuQbChd3BhRRYD02fY+Mcpzgf96WKhjhWXq
	O0sfsd7eWQgeDhSAcG/m62MXaeecBTUlV7NmUoq/JPL2cZKFGlaO00LiEny8K5zR
	/2DS7bg0HKCDVL5HbqNROHWzrMnMfCjbJw5xSBj8HSVXD63a3kPfKB2pu9mbO9JA
	oG57cz/v+K8GtfVTBWNVolg05c7yHJ/24RgaxytVSaNW1aOxTV3VGDWjkeOAD/I+
	mTp26g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fr70bg93w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 13:57:49 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-52845bd815bso3719141cf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 06:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785419868; x=1786024668; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dXD32x4UKkxDB6V0sSMv60ZLLDNzi7VhRUUM6/9KUrQ=;
        b=G6tPgRAnDrYJa/Bnl3PMSWg9JZSvlw1G8OTOvLBR8gA9FY+kd5lYUfa0tPvBMZNiPl
         X1VpkUJEnH4aAv5lpCvwquRk2BtDvgNQJPbclNup4oHavTsTFzhlGV77jBFAfysGNkuH
         aeduyaCHr+q9d/MZxO1uOy2Ojs/rUw+vVSisD3Du2DmzqpwOgNJCNkgtXu49m0sEw6mf
         gE/fIk1NGbcvOYIBhy1bnmUB1zlTD7ySzfJi8oXv+oAqNazEKWjWfxxr/m8j6cqK6J6v
         jw/CPz6tZlziRDb/erBbqGhwGXh1BTOHG3WzM1LxAeriVvscUwLi1zY8Hi/YJlligbNB
         apCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785419868; x=1786024668;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dXD32x4UKkxDB6V0sSMv60ZLLDNzi7VhRUUM6/9KUrQ=;
        b=jua8s4QHWoYWCgBYO0+36FW7Gsp3tV75NEPOM5n+ZO4drTPUT/L35egM4OqQOxzydi
         lraLRJCacI9Whu2C4K+z0eGmNSXgyaA/UMGE6NNj3xb9fl7o8NeKMzSffknoj/RMoEyk
         qTLucmKoFPS+7IV9RVHx8QroF40EBno/mbddPVtGPgYuUu5YAlo7WvKKxt7eFYdggg9C
         549MmPyrG8SXOGN7uJ3K8tPz9uaDE0pk5E2eFpQt5Lzej46xW5eaRc7bZh+sAMDoy+9u
         1fRhFSOWuHNAMLqkIZZpid9SIP+l349cNDrwPc42xaXuBPDeC2B4/5r9o39e94W4To1W
         MPXQ==
X-Forwarded-Encrypted: i=1; AHgh+RrM9LXjdfvWk+CICd15ecZ5C+M6muV6T/YV0VGxAPHs+GLRjCaEgZV8Xjc3r4I6amt/qyxeP3i7gN3DI+8Rwg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwXp5UMwNgsrdGYhPLowYbDLvaHmql1GMvYV2RKsgIkXYsgQg0+
	gZCtSbPk+syMK4lEo88lpYGXlUmo9aLnpveM1qC26L/VR/o8fXsl3b0hJJudOlE46IfQgV5mng8
	GErbwnLmFngqUtOLuiwnMrwjgNtgeRI1CIZY9AJLypq/gcPr7mS5p6BDzEcQ/mzmJpBJ4zI4gOE
	s=
X-Gm-Gg: AR+sD10nv07Ws/NTH5RIsfdGz1/m7jIfz5aEuGWichbouaDL95dpDNPqrMlLnbqPYil
	ndXJgbmigyglPLqq/LKTm2vDUXAgPRuEDYmPWLt4RbozGbCjwz7nqLKZMlIK7q8w3ZPLC45e64Q
	HsGx0WPsyBLJLT1/hdNZ3GaqJC0+f2t9P4HJ3XzwdZeT0wmT2iPNd3++dODE2003Kv9tcTzqENv
	4pSbLgAAn1IH3ZpFkRO4kRu7KAgF7KcZQVHRLtRgU3PftzfcUABcPVLNUMJBwHIiBVV2GL+1e5i
	5GtJcwQnGaGSTxs+YwXi76oUix+QWCO1LTU2E257Ykvlosg23IQqU4IrpOVo0svkRktEH7mmGTJ
	ACR2VkfH0UPj0a7QJyf7mcczE
X-Received: by 2002:a05:622a:1207:b0:517:5e32:f3ac with SMTP id d75a77b69052e-52b4299d6d8mr5430691cf.0.1785419868327;
        Thu, 30 Jul 2026 06:57:48 -0700 (PDT)
X-Received: by 2002:a05:622a:1207:b0:517:5e32:f3ac with SMTP id d75a77b69052e-52b4299d6d8mr5429911cf.0.1785419867788;
        Thu, 30 Jul 2026 06:57:47 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a07d3831ddsm670344a12.17.2026.07.30.06.57.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2026 06:57:46 -0700 (PDT)
Message-ID: <c77db81f-9fb8-4803-8efb-078b8cf70fab@oss.qualcomm.com>
Date: Thu, 30 Jul 2026 15:57:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] iommu/msm: track a context master per device and
 IOMMU
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
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
References: <20260730-fix-qcom-smmu-v1-0-b12fa067804e@oss.qualcomm.com>
 <20260730-fix-qcom-smmu-v1-1-b12fa067804e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260730-fix-qcom-smmu-v1-1-b12fa067804e@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMwMDEwNiBTYWx0ZWRfX5IMVXrf2lVp3
 TsZlImG+MuLdgaOBLjf/LQIiIMY6TqHwvOakIBaePrEx/E6FuKoLxVb0XJmRyPIrykFwx7OAZ9d
 yx7GZA5rrecSTYO6unRo70pFFMzKUIgjs23LGoapdKrwMq68vPj0QLYaPgzFPEB8+hjorAml7qw
 8pCIrUvmWUQAX+AuPgzBpiFldVooZSPPp1ZSv+mDlIDhb6VNNBKXf234weGxr5V498hETteR2wN
 bHKb3NdDFN6I1QqU2pU2pQ5EfYKUwzmo9WHED+NB3UrLkSyEoqzYKLUeGariw7N0IqLcxNXlKh6
 UftvIUev2Id5xULO4+0ddLfK+3vkRtVNP/Y85g0LhZltkSWclF3UmIwhekFUeMzzlrM/jesww8i
 qtXO6XntJkHcS0bsP/gajnU3eQ/WAxxqAC9l/+3n0y3Tm1LERoaw30nCihiOzx2jRJmf9dtodtt
 g7jA/QguVVrlfZMIPIg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMwMDEwNiBTYWx0ZWRfX9ure79keSwrJ
 NopZOYMy6jskhBGPxhe3iIjESlfAehHh07bU7O/AFmrLFPHAJJiFps+cx/k4/2C6VsiAkAfuLRL
 acVycKK4fvcR/r1q3ACLSWeoQG2zaJs=
X-Proofpoint-GUID: VRLAihnMUc7XsYVBisgw5Nxx_B8WutUl
X-Proofpoint-ORIG-GUID: VRLAihnMUc7XsYVBisgw5Nxx_B8WutUl
X-Authority-Analysis: v=2.4 cv=P58KQCAu c=1 sm=1 tr=0 ts=6a6b585d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=dmEO2URhNf-i2iSvwFAA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-30_04,2026-07-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 bulkscore=0 adultscore=0
 malwarescore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607300106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_065750_122385_B3F2C626 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
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

On 7/30/26 3:29 PM, Dmitry Baryshkov wrote:
> insert_iommu_master() decided whether to allocate a struct
> msm_iommu_ctx_dev by testing whether the IOMMU's ctx_list was empty,
> caching the result in dev_iommu_priv, then unconditionally dereferenced
> the master:

[...]

> -			dev_warn(dev, "Stream ID 0x%x repeated; ignoring\n",
> -				 sid);
> +			dev_dbg(dev, "Stream ID 0x%x repeated; ignoring\n",
> +				sid);

Is this intentionally part of the patch?

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
