Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0193CA0EE6
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Aug 2025 12:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8ymhR+x+EUgd8hyk2xAN0wzJ13DxqT0qdxXoWfGmak=; b=aWzDcrsmvMaKBH
	jzXyLkl0VuqSroIMRrG+qn2Ky8cW6XgSV/TbyXQhAmGvE1suzfDjHYmL8i6PPVUV+z32YHlq8qXg5
	XzuE2XgIxFnSQyyPpVjhFklrfeCz1kBgq0Kw42cy3LOoW5vjXicxXBLeF86CR1s08x/5tYcSf/qkh
	PmDb/2v7StHQd7QbJt0qwJ3zClroGenKyp+vH14BQoNvmQp/9mm/rbWIpfuAsWMqSYWBKhPAVP97J
	NcyRAy7I/ooJITFgm0AdpD+fIHOaFwJYDQPC+EkbrPbnfKCgC07YH3x17+Uc1+Xdo5XtFS9FWKAD1
	BMjPoZ5/+XBHk9rx5I6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoLd7-0000000AT2g-3hZI;
	Tue, 19 Aug 2025 12:39:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoK0e-0000000AC7R-02uh
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Aug 2025 10:56:09 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J90XFG000431
	for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 10:56:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7ghZKUm2aSWn//5Tci+9wfrDSWfLO9oHcOcQ8IQR6Q4=; b=lKzL53i4X+RI5ARV
	H6dGQrFJ5FDOsQfKbKoJAdcIu+/8dkobyoybJx1JjkFSzIC6f+Xwv8DMNGhEEJ0d
	fnYhCiEyndv/Ktj0OVZOFXa3J3Lh5njFVhfyuaqIQghosZIm/YW6pweyW7vnNQCl
	HO7hJ80aHk/ulVaRuPMikMrakI7cYzhPoLeG2pSbHEgVG6196wUZmYBYDZeW2mLR
	fq5WH/v4wsCNoFduSYa2Al6DbUv7xQCShvFy5qAVHdkX+0MUWlgHRvHF0znA/B0V
	T37O/Q1kBZh8Ueju6ywf7DrqxyEKcQgUl1FwmSgS4jNl7m9Fx3+aFC2Q42EjPuPB
	yUDEtg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jh0787yw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 10:56:07 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70a92827a70so114669376d6.1
        for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 03:56:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755600966; x=1756205766;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7ghZKUm2aSWn//5Tci+9wfrDSWfLO9oHcOcQ8IQR6Q4=;
        b=vE9ezo+TSOdoSJ1MIwb8DaR2kZdoCJNTr/0EBKG7MumghpYOc8kKpa14Wt6fjn4kC3
         rPCH6MxOCXkVO4UohcXAAewNON1WH4+RLkna9fgnhz5Z38o8rqmfJvtVIUG36w8L0wpg
         XT8G8EQZW1Nh+LqhVG7eINREBG4GEBAPmEVl7kptHLM1QVmvRhpZy2aL+1sov3Ih7bFs
         Jcx257pSklbRI0SJ1E9xD8npKehRVG1l1H2bcOtPxdg3I8K6nXcqHg9HJ7pgYk8022e/
         N2wxDrtYhUdVBfZX/Q1gPa9BJH/+FJ+SCUJdZUxqSgXDAC1qudt12ECKIjSdYyaIFJyd
         LfMg==
X-Forwarded-Encrypted: i=1; AJvYcCURutyuWqxTQ1OMPK6NFgNbJir0mR60PuZNEOuw1tE6kcsEmFDhfD7nt1KjGed1l+d163zJtnEAPYIaEIeIXg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7E2AhWfcE69cYKO/kGgNUqQA/iBc+nN6Vb2MS47ETET8mcoIC
	RlYaXx3a502GmWTJcEJtKeihE2xgYdpb319bXD02JVsjNeB4KcaR4oiNmULR23951uffU33hG8P
	fe+ziqkHB1n3kh7AMj7NoV5hS36xZR/k5EhJh9CzJtz0HmCNjERM+U0icWHI0kWKC+33LLUEM3K
	Q=
X-Gm-Gg: ASbGncuMwsdPrbP/CdxkUuIJRCNexh/T8jff/00fed8QtdFecSvz7hxI2En2wNN3IIy
	34B0SXIg1+8lrA4SqO11hTeX4E6Bk8IwEAUTlthDzskl+7CKotK3icym93oZheliLjt8lqI6l0f
	WugK1ic+4yUZjE7gBzO7TbPoUIiWHjvD/7pVtG/dqoCcxbXoIMEtFqZwsLbxCgL1l0NCyGHoyW9
	ZKcfbb54aBtXbvqamXiytXVtMGz1KRQnTVjsCSvxl9Ub1M51UBw2k+jYVdzVraz3dwOQTOhmRSV
	jvjCzIwYmElA2B3IZvXU/oyGUOEgyuZFZZzqT38XieQsfzBWYuXDLj671qpWtamqm7mhOODojiK
	bbLa9lUz3lfrJJ5Jbbw==
X-Received: by 2002:a05:6214:c28:b0:70b:c900:c554 with SMTP id 6a1803df08f44-70c35d70672mr17885396d6.51.1755600966250;
        Tue, 19 Aug 2025 03:56:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGUxbouQ23f5n9Nb/Ax/PRMhBNA4fuV1P2n23CV0Mrc7Iqs7S7DSWRnZn8F0Lk+cpHItsHnA==
X-Received: by 2002:a05:6214:c28:b0:70b:c900:c554 with SMTP id 6a1803df08f44-70c35d70672mr17884996d6.51.1755600965717;
        Tue, 19 Aug 2025 03:56:05 -0700 (PDT)
Received: from [10.207.49.70] (84-253-220-51.bb.dnainternet.fi. [84.253.220.51])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a41d325sm21592351fa.5.2025.08.19.03.56.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Aug 2025 03:56:04 -0700 (PDT)
Message-ID: <24392da1-02f4-4d57-a145-6285d46d3bad@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 13:56:02 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] drm/bridge: ite-it6232: declare supported infoframes
To: Liu Ying <victor.liu@nxp.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
References: <20250816-drm-limit-infoframes-v1-0-6dc17d5f07e9@oss.qualcomm.com>
 <20250816-drm-limit-infoframes-v1-3-6dc17d5f07e9@oss.qualcomm.com>
 <9e77615a-9d5b-4971-b1db-74d6bed39533@nxp.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <9e77615a-9d5b-4971-b1db-74d6bed39533@nxp.com>
X-Proofpoint-ORIG-GUID: zBVuWWZ_7Vsa4H1xcHAJAZYiJDUay0gR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyMCBTYWx0ZWRfX1Lea8rylAwTD
 M1vbzWeSlVgoQ5Ih5Dq4fdgpX2EJL6VWPvr310pKM2lnuUcY0pB9ohh/lptsO7CvJ8JXqjSzd3w
 DwtECek6gPi3eTWCmk6hZfMn1OJkmb2b47z4ebOMvbs8paTerfSSnyaAV/zcMYJLSwWKS3+zMmp
 TLyKKGOZxnkx3LT2kHqKiIRcRHWrrn+EzCV5eeI/5DjNCB6+CE+J1bUFM3qkzFkIMKSG3UqUykx
 2YG8fAZ89RbaqbH4DyWeFxXL8mZ3Ii31nmb9rpHYYv2xBOGUodAzb0nAlspMuP8E3lkKRrPrKO4
 kAOHBDT2Ga2rtDlN13+eji9AnpdkSoAK/NBuv6UVCoMnO6yvNIZx/CvT7HVhJe28/hoOM/yCUVY
 dmjBCQtM
X-Authority-Analysis: v=2.4 cv=a+Mw9VSF c=1 sm=1 tr=0 ts=68a45847 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=JdIsBVl79nXNK9flUcZCTw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=8AirrxEcAAAA:8
 a=y4d4D-FnMFCReEbV-5EA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-GUID: zBVuWWZ_7Vsa4H1xcHAJAZYiJDUay0gR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 suspectscore=0 impostorscore=0 phishscore=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_035608_164023_391F2DFE 
X-CRM114-Status: GOOD (  18.76  )
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

On 19/08/2025 12:49, Liu Ying wrote:
> Hi Dmitry,
> 
> On 08/16/2025, Dmitry Baryshkov wrote:
>> Declare which infoframes are supported via the .hdmi_write_infoframe()
>> interface.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> ---
>>   drivers/gpu/drm/bridge/ite-it6263.c | 1 +
>>   1 file changed, 1 insertion(+)
> 
> For subject, s/it6232/it6263.

Ack

> 
>>
>> diff --git a/drivers/gpu/drm/bridge/ite-it6263.c b/drivers/gpu/drm/bridge/ite-it6263.c
>> index cf813672b4ffb8ab5c524c6414ee7b414cebc018..b1956891a8388401c13cd2fc5c78f0779063adf4 100644
>> --- a/drivers/gpu/drm/bridge/ite-it6263.c
>> +++ b/drivers/gpu/drm/bridge/ite-it6263.c
>> @@ -875,6 +875,7 @@ static int it6263_probe(struct i2c_client *client)
>>   	it->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
>>   	it->bridge.vendor = "ITE";
>>   	it->bridge.product = "IT6263";
>> +	it->bridge.supported_infoframes = DRM_CONNECTOR_INFOFRAME_AVI;
> 
> With supported_infoframes set, the two lines setting vendor and product
> are dead code.  I think it's worth dropping them and updating kerneldoc
> for vendor and product members because they don't have to be required if
> DRM_BRIDGE_OP_HDMI is set.  But, this could be done with future patch(not
> in this patch series).

They are still required by the framework itself, see 
drmm_connector_hdmi_init().

BTW: I don't have ITE datasheet. Do you know if it really supports only 
the AVI frame?


> 
> Reviewed-by: Liu Ying <victor.liu@nxp.com>
> 
>>   
>>   	return devm_drm_bridge_add(dev, &it->bridge);
>>   }
>>
> 
> 


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
