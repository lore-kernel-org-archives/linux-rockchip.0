Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA33CC55160
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 13:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBGEW9kb5hKpN1OsTt9Pu8nBLvw5YDrXPt2U/ABzpXY=; b=f76n52/gEo7TPQ
	v3SIHn9mDsLePZIZinO/Vo9+OHN59ZaNiIXBBnM1lV+XWZibkIK4lTTX1J6kSSn5bMswxnOGIlQl4
	5sbYi3xftczlvJ1O9mo6GlOp3h1xD7rqwB/aRQfuzN05/clTYZWGthlHRegaJvbjTinMSRFukgGSp
	eGA7RsjvHmhUlTiakrw7l1PVFYuHpTSsAZRArb8zkUJxpHXTmHjAiPkoLfRZc/4nRsmlWSsdOgbgf
	RyIy5rTNrLq/X6xfkgc8pQ110KlAOQnLxGK7syHqVF/6Jj52sxMmjAczM+ahIGewx+k9JtZNi1QTp
	2y+wmQeGBJpsKHpCV4kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpR2R-0000000AdqO-1GPu;
	Thu, 30 Jul 2026 13:43:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpR2P-0000000Adpc-1rwC
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 13:43:06 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66UDd1Lm1237434
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 13:43:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LIHC0dGoCfL4jo/TTDqxxd8bs6eGi4j6fVBGNZoeJSw=; b=WuBkjEPEQ6+jaMAP
	mb7/eJ2DfGQPN8Y84dNiQ6j+CFSIFrqWAsxwUjY42fZuux0vSgKE4CwYUBxJX4y8
	YW4Lhs5BtJG87JVyfjtLs88SO1AZ9VVRACBDSd1dLjCwmFixdKS+k5Jq8L/SkslP
	dy7pA3v31WKP9bof+R+XetAssoV7ZE4Lakkcg1MI8X0lJ3jGB5a8srg9e6F3+byW
	ZbuW12hYQtj5jkMBvX09jKqK0u8ngTBgksd9BOf1ZQrpL6/nfooMFvXsBvRTHLkC
	ktGGj8VTarBbnRPHMG+yr8jQnddWlMP8CDG+t94qhxht+gDofuOu8d9l73N7yi/E
	UvDZVw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fr7pbg0gs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 13:43:04 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51cab6f7517so2618231cf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 06:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785418984; x=1786023784; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LIHC0dGoCfL4jo/TTDqxxd8bs6eGi4j6fVBGNZoeJSw=;
        b=G362i7UTG82fPGRFGTR9xYLJhshYxSHC4z9d6L8yS5o/9lZriYUzfpACTR/5BwNFEc
         bZFVFJh984yb4Owdr8womxgg6Gl2RR707wSpLbwJel0t3Gx4r5/en2WKYKeH+r0xRhkR
         Dj2OflLH+cd8zGrV4E5cE5lVPw8QTnxAKc2TLxRYRvIdabhXAqaTznrLGIi+McxJaCYc
         qmhqhm5HH+Yv9rKXIqlDLfC1B84wI+8wJOjzDqUByeqMY9XR78183S/r0gFZX2vXz0sf
         JCeHrUdjGnxtjj8DhTtKfERexRxIW8nFTiFMGTTB6M16s6INhN8viyRaM+M7tsuVnJCZ
         eyfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785418984; x=1786023784;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LIHC0dGoCfL4jo/TTDqxxd8bs6eGi4j6fVBGNZoeJSw=;
        b=lO3oA+vSQWshOiShMIRzYD1GZPO+EjH2iWMQnq049/SdTFpUPj+ecp/CdhzTZszFNi
         BeT877G7hpk89iBIyGV/RMw9u2jX1C7Yxiu62l1l+YwhcrmaQCZAO3eM04VWQduinUW/
         yZe0HA9R5YthUDn5ItkgCT4CFDsqXJMxEBBMy3osDsg/STaH7OlnQrEm9N5W9qhLMlqL
         ZZRUrsxoJ+m3i2T+EDF1qEgACXY4Ph4sdOjDJg9qepg4cXdpA0Vo/RMizG6ND8tdT5yh
         +bU8uXdsH1IQ3CL5F5e3LqNTiuq+TQYEfZWTpywfUKZvREypp+51IPo0aIECvRsq1skG
         6pTA==
X-Forwarded-Encrypted: i=1; AHgh+RpdjQyCJ9PninwTByk43XxQrGNNfbUHxnxfwaGo1ydou+R9YCKFFWk/fQTWZob/26rkdeD6mUNONRTQZrXjuw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxJii02rdAxyq2uAvxuLkRSTet548ce9vxw9F3ZytUNaXtrHmQD
	rpjel99AQWQ11sljUkPyhPgKTFIU5u+NKW7s02pgZVQzVHllY1+LLLTm30MPHV6Nn4RvNGF4pTi
	c3DsN50f/ZT7Bc0ORZploaS4Ki4YcviyAHRPU4aNNrIOAX8foIuZiAMytJUfSjsbeYpZH4ucyQW
	E=
X-Gm-Gg: AR+sD1069K59XtN+XKxCX/R3P+wZX5FE1jwO3vUinX/1ZCqupsHm1mYb0jZVBlCnb5m
	f4ht/ykKgsau3kJG/5V4ordzuyBu88sLsq8QYiXZJ85VJrGpqmkmYeEb5VXJeQZO7OELXgxWEj3
	wPUyS7oo1CAAKQtSuFdzeKpAV44PeumrgA7RFAPlZePnXzYWYgDiApDI1MMJgeKDp+7csm/8a+x
	3+WSKvLp5/kfzcaLFJvu6nNTRuOcTs485leQT/FrxGP4xzMe+LWPCLMmBfq4eREGDNWlBhtceDJ
	cen2q2OCIXkWWhs9eVSu7qJk2OPAf6/xdCsBRQuBAm1nXzOE810gRxBg75FH2B9CvkrBMhOAu4e
	F/TtNTlTx0LbJYgtZSZ+VEsOo
X-Received: by 2002:a05:622a:a98b:20b0:51b:f9e0:87b0 with SMTP id d75a77b69052e-52b42b7f23dmr3221681cf.2.1785418983819;
        Thu, 30 Jul 2026 06:43:03 -0700 (PDT)
X-Received: by 2002:a05:622a:a98b:20b0:51b:f9e0:87b0 with SMTP id d75a77b69052e-52b42b7f23dmr3221211cf.2.1785418983387;
        Thu, 30 Jul 2026 06:43:03 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1fa8b6dbdesm66080166b.36.2026.07.30.06.42.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2026 06:43:02 -0700 (PDT)
Message-ID: <8e55ef12-6c4a-42b4-923b-238b3739ea51@oss.qualcomm.com>
Date: Thu, 30 Jul 2026 15:42:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] drm/msm: detach the ARM DMA mapping before attaching
 our own domain
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
 <20260730-fix-qcom-smmu-v1-3-b12fa067804e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260730-fix-qcom-smmu-v1-3-b12fa067804e@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMwMDEwMyBTYWx0ZWRfX4MZBMg4QPi2k
 OlLdr6Xosogqq4glhifTzk5febV6s/tYg94/uiMYxb4dOkOpTe7LMv3w4LXDoeRgg003n/19vcr
 1Xuy+OSJeTURMz1+gXDF7izjTvX1DYwuXL1PRErLo/DUlu5e+ZwZRsUKjVwtjCWwxj755G1AqaC
 z6NIhUSL6nJOH3ekJEnzzCQ39HzqxH+AxZoSySA7azAnNNfFpq05Gd7sep2viXt03HPfCEGKUiO
 599rHI0Ne9Cgs351xxJ7tPVESBWgMSwFZVvdK//tvwv6hL/abKS/YuuNHq1WaoTlYHWI+f6HdY6
 pcxFTuyF9iVcM82KmqI/+xZYutm0SafPzhIXzGssDHaLZp9mVrW/tsIrDi9o5Wpfv8RpZrMIqCW
 paUtmNYQ8200oE92ol/oTeIYWcm8OaISnySNdpmtFtPaGb6zbrl/sxzyS1JJ+m81RHeo1yN0Tlm
 yXYkKe6v0rCIggG0Bzg==
X-Proofpoint-GUID: OY5f_M4nkxRaParH-P5C0XOgVQ2SZAcc
X-Proofpoint-ORIG-GUID: OY5f_M4nkxRaParH-P5C0XOgVQ2SZAcc
X-Authority-Analysis: v=2.4 cv=Pq2jqQM3 c=1 sm=1 tr=0 ts=6a6b54e8 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=mSMHI8jCXtBZcuwA1AYA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMwMDEwMyBTYWx0ZWRfX+bBq8KB2kIhb
 Cgdtl89YoHfAW1q0uST6jxnFkjk6S6pCnSmKSfydpWyxWrWx9w18ru0AN7wH6sv3YmqoWg27O+i
 jZyGDL3ug/zkDP+kQ2EtXQfaBiJRQTY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-30_04,2026-07-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607300103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_064305_592701_806B4784 
X-CRM114-Status: GOOD (  10.66  )
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
> On ARM32 with CONFIG_ARM_DMA_USE_IOMMU, arch_setup_dma_ops() creates a
> dma_iommu_mapping for every IOMMU-backed device and attaches its domain
> to the device's IOMMU group. That domain is neither the group's default
> nor its blocking domain, so when msm_iommu_new() later attaches the
> domain the driver manages itself, __iommu_attach_group() refuses it:

[...]

> +#if defined(CONFIG_ARM_DMA_USE_IOMMU)
> +#include <asm/dma-iommu.h>
> +#else
> +#define arm_iommu_detach_device(...)	({ })
> +#define arm_iommu_release_mapping(...)	({ })
> +#define to_dma_iommu_mapping(dev)	NULL
> +#endif

I see this is prior art, but should we support this config being off?

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
