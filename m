Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 310D0EA3F18
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Feb 2026 22:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=op7viSaEMjiBgz9Kwf/qT2m410D0izLrXh+wSQprBgg=; b=iTaTBhlwE8s9/p
	Mc8sFpXvLf4oLDWmyABH2QrAW5LBbHe0icqibIY3ICpykPKJNF9dELCeTrBl2d1WtO1d/vZhR4sEj
	lD2fPyy0UoMEvJo1mAHSDYMNvyrmgMLH53Esfj8qnOVRDZ2WCcy1yCLwwWKwh2fWQgFhgX5pa+mRd
	Qo6lepxoVpWH08/j8F63Sga65dKFSNxcuW77QAR7MeZ9lwkgbue9GCwlAf06Hxc4s6RWR5n9Yq+Vw
	SIDQAM5PHr1CP6KFDXvZP42XXhd6YSpPk4xS3vBCb5ne7nydBupdLeBj2iz+GlMpxIQLMCS+X35Ki
	KAiRwZobAPg7gry7vqLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpvz2-0000000HYDe-2iwr;
	Tue, 10 Feb 2026 22:13:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpvz0-0000000HYCG-0gus
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Feb 2026 22:13:23 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61AEaZ5h2169328
	for <linux-rockchip@lists.infradead.org>; Tue, 10 Feb 2026 22:13:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5nTCr+xuryPJ1HpVPDG/DVIr
	pdNtB8DMTFv7L6Sd+kc=; b=HdEnIsj/u9lznKcM+cVpa5eAlJjqKYDIdfXWleDx
	ILcEWqi3xNQPG1uqcdNJVKuH6RDVfPeA27IGCPyNzunTkj3rB0UhqAcxY4CHCpD4
	osOg2arsTz+URJlKTNL9WtjlzrDlp3XOhEyN1gjO1N0V/LIakS4+C7WPkkZr0l2G
	APeufA8GrK0do4Em2NyYow+uauEPvQFQ1yxVRmkfEmo3djaLnTLDVD7WxOLQhlVx
	IgOn/GWSYha1OJBPHRg3pPAkGLKxLapiu+khCOPei/UcpQkl2AGJgXtxW56eUsqG
	awmcAC9T8OxeFQHXdAtBuoYiLUXQLjYrGYx2WUDp356dXw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c80drtw23-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 10 Feb 2026 22:13:21 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c71500f274so158564785a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Feb 2026 14:13:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770761600; x=1771366400; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5nTCr+xuryPJ1HpVPDG/DVIrpdNtB8DMTFv7L6Sd+kc=;
        b=EeiPBfSHrDNRnByW7mkxoz9JSxlX75hmv+7JZI3Vrnl4hIX1epc3OMc8rVOqD+lEio
         LlHbypkoEVhMYQPBeLoeUUaHzGMRjCfCnW08RxkPmA/cWwIXNETjYmUINkXFoSUV91bP
         AVU+hYFioMQOPeM+lJtfiZxOtFAToNWYEbp0uwIEnTZvX4A4txSvaC9z1DCGsVW39wKB
         mqAoDjhYUN5lBDumomCljTEGCtg0EwWDq5SmMzXTgcIF7WZNUIDCutnxNqm/gYqDTsm4
         aTToHkqY1NXTNZ0EyxdtrfYci+sfE5l74/GT+YT6My24EIE3QiRZnu3W8ECqFd/3se9N
         z4jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770761600; x=1771366400;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5nTCr+xuryPJ1HpVPDG/DVIrpdNtB8DMTFv7L6Sd+kc=;
        b=OXSNJVmXLavb33xuGeEtEM9CLakYNoscrfahTQThcb8nhkZqNKkadzcEE1iyW0Pncc
         bzDbtzRevCNpFrDMIX6hNwGAZNgNmt38DuEHSNW5Ju7mTgWYKjdhrcxPuSphNo0p2v27
         3pRNeV4PlXMROYRI/fTx0GX2aQ9VusrKqG70Ab8Q//tHEdURVelDUqNCTxa6rCTL4QMt
         ebQ7nHKcNQ3P3YLduL7nwOrOhyeWAVZ5+HxfWhTP/8dBNWQHxqyBJ/MreNhboO1UFrfJ
         DVhNMcQsvoMwoTm/jB5dNMVRiAIqGCLWBjAb/wpCjsTvg1mGdWIjbUEw0xa7qw7NY/qn
         wq1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWkDmGG89Sn4575hgruI7bCH5Hv606GGR3riEYQMNs893Z3+WU8FG2wPPbCS69hneGHaeiwX2vckXhE9MByjA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxn0mC/jOJ8rHFhH8ZWnlNYKSKZTbzNySmgDMBfD3zV5uxoDYsw
	kQ8brFpAwgMPyuqIEHbFt5i8AWgGJ5zrisOtFuZwvlhRsGYMsHquTtg3rw3+Vqbro2VDO2NBwbG
	jt/MOeRot/RFhbn818VRako8qKu4rmmrveVfl9bs0baBd1WD/T8T5u5Rt140LRmIkvRlb68phDV
	Q=
X-Gm-Gg: AZuq6aJb3Ev/gSrEBYUa9Az8YnT+LIPJcGkhD7jDT31qMy+YGWj8oBNrN8h2W1SKVs6
	9XWRvjh94wHZdDmvZIIUFeEwHjOibWu5Mj0WO5cqwavqtNG+BGUpiDgsJl/ePi00Yp6YYEpeucb
	bvBFQy+5eWIAm0bvGG9i+sccChPFsYsC59CAPuZqw/DeEIZ25OTMx/+dnhMLLorCMwP/+0rIU9Z
	G97BynL3W1Ezf4qCL5GWXHTmwKYiNx8dx8UAniw+jJ+qDYxU47L7NDkPMmboahtVkmEqOf+S3H2
	uUkXQ1xmk+2RT3XpKr1tgZYXl2e+UZXcA6KgkEW9aXCWe9K1rwnEioG/Nge31uCtiXojwsGJ32a
	QN6smgNE/isWIjdJvXMbajCce0S4okFAFz9oYYH9ao57EKe7GRu/GwI/jEFdsBMfhl/aWKtVyzU
	xcHQI6NIYqGnzgWAXS+ZShNVDQIwYR5Mrua+s=
X-Received: by 2002:a05:620a:410e:b0:8c1:ab1c:f2da with SMTP id af79cd13be357-8caf13083edmr2257941285a.70.1770761600401;
        Tue, 10 Feb 2026 14:13:20 -0800 (PST)
X-Received: by 2002:a05:620a:410e:b0:8c1:ab1c:f2da with SMTP id af79cd13be357-8caf13083edmr2257938385a.70.1770761599898;
        Tue, 10 Feb 2026 14:13:19 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44cf6f72sm3521414e87.2.2026.02.10.14.13.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 14:13:17 -0800 (PST)
Date: Wed, 11 Feb 2026 00:13:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
        helen.fornazier@gmail.com, airlied@gmail.com, simona.vetter@ffwll.ch,
        lumag@kernel.org, robdclark@gmail.com, robin.clark@oss.qualcomm.com,
        guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
        valentine.burley@collabora.com, linux-mediatek@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org,
        amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/5] drm/ci: move qualcomm baremetal jobs to lava
Message-ID: <55cjkwps5sfd766uxab5viu36tez77rnrlnabocqb3o7t5hhr6@nydrmwbimnzj>
References: <20260210071138.2256773-1-vignesh.raman@collabora.com>
 <20260210071138.2256773-5-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260210071138.2256773-5-vignesh.raman@collabora.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDE4NCBTYWx0ZWRfX5GQD+fzvn1sY
 yoOv+Ut/Fxd/FeeI5dPFxiN/UKZdzKBFrB3Q4gh9JIwB6MBsQso6Bcwc566o6U7FpbL2taLuKdr
 oBLtVEE98SRmPqlawRi7Y4iSbJqGuGIQof9L3KGuurd8xlTCYykvJXD62Bt0oJiHgguWpoM+zRf
 /aJzlLCZtShFrGaQazdmvECmfJYrD0Zx6+QXhdUmaF3XBm2o2LhrXlWuhask3kh69YWN5j2Em5D
 NETGNFv7Pnii3xj8n2TCLS9UZomCvXK5Hzau8fjkySX84zdtAfKE0benONXVBDnnFNF+NfzUbFg
 43+PVt+F/Say23ICoCmkfUoK8MJ2P9RrNAswwIikfF5o7DSl6imytRYk0Fe4NXZva7fs+n3ZLiY
 q7d0b+Zt4GhddvJu+uphEkZzFgEeVHvLM238CX0nVbBu3lh5BIRsCDhpjd4pSOoENHrxERYNb6o
 H7xRzRBA9jaELLTSN9Q==
X-Authority-Analysis: v=2.4 cv=fd+gCkQF c=1 sm=1 tr=0 ts=698bad81 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=QX4gbG5DAAAA:8 a=9K-sheTcyn_FmZRYi04A:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: XH-DgKhPtD9ykaaC63N8MAzILrd2RKo9
X-Proofpoint-GUID: XH-DgKhPtD9ykaaC63N8MAzILrd2RKo9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 bulkscore=0 lowpriorityscore=0 spamscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_141322_217373_1EBBD24F 
X-CRM114-Status: GOOD (  13.72  )
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

On Tue, Feb 10, 2026 at 12:41:33PM +0530, Vignesh Raman wrote:
> Qualcomm apq8016 and apq8096 DUTS are moved to Collabora lava
> farm. So enable these jobs to use lava and update expectation
> files.
> 
> Co-developed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> Reviewed-by: Daniel Stone <daniels@collabora.com>
> ---
> 
> v2:
>   - No changes.
> 
> ---
>  drivers/gpu/drm/ci/arm64.config               |  1 +
>  drivers/gpu/drm/ci/test.yml                   | 41 +++++++++++--------
>  .../gpu/drm/ci/xfails/msm-apq8016-fails.txt   |  4 ++
>  .../gpu/drm/ci/xfails/msm-apq8096-fails.txt   |  2 +
>  4 files changed, 31 insertions(+), 17 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
