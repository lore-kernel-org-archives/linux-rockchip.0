Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19418CA0ED1
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Aug 2025 22:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5r/ihzmyesYa2pZwSEauqe4du+3WKABvxU54CyhURGM=; b=ablZ/7wxh3aXZ8
	B0EyIwsRHE2/QfToVKiVGp/liebNSzEG4ZCog88vMKF/bhJ7kE+V0LHUQ2VczjslD78vtagQlCjGE
	/57VSJzY/1rn1MFr6+yZJKp4QmNQ1Dg2H4a/CZ5sM9dGvdOc2wq9ejDV2p8050o2Uhe1MSdkgfMHz
	YSaNdgmxLbxV+6zzVNr8KAXfn+qlgD+wIr49xyVHL7Ebg5xAdcMzconaGIJBWnsb0QGGREMXKuSbr
	bxdr58FDCoOYbESQY/r1MWCrgyMScZXH6PZsgAxOA7bUQk6KoZgNtdiS+cWxzonRdUDmxb3TKmKjv
	7OEt8jm2JpUvGznqkbGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1un2ru-00000003d9A-1Ls8;
	Fri, 15 Aug 2025 22:25:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1un2pG-00000003ctj-0LWk
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Aug 2025 22:23:08 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FEJCQ0002675
	for <linux-rockchip@lists.infradead.org>; Fri, 15 Aug 2025 22:23:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JPoqrG76Fa+IJ69XT6fD+NUhuJLanbuSb1J5gF7obvU=; b=bgjyUAi1oWHVp/Jx
	8+Tz+gwEf2MKAx+ZsTVEKOTKcqL/MUqWcbHpC7FH1+FfXTRSWAS3BTpEzo0xOmKj
	Z741Z0P6eAoFegyjXV28v9NMfIb89usjBV57HhgYAwRKiU9Qliw66EeKPQt5uzQf
	fi4amw34pK/R2X45JyFCnbe8i55Qk1dOWYauH4Nv4tTfZhS19RW6xpYCRVYJ0OyD
	z9nvvGdd2hxsxs3bt4lmC8dsYf8ZgHpOXsgBfm2wO0yZlHawC7IX0nJXxyNbVIv4
	LCsQUc5cH3gnkvwW6S0gQ7onmwnRMuoHgxrSj2D51jtWfMzZjdEm5uTrt0UfygvT
	/yMMig==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dxdvcb35-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 15 Aug 2025 22:23:04 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b109c5ac7aso58497051cf.3
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Aug 2025 15:23:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755296584; x=1755901384;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JPoqrG76Fa+IJ69XT6fD+NUhuJLanbuSb1J5gF7obvU=;
        b=V+TQ3VKF9dQ0yTVZzsIjqnDy0YZA/+8EtZmvAb7h20LADnz9nLlmG7ZAK4lINbFeON
         PsAFQLVr+CVsfRBHEuDFM2cwg50ky1vDCQCk6+5xejQ/T7dMsBX+xYncIqGBZZYk+5Z3
         eb7+teLMVlGwIj2d6t1kCZwc/jFXG1h2TsPn3YaAcNLLqwNSBdmUVPVC4YQYeGtTtGI3
         CSf1se+gSIYRi9UhM/0PounYkTdElyS0gdlo4criTiAuwbtne0cxsIF4ahBnqVxMR4KV
         Zrasj/PBqPwNN+PcWNg9P/mHOan4Z4f3HnIeoV8o1cCBFn8Ac7Uc+j184uCSnPCP9wJ/
         M17Q==
X-Forwarded-Encrypted: i=1; AJvYcCWcqwNOhRRzgN26/2WBJG/CXZVsIs4iUIP1XM+amn4bpvtDW1J21z6NGfmjEHufCIL7sRD3DrFmHwY2p4b45w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwTaWc7/Bog2cZzZWsQP/HN94BbUOu+Ws9R7Xgxo2D6Dq4mH9UC
	7EJlguSHcHUOUINZ9OC6fOLP4KeTG1690wUh6/zG9wULEim/+aKE3h/G6o1J/pJAvpEogRfaiuB
	lWyZHFosHoiwDwhZQ6aJkVL5DPdXm/UjOZEowKmSaREhhfyCRokiRWmJSVTlccTfiaTZbGjhkW2
	o=
X-Gm-Gg: ASbGncsiOFTpOGBc+uLU6J1cq/pHMWTph1Xv5ZQnYuhxGLqunERZeKHyL80ieXfR4rT
	guK/F3JxpnVo9d8LZrBL5FrCOZWZCgsG23KmllIbfbx2gVdeJmd45N55gQhAenyDHZ1WC/jWazh
	fm3FEtY5c+LU6TPj6mk4PARg1b97b+VhF3bMfNsCQJn4zYa9cAu6wE92XOt5C625btrowcnNnv1
	MsSaiaPq9tSpVguoVKMFzi7H0mIoBQqk9QJrlpjZ3isq7XmLRJw1ke/ydv02gAAHsB0c4gw5f9l
	fe0WtTLFDmc1V6L4KAz/Hj8kzL5f+MSzWJgITUe/SKzz+xogjZWKtwhdyN/ANsF+q3bL1+Azvzy
	e1R0SRB8igXe6WB83Sw==
X-Received: by 2002:ad4:5f0b:0:b0:707:71d9:d6de with SMTP id 6a1803df08f44-70ba7c3ad53mr53884306d6.36.1755296583182;
        Fri, 15 Aug 2025 15:23:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFleBuWAy5mTXP7RbCTDkEBzEH4bx4YRYK1jQyBfG2qlZcDy/NOHJR86cvYBPpQ4zK6w/3KsQ==
X-Received: by 2002:ad4:5f0b:0:b0:707:71d9:d6de with SMTP id 6a1803df08f44-70ba7c3ad53mr53883776d6.36.1755296582437;
        Fri, 15 Aug 2025 15:23:02 -0700 (PDT)
Received: from [10.178.110.229] (37-33-152-67.bb.dnainternet.fi. [37.33.152.67])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3cc6c5sm510042e87.106.2025.08.15.15.23.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Aug 2025 15:23:01 -0700 (PDT)
Message-ID: <3d796f6c-d1d0-4499-8e63-bd37bfcc7c3a@oss.qualcomm.com>
Date: Sat, 16 Aug 2025 01:23:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/14] phy: hdmi: Add HDMI 2.1 FRL configuration
 options
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
References: <20250805-phy-hdptx-frl-v2-0-d118bd4b6e0b@collabora.com>
 <20250805-phy-hdptx-frl-v2-1-d118bd4b6e0b@collabora.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20250805-phy-hdptx-frl-v2-1-d118bd4b6e0b@collabora.com>
X-Authority-Analysis: v=2.4 cv=IuYecK/g c=1 sm=1 tr=0 ts=689fb348 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=bUxD0lY5qGftl71vRM2jGQ==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=QX4gbG5DAAAA:8 a=Wdy89XEDvX1HR8FnkzIA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: BAWDQaXAsWWQzg0L8P76Fb7xXNbx6ac0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyNSBTYWx0ZWRfX5u9wbwJqGeog
 apGJtpHGGaqCQE/FUh+x+mA5zcIeV0kRcpPO3KJfBJd9d3lfQXMvEtR3B8RFEVMfTJWG60dojag
 XF6tCmD3tXXV1g1vHjG5yPo+VkX61BksytHOo+BVY3r3yl6suzBOO8oM+EUwzzZUPRi0uKddRS7
 kduK5+waOi9uHyXGILyab3jD5GyMjefkyI0sgIyqjwC+VZ2egVNPyxZndx3lFJ5eBdfR20dfx2p
 hI0GaP1VpkKUqtI7nlcRHvuTqdvshVYXEt53BBnMn/YNJacgKPjvO0zYs0h1Bssy0yD5YdW3eyt
 MYokvUrfUbhQRUVtUizFe2BE7s1QOn9+Zv2ifF5JU/lW44VQl7jSKF6j1jFMjpAzE5uRX6AStwB
 VHoryR1p
X-Proofpoint-GUID: BAWDQaXAsWWQzg0L8P76Fb7xXNbx6ac0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_08,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 phishscore=0 suspectscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250815_152306_234269_4786EDD5 
X-CRM114-Status: GOOD (  22.16  )
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

On 05/08/2025 14:56, Cristian Ciocaltea wrote:
> Add support for configuring the Fixed Rate Link (FRL) mode for HDMI
> PHYs.
> 
> For improved clarity, also rename existing HDMI mode to HDMI_TMDS.
> Since this mode is currently not being used explicitly, no further
> changes are needed.


I'd say, this need some explanation, especially for those who don't have 
access to the HDMI standard. Please mention that FRL is an alternative 
to the traditional TMDS mode, etc.

> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>   include/linux/phy/phy-hdmi.h | 14 ++++++++++++--
>   include/linux/phy/phy.h      |  3 ++-
>   2 files changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/include/linux/phy/phy-hdmi.h b/include/linux/phy/phy-hdmi.h
> index f0ec963c6e84f1b7728acafc824dff191c6b873d..0b26472d8defcc9ded142d4283e29861dc2b3746 100644
> --- a/include/linux/phy/phy-hdmi.h
> +++ b/include/linux/phy/phy-hdmi.h
> @@ -6,16 +6,26 @@
>   #ifndef __PHY_HDMI_H_
>   #define __PHY_HDMI_H_
>   
> +#include <linux/types.h>
> +
>   /**
>    * struct phy_configure_opts_hdmi - HDMI configuration set
> - * @tmds_char_rate: HDMI TMDS Character Rate in Hertz.
>    * @bpc: Bits per color channel.
> + * @tmds_char_rate: HDMI TMDS Character Rate in Hertz.
> + * @frl.rate_per_lane: HDMI FRL Rate per Lane in Gbps.
> + * @frl.lanes: HDMI FRL lanes count.
>    *
>    * This structure is used to represent the configuration state of a HDMI phy.
>    */
>   struct phy_configure_opts_hdmi {
> -	unsigned long long tmds_char_rate;
>   	unsigned int bpc;
> +	union {
> +		unsigned long long tmds_char_rate;
> +		struct {
> +			u8 rate_per_lane;
> +			u8 lanes;
> +		} frl;
> +	};
>   };
>   
>   #endif /* __PHY_HDMI_H_ */
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index 13add0c2c40721fe9ca3f0350d13c035cd25af45..04c84c1dbd6dac55fd04c54203cff4f9d939d970 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -44,7 +44,8 @@ enum phy_mode {
>   	PHY_MODE_SATA,
>   	PHY_MODE_LVDS,
>   	PHY_MODE_DP,
> -	PHY_MODE_HDMI,
> +	PHY_MODE_HDMI_TMDS,
> +	PHY_MODE_HDMI_FRL,

I'd maybe suggest keeping PHY_MODE_HDMI and having two submodes: one for 
TMDS (default), one for FRL.

>   };
>   
>   enum phy_media {
> 


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
