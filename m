Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5FACCCF9E3
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Nov 2025 16:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fo8Ot20KA3mUdeHnO7xFiA6g9xr6/vAHw2V6+gr4CBU=; b=eLlysodX9g9w6q
	+WPh761uQcdjXIkqrB8uICIPreTwSzLjxgm+AI/XTDjZqxbGmFahJLZQ++Np2ThhLsn4MCT7l/hcx
	WiQZckc7r9Rhtd3Y0KOYxoBfBvTa1AJuvhdgcuI4RuvGLoE5nv/u5vd292XsT+s4WjX1N9f3kCQgq
	vbok/mJ4HVnXzz/LiBpxbuPqKD10dubXyHnmo+Q3pLnSNf2sQVFlycoqCQBni9X22IjGk5wp20gdI
	AbKy9SPqNenMkdYXhTsAlb98y4hG3xolwlalgTUV1TVBAUZ9NWpsL8qEXVtGlt7eATvVXD4TjrzKE
	1XfGmWfauqzkgtM6++OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFb77-00000008f6J-3O5u;
	Sun, 02 Nov 2025 16:39:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFb75-00000008f5X-0eUt
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Nov 2025 16:39:32 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A2EXIXE398803
	for <linux-rockchip@lists.infradead.org>; Sun, 2 Nov 2025 16:39:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Vsudp5PRE81p+UL97II9GrFo
	Q82PxOzVdfpShaNANXY=; b=MofBD+FvgCKPFuq3/UZeyNcPO7m4lbnHivOxOn7h
	/9eQpsVBicILU9Wyi7oVMysvN7k7Mw9FwfT4cK38MU7Xn9j/1v/0p6/Jf6+/PVhO
	gWjMNLjyOeisd7CIbEtHAh3y7coy+AFabvbvPQNy5jnA6RaGEUMgR++iZmAmLSpe
	FcF9U8T7xzAOGwsxol6eOhhJkNqSmZlDbcZrzrZiAZn9Ez/KyqbMLuBybNFobZGt
	AKrAXmbeaQ/JJrjNAqJO71reaAmJEanyzsfP6lFJkKGi84AHIyY/ZHYgjIvjNIlD
	VzG8fDkGWx/j74iJT8C/kUi3FZfSjsTjW7BgeK1e/d4lMA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a595rtdux-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 02 Nov 2025 16:39:29 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ecf8faf8bdso80528621cf.1
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Nov 2025 08:39:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762101569; x=1762706369; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Vsudp5PRE81p+UL97II9GrFoQ82PxOzVdfpShaNANXY=;
        b=L1MdfBf9mJT9yLaJy5kDloBAhnv4qmUxycUy3QcTBxlW0+C1J/eVBPyPtBwlpKk8Xb
         U2kCI1V/k9r3vIqQBPfhjFTxI8siiJLz53aQWi+hDokUr/6VdJGxNtvqp4IeQ8tdZI+Q
         sfXriq2He0i+d1Vo9ssVSnDCLsb+ZBEYJArS5Fhtg5pNjDnUt2d7WKEqE0BCLMe8tszC
         Y+X9YY1ODu9U+73/k6JcK9calDwTLC5HL4SoWlwJj4Tpllo26xCVSh8OUmrlrDS2FiRz
         UMBtnBvVSKSIVz/utjixp2S+D0YCvTagDufbNKgPvyRiHmj9TlZbciBjdgR71al1V182
         L9Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762101569; x=1762706369;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vsudp5PRE81p+UL97II9GrFoQ82PxOzVdfpShaNANXY=;
        b=r7anCtycv+TrodGKZjVyQ3EZFyJiQ0vbFe5NamfTrsAqZ5yZn0dd/G+R5iEri4EzcP
         dlmoSInrRWnSm95cctRFVswV1p/a3YSD8XChDRzbg05DmDFw34sjemC5VFIFt/Rp6TkL
         IUZxw4IdrgXzZZP5TEHPWfWLmk3Pn8s69sSQ+xv7QtKMBVdzkidZH4p+CT0evtN1ZKXT
         XSbQa7lSp4j4QizpxDU2qvWcLJVTg+VLTFe1lvU1Y9OcIK7aMei10vh39R98Re6N9l9n
         QFTMGwywEvJlqq5D/RhJlgbU/mHsik027WLoui7qe3NWSg/QSH13Cq0WkyQZ1ppkZ88S
         0cFg==
X-Forwarded-Encrypted: i=1; AJvYcCVKm6MS6mu4H1ftFqlFN6n8tMt8pczSoPWfypyWeDsnEo91v1Nu1Jv9RqoVGacFg0F5C1V7YUcwpai50gbUvw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzTHD3pDNSPsHCmaJ7trzQiWSALfF5p2DiIxNBC+9sxB8e5aRO4
	dOfxYUiWP5D9vTFN/CnAqeVmP+ymaa6oRss3PhdZa9+hjPMBGSBdY3XK+FQjfrbqHJKFYu8fr5O
	PIErSir6/fVK1PctrYqlxray1llWkQCrgqixmbSG2r28DOKTH+3FoRY+iRWkXoLScE01kXhEJ0W
	o=
X-Gm-Gg: ASbGncvPpfwvi7eAKsaPAURoO41MKcYJd2TsQVv4f+XnxQg/jJ/+X1sv03pOQvpupE5
	2/kKmJO6by/pFAahX3TfZ4xiRyWtCf95ssLqzTK/kBIm3t8UL2kPFKaMcVo26ITbWFyCLWFBo5v
	kUm5dqtTpmNHiGwQYuNpmvHqlVC4pPyyDs4/6j5OY2H3+yEvaaUCP20tExE5fe3dNFyxPXHV+CN
	YohlzgOQMamW9i+i1JHO24HkDFX7QNPblV27ggObYMO9bsXVxQGa/cQw74i7NRske/S3DTgTAkS
	CsgOto7Ejh/HU6PkNOVcoUevllO6HB/Er+noaZ3qeSBx+07gtjJ2AjV26dTJ/lK9NxnJamhP8aP
	tGlXAM1iD5Mx7rZPr04sqlZ8JZzjTj8zInUA/bExabDxjlc8XTbXsrNmG9y5GghICTUCwB7q9mO
	Pon99dVXT2iJg8
X-Received: by 2002:a05:622a:834f:b0:4ed:423d:48d4 with SMTP id d75a77b69052e-4ed423d4eccmr57411131cf.54.1762101568697;
        Sun, 02 Nov 2025 08:39:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFBDCWJDKPzqxu7f2En5m/zHiJp5IOVrgHqGPH6qz1rOivQAZXaoWbSK0Fgiw9Mg8qUeB+6cA==
X-Received: by 2002:a05:622a:834f:b0:4ed:423d:48d4 with SMTP id d75a77b69052e-4ed423d4eccmr57410861cf.54.1762101568242;
        Sun, 02 Nov 2025 08:39:28 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-594282be8adsm789469e87.51.2025.11.02.08.39.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 08:39:27 -0800 (PST)
Date: Sun, 2 Nov 2025 18:39:25 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: simona@ffwll.ch, airlied@gmail.com, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, geert@linux-m68k.org,
        tomi.valkeinen@ideasonboard.com, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, freedreno@lists.freedesktop.org,
        linux-arm-msm@vger.kernel.org, imx@lists.linux.dev,
        linux-samsung-soc@vger.kernel.org, nouveau@lists.freedesktop.org,
        virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org,
        linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-tegra@vger.kernel.org, intel-xe@lists.freedesktop.org,
        xen-devel@lists.xenproject.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>
Subject: Re: [PATCH v6 13/25] drm/msm: Compute dumb-buffer sizes with
 drm_mode_size_dumb()
Message-ID: <vptw5tquup34e3jen62znnw26qe76f3pys4lpsal5g3czwev6y@2q724ibos7by>
References: <20250821081918.79786-1-tzimmermann@suse.de>
 <20250821081918.79786-14-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250821081918.79786-14-tzimmermann@suse.de>
X-Proofpoint-GUID: qdH85Jf4LXF2NuhewlG7VgSOV5rOUMzE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAyMDE1NCBTYWx0ZWRfX2LBpyUO7whRU
 lgHudEdaVQHaVwxhc+dac6TTYtL83tToKJLjFP1DAy+I7Rwlka5nkvamsIbfODoFqaJaS25mtOR
 Ngro0qQIayP7ZYUAur3b14wpN28c7h+GYfXNc5KEVc2pFv4zf8erNWOA3QJUENRb+GT3AZm05tv
 gE+YACP0KBkLJaZtH+OWUZOyDt2hmtUORWZUZBiwWi5B6019F8EhWJH3EY5xV3WT+AUO211Bp6i
 La2dRlF/8qBO8dK99GXJDytYk9j4DiLVU40yJQ8eJHFc8tLKQ914ccP2IAYnOuwRVcjpUbV9cnx
 rHQ9ujsBMTzPtHfiTrG48zMvVLII/+ygA8gi6OLRVpzpDD2w/6DpFzU8QSNO/++l9SQpKtZIOFZ
 EuJ0F++1ynnNhB0Dq8Y2I/99wAuM/g==
X-Proofpoint-ORIG-GUID: qdH85Jf4LXF2NuhewlG7VgSOV5rOUMzE
X-Authority-Analysis: v=2.4 cv=XYeEDY55 c=1 sm=1 tr=0 ts=69078941 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=pGLkceISAAAA:8 a=COk6AnOGAAAA:8 a=tVI0ZWmoAAAA:8
 a=4vBwfh3hQKJL6CJddaEA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22 a=-BPWgnxRz2uhmvdm1NTO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-02_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0 malwarescore=0
 bulkscore=0 adultscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511020154
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251102_083931_193223_B6D16C09 
X-CRM114-Status: GOOD (  16.00  )
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

On Thu, Aug 21, 2025 at 10:17:20AM +0200, Thomas Zimmermann wrote:
> Call drm_mode_size_dumb() to compute dumb-buffer scanline pitch
> and buffer size. Alignment is specified in bytes, but the hardware
> requires the scanline pitch to be a multiple of 32 pixels. Therefore
> compute the byte size of 32 pixels in the given color mode and align
> the pitch accordingly. This replaces the existing code in the driver's
> align_pitch() helper.
> 
> v3:
> - clarify pitch alignment in commit message (Dmitry)
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Marijn Suijten <marijn.suijten@somainline.org>
> ---
>  drivers/gpu/drm/msm/msm_gem.c | 27 +++++++++++++++++++++++++--
>  1 file changed, 25 insertions(+), 2 deletions(-)
> 

This broke kms_getfb@getfb-reject-nv12 and kms_getfb@getfb2-accept-nv12
IGT tests. I'll submit a fix separately.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
