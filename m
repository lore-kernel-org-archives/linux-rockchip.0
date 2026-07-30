Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AA9BC55165
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 14:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TH25ttupCBJFo+DkS8XzmcNvsLRaWVCm3f96wx3cNHs=; b=N6S+/Hil+dYPg4
	CixOoHW4NficfM666UKwK/uTNi57RKOkDEMB1EZ4DyzLqokgfWcfmftYzVOh3MbzShZzOeAqTBJLF
	nkYvFDTkbEWVtgw1okH+FkzOOfsYIUX6LoENR6047dGFq+OZ2dybrjrhMn3subCjxRe78wkM44ALf
	1NCTMjq8onh1xR0oHIUV/vRdDExygG9fny5FcfO9qUwBjE6+ta+nPHSqaxPWLTeVxGi2WpTuoAFeJ
	cEWNzViTm0Abo5C+y/6TMXyFOwkygzhlWtyT3fVmYSCnyZkOHbhpNtuyBpDyOgi5RrZIc+BukaKde
	RdVKbfDyYpV+u4xyGbzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRIz-0000000AgZs-39d0;
	Thu, 30 Jul 2026 14:00:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRIx-0000000AgYQ-2lin
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 14:00:12 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66UDDFnM715737
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 14:00:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Bx2xLoU9ox3YzTyuhkOQkmhNLpIKdS9tw9DJDHAPc0U=; b=UIz+yc2X1jEWPTdy
	WwXtE1QE92TeVS/mdHfvjN1HOxbYI5AssW4CqRojNV+GVWWcAnYIrTEMecbvK6Jb
	fFgdCdLu2kyJ8aZU6AhZEUrfqR8Vvqmw681XXVd+zR9YEu94Z6wQAK0YHJMYjgv/
	N6HPqlAfX4h+YoiRD/J2AyvnohJFzMYurtcWM8zIxCiU3pKWE13PGOgVFc2G9Tsi
	BqWBp5xJrtCIOXCg7DmAbGDCvp/CKVFAoNscQJ/NMblywndCwTwCu4FS0JYp9seL
	Za9QOZ0URQML8NPSoTxKKXLyV9uP1UnnUkfHrekEnNGCXGZOPjbnMg5E9i89VKdW
	TCqwiw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fr6ucrb26-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 13:59:59 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51c21be5bb4so3476041cf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 06:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785419994; x=1786024794; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Bx2xLoU9ox3YzTyuhkOQkmhNLpIKdS9tw9DJDHAPc0U=;
        b=dxonxDTV0oPWA96ufFVNMWrpde1IFKqVz7WAwuD2Ra7Fwe3z+DQWJ8lPOIP5zrONDc
         5azvseVJePqnjbqCZvZS8Jufs8ZfC697nRAm1CCo3GOZXWGnZbfDDHxS/PNDtQU+5T1g
         lJnzUtz5mfPhKdtrdRTLnV/i/Ku5+uAjgWC3scfHOnU+kPoyjnc7PH19NlaJtVzr+cWv
         rYskVCVQXR02DSwFITRR5C9EdrFfWcSqq1YqzJ70T8Vgjt7pL9/TIXaqCM5cTo++8g1B
         +6sbk2ekad0zTux2pCHxTO9pbnNgiaRzHZCyxUFOrRVfW9b7OthiaANsAXlAydpLkkSM
         XsDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785419994; x=1786024794;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Bx2xLoU9ox3YzTyuhkOQkmhNLpIKdS9tw9DJDHAPc0U=;
        b=psUJ8cLa6Gp3ala+jvWhLzmYZA2qqJEQa+seoJawdw/FC2eA5eHfTuEWCGTYJdzMS7
         OhNdjNOZ2HC9GeIVAHbuBvJUm18XzkYybIKC4DKP53S3wZAhikHHORqJgKn4FITgXSx9
         6iIavt3CDwh+Oi62QlMjK2TtKajUQJDMAkJ/oLpctaLdMYMMayOACXTCpurdlEx0n/MB
         QedfOW47ZNCjSezdJLFkaKaVfJfRv4P+GrbNnr5MNekDPCKAhwu7OD0vBaLdPQaL0Ywa
         AMCroaLRJaE6fK/UDi0xd389NeMxIbz5tO3bM79jpbAPkqvoIVegcDql78fsvW6CSszJ
         e/eg==
X-Forwarded-Encrypted: i=1; AHgh+RpwQp8Ba8xepPPjLxWBx0YV3kdq0mGJkH7GxGnqfJNtiTWdgRpORLoZ9rzcJ4UBxqyq4aAjfK6y28jRj1WyVQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxHPmiP4mY9f45zTm6zH9u2NDFsK3A3MbjWlW6ZNJlWXUe6eg4E
	nEqdCyx5yvN9DPjybxwVio0W6OmORkzXRwo9xeTUv4ylX3oP6G4mQOth5lKVU2Hdaw8/D6NT8MX
	L0Q1AHPb1psNsZ/nouTAjwU67BRA6czKNq8xsz3ac2e6PdBwguP1GHgMgsg/U6MzaqOKS7LL2Tz
	U=
X-Gm-Gg: AR+sD134D1qkWGTn0Q6kri9gb5jtIONCHw9GBKFlO71HamAnrevxTII0hBrWkZOuydj
	rhND8UOpUTrlwHQ51D5ipNTYgT4FOPIavGPCXGn+vS4fPkv9mzTHRW2IMZQkiosoZMJgQLxCmmV
	vCtPVv3HkdaVTGOi5IRdDD1vy3F71yNyRyJHblv2tOeBFtEFGUAN+bMAafeGM1iBvsQuflZY4X/
	VF9SVy360LnLOUi1x5so2YFfJEfIp6FHD81VylTitJBrb/iCafdLNb74TRTcWs2JrEjF3GWPx1q
	yc1o77YdRrijSZb+TI81TBmsJtmMQxH34PrBtcn+yw3jaQXWOC2pzdOOoT0ZzaSzm6p4e7bG32+
	jV/eZMKmFqrLfuX+cgcL/3qVf
X-Received: by 2002:a05:622a:a990:10b0:50f:b9a6:82ae with SMTP id d75a77b69052e-52b42b4deb6mr3958101cf.2.1785419994015;
        Thu, 30 Jul 2026 06:59:54 -0700 (PDT)
X-Received: by 2002:a05:622a:a990:10b0:50f:b9a6:82ae with SMTP id d75a77b69052e-52b42b4deb6mr3957631cf.2.1785419993517;
        Thu, 30 Jul 2026 06:59:53 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1fa8576a3dsm71944066b.14.2026.07.30.06.59.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2026 06:59:52 -0700 (PDT)
Message-ID: <9d43109a-6c4a-4339-bf8f-de3aae6e25a6@oss.qualcomm.com>
Date: Thu, 30 Jul 2026 15:59:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] drm/msm: detach the ARM DMA mapping before attaching
 our own domain
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
References: <20260730-fix-qcom-smmu-v1-0-b12fa067804e@oss.qualcomm.com>
 <20260730-fix-qcom-smmu-v1-3-b12fa067804e@oss.qualcomm.com>
 <8e55ef12-6c4a-42b4-923b-238b3739ea51@oss.qualcomm.com>
 <h3rfonvwkxkmschyypytwgwxbmnq4rou4iyk6iq577c5tcfdl2@zrz3xhfzpmlr>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <h3rfonvwkxkmschyypytwgwxbmnq4rou4iyk6iq577c5tcfdl2@zrz3xhfzpmlr>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMwMDEwNiBTYWx0ZWRfX/HNLmrDyIZe1
 /l0gInwqEObXItLdRM1tqbLEXtKyzB95cNP/wzNF1+MRMWEREEUqXL/hwX6bApNKYwgjJj0MMX/
 ORoG0V2ELUdr26GvfwIUKbDCA9dtCWI=
X-Proofpoint-GUID: QXzknzpM8MYjGRYKTYc2ke7tw-lbHP22
X-Proofpoint-ORIG-GUID: QXzknzpM8MYjGRYKTYc2ke7tw-lbHP22
X-Authority-Analysis: v=2.4 cv=W6QIkxWk c=1 sm=1 tr=0 ts=6a6b58df cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=FAOltU6waKXSbT9yybQA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMwMDEwNiBTYWx0ZWRfX3ZWwYVr2e7Gk
 IYXprPS3i9Bhcmg39d+4N+MK/6j6I4ZuTXEryISEmcmlSUb5cqHEb6PwVqomfTFJS7GkFrTgl41
 0YelgflIzubItcfXjtJtpiFwTRlXwHcKLt6PKbLMrvIZ1JHwwohFVhl6LvhR83lYWgnAhnHgWtT
 lYvjCmZ7/luM0RAlTkgiHVQOCNpp0l3KY5XZXp43ZY7dne45hnWo+5PbawcICQE60Mo3B3L1tH1
 yZm2iLQ4qLdH+kaOpAwREO4fMd7Kdu5COtO8jXQ7TIWQiVq8dwiBrI9eFgt17eGleHw79NSsO2v
 j/9u/B8ET4Ud4v4LR6p05EwUhBPmn3AUc9+pw8NXZ9okV3yCQ1pEm6ec+vt/NmEjifCSH1bE8jD
 bFnqWsI7OU5aHyvJPvSJFSrWIX/S9rFTyK+q5ABx2SACWWpxGH/ZLoOxEueodCj0FpM78XWpdNU
 Akslhifl0GEEQqh6RtA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-30_04,2026-07-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 adultscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607300106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_070011_711928_6E5230C2 
X-CRM114-Status: GOOD (  11.81  )
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

On 7/30/26 3:58 PM, Dmitry Baryshkov wrote:
> On Thu, Jul 30, 2026 at 03:42:58PM +0200, Konrad Dybcio wrote:
>> On 7/30/26 3:29 PM, Dmitry Baryshkov wrote:
>>> On ARM32 with CONFIG_ARM_DMA_USE_IOMMU, arch_setup_dma_ops() creates a
>>> dma_iommu_mapping for every IOMMU-backed device and attaches its domain
>>> to the device's IOMMU group. That domain is neither the group's default
>>> nor its blocking domain, so when msm_iommu_new() later attaches the
>>> domain the driver manages itself, __iommu_attach_group() refuses it:
>>
>> [...]
>>
>>> +#if defined(CONFIG_ARM_DMA_USE_IOMMU)
>>> +#include <asm/dma-iommu.h>
>>> +#else
>>> +#define arm_iommu_detach_device(...)	({ })
>>> +#define arm_iommu_release_mapping(...)	({ })
>>> +#define to_dma_iommu_mapping(dev)	NULL
>>> +#endif
>>
>> I see this is prior art, but should we support this config being off?
> 
> Yes. For example, on arm64.

Right

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
