Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE60EC28B30
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Mar 2025 05:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VvYDPDrxjRqhatAYjcZexNPFlH1n33n9z8RuVy4tu48=; b=G7cUY6SEZQUHBk
	Cx44zJAXYMZed+v6Qeqwp1cBbIhBfJl6BGz8YumGEdaPGd7olKL1IiGtGYIy/L75LzTa6WiWhfJES
	3wkcWZ4fQNpr61XDxuqGjvKgoa1BBSuuN/RsctQNrCWIalt1M5wMnMF3023uylNSvwp3PdTggaU2+
	PsyzACqtlSkEtmUdgMhhvSFwT3Ee20ZX56kR1oVlSWNSFkZnqEhRtaXkB7C9v1TXYulJBK+Zz9mW0
	33La0bTqSoJ4F2kF9pS6ZACDaqwDE9N6xiMkI/6tBM30fuJhGK1mwKPRQiRTJfV12w5fnQ1OC9P/l
	2qyV69O64FzZ0IV1963A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsxuy-0000000D88D-0wJN;
	Fri, 14 Mar 2025 05:49:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsxuv-0000000D87h-2AuO
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Mar 2025 05:49:11 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52DGek2b019821
	for <linux-rockchip@lists.infradead.org>; Fri, 14 Mar 2025 05:49:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ng9Qb4B1fV7wMUS/Fegxw9lJ
	lSAvas1NhJi1CeK+QPE=; b=C27++6qSV3Dha1tfeSHu5s/C5uPdzytXL5yWhT5e
	xqg3fwYkm5k/aUqcdvI9SDlWLHaDG+URLfZh3MSD/bV6cCrecmjhVQFvk3JxXZ35
	MQpnh1PkotoBSGK2g8ffKqXwCXTxBRSc7GgrJjqY0zSBI1o6dkWRUJ3yxUYYLD7R
	QH4PMgvlIJ5ul52YZV4+u+VGCNhrnZEw1Egj+6R63O8S8PUOX6ZiHYiv5RBoqA3O
	kWfxpBsojfeN0tKTBGk9FXZ5FDOTFk0dNsOnUHUep1H/5lSpZySpckTszE/D1wiD
	8ShP2KHeK9zEFHg/2v3NPr7TFxKvkH0bQhVhuGChUSzuTA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45bts0k7ut-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 14 Mar 2025 05:49:06 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-47689dc0f6dso32162221cf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Mar 2025 22:49:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741931346; x=1742536146;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ng9Qb4B1fV7wMUS/Fegxw9lJlSAvas1NhJi1CeK+QPE=;
        b=cyM+cKPr88a5LuXz2+eSeq8xkG+1ZxgXMu9c+J4U9cEsDef54wlaABRHi3k9SABxyQ
         bOpO3Gsr5qzeuF/FrhrpRT3zwJMicmaqBnDRLhbhQ/PZzSnHUR98YSZyv/YM/rThbsE/
         48dvXqwZudrHHw8UXeSZXskPXmIHllVPs70fOyEhRH0OFBtKP+fYD7vppN50VHo11Ou1
         dMwp7WeAYScsypqC4ynnGqJGvzxheyaT2Jv7UBFJauvh7p6Br73IrpTB/Yl/jj5rDOI6
         WGwIFb4EuEeVFPHf348Rinwv1y8RPBye4qH8TfgHezl1gSJaDTfSzquqfZ3FPpOPvyeS
         YRYQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+5lHuZH2aIIE7Bd4gUnjatqUBnLTilXAI3R3tH2gHlLsS/Nykj+JsDNn5t1l/3lB5WGy8LUuOYaEUiuDIwA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxNcP8n7N1CIj0Sr4p5Ca1Pn827/5ULsfGr5t6bSQDKu13avMs4
	EJ5WmOqskheGKoHLX+cpEhgxd6knQPbZk8cPVjLbFgSMCS7SWziVn9Cvb9xDeYUiPU5o565XNvU
	s6lm8P2doL+cAIg5CPcLdcgMBbe6k8qcoGwEDPCwWbGZqeUpvtIntoL/fATK2p253qI1YCGk=
X-Gm-Gg: ASbGncuk70t/zxHj9U5f6lSiRbU2R6Dob428OUZ1wmEIx5FohY4L53XQxilKrILG11h
	hjkaQmseBewq8ZK/2tBnqV0lFDokrLPWR7oRCufz7JGqq31xQNiPXLZBE7cTzVLUNTgP1VgpdVj
	apsS/vJ69zYE5vsnUtbAOD0WWrrqsQiCEaqxFohuAPNIF8NMP4uVTSxPyn83jloZz7PfJDOEyjO
	l3QI8pGgrhWFaImrbH5z8ZUfarz9fZPD5qVhSG7GUqVJy9yqR6qVN5DP3bcxXg6yvk5DrGlZtD0
	ogjUkRZcUwWAv2z1tAH8fgFV36QshMtN9Zyanw4ofnJBjAIrfUxzUMJOgigCeCiersLp4yI4JHI
	pN0k=
X-Received: by 2002:a05:622a:47cb:b0:474:fc9b:d2a7 with SMTP id d75a77b69052e-476c8133b81mr17260511cf.6.1741931346229;
        Thu, 13 Mar 2025 22:49:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqaDuA1FBvmdKts7klvyEIGEfWbLEm5EW/85XxwOOo/ydodyCNvd070ViOrwQltMOmPf/xaQ==
X-Received: by 2002:a05:622a:47cb:b0:474:fc9b:d2a7 with SMTP id d75a77b69052e-476c8133b81mr17260301cf.6.1741931345923;
        Thu, 13 Mar 2025 22:49:05 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba864e9csm419973e87.121.2025.03.13.22.49.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Mar 2025 22:49:05 -0700 (PDT)
Date: Fri, 14 Mar 2025 07:49:02 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: lumag@kernel.org, mripard@kernel.org, neil.armstrong@linaro.org,
        dri-devel@lists.freedesktop.org, dianders@chromium.org,
        jani.nikula@intel.com, lyude@redhat.com, jonathanh@nvidia.com,
        thierry.reding@gmail.com, victor.liu@nxp.com, rfoss@kernel.org,
        linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 1/5] drm/dp: Pull drm_dp_link_power_up/down from Tegra to
 common drm_dp_helper
Message-ID: <wtvvf4imkjcj45ti3qlhoz4ss6hksq5fh4lnpbi4srpdj4neg4@b722uwg2owva>
References: <20250314033856.538352-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250314033856.538352-1-andyshrk@163.com>
X-Proofpoint-ORIG-GUID: 9XHacfFxrFd9k0QNXilw730xyyV2hNQ6
X-Authority-Analysis: v=2.4 cv=DNSP4zNb c=1 sm=1 tr=0 ts=67d3c352 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=e5mUnYsNAAAA:8 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=KVUS2d8O-r6a4myYyqgA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=Vxmtnl_E_bksehYqCbjh:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: 9XHacfFxrFd9k0QNXilw730xyyV2hNQ6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-14_02,2025-03-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1011 phishscore=0 malwarescore=0 mlxlogscore=806
 priorityscore=1501 mlxscore=0 spamscore=0 bulkscore=0 impostorscore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503140044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_224909_692436_E1AC96CE 
X-CRM114-Status: GOOD (  15.07  )
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

On Fri, Mar 14, 2025 at 11:38:40AM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The helper functions drm_dp_link_power_up/down were moved to Tegra
> DRM at 2019[0].

Just mention commit here like "in the commit 9a42c7c647a9 ("drm/tegra:
Move drm_dp_link helpers to Tegra DRM")"

> 
> Now since more and more users are duplicating the same code in their
> own drivers, it's time to make them as DRM DP common helpers again.
> 
> [0]https://patchwork.freedesktop.org/patch/336850/?series=68031&rev=3

I'd say, drop it, please.

With the commit message fixed:


Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  drivers/gpu/drm/display/drm_dp_helper.c | 69 +++++++++++++++++++++++++
>  drivers/gpu/drm/tegra/dp.c              | 67 ------------------------
>  drivers/gpu/drm/tegra/dp.h              |  2 -
>  drivers/gpu/drm/tegra/sor.c             |  4 +-
>  include/drm/display/drm_dp_helper.h     |  2 +
>  5 files changed, 73 insertions(+), 71 deletions(-)
> 
-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
