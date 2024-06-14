Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF3C3C27C77
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jun 2024 16:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wI6ocw+6g+aKrAsdWVdTGYopOvOJgKJhx8PhblguBsA=; b=IjM8wDgW72FBuy
	DNn8md9CkcBamigwLDCurUO3NQl9ilV/x08cYji2CzG+qg4CpMIPBkxuFvqsBtuz6SdUiM+D5iJTF
	kwdKN7F1YuV7VBi0tnGzyujKffBA8RJXl1nwmUPsYR2BlLfJNCYFW5ncE807THRYR9nU8/C1bVgEQ
	I8ACuTtT5Jj5gFzOfAAtp4wQtZOTNuzvhKIpCX+MY9tzkfG6E3uHf1/grg96+jqUMldJxB+kJUsXD
	SzV/tVliqaTe/eq9ed8ALSSDM9zBCd5Tge8sHKrx8j2vaU+kroS10TjWS9X11JRuM298rfKmzyvSl
	qRqm4s79GT4Lj3mbQPsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI9y5-00000003TiR-07a3;
	Fri, 14 Jun 2024 16:40:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI9y2-00000003ThZ-3yeJ;
	Fri, 14 Jun 2024 16:40:00 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45E9m9mU032695;
	Fri, 14 Jun 2024 16:39:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	euP53KvYb4OJB4lz2pMwCFHlr8WB3Zw8Vqkw9q4K+yU=; b=MJPzMklWEv2QvVr6
	dDRImL+6abJwTfPmSY59ATFEY6yWKvHotDZJq0Tr+G45fIazFqYz3OwL/LbjCGQD
	qCTxWMSXB5yLOx098wRnPCjps3B+vNBaGnCtwVk194//KibcL5Kcx+XMdz1AQggw
	w1Xd+C0VIxsq57iY0VJiTnHH7KRz/89sVs6aU7Upskv1waehrIZjUaScA1F0U0+z
	MxQDWi32w6eGcUvusWOlAfFdiTvdsPFZ7ByGtbHI0q1k5vL7jppTjCtLE8JC/lS+
	fWnbJt3/8Gp7ZjWQwoW5GLUpR52VZ9NFyt/O0KhaDTDVwFMypvWw1k7KVdkS3TRN
	bQbPPQ==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3yr6q2tbcu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 14 Jun 2024 16:39:46 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 45EGdjnX013203
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 14 Jun 2024 16:39:45 GMT
Received: from [10.226.59.182] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 14 Jun
 2024 09:39:43 -0700
Message-ID: <7e32d69f-7024-01d8-a165-fc00ea60fa90@quicinc.com>
Date: Fri, 14 Jun 2024 10:39:43 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH 9/9] accel/rocket: Add IOCTLs for synchronizing memory
 accesses
Content-Language: en-US
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Joerg Roedel <joro@8bytes.org>,
        Will
 Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Heiko Stuebner
	<heiko@sntech.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Oded Gabbay
	<ogabbay@kernel.org>,
        Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>,
        David
 Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard
	<mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Philipp Zabel
	<p.zabel@pengutronix.de>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
CC: <iommu@lists.linux.dev>, <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
        <linux-media@vger.kernel.org>, <linaro-mm-sig@lists.linaro.org>
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
 <20240612-6-10-rocket-v1-9-060e48eea250@tomeuvizoso.net>
From: Jeffrey Hugo <quic_jhugo@quicinc.com>
In-Reply-To: <20240612-6-10-rocket-v1-9-060e48eea250@tomeuvizoso.net>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 50nkHqkNt-PDRn_5o0klNCIcppNdnO4M
X-Proofpoint-ORIG-GUID: 50nkHqkNt-PDRn_5o0klNCIcppNdnO4M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-14_14,2024-06-14_03,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=840
 malwarescore=0 mlxscore=0 spamscore=0 suspectscore=0 adultscore=0
 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2405170001 definitions=main-2406140113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_093959_027829_22EE4C91 
X-CRM114-Status: GOOD (  10.04  )
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

On 6/12/2024 7:53 AM, Tomeu Vizoso wrote:
> diff --git a/include/uapi/drm/rocket_accel.h b/include/uapi/drm/rocket_accel.h
> index 888c9413e4cd..1539af0af4fe 100644
> --- a/include/uapi/drm/rocket_accel.h
> +++ b/include/uapi/drm/rocket_accel.h
> @@ -12,9 +12,13 @@ extern "C" {
>   #endif
>   
>   #define DRM_ROCKET_CREATE_BO			0x00
> -#define DRM_ROCKET_SUBMIT			0x01
> +#define DRM_ROCKET_PREP_BO			0x01
> +#define DRM_ROCKET_FINI_BO			0x02
> +#define DRM_ROCKET_SUBMIT			0x03

This looks like a uAPI breaking change.  Shouldn't you have defined 
SUBMIT as 0x03 from the beginning, or put the new BO ioctls after it?


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
