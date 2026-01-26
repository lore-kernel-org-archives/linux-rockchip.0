Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6A3DD19502
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jan 2026 19:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gUu3pD19q/Df0M4/APPenN9RlSJOBfemZzzv/BJFshs=; b=ZM+uLKfRjhl4Or
	dwy5q6gfdtNkbVzdCUJimWesC2qOJs/94Tza0xYexaLKOYHcUJmAeaeQdPLs5BL27SLL0LvJy4l6d
	S6kfnDg+oXW8eIbbx/pvxVc9GvBl6b1gZHyxBkjCmIwWAqgIJQbSGTg59qYPPpK53fmt/5QgHISOq
	UfKtP0mIzem8frV1K0bzgdlolCWDcXZxjOqjf/F10A/UM17F5CsgM4CA5szlI01xHj9lPY5F1KPUu
	qLXt6CSmemNMuHV1oUByWndi3Fd6JxKTX/zhmgfk5qQTaJPUCeCIvi7VkAkVP2DTvVgrf5/VRMcd+
	oSLZrqmbnO+jDo0c0Baw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkRpX-0000000D7AC-3qMw;
	Mon, 26 Jan 2026 19:00:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkRpT-0000000D78Y-3Psk
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Jan 2026 19:00:55 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60QEqqxt170713
	for <linux-rockchip@lists.infradead.org>; Mon, 26 Jan 2026 19:00:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RqfsakIPHTwBzETcZdpTqje6
	xP/4nMqp2xVshRQ/NMc=; b=lpmTm/e6ix4LNQPm1ErA67hrm5bi0+CXYTgXGVEB
	5F0JLpjpAhOtHSCDG4vdrvqC2JGo3hCvrEr5e8iZ3F9xYh0FL8olLDjrVQF65e6G
	Jz6c8yof4G15xtOR3MjHdtgW678YRnjlvURa1upnTFISVavfQoASqCblKnTtGXk7
	CM+kgUBwOBUVdSilX3vK7TBANL+8OdtuZXecKObrWvfEeMHye2ytT0PANsdqFpf3
	G/BnHS+NdT/I+N3PgV+FfLkKiUCRrcH9g3LwvfMgqxShe8x4RRsXcgAuNqSE3d4c
	oTGRdGsnap2WRIrzi5qf71AfbPBKQ8X9VO3abyLsJLK1AA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxadprrjw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 26 Jan 2026 19:00:50 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6a289856eso1488135285a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Jan 2026 11:00:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769454050; x=1770058850; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RqfsakIPHTwBzETcZdpTqje6xP/4nMqp2xVshRQ/NMc=;
        b=hmk/gYeWJf4AliXIqxhP6poy/sGF48J2B1y0bp0K8zSkDX7aadnm5QLTAgdZBrZjqC
         CybImsB7/5dRAadF9gB0jT5uTDRDC3hR2oiQc5JjkjhVX6DaLcfLFahYVXZNiDw4Sp3q
         q0IXXgPo63yL+N27u2QTmGRefK/5plLdoK45sgkXO76iHwgmpcTmmLWP1bpPRCu2Yo5X
         ng2g4e7lQyfUsTT3HE6Z8oBwxHY1rPq6Brck4eOSlqy35v39B30sCUPTdO2K4hxwx1gc
         ancFmU5EUPRL5Tob5lrZqN7b8tIVGgEgwa04ZB8ELH8vWrDDm8lovNExJOIqaS0aDEa+
         5AzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769454050; x=1770058850;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RqfsakIPHTwBzETcZdpTqje6xP/4nMqp2xVshRQ/NMc=;
        b=qfPYUY+mNc1B/PbElyve1ZBI2KXMarall6c9XTu9QMRQmIwkHdDGSLt+bT+G2CQ58C
         6J7TBNvvnzpCPFDySHOBQi2QGyvbcyw6MDTqW3cuN/DOa1OJM1Sc62wcGz78iy9KuhhX
         Pqwc2Xl82ugFk2SFuKMhzE1WV3tP+v7VslCZIQH0ZAM3HJzR0Z1EG4q60rvxKwCqevTr
         CSfxRtksn0TzLizEqvYV/SFrpquhraemtySZftWHO3eOtjMGrk8Sdrcna/wQQbg0UQAd
         HzvtB2TawopX8YvqWsM0UnkiivII0067LKbK8mOOIc5/t8sLWqWt0fRE0/5Aavkwm0PA
         NRPA==
X-Forwarded-Encrypted: i=1; AJvYcCVFFsI9tZcHtYa778drctxjcVwMGfCYj9If7RyWrp+uJ2NOLNHACfIc9hg2Pq1+kYLxCeW7QvJePdCIm+TnCA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyQDZ2IV9NQGgyC2qLPIF68svQl6UvdnZcuy/t3hlVBsQd5A+dw
	XwHvQqlC5F2JUl9DkPb8m7dHNRVFz3Nerc+/fCHit/Hk6gW5wC526wldMZuYEhpYNReKj7NAS4m
	gQiJr/zhxwRoBe+FdSPaxh7mJXf/NMjXu1yiYMC/HlwEdHYa9oc8UimH3ooMX+y3uYm7nGbFCWA
	Q=
X-Gm-Gg: AZuq6aJX1/04WFU12iLtjj4gQ93icJY4n0kEZCIGBfOaikLfKk1CMcGHhWwojKutGdb
	+HoQ8pU3PY8eTHJTSuoSlzIiT0uqiTfzTh32KfnMnBDiFSieQDGyC53BIJvJNnMbI7A+FwcPzvE
	T5wEHPuJbYxAri0UWOPTTCSrhuBe92p75tSHVhuyKkxCdG38PX2YY2/IxSa+POzOsICtc29azFs
	Z1C41Z1P5GVO7FtFezZMSkOjxoTpAFfT1Mcs4+SoHX8GSTFgHq6DXhckVlatKj4rlzYWI5UgvQW
	I1s6ZaYvn8N5Ug3jhqmRTH0MJoFFiTNM5SiqibIKyf8wVbI86oYjfLXFiqDK92Yr5k699SSlv9V
	kP1dKF2WSFT3pZAlZvldS8qneJtbC6fLGijSKwaT+v/b4EdsCMdgmMEqGvfBsAjc4lTwR+6cHSe
	5JwSvEBBrA/pLAItJSpO6wNyc=
X-Received: by 2002:a05:620a:28cc:b0:88e:1be9:cf65 with SMTP id af79cd13be357-8c6f98c08bemr619837985a.39.1769454049372;
        Mon, 26 Jan 2026 11:00:49 -0800 (PST)
X-Received: by 2002:a05:620a:28cc:b0:88e:1be9:cf65 with SMTP id af79cd13be357-8c6f98c08bemr619828985a.39.1769454048666;
        Mon, 26 Jan 2026 11:00:48 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-385d9fae764sm30668421fa.8.2026.01.26.11.00.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 11:00:47 -0800 (PST)
Date: Mon, 26 Jan 2026 21:00:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>, Liu Ying <victor.liu@nxp.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-mediatek@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 02/10] drm/vc4: hdmi: implement clear_infoframe
Message-ID: <jiq5ublhbfzuv3qsz3n6bve32wmto5hxc6mxppb2i2wagykafx@d235legi4r5o>
References: <20260107-limit-infoframes-2-v4-0-213d0d3bd490@oss.qualcomm.com>
 <20260107-limit-infoframes-2-v4-2-213d0d3bd490@oss.qualcomm.com>
 <5c247393-b096-43ea-9ff4-9dd5fcdeec73@samsung.com>
 <CGME20260126174455eucas1p1f219202580a1033d3e881adc4f37f206@eucas1p1.samsung.com>
 <36278555-a01e-4c96-bb26-e170016e5f8c@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <36278555-a01e-4c96-bb26-e170016e5f8c@samsung.com>
X-Proofpoint-ORIG-GUID: OmHdR2XhDKk22CaDe6KUoO2aSRc9cKMw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDE2MSBTYWx0ZWRfX+ToPXJdPW2sW
 OIDQBxLics4kqj8cadfDqGsDhRtlWLZtT/+FNxHtXO0AqZde+GO6bGo6HckDVOXd1roIXPMhlp8
 6ap4FU9zq467ykd+XYJhRQjcUC0fL8G8KHvOKwTUeNGFsQGbnSHguUiYNbcZpfSuli6HKNevXNi
 cHjRW0rKRYLIl/UcATwcUDwjUtUpN1s0o3TFQqZajxXKSJPE3DujgjGUnDN131kEVEGpkF2X39H
 Wv2vZIl6E9HJ2rcMNfCce5RN8HJNmapGriSYPKS7earYSoNinI38j4T5O7WRxx6AqK3vE4NT623
 rjWFLu190h0kfGxeP3J1n5ktpstURKd7wnqQD8P3a+sXyUYCtXEFR3pG5Yw4ArvVSvUbM5ivMvL
 rvLZs71Mz+POWLEGC5+ge+DZQzTSmsip7hBHMuHgSqFb40rlEDHdkz81Z4+kDBiikSH5K1jtIgL
 NaYK0D8lDu6oJvCH+oA==
X-Authority-Analysis: v=2.4 cv=GvdPO01C c=1 sm=1 tr=0 ts=6977b9e2 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=FNNbUphbDgaJBy-ozdEA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: OmHdR2XhDKk22CaDe6KUoO2aSRc9cKMw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_04,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 malwarescore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_110051_857619_7579810C 
X-CRM114-Status: GOOD (  18.06  )
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

On Mon, Jan 26, 2026 at 06:44:52PM +0100, Marek Szyprowski wrote:
> On 26.01.2026 18:42, Marek Szyprowski wrote:
> > On 07.01.2026 19:14, Dmitry Baryshkov wrote:
> >> Implement the clear_infoframe callback, disabling corresponding
> >> InfoFrame type.
> >>
> >> Acked-by: Maxime Ripard <mripard@kernel.org>
> >> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> >
> > This patch landed recently in linux-next as commit 3a4ceb89a972 
> > ("drm/vc4: hdmi: implement clear_infoframe"). In my tests I found that 
> > it causes the following regression on Qualcomm RB5 board:
> >
> Please ignore my report, it looks that automated bisecting got a bit 
> confused.

See https://lore.kernel.org/dri-devel/9ebc0582b0f7990d7df992a07ec8ef7f@kernel.org/T/#t

I'm going to push it to drm-misc-next-fixes.

> 
> Best regards
> -- 
> Marek Szyprowski, PhD
> Samsung R&D Institute Poland
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
