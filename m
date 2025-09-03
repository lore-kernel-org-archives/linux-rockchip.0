Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FFB6CA1009
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Sep 2025 14:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHJEUfqkSKR1CySs3Iz+4KX7Q3v2P5qsgZekL9Er5EA=; b=Wk7SDIuRMhboyl
	ACjbGWEh9aVhDj6ILsET3rpeNQF6aWzu8PL0FYjb6fWIZ1Gc8rLrCWwyI/Ratpnc6xlHlgHk52lR1
	ylsDqRj/HL6dpElmfm9FF35sA7Hx6WuA/ic5E9xRkasQfuunwvZq9gNCcHSqTl4J/oJKIH44s3bWk
	OAC/DnkZLR9TV76mpQ0GpL7+eF5/RTrIgZKqmMHoUBpwc34EbTYEnOZyRYciEvoq0pgpRcrfpSufv
	vRQkzbPXZcDGz0F1w3dQ5b8S307tUjRcnWRQqYWwNkV0JYmYCiMyKR5Nxj+mgeAv4ako45o0rph+G
	q1bBxzzV/tg1zPo4/12g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utomM-00000006lEw-3Rie;
	Wed, 03 Sep 2025 14:48:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utmdc-00000006OMT-2zqv
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Sep 2025 12:30:57 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BF2WA011020
	for <linux-rockchip@lists.infradead.org>; Wed, 3 Sep 2025 12:30:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QLthK9+25KX0PZkgxfUXb/nyfRZ4etTvDcrXLtnH1gY=; b=h6IrafxzmpW06kYa
	/dGoXvBizu/hIHW8yizzqVcUZVDilW17OR3qvIHNLtRVFQ95nM5fInGNniDBum5d
	tNvEV+q4p0fD14AQsj9rW3hF0DwyixVgCID5X3cn+B5ONRdx0S35iv9+NFpBmiRO
	UbdN0LQL16VIwIDWXpxobrJsQBEbLbkCXbTuSBmECNJ+kWdtPIZcTMt8x6QtxiT7
	K6/dmsuoUAS+piT4UJvTK/rcil9ZNjkK4+/koC1dClbGlRxaVCwyNyvzCGtOhKk0
	Ad71m3Ot58exLzhGKojjYQQgwIvNqK8m5CPTJDWTJ+EHipL0yu2Jj/ptEmt/Uv9V
	MRFMoA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjkjx0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 03 Sep 2025 12:30:54 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70dfcc58976so100553866d6.2
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Sep 2025 05:30:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756902654; x=1757507454;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QLthK9+25KX0PZkgxfUXb/nyfRZ4etTvDcrXLtnH1gY=;
        b=pT+wjgOkmqlYb6Kh1PN28rvleCotsBZBuG3xq8TXgufv64ZLZ5FM0hOob2RHS7+vBX
         BhWyDA3cxyPq0aSphsSFgdy5JwfK1WwQE0Z4aClHZy3ziLUvZg1VRKkKeOqPYlCk5Aq3
         04YVxKjOz12j2hOiegvnpF/qKi56UMnqa5oAsOUh3QFcUb27JYfNEGg9y8sOL89aUt1o
         ULg7QrOvkDPUteV14irQNdV9mNBBhNJ7SKeH39tpnHZRqR0LchJ9lPGgwjLAtU5pchsJ
         ODfloUCmVbsJ5VgxDIYswZbr0JqWQ28sY4tZZW/zenbpTzPpBSWZPCWEgNVUXVQ8gIy6
         hnFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWuUU+IUPht5ZXOJ5f1rwAM9+mfjv/BrI7SmOQ9Quv5VcLNhuy1ynOPga00BgV2kaq1dYMFWFR2Nth9jnU1nw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1QFU3g7oow0B8FKfjXmldKWjsH5rtYeIjwFT51WoSlmJnvEBb
	EIpqQYQBgJni4MXgdpbhRPs23DqyVo/b4Gm/2IEMIbswDg8393WyQTWGtNeyJKUPU7yQKH1EG6P
	fs6CfPA+T5mFFqnPUhLL+slr8dL5doZ58vctIJ6g1N8HunFuJdG2bywyXapgniJ2d3qr/5i1Sxn
	E=
X-Gm-Gg: ASbGncujvIx/kzsVc2gGci4PMlnEGwBO4zknlcKjSpPpL+wqC3sVddbEqLcuQbQFABd
	uXcp2fYUerfrcasK49mAGl114igkCpWqCr/KrP6Jn8yI2WN8wSyd/WiZlR7ptVZS+HSJZ8zsdwc
	UjHux2U4LkNXwucoCoRZBJDGm3sWNkASdoxy8VA9AqTu2ZD0GXdoYcC4pbDy7oP6yJ2uDexoymL
	itPlRxiNZChOD41g8LWVsAWI+VZZ6eyOSKvlQ++RIFLHvK4V+S4mNhS9+qpdX4lS4+txNvjn+bs
	VUydDB0fOJZoTBof3jHmGPvYiWWgNKAgXDIBGDj1GssqnCh0pyaUJUeDtN1uIaaV9QvN5RhjshJ
	4NPJeO00WYaYX/O1r5B1QkXDOt80OMdMhznnuBEMtFND47Ng3BQqm
X-Received: by 2002:ad4:5dcf:0:b0:719:50da:4a21 with SMTP id 6a1803df08f44-71950da4ba2mr111873306d6.26.1756902652468;
        Wed, 03 Sep 2025 05:30:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEnPeg40muTt0G1FfsjpDxo4ZRqx4blR1Wc4qnDjnE2n9owGkHkgKD0nBs0gJYO2KbOTOtoGA==
X-Received: by 2002:ad4:5dcf:0:b0:719:50da:4a21 with SMTP id 6a1803df08f44-71950da4ba2mr111872576d6.26.1756902651807;
        Wed, 03 Sep 2025 05:30:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608abc17e9sm499952e87.56.2025.09.03.05.30.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 05:30:49 -0700 (PDT)
Date: Wed, 3 Sep 2025 15:30:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Heiko Stuebner <heiko@sntech.de>, Yury Norov <yury.norov@gmail.com>
Cc: Andy Yan <andyshrk@163.com>, mripard@kernel.org, neil.armstrong@linaro.org,
        andrzej.hajda@intel.com, jernej.skrabec@gmail.com, jonas@kwiboo.se,
        Laurent.pinchart@ideasonboard.com, maarten.lankhorst@linux.intel.com,
        rfoss@kernel.org, simona@ffwll.ch, tzimmermann@suse.de,
        knaerzche@gmail.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v7 1/2] drm/rockchip: inno-hdmi: Convert to drm bridge
Message-ID: <4ox7yh3i47odinoaalzjz7d3gvx36bxbaspo6qfvvvl3jqhdiv@24ownjco3ud2>
References: <20250903110825.776807-1-andyshrk@163.com>
 <20250903110825.776807-2-andyshrk@163.com>
 <5255838.1BCLMh4Saa@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5255838.1BCLMh4Saa@phil>
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b834fe cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=0SXiZArQvuHb7nzfZOsA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: RWcxwELGE_RGpntymfjImMXwQ8LUL-Xp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX8eTYvvmkF+Ju
 zblRkFbKp4RCZACOqTnGP2tU64hdT8aPmHFtiF+74AdT4oyclaimMJHlWQ0GKckKKbW/pLx6s/s
 kWGXA1q91FLB4pxVI4n00Lu6PtjxzhtZav052zKGZFOQOK3R1TYMSJR68Sx10oJFoLbS2Yt8J5P
 iRa0bVkQpcX2lnVPElKsjxiWnIxniYtPPaO3MnmkVYpGTUxE58pqSq1VfmDapeGFzm/cUi3RcVk
 A9jGGgTlBmMzneDxQkB9T1h48nQ2DyuINPtcKVHY+o6fd4Gx/irnkA4e1hGJkIKu7cBRnuI5yDv
 r0EUUeY3ezEi4Kwxi/zmh7MjVPJbQ9AZAgHcHzK/1fjeQvVptE2cJNGgQVEYu/HP9ictYOTQvBb
 eN+XPIu7
X-Proofpoint-ORIG-GUID: RWcxwELGE_RGpntymfjImMXwQ8LUL-Xp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_053056_862483_52B4E626 
X-CRM114-Status: GOOD (  20.33  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Sep 03, 2025 at 01:59:51PM +0200, Heiko Stuebner wrote:
> Hi Andy,
> =

> Am Mittwoch, 3. September 2025, 13:07:38 Mitteleurop=E4ische Sommerzeit s=
chrieb Andy Yan:
> > From: Andy Yan <andy.yan@rock-chips.com>
> > =

> > Convert it to drm bridge driver, it will be convenient for us to
> > migrate the connector part to the display driver later.
> > =

> > Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> =

> more like a general remark, this essentially conflicts with the
> big hiword-cleanup [0] that was merged today, as the inno-hdmi driver
> "lost" its separate HIWORD_UPDATE macro in favor a nicer generic one.
> =

> I'm not sure what the best way to proceed is, apart from waiting for
> 6.18-rc1.

I'd say, the correct way to handle would have been to:
- merge only FIELD_PREP_WM16 addition into bitmap-for-next using
  immutable tag
- merge the tag + all other patches into subsystem trees. Otherwise
  that series can cause a lot of conflicts with all affected subsystems.

Yury, would it be possible to implement this plan instead of pulling
everything through your tree?

-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
