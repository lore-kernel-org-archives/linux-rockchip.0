Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB274C2BB3F
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 00:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3EKFW5D4N9iLjRh/ekTiHnldjYFqRiU0ct575k8TbFw=; b=K7Mb5v/HqEO4YN
	5pWad/9+vT2jN4hfIqFl5jrrv2Rd39TI0oFG5d9dicIQLwuTyvbMU5Nyw/rpmSjHBuLkXUeznN5iY
	/DHT2/1IlwQx3fR4Kl5p/dKIR9FPDxrJFf6DJ8Rd6rEAIZ2eJWtUAdbeAgQJuHkE6N7epCk8eU5S6
	SC8+HefJPpXKfSLLIi1N2tyDWIUBJTTgf/aBSGMjSNBJHyUde6hJigE9hclb345KdrhX99lcZmnSi
	5C1Uqh8ewW/ZIh2Q4inX6A5eYFiyKX0Fy5YBrPkDeoTgrb7A6QK2XQeMRIYcy3dep3C4r5BBVi4/f
	sueSyjXXYChUmngzMu8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3QG6-0024i6-2x;
	Thu, 16 Nov 2023 00:29:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3QG3-0024gx-2m
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Nov 2023 00:29:25 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AFNeJbU011566;
	Thu, 16 Nov 2023 00:29:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=7EC19LKgQ+v6Aw+lDYbNKfbenGRZYcpN+E7LRr14WiY=;
 b=kKl+tyN+cJicQRRBxLUZk1quEoRamoif0ReVbRtxWeyYpQ9tjVGK5mTlnMT0QePccUH2
 C2xOmJjv+S2SBmg7A3Pa9XgH7Gb11g0KKqhWifSQoeiE8bupbLOYr7brtmBVXZblzChp
 Xt7egQdnmsNZNRP7+2yporeOVINWPJAXNa6efKHvPdkE1RF7kgUbcckweG8l8pPafmdX
 OxNIvTJ6cRdKiNp/lhgBJ+hJMAWH7Xrd0EFGQ7QRmIo0Rv21MMLdBd9BG+CLXvsRuffO
 GVGGMhpGiHL86UrVFttzMd6HOYadSRnp+eMKkgy82iq7K3gZjfp8zKhcLIVuhdTIXPbb RQ== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ud7b8r41a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Nov 2023 00:29:07 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3AG0T6pG011728
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Nov 2023 00:29:06 GMT
Received: from [10.110.75.112] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Wed, 15 Nov
 2023 16:29:06 -0800
Message-ID: <f9326480-2da5-48da-8528-dc07c9b4f4c8@quicinc.com>
Date: Wed, 15 Nov 2023 16:29:05 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/6] drm/panel: nv3051d: Hold panel in reset for
 unprepare
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>,
        <linux-rockchip@lists.infradead.org>
CC: <devicetree@vger.kernel.org>, <conor+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <neil.armstrong@linaro.org>,
        <sam@ravnborg.org>, Chris Morgan <macromorgan@hotmail.com>,
        <sebastian.reichel@collabora.com>, <dri-devel@lists.freedesktop.org>,
        <robh+dt@kernel.org>
References: <20231116001742.2340646-1-macroalpha82@gmail.com>
 <20231116001742.2340646-3-macroalpha82@gmail.com>
From: Jessica Zhang <quic_jesszhan@quicinc.com>
In-Reply-To: <20231116001742.2340646-3-macroalpha82@gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: R1GmW5Zin-bxDDZkrrhJDLQzHI46XkHy
X-Proofpoint-GUID: R1GmW5Zin-bxDDZkrrhJDLQzHI46XkHy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-15_20,2023-11-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 mlxscore=0 bulkscore=0 phishscore=0 spamscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 mlxlogscore=999 clxscore=1015
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311160002
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_162923_927173_34A77C8C 
X-CRM114-Status: GOOD (  15.64  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 11/15/2023 4:17 PM, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Improve the panel's ability to restore from suspend by holding the
> panel in suspend after unprepare.
> 
> Fixes: b1d39f0f4264 ("drm/panel: Add NewVision NV3051D MIPI-DSI LCD panel")
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Thanks!

Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>

> ---
>   drivers/gpu/drm/panel/panel-newvision-nv3051d.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
> index 79de6c886292..c44c6945662f 100644
> --- a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
> +++ b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
> @@ -261,6 +261,8 @@ static int panel_nv3051d_unprepare(struct drm_panel *panel)
>   
>   	usleep_range(10000, 15000);
>   
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +
>   	regulator_disable(ctx->vdd);
>   
>   	return 0;
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
