Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F95ACCA476
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Oct 2025 17:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D21Qxyy0unAXQFc70QuXufMtstQCmFVZjK13aYQHsC4=; b=zapf0hWLR1UtQl
	s7PnWhdnbJ7ir7PZUFFPWfEEiE570RQyoaRsFgXG8K5mPu3jzC6c9Rqzva27mr59rhkdDGQb9nsGK
	sQdUoekbtT4CrC/6EC1EW1/ig0ZwnppsdbhusoZo+ob1QO/vnS51WGZPR4zZiqgk07QFXVYMAK6So
	1uaF5NRVV1gyUIUDX7wHhFdw4F8W+pPCxdHeC/xxrvfJG+G8rglUFI1Y2L0RGPatb5IEQPKE4YYrY
	k6iDQ32mPC+2u4CIiuHLgOGaa+SyQtzJCL7tLq9FGNgEmFl/OmYHs9TM6PjEqtm7tX+ZhKAMStPzQ
	y9CJVoQ5uVyIo6D9dxCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7d3o-0000000APlj-2rON;
	Sat, 11 Oct 2025 17:07:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7d3l-0000000APkG-1WbF
	for linux-rockchip@lists.infradead.org;
	Sat, 11 Oct 2025 17:07:10 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59BCtxPh010180
	for <linux-rockchip@lists.infradead.org>; Sat, 11 Oct 2025 17:07:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mFycPb6v8NKaDe6FYB2/8x+o
	vkGxvomJsSjcJN9pEKw=; b=pn0h0OcIRdlCvpvf8AjJVH6nVCXg8NEJeCQW75q2
	dsToMtpqSi+FaPkkcRIipiaBow3F8Mt0xdph6Ty33wqPLR2jpF+MAGyHWJFRDBVc
	2g6SrzzItdXMZJs4RIo5yF3mVzUscJ5f/jt/1v16S4qXdikK6xk/2yBSH6l5Grxa
	AQvyG2gx0K+oz9bWCm3Wd2g2wskZ6FpJ08hr+IkKiXAJKtNQQ2ZENVco/RnbZkqP
	0ycpTVwbCwXLwDB2OXc/DxiGSnhT3vqtijHOw7tdwBYTXNeYQdUS2/J9Fih49Fi9
	a/UE+LUVGdC+a4YIb1jekPmVYnHt4wT42DujL4yWW+rGPA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfbs0xw9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 11 Oct 2025 17:07:08 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-854bec86266so933162685a.1
        for <linux-rockchip@lists.infradead.org>; Sat, 11 Oct 2025 10:07:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760202427; x=1760807227;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mFycPb6v8NKaDe6FYB2/8x+ovkGxvomJsSjcJN9pEKw=;
        b=p0/pOHjfIM8rovHHpH0c2hJUBIguMDmNisbWmWkZltYQ4h9M8ehVdYhBk3KdlQeXKu
         7aRmuskC9qU6qtqf0ZvamoQ5VQb+ecM3C2j/SYARKpSEN4aHHOCxK8UTjVNIJGbgIbmy
         Nl3U+3DK+TEX/eWNGHrwqpc5oxIUm6OowgBc7m1HSG1Sgzkuz4OkIb4lhkNrdu2beYX5
         FVWDcA2EVcMfAOmfQlpLKNmkLCq/w1CAA6FUCzyaW1NJKm/DZdkF9IZOsXBZFRIcDexS
         HlN4CgStLEou5MmNvRtJEK85Pq15Qtt+1apGewWaOdou+Gw5/fm1+bcYTT9OHcyaQZSG
         yowQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2dvnfJu9Q3evU7UKaXEoDWqrOj+65jd4pTFX3fKkuyNSG+S9w+sxhBp8dDnVZUg7uo79QTr5Rs+oZmHP5xA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwoWcZEJsXi+FWIiVvMmHNGLHqjavC7aoJPEHAGTmap13BwlkX0
	m4wdbawIBWKfr9v/fTo6vHVlOQ5IalDG8dfX8d2jNjSoPVlGdkInLtPCuGOKBaD44Jij3PXhhds
	JLt856evpN3dBAMDPyNce18RxqtlDOK+X7xxOQ/2E3lBps8VE50m25nwKZxGbSP1YiF0Ue28t+C
	M=
X-Gm-Gg: ASbGncsHJd5FR4+yG52B3JPi6keFaX0xVotZgXD6TZU0esdoyJri0cFvYMsTVHcmiYF
	sAU2n5IazN1B3bYMLDPFRJzf0oCCrnurzLU4XAmwXfwnno0f4SdUiZdIBUY2oBmBguhq9/FgQYG
	cQn+HZbkFm3YcCbfUrzDYFMB8He1XYtdOnUs2zPDvPQPqnNHuKyweloT/C0/KWo99LDPOifHjyK
	cHy4hkSP6O0rZ1eeIk8ze8j072lzmNSZHep9RN5+E5dK1COWd1VMlgQ2QfMbILSfvte8a2zb8bI
	gYi0H5CiFtxX5A1x6FDqhM9GLZg4GU5+dcOPs2/SlonKwLaClPFHyrFxpIua4kaN11H+D0WOMYC
	PSjkUq0KZTyj6YJU8eiq55WU3jhZeTZD9k807O5ZfTjL+F2t1FStl
X-Received: by 2002:a05:622a:4a8a:b0:4cb:102c:56b2 with SMTP id d75a77b69052e-4e6eabf437fmr231238451cf.0.1760202427568;
        Sat, 11 Oct 2025 10:07:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGnG/nUOQfuTmf4P38ClaQ0pqxIsVT4KwQ6QvBre1kD+zoeTzKlRbXjaxIWC6ayUXFmCULHg==
X-Received: by 2002:a05:622a:4a8a:b0:4cb:102c:56b2 with SMTP id d75a77b69052e-4e6eabf437fmr231238041cf.0.1760202427149;
        Sat, 11 Oct 2025 10:07:07 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59092ed98d9sm1244485e87.24.2025.10.11.10.07.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 10:07:06 -0700 (PDT)
Date: Sat, 11 Oct 2025 20:07:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v5 4/8] phy: rockchip: phy-rockchip-typec: Add DRM AUX
 bridge
Message-ID: <jcmn6n4nbyjsmpvg4q47wxulgddizhiwax4dcb4dokrvj23eur@g3nvwkssg2li>
References: <20251011033233.97-1-kernel@airkyi.com>
 <20251011033233.97-5-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251011033233.97-5-kernel@airkyi.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX2Q7pQWnZlksy
 rmUQRKnS2lMlcCynHJNmn79ZJQ/yKVMgwoc2ji9+Fv2UYdC33O7KzstAPKSwBj+nFhVrUP7nL3s
 8ZzVByjUMMR7Z+4+1kiPmTHQcGDWurJ7jxZGvUP8fmTxH5hKi38V/he/9E/E1KcU2VdrRnA2d2A
 /4P4ewBteyzjxJIOEPtFAZbBCh9iXdBg0L/LCYo+AOkAWHGu64PLYV8kpZP3pFNB+PgQF8Z/8f/
 ZCC2imZv53t2J65CVGmX252m0OgRyatlBOkoMKKMnlgnaSORU/4NHto72hBPcBDeLaesnggw8oS
 NEs4VkNG6CgQFMAFgI98/Cc1jAMF6rmIVlpfASFIJBKIA8VO/zrm6LhQA5BXayLxQjKi5DaRbA2
 FZjDHp0IKgMUax7wluJe09jzfmGagg==
X-Proofpoint-ORIG-GUID: ZfslvDZnMWc6sBC_67vHJQKN4kTJi4mi
X-Proofpoint-GUID: ZfslvDZnMWc6sBC_67vHJQKN4kTJi4mi
X-Authority-Analysis: v=2.4 cv=U7SfzOru c=1 sm=1 tr=0 ts=68ea8ebc cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s8YR1HE3AAAA:8 a=-wB9imSA1xWJEod_rSAA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-11_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 malwarescore=0 bulkscore=0 clxscore=1015 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251011_100709_435930_C2ED5DD4 
X-CRM114-Status: GOOD (  12.74  )
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

On Sat, Oct 11, 2025 at 11:32:29AM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Using the DRM_AUX_BRIDGE helper to create the transparent DRM bridge
> device.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-typec.c | 52 +++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 

        depends on DRM || DRM=n
        select DRM_AUX_BRIDGE if DRM_BRIDGE


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
