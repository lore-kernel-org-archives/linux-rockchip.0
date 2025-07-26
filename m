Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3437C87FCA
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Jul 2025 00:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2sONXDLakuqO/uQHoKzmWtOaO0UiY8bE69vruEfUxo=; b=x1lHI354vml4jD
	wH/OwRzSPY0ztn81uGBF87nQeVeT1F0uJ+GfE8gtog/iji71T5vm9AKM37eHuVZExPTvAczQqRgaT
	7kUI4DwUZg0HAX4oaR9kLqh4V41Gm02ScfaGyvM8gAVGdq6/CbKMgR219k73rBg7dpxGAu3mKIdxf
	jnX+OkF35csfaU3qyeO0VHyMJrcV2J86k2DQcdkOC2lJaNEJVu14ccoVstjN/GnJeXi3gWBy2vsTa
	7bkSB/iGTa1tTv2A60k79gtC9s+sYw1MkaLL9tErTffWxW9ABT5NazwJmUe3peGUpKfh3syDn57aI
	VDpY3yJUHqcBvQ99Ydwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufSbB-0000000Awhj-2a4H;
	Sat, 26 Jul 2025 00:17:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufSYV-0000000AwMd-0uFl
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Jul 2025 00:14:28 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56PJHrhd026883
	for <linux-rockchip@lists.infradead.org>; Sat, 26 Jul 2025 00:14:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fVtEWHvXvUc+qGfFc/Ohqisr
	YtRe8clpA4PwpwpT79k=; b=c/Pg0FhZcPNLb4l+6MQw3GZodRoQJwCs+p0WPYs3
	E4EDW7a2S8tEI6QbhZK2/bP1jkrWrqQVZlxftkJ4GMKATN5tvnYAwM6GoWuhNcnz
	Pe2cjgsabm/NCyhtILNPbSqnlsBkRvUD172jyVcdFOyQw91a5gDmbjYlRbeDzQiK
	ZjunzAkUPbf3NVUlvbRY99+pn5IhRbCaAw6whsDUMAfsiM7nIT5hQ6VgC49Lw2fv
	vP7Tn7l5As55LNfW7T60MNTesDn7ByXWuSvES6zKUW+z4o+7mlEn9H+uQwEc52sG
	POS7p3tykbzveuFwypm8whHqLvxkRMAQIypWApAT34JXUg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2u3uvh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 26 Jul 2025 00:14:26 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-706edda34f6so42818036d6.2
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Jul 2025 17:14:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753488865; x=1754093665;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fVtEWHvXvUc+qGfFc/OhqisrYtRe8clpA4PwpwpT79k=;
        b=g5QCnyFGCxtdIBQVDaZ1n01RctLddD1imnuQZq0TtpbhNuEAGmNPoCAVmKbPOLLjOs
         XVz+CFr4SiIlH10EX1DkzS2PmUeGNqcqj7ctyUv8QtrST2vPim8Mwjc+24MrH7lH7QJK
         rzAfCG1CBnzI8qvVRNcU/BoE9yLZa2O396iKvfXjk0UWUDpkUTh8nYPdN3YxJ/BOQgB5
         IHu5fcDjeElcB3tpEPEiSptbPjQtX60r3nHiDaNAhaXLInRP8kT4/oFNw0//da3zuYAS
         svCavG3UCb8rkNhhe/j22lPazXPDebOMPgajyMvR7vp7i5JYmvGKmGizEw2TiXZvW9Vd
         858w==
X-Forwarded-Encrypted: i=1; AJvYcCXpOU9ceBq9b6kpI5JTc8yJ29yuLUxRKntRGmUpNy6uWNUt8vAWNOlRXywi8sIUsx/57z9MyiCpeGDcPnSH3g==@lists.infradead.org
X-Gm-Message-State: AOJu0YysvVEF7qCJ2xttdnz9jF272cd9HNdCOhvYXKbqi1HMHi06jlhO
	eVuvpwdxkhhz/X6vWqp2kXLEDgQrXXdJygDyZiZDvHcIJwph7Fgp0fTbaft1/7wQCKttpSG8eQQ
	cB6O4bJINvKVaL7DISicT8NRDMB2CX8Dyz1Pzgk8lbn1MJGP9gsmqP+EjhF9I+bCbYmYqGq3LFF
	Y=
X-Gm-Gg: ASbGncs19mgddc2yjrBGeZnZJfjFDAuaDUI5i1eADbgcKkps3a+2fF0kW0WtdFucPYN
	6i8fBa3ukJ/EL/36TN9D4w5Hz7x8rmTiHjUevAbXFzd8yGiZGEZA55rxtMeCEzDBqXgILw6HkbX
	cOqdq+T2LHCCZPlmqxOVLbHp+qLO67HgfYKx9AVtHg3V7pG5j4ZiE0a+oUricG9JNHq+luOBe9m
	7hLO8x0PHLSYTJSGV82U1P8UHDAOiNgxNYMdzG/Gw5RbS6Es9LneYswEPwI+eWyoajQuzwaOGTH
	j6aVVZnz7oZa/6CLpfN0V2jQ/vGTAgZ2YFXraT65iKhgw2rJWS8uAifaSZLbDvK7F+vaYMcQ910
	mXUsS/9kHXQta07QnBXZqkTt1dakJ+IBRbt/8oZ/3jwM9dOkVzuUX
X-Received: by 2002:a05:6214:519a:b0:702:afa1:b2d2 with SMTP id 6a1803df08f44-70720519109mr48479256d6.4.1753488864929;
        Fri, 25 Jul 2025 17:14:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8LMLBA6RRSlqAfWuEkNfbGOnD0mlhKsga/BysfgtQevo2p5uY8FU1lkB1NoIIU1STSJSTJw==
X-Received: by 2002:a05:6214:519a:b0:702:afa1:b2d2 with SMTP id 6a1803df08f44-70720519109mr48478786d6.4.1753488864339;
        Fri, 25 Jul 2025 17:14:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b63391f37sm190687e87.170.2025.07.25.17.14.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 17:14:23 -0700 (PDT)
Date: Sat, 26 Jul 2025 03:14:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, jingoohan1@gmail.com, inki.dae@samsung.com,
        sw0312.kim@samsung.com, kyungmin.park@samsung.com, krzk@kernel.org,
        alim.akhtar@samsung.com, hjc@rock-chips.com, heiko@sntech.de,
        andy.yan@rock-chips.com, l.stach@pengutronix.de, dianders@chromium.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 07/14] drm/bridge: analogix_dp: Remove redundant
 &analogix_dp_plat_data.skip_connector
Message-ID: <b7szam2wjxhbwnz2bpnejyppek5ag6vxibw7wmlwzdajc46dnv@xh5lc5bymg3d>
References: <20250724080304.3572457-1-damon.ding@rock-chips.com>
 <20250724080304.3572457-8-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250724080304.3572457-8-damon.ding@rock-chips.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDIwOCBTYWx0ZWRfX10wdfh0+uth6
 goxnYWyMHDExj/0fRcDIU87G9pNGeHej15AIwFmAWKLFrzswbkrmceRBaUOUlrKDG0s7tVp71Va
 zl2PSHU2Axyph6MN7HlnVBu8J8unBF8pdYLy8V0Hbq2rxemIlPjqd/1kUNrqqmfhqn59M8h2nmK
 9aYHexIKJgfqvVoMbhUX01oxjfc2NgRcFzZLWWHO6ukXdqhroVb0hJR7pvcA07SyWhyi/9UeboE
 bbB0j0VjNj0t7Gm57VEUfsQvXTHuFse4DpnVfkc+gP0RxrdLkvHv4ye2FdRZkljPIPKOfa6/YlY
 bYaz/0BChVE/dUVGY7PveGg4vivBQTZoHXMmExHjB8+VhCltk+7DXnFQVlrAivRi3libGjfARvS
 jGLITC63YjIzQcbRMiKNEifskOmZc7GzMYS9VZxAxLzkHNEOtH/S6SZuAt1dS9Wyswa9pxoH
X-Proofpoint-ORIG-GUID: mI2Su8OeE3fgfO3VdgstQLv8fl76czGa
X-Authority-Analysis: v=2.4 cv=FcA3xI+6 c=1 sm=1 tr=0 ts=68841de2 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=r8lg0YXQRZsV-nIv6pAA:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: mI2Su8OeE3fgfO3VdgstQLv8fl76czGa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_07,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 suspectscore=0 impostorscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 mlxlogscore=999 clxscore=1015 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250208
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_171427_259515_E650D587 
X-CRM114-Status: GOOD (  14.20  )
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

On Thu, Jul 24, 2025 at 04:02:57PM +0800, Damon Ding wrote:
> The &analogix_dp_plat_data.skip_connector related check can be replaced
> by &analogix_dp_plat_data.bridge.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ------
> 
> Changes in v3:
> - Squash the Exynos side commit and the Analogix side commit together.
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 2 +-
>  drivers/gpu/drm/exynos/exynos_dp.c                 | 1 -
>  include/drm/bridge/analogix_dp.h                   | 1 -
>  3 files changed, 1 insertion(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
