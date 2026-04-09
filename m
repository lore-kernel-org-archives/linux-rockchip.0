Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5599EF364BD
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Apr 2026 21:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gD4Kp6pI1hpVCGOWvjXo4fAHWrKbqgZLhtPOkQfjB0=; b=izMq9T4raoxoqO
	nf4qOKaVrlJ4zSZMHa5Dinj/gGUJPbMsTD6bTBSlmOVYjMdfPC7UutLPAuWPErortsx09VfZezyTt
	gFWUUwxyQXOYIRawECKLwOQmxTyRA3tF3MuyrbfcH8dWHrk4AAzgx3xU6ovXao675nOnWLkLrA/a7
	n9wCCUUjrz8GnQ7Bau75wM4MnLiT33VF4+nAIh1Y/yov2Ij690jOQRGZs08JSW5dCMm9qHs/8W5gO
	Ux9TWWAT8SdDLkGmM3Jh0WLROLcELbKlRHNXlRG3y0z1QTwd4ZxGbysbQEMo7N3lPLdwsXM3f05bM
	aRk/Hn2rZ+FTDqmCXScQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAwaE-0000000BD9Y-03VG;
	Thu, 09 Apr 2026 21:06:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAwaA-0000000BD8b-2XxZ
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Apr 2026 21:06:36 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 639D1n6I2624692
	for <linux-rockchip@lists.infradead.org>; Thu, 9 Apr 2026 21:06:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BkT2BXpxWHehgHaz7HpCxZpY
	hADGt5iQQLiK/P6Xocs=; b=BIWL5Rqqsj0jnC+EeLvbLFI4/kra1Oj3NiTjbMPp
	/XQeyVBxb1yj1Xik4FOtTE05S4A4Y8Ie772HGVqYNd61VIRj2+D0qMLWU16xVOr6
	SM2jzt68Gq35kUw0JSA5klvDL3s06inD5cmehemAhJy+NTeCO4+x9w/k9DFM7GVO
	2sRadJT/Ay75272QJ8YVCFvUNQnZjK3Mo0EuFRALKPE2QdZetCMfBW3rLcVM6eDl
	9MYmcQAnR4te0uifG3MWVMAHfVb4kTUUdEuDcVYlQ4cZNNOkheYns+TXTwxVubvu
	gCj0kpjPZ6D3EUQfYXRaSw3MpMLftlHDyqgbxpS4EoM0iQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4decmu1pcc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 09 Apr 2026 21:06:33 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50b34223670so60898341cf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Apr 2026 14:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775768793; x=1776373593; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BkT2BXpxWHehgHaz7HpCxZpYhADGt5iQQLiK/P6Xocs=;
        b=FtKlR2eEBgj0f1VkRGicYRnBuLBESjG7bnJ8YA3GvedBbxVdcRMOJUzREl/5QplXQq
         gBtR3Y6a/iZt6UCMBOLTBZ51i/DBAU6xJ1hUyAsKq4uxJ1dlEr9xQUx7J1XwSmb0Fa29
         pXjAlPtZ8WI9+Icvo2n5TegQhzyLuTwhlSzOubBqzt1E5KYJ5w9mSVTBOFFd23fytU/h
         2hy/RARDqOPrvIvRsbC6JNK29crW1Xoxux4hKZNV7XRDD7dO42/go90HhlgIgN4lifMF
         5C8OtdvueG2K/ngwSxtQkzPd+Gmw2pw+w7kJHGG8cJddwQaQHVOXPn2cqYGHxOXurLl6
         UDNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775768793; x=1776373593;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BkT2BXpxWHehgHaz7HpCxZpYhADGt5iQQLiK/P6Xocs=;
        b=CinEjNqqV8sPwmY5KdYHmC9pv2jeOFp53iez4IFxx/5j4qsqSq5WbkDqzMDeUX7Gnt
         H+K+I+jGcWATG5pbE2Gw/zrkKjcoRyQjWh8MFb7lxdpqe6hnR0fRug46j7rsH8ptktq+
         gIJFnwjXmANK35iD4IKS9aaVJoScoz3/juHbriAbBNrErcvdyNioBp2faHypo2iN54Ot
         cd0anoKWxd4Y+SVlgR+nsuHPuQzLOH+OTtfBCpmW5mlZZ2M5PqV2TaF3iao/BpkaVDL/
         G+YXRuNbt/Bjwvyo0j6UxGAcK/GbW6CmM0fWcFTCx8s8Ni2q6DRL/hfPS4s6auv9Bs1C
         fx0A==
X-Forwarded-Encrypted: i=1; AJvYcCU/qISCY5Hr1aAOItA6N97ObRSl7o0mDGnQ/s1EeV9lLLrTS9gRybRS1BYA7gnJaKCiOqgxp9lXG7m/PEGJwA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3XevXV/Tzkoc9LciI6ZUZ6I4AnUKpebH61kpiVL42V4wMus9t
	JM9YtEu8+PGeDV+nG7Rq/kCGE5rnMdGW4Tmr9N8f/j+LCtGEmLSX3j+t/MEIPraNtT1TRVbbzXo
	nHIh+29gHpgNYYlIud9khlvunAfhnGywVxwDASkxDPgwKNEP80ceFARq7SBJcjOQYxOiRbtS1bK
	M=
X-Gm-Gg: AeBDietobi8ZGc//3apSq2giJjNKJzBNfEpgOUgqyvx0Md/BJXfAd8uEY08GhgkKeCa
	+uWcdhLSRHIjkcXw+sqwacr0kiRKUUrGriQGiskQChFtaOEr7/lZ5cXG5rAW76p4njqJhJxgC1b
	cMr66n24CRs2yeV/GyPrPzRvw+6JHSgr8/5OtYQciiqDw9vqhXLB3ACFQsGcJ0erUHxCp8ZBtle
	FfQGkVF03gMgjMZz7QS34Rfov2yMI20UsMxTkYZ2aH6nUAXDqygWZ2fxuiunovJH51w/rm9AUva
	67/ZhpOYOysASpP7yGfVQk6Z2pxpUBPSqRBttdKinVg3EBFGo7VdIfMx6Yw0rsmg0CODTMO1/nF
	6QEotz4utyNz3+IqGcwjWrGFhO5zHWPPeylWvVsfVhZLnBvwK65fREp9DNSFvxlH0fn676GPopO
	Tv4u2X25o4HsPNP0fmxDr+jfTJyWhu9+TNrIQ=
X-Received: by 2002:ac8:5a02:0:b0:50d:8734:ba65 with SMTP id d75a77b69052e-50dd5b95bc8mr14104081cf.11.1775768792719;
        Thu, 09 Apr 2026 14:06:32 -0700 (PDT)
X-Received: by 2002:ac8:5a02:0:b0:50d:8734:ba65 with SMTP id d75a77b69052e-50dd5b95bc8mr14102751cf.11.1775768791806;
        Thu, 09 Apr 2026 14:06:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a3eee86641sm161191e87.3.2026.04.09.14.06.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Apr 2026 14:06:30 -0700 (PDT)
Date: Fri, 10 Apr 2026 00:06:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
        victor.liu@nxp.com, Frank.Li@nxp.com, shawnguo@kernel.org,
        s.hauer@pengutronix.de, inki.dae@samsung.com, sw0312.kim@samsung.com,
        kyungmin.park@samsung.com, krzk@kernel.org, jingoohan1@gmail.com,
        p.zabel@pengutronix.de, hjc@rock-chips.com, heiko@sntech.de,
        andy.yan@rock-chips.com, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, kernel@pengutronix.de,
        festevam@gmail.com, alim.akhtar@samsung.com, luca.ceresoli@bootlin.com,
        nicolas.frattaroli@collabora.com, dianders@chromium.org,
        m.szyprowski@samsung.com, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v13 11/17] drm/bridge: analogix_dp: Apply
 drm_bridge_connector helper
Message-ID: <wmt75edxyrmhyyfxx7xrrhfdjvdu6u24zwwwsd4ryy52ctwm6f@th73j4phtvmm>
References: <20260409065301.446670-1-damon.ding@rock-chips.com>
 <20260409065301.446670-12-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260409065301.446670-12-damon.ding@rock-chips.com>
X-Proofpoint-GUID: KI-MUJ5lamJm1sPNOM-tKxgwyR4w33ru
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA5MDE5NCBTYWx0ZWRfX3TnvLoaAG88o
 B6YY+IMpc1bCcAMPRiqZBbmENradzxPFx4ot+WwhwazVZyXfXvCWhwA0N/yHpbhwYqGHScMlfCD
 nQxb6z7CDy0sUxVGfPakiIc+faxW+Q7eTeJGyJXMY7XCsEOqywcienfq81V6L30blgyvygs4aQz
 ylCOCpiNbd7WQvYg8cjnxfdYi4/YCqZrly/QOtnOTR5+Bh1WRJoQ11EPKbzOBIfWzHOJWJFlUPU
 nBRs7WbgJTd4y+SQEuOUbBWzb5LAmiOzcwXNTNUhAaE4hUGBMeg9ZmkWFfe34on+AUeVKlkn+Fq
 BdfuMfnqbNq9gbx/yy/pOLaU/+jHe1O6Q/E18+L1TTz+S3OKo+MkROU8KRhnjRS/0v09Q6hkihW
 efghwx/aAjYuAgekqWA1JOc47iXxM+zQOxwU9M+j3XoYZTqBxMXed96AtrmsZ4BVD4F5I2tgu+R
 tfxVrHi7GgVMbZNW7kA==
X-Proofpoint-ORIG-GUID: KI-MUJ5lamJm1sPNOM-tKxgwyR4w33ru
X-Authority-Analysis: v=2.4 cv=DslmPm/+ c=1 sm=1 tr=0 ts=69d814d9 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=s8YR1HE3AAAA:8
 a=hD80L64hAAAA:8 a=EUspDBNiAAAA:8 a=yovIxdhcBUqVpsxpVugA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-09_04,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 bulkscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604010000 definitions=main-2604090194
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_140634_788818_120F1DBB 
X-CRM114-Status: GOOD (  14.61  )
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

On Thu, Apr 09, 2026 at 02:52:55PM +0800, Damon Ding wrote:
> Initialize bridge_connector for both Rockchip and Exynos encoder sides.
> Then, make DRM_BRIDGE_ATTACH_NO_CONNECTOR mandatory for Analogix bridge
> side, as the private &drm_connector is no longer created.
> 
> The previous &drm_connector_funcs and &drm_connector_helper_funcs APIs
> are replaced by the corresponding &drm_bridge_funcs APIs:
> 
> analogix_dp_atomic_check() -> analogix_dp_bridge_atomic_check()
> analogix_dp_detect()       -> analogix_dp_bridge_detect()
> analogix_dp_get_modes()    -> analogix_dp_bridge_get_modes()
>                               analogix_dp_bridge_edid_read()
> 
> Additionally, the compatibilities of Analogix DP bridge based on whether
> the next bridge is a 'panel'. If it is, OP_MODES and OP_DETECT are
> supported; If not (the next bridge is a 'monitor' or a bridge chip),
> OP_EDID and OP_DETECT are supported.
> 
> The devm_drm_bridge_add() is placed in analogix_dp_bind() instead of
> analogix_dp_probe(), because the type of next bridge (the panel, monitor
> or bridge chip) can only be determined after the probe process has fully
> completed.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Tested-by: Heiko Stuebner <heiko@sntech.de> # rk3588
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
