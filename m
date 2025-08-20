Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F21FECA0EE4
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Aug 2025 11:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m6Ka+adrtaFvODPeeXhFJYWMdwP9c59hWVb1HLT02ew=; b=l/0DltMdBroS7e
	bK/bvG2itMngaRslomrHO7du1MZdL6Jw+4zU+eNAAKkxJnEdJDrawYTDaessqR/yFvqAyO1+PHku8
	rG9STKvv6oqEvWN3dRlQymwmgh9QB51sc3C9ixMWPkPWMikhtsTv32Y22KKSAliiuhhdSgaon0a9C
	bGsAZDePU3KrBfiZKUbF85ATt51+Dr8stkjTDvD7z5D/otwa78qkX/8D1UBKLYzHdBxe/s0e3Z9u0
	OPrzUQhpL1wrzpiwjwx2iq6l0rieh/+N+roCSiwR/90F+1fg68WeNLRep8WvhEfh8qw7YT9dj0Yfj
	T+WtZhtWiB4e+ilnRY6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohEo-0000000DSIt-20NR;
	Wed, 20 Aug 2025 11:44:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uogmt-0000000DLUx-0eys
	for linux-rockchip@bombadil.infradead.org;
	Wed, 20 Aug 2025 11:15:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=0qOyFSkF1mdae5iDRyH3LBmMdqCqXxN25f67C6/GSMc=; b=lHVlPNJ7irCpjguGnLBz58y+gN
	vXq7s7Ez87wjGAwvG6XfssVt4d+pGOfdFsHYpqR6iA/cIo2gDyxkRo4vw6jiXtu+Vxft1lPQX3hEG
	9E5+nL/NvVwby1dogu1rQsJsJo2DYwERIL81pv2HKJ5GsuwZBvEAsrtqvFA8/Z4k2Y2tYymkrNb/+
	Ml4Y1n26xHvXoBG5pYYrGC4TqPcmnMNtJLvzt1/I8i4XzWYE+uhKpLv6KJkXo+q2UUhQAmd0Syn/V
	dbQgXhygXSBJhNIs1tuhnQKpxvMCySO6X4Ro5SNu0hVA3odnChn0yF8R56/+KxDw+CZCKWC2ABNQJ
	1h0mUJog==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uogmq-00000000J3Q-0MSn
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Aug 2025 11:15:26 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K9tg4u010412
	for <linux-rockchip@lists.infradead.org>; Wed, 20 Aug 2025 11:15:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0qOyFSkF1mdae5iDRyH3LBmMdqCqXxN25f67C6/GSMc=; b=HDBz9s0P0s4Kh+ni
	az8k8TI4qABStThkA0Z8IgzaEkIiqLLaLc+IRdUfQyQku2yvyoxsIqTFMyqs15td
	xcEZYPBY0X/a8SIOmUduYv0Y+VXWdamebto9yAlJkQau3IwMiTx2h0GUJFpDAVGp
	rhPlY4h3VHVsvD8cBsbcp4HGygJ9JTu/V8tOP2KhAf5kWsOAombcYXcP47NDPRZI
	XaPpInAx0kROt9ItCDG/ZaddcQedMrPW/P45zw4O0H1Sl4LAkOCG9wpGByXiOzn/
	Y9a+xebCg7AnpO15RT7LC4NcFfAeclEXTgYopfYmGCr8AHZiofnC+5Lp7V8/7RvL
	DsSRmg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n528sg44-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 20 Aug 2025 11:15:22 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a9f55eb56so144489986d6.2
        for <linux-rockchip@lists.infradead.org>; Wed, 20 Aug 2025 04:15:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755688521; x=1756293321;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0qOyFSkF1mdae5iDRyH3LBmMdqCqXxN25f67C6/GSMc=;
        b=tYJfhka87Ww/F3fQ8jG1frPkcflTsiRXuxwORXbAC8qoYSuhrGPB6fL0fA6ooMY864
         R35l+Gi5SR9eQMfX7c9NrGM6sQkxaLR3YeouQYSUwUqppe9jFVeON5Lh7QnQC1ktId+c
         /EzZSVMtXemn71lCBsR6PW0P8cU5xHHTEbpAz2AA3lj7OHy9B0lK+H2dObUlQUGU+NzK
         YGSpbI/LyBqVmZdLvS1NY/NHAfBgzwvNWRezP1OatX779S7mBfxIqIA2Mec29HUs7rhr
         Cbuk9TiFpQCzCQukKlKwyUiVUh2y3AHHG33nyooIEWuhKd2kKAt/cdFDCK4wllRNmPXf
         vN2w==
X-Forwarded-Encrypted: i=1; AJvYcCXC9lbfUUyZ+HPHUdht+4kln9S+nImA3Vrs90vR4BSBd6YT6qmyX/AxjR9oTja156t5EYHNWbGfnUVsxMiA3w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxrlmbXqW5IUfuauhEjX4pqKm73Rhn5g/OP4dbNlIW0vzKE7d8y
	7nunTvPxjkmrOpel8xlZxcbyvMfc+9iRSVWIaLXwCetdNZy3vMNEPEJKa+eUtr+tu7Vh45JkVTK
	C1eRrUzfwepPPC9oSmtr3cTmV6O5o1X+hLJMFsqnalyY7JHcwDyNlLBttW718dzTXKkMiVMZJaw
	0=
X-Gm-Gg: ASbGnctdFE2crAwJnqExy++2TNcFVIBS0MaOGVImdBPeQNHVZ4ZuPWYnXb1M80u6N48
	4fWcbgudA5rEh1JfoU1RT7KfuUmKfEmhQnuBDn1kHR7Kr8IBIHJB88b3OzlPZCD3OFqiT56P4iU
	5yvBV1UbkgyRMsGJQVnA/ruuhovoY8zAlsIKrGeqZhKuvOEE+cSF2O1oA4sRs3X5tR+xcGX+omx
	IvuAox5wTupXWVgb1P1bWJ+Acx7lsC4q1Ax7SBKdd8120D2gHu/xUvvOVh4I585waypiO2Khrhh
	LAbizOqCD4DXNiEfK0JWxaHGGRH0hwPfeSp8/HbxMWkLxdqnSMiQowFs94RNzCC8XzIPMekTWIq
	khAce/VDjR1SX8XSrfA==
X-Received: by 2002:a05:6214:1c47:b0:709:50b8:cb85 with SMTP id 6a1803df08f44-70d76fb14a1mr20921996d6.20.1755688521431;
        Wed, 20 Aug 2025 04:15:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH80qwENBGa8LZaS2l/vsPkoG89K8rwgcpZkHUFmG54urW6WuO247zB8LpY8iq/8kq4fh5zOA==
X-Received: by 2002:a05:6214:1c47:b0:709:50b8:cb85 with SMTP id 6a1803df08f44-70d76fb14a1mr20921616d6.20.1755688520930;
        Wed, 20 Aug 2025 04:15:20 -0700 (PDT)
Received: from [10.207.49.70] (84-253-220-51.bb.dnainternet.fi. [84.253.220.51])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a489f49sm26715321fa.35.2025.08.20.04.15.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Aug 2025 04:15:20 -0700 (PDT)
Message-ID: <db09dded-deff-4233-bacc-90d41346f52d@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 14:15:18 +0300
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
 <24392da1-02f4-4d57-a145-6285d46d3bad@oss.qualcomm.com>
 <185e3a1f-0d84-460f-a9b3-bc4bdc13e543@nxp.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <185e3a1f-0d84-460f-a9b3-bc4bdc13e543@nxp.com>
X-Authority-Analysis: v=2.4 cv=I4c8hNgg c=1 sm=1 tr=0 ts=68a5ae4a cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=JdIsBVl79nXNK9flUcZCTw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=8AirrxEcAAAA:8
 a=5lv965NAfe5egn04DU8A:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-GUID: cy0KGc27KzJekYVCuGC6LAWF5ebQ1gAE
X-Proofpoint-ORIG-GUID: cy0KGc27KzJekYVCuGC6LAWF5ebQ1gAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX0sV9DY/qHIoN
 92rls+Djz0LY89wH86wzYBj2MrThlKQXk79qLMi9kI6sTN4gM2rJCAa4VHCftTZ4opyu43tWVPM
 ShRrF5pHV9rHU/Id6BpFgNEUZoiyhYDsV7TkCD/U+O6vvsZrVPx8cUc1eTMRUmpva+6KPCn9NpR
 ouaoJH2xrXGRfIGarXzaBjt/PoCjq1Zn+3iIZTXcp0l992MsZ1Xdo+3Y2Yl5m7QiaBwRX2LZo/X
 4uzsNE9pEtzZ6oEZJk/hrG/PsFGRvVoXJRSVhrONARStTgMMRgda+fGeEDV7dN+wRQILxxBCV+v
 V3xjW1AU7xce1T/EsELHZu1hVbe2w2ynfLGkziOpFuoIu63k1ALwM5vuTKgVK0rEqaEBjHG7NZV
 Jt01ZNpvvX6BlKI59RrOKkpAcTE53Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_121524_436705_2589D5C3 
X-CRM114-Status: GOOD (  18.11  )
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

On 20/08/2025 06:28, Liu Ying wrote:
> On 08/19/2025, Dmitry Baryshkov wrote:
>> On 19/08/2025 12:49, Liu Ying wrote:
>>> Hi Dmitry,
>>>
>>> On 08/16/2025, Dmitry Baryshkov wrote:
>>>> Declare which infoframes are supported via the .hdmi_write_infoframe()
>>>> interface.
>>>>
>>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>>> ---
>>>>    drivers/gpu/drm/bridge/ite-it6263.c | 1 +
>>>>    1 file changed, 1 insertion(+)
>>>
>>> For subject, s/it6232/it6263.
>>
>> Ack
>>
>>>
>>>>
>>>> diff --git a/drivers/gpu/drm/bridge/ite-it6263.c b/drivers/gpu/drm/bridge/ite-it6263.c
>>>> index cf813672b4ffb8ab5c524c6414ee7b414cebc018..b1956891a8388401c13cd2fc5c78f0779063adf4 100644
>>>> --- a/drivers/gpu/drm/bridge/ite-it6263.c
>>>> +++ b/drivers/gpu/drm/bridge/ite-it6263.c
>>>> @@ -875,6 +875,7 @@ static int it6263_probe(struct i2c_client *client)
>>>>        it->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
>>>>        it->bridge.vendor = "ITE";
>>>>        it->bridge.product = "IT6263";
>>>> +    it->bridge.supported_infoframes = DRM_CONNECTOR_INFOFRAME_AVI;
>>>
>>> With supported_infoframes set, the two lines setting vendor and product
>>> are dead code.  I think it's worth dropping them and updating kerneldoc
>>> for vendor and product members because they don't have to be required if
>>> DRM_BRIDGE_OP_HDMI is set.  But, this could be done with future patch(not
>>> in this patch series).
>>
>> They are still required by the framework itself, see drmm_connector_hdmi_init().
> 
> Yes.  But it's a bit too strict since SPD infoframe is optional according
> to CTA standard documentation.
> 
>>
>> BTW: I don't have ITE datasheet. Do you know if it really supports only the AVI frame?
> 
> AFAICS, it seems that ITE6263 supports inforframes from 0x81 to 0x85, so
> including SPD inforframe.  Maybe, just keep those dead vendor&product
> settings for now and add SPD inforframe in future.

I don't have necessary hardware (nor programming manual). If you can 
extend support for those frames, a patch would be really appreciated.

> 
>>
>>
>>>
>>> Reviewed-by: Liu Ying <victor.liu@nxp.com>
>>>
>>>>          return devm_drm_bridge_add(dev, &it->bridge);
>>>>    }
>>>>
>>>
>>>
>>
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
