Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FD06CAC582
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Sep 2025 11:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKdH/6q5F+p7P+7W3/0S9mL17X3xtcRmAgDRGbd2rI0=; b=HIc3fmghYDrZbA
	RxclWIq/r8JvV3la8EZD3wn/g2dmykJLkK2k5n/vVyz4xryVtRJgKPwkdkOA7TVlmF2h97U/02Pni
	9FKPBKpLmMF9Utn/+ocH5Rm2TEB5mA0VE3YNLOyKYzJz+KR2CxGWj6x9AWMaomV9NaQoojkAGsR2a
	jePhJIFQ3xSCz1na5WuWzBjmyBQh5whcfsWd43Dteb/m3RtBf6raU0olFVlGlejgZinBlVQcoXJ4z
	rRdWo6etcfddc6oobFQRA1vBgtqaFHLS6S4SFYHYHMimK5jOtwemt0RKsS3GvrPbV2NOIcfGfB3B/
	ziK19jhhRoV+wjru1D5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux1cL-00000008mEd-1FnJ;
	Fri, 12 Sep 2025 11:07:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux1cI-00000008mDE-2n8o
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Sep 2025 11:06:59 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fOtZ023399
	for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 11:06:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ObqOUZTyrARl8ec8JgmHRIoB
	QhBr/qr+CrAYCMGQmus=; b=HogY8K/EpkV/pbnGmdiacBZ3fg5WnhBQc14tPHE8
	dGFAFY15Ke35AX8wHNIxpMICYLjk524LwDwH7+ESLvSWfHG0jX+z3POOceLoiFtd
	mtnH/kgcCGF7eD7kjQg5pV141NQ/4vaq5p1iQrVBevtotYv1dq86UHBuBdNSQITU
	+G+1vsOOMsDnwgnCFcy8uVTCL2GuIWHBcliJ2eDN96TsP1+TpiZOuRLLcJhEdxeg
	brvRfxMyhf6EKz5PpJsb8EZ8HVP7Sb4Pzxw8kqZtRJ8s8XJk4yO0IFKWn1zseqy9
	n9dvE2lcfcF9bRA1T8jAva9OKWZkM4p6WBf7GfvB3GEAUA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491vc2fgmf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 11:06:57 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-726aec6cf9fso48398126d6.1
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 04:06:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757675217; x=1758280017;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ObqOUZTyrARl8ec8JgmHRIoBQhBr/qr+CrAYCMGQmus=;
        b=kej2tnU+OpeF24L4TsFly+BnUjebZKClSuv0qysviN16KiicjqNYISGhYHzNaJWlAd
         Y/E6o8UXPDtzQkFHhyIb8je63CQKvznt3g/WnyiGM4HaPbrBNOlxYS4VS5xNBx0S5GoL
         bFpMgnX1oAIe3K0Oh238DDek7lKue7V5vb4CD1qT98q8Y3i13SSliaiHCTEL9I2RnrVB
         kyuVx0O1NUu4fHCVRN/cHpw+MP1VIKUThQcWIgYNnN19ez5xdBtx+GKgvtgqEhbXgzWr
         5onykQ5pw7SMgOIDyHWEVspkdzLbOn5DQkAE4mXJkdbBusw4vtn6/I9TnuetgEjFEgVP
         1FsA==
X-Forwarded-Encrypted: i=1; AJvYcCUEX3+6VNHYNE97cwhs1JXdICbuez5FPqQXhPQY9J9e9Ggs+rR0BLNDSmX2eU6SqyU7FD5f2DFM0cWt5fKmew==@lists.infradead.org
X-Gm-Message-State: AOJu0YzC+Sz9MyOymQ8ZWYIx8zMn9Az8jNi7Kqljm+FvrJiqBEw5N7P2
	YF4RHpqSKJr9pwOZAwmKXjFc2rRYfKKqjqmOGsJYlWX279OmvRUFURhU4DJNJqYLSOnn9Y5r6IF
	65z+0mA5EAU6N8R7n2VyjeBWK9lMAj4LZQx9GrDgsICo1wJWbDDYOKF/KPam4hY1Bh4QhKcfmy3
	0=
X-Gm-Gg: ASbGncs3tEuJHkSmAtwZ6owGPXumEKL3VUty8XYa0k/UiHGZt8VjSk1DqxJpwggWYjn
	NbMB7jjwnlX+1YDKLkZd7kxbQ465A/EYPR1KItBbC8FowXYy37DOW7u9kMpZJ/OcII46r7grgQf
	Ll6du0atM4g7fiWUBWTRbxId5MYZ4hEVUMDvbYXURSqsI17H5kKgllcloE+gq24sKZmeF+b6IRO
	5CyfA7biTtvuJOKUs5FUrrs5GKJ/jJFR/vMX+KX7dPXkZE9ppVAhSNL0LZjps8gBvdrqnRaOGR9
	MUnoNvKijcQJRikT0TG4zpILDCb97bnxPaThZaxnba2IoPN7mesoH13CDCOjCIK8d9DGk25RBiO
	uTNXS7cBYIcASGMhe98YFsjuNUhQldGZ/jP4Ujr0umhK8CZEgX9Yv
X-Received: by 2002:ad4:576e:0:b0:70d:81ce:ec1f with SMTP id 6a1803df08f44-767bd2881a8mr34381676d6.12.1757675216788;
        Fri, 12 Sep 2025 04:06:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzL4AO8dNGPWgFHm6qvxn4ogauEObB1TwGr9YSH5AEOx8Q+cb9zElyfiMXPvqBFGwT80wJCA==
X-Received: by 2002:ad4:576e:0:b0:70d:81ce:ec1f with SMTP id 6a1803df08f44-767bd2881a8mr34381126d6.12.1757675216206;
        Fri, 12 Sep 2025 04:06:56 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f15a5834esm7432661fa.10.2025.09.12.04.06.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 04:06:54 -0700 (PDT)
Date: Fri, 12 Sep 2025 14:06:52 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, jingoohan1@gmail.com, inki.dae@samsung.com,
        sw0312.kim@samsung.com, kyungmin.park@samsung.com, krzk@kernel.org,
        alim.akhtar@samsung.com, hjc@rock-chips.com, heiko@sntech.de,
        andy.yan@rock-chips.com, dianders@chromium.org,
        m.szyprowski@samsung.com, luca.ceresoli@bootlin.com,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 16/17] drm/bridge: analogix_dp: Remove bridge disabing
 and panel unpreparing in analogix_dp_unbind()
Message-ID: <zt2kyoq4rnn5gbb22vvpphqwmbbv4vecjvc2iepa6t5iljhpgu@xckynlkyyjiz>
References: <20250912085846.7349-1-damon.ding@rock-chips.com>
 <20250912085846.7349-17-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250912085846.7349-17-damon.ding@rock-chips.com>
X-Authority-Analysis: v=2.4 cv=FN4bx/os c=1 sm=1 tr=0 ts=68c3fed1 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=0i7CoW_5q_0ZA8A6Ya0A:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: QNZ88divSKaSSGmRNhgBZSGsULmJK00s
X-Proofpoint-GUID: QNZ88divSKaSSGmRNhgBZSGsULmJK00s
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA5NCBTYWx0ZWRfX8n6K6cAneVgw
 TJu0yo8BpH09MS+17GROTytbykcE6k7ZFO8LCHX3tZzv+nGtqmL8/AqClqTVjW0GqGw21fOwXBH
 e5E/0bj2OEf5jq97iDIPmujHanMubVCsd/RH5d7/aNtxlM5JRmIcKDsK+iiOddhVoB9ThitaP08
 bqRCd0Wdef6Lbe8WmKXIWrli4SsFAGCLfXstSzzVSQmlyeARLGbZxBLeQKRRtOiX7/0YpJb9qdz
 AQqTZL6JJvbd3b6Bq3+HzI7jaz3+83m6RBMMdmVpN+gjrL5M8dOQ15z48kui6NFzJfNIHI3C73O
 MwRuRQUbl6wFsNZs90J+pJrHpXcW1URcmX3Ok0Eub9Xjwu3gqEAyoCC5AJUKLB0g+bfGY2p3TGZ
 Ak3Cc3Q7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_040658_829398_A086D245 
X-CRM114-Status: GOOD (  14.60  )
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

On Fri, Sep 12, 2025 at 04:58:45PM +0800, Damon Ding wrote:
> The analogix_dp_unbind() should be balanced with analogix_dp_bind().
> There are no bridge enabling and panel preparing in analogix_dp_bind(),
> so it should be reasonable to remove the bridge disabing and panel
> unpreparing in analogix_dp_unbind().
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 4 ----
>  1 file changed, 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
