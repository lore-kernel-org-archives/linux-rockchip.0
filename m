Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFD65CCA470
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Sep 2025 20:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6DxDTJE9AG4yV79gwAWhXEa58AAcDL61DTBkzal8NQk=; b=TOhy8HOVWpfEF6
	dYjhWIbrlQumK07H2kUFjWCwGAhNMu61/o7y+6ugT1CM9phET5Pqx80YIWANt/hNr6WwDAt0A2yPH
	VUzMbl3M9y0SZcrxN1lOrO5M7Cd75ARhz0vntpYs7wk1LoJ0f3mRPQA2BrHQmfZlJgu1wnLV3psD2
	dUp5MT8XQmna1WPbE+q1SXqhGK0UWyhCwcKS9QoN4QsqPOsJHPSlFvfI1mh21QN9TzIu3NOFhAC1g
	/jnmUbzUWIEVuee8RQ2VJ9OwdHGYZwIGyU071FmpMk9Kc94alJEFMnBdtFLTBeJBl84EdP4/Xq1G+
	o57pPR9jaPWw5D4Zoh1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3go8-00000006A68-3tYr;
	Tue, 30 Sep 2025 20:18:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3go6-00000006A4O-2LYg
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Sep 2025 20:18:43 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UCXcjr016874
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 20:18:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1prKZ4v8aUicNJIrRPB93Z2q
	BSZpWbI16ikZz4dczC8=; b=phrIoJPh//YjDsPd6tBBkta/NYufyjsIgztdxLMZ
	AZvqOF5x6Cq7k7hO3vWlIFKi/Q2l3CWCZ11YULAuW0t0OZ2b3pl1O6nmoSAG/bwC
	CtM3r5IUdX/w8EzIqd8MAT3aJxZEMkPVQb1yO63P53KW7/XTuzgjHBdgQP4bqgRg
	cfd7QNe1bDajr5SObgGIQKwRT8CWlory66hqslK3qw9GPJaZUJa7kxlc+Jom+3Lv
	JEt1iGDAxu74RjzeriRN0JIGkq3+4tnjVbc9ygx8n83DhmbX3WOnWKfDb+7IvjPz
	xDLpEU2gkmxtKgNCeVzbUsmQvgS762iIdaQf7uEdPYnU8g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e93hj2jf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 20:18:42 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4df60ea7a1bso63184531cf.2
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 13:18:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759263521; x=1759868321;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1prKZ4v8aUicNJIrRPB93Z2qBSZpWbI16ikZz4dczC8=;
        b=jqUH+jjCWCjrQ5NUuw+TYmBOGLHRk+bvOROUcQDGs9imOB67O2WIYp+9FPfB/BQRyF
         /NwtffKYz3mOsb2IKRoU9xzmb7w4zoi603CZPjqS8lDrjauaBt7QvJ8+s0KNxAT1czIw
         4kNKTQvMEP/TdpXSEHCue9wDUowIEXb3I1efJkskdhjTpwPUO+fVKDPmZeZArGqUzsxP
         qDv9BZmZGO8MheMAIHoIZjy0N6n1Ze2jZVyFjd8/YKFyNtqI2bSUQ1A3Haa1F3jn6TLP
         8hh7UJqiGA1ufLfb5hFpMt48GTCHk+GOvpeu9q9Mo0YcPOLLntn9x+sUto8OjqMC+7eh
         YLOg==
X-Forwarded-Encrypted: i=1; AJvYcCXnmGcFR/NFZAki8qgMtW7rMxKcLdcWaKzuYlvCvF+jXGgSFHgDFglH2BcJAop7jbpYGQ04fc24Qnr907uGvw==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywdi4yo1/OZxNZypSmUI94x3ZX8b2juBtR5UkZHzvY1ZyXdr1wT
	88Jq0J3PH1bQ1lBebIls+63CtPKlE0V3nTPqFv8Cu/l97b47Pe3gnhnW5cQJ1yQ+YZ8DuEo3ACy
	9SFbCj+yHwBMDMQk72ewGh86MOg1Ud5R21KJeAChp3mkwz+HhwIvh+Vhi8DeTHf5eoHiVnHY+wt
	k=
X-Gm-Gg: ASbGncufCPNdu08Fd9hrkOtx2IRW4X0+UH7B8VxkhqUYZv3iju6sbGPqVN5EOXcgCwQ
	L03HIZfCDky/f8oMkvq4/kfRcQZ+wxljrwQAK1hJNcKCxuMmyEyV4/vPmdwCJ47ws0ibP8bA83o
	JxQu+CLkNkqs7TlDPYVCmVPmlYPitFlx0+QRFt8nZ54MZ07BufNA6TE3dSOf0Y9CzI1AhCkLmGK
	8LHUq+8jtgXC6J9Zz8Y2jTqEhHYPg/zJGD5xrbh7r3lOq6bD41X4d7fT8KX2DLWu0G/xxJuu66P
	iFhu6o9q1W6NTnhbiTDaddtQhM7+jh2e21Rw/YWhklaMz6/5j33rGiHH0I8F0sn0fkvBNw9u2Ps
	bmZJnWR5XZDNpnA4sZ8fFfAErt9GpFT00qvTPrEVlZslk41qC+HrMfjWmDw==
X-Received: by 2002:a05:622a:4cf:b0:4da:207:f0f8 with SMTP id d75a77b69052e-4e41c54839bmr12914361cf.11.1759263520671;
        Tue, 30 Sep 2025 13:18:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSxICdUQhJwxyOP6ey50e51aF0tOi4+IPIxh6uK7udyhkmudoTzU3ziqUxuPBP2Y+j6k4Wbw==
X-Received: by 2002:a05:622a:4cf:b0:4da:207:f0f8 with SMTP id d75a77b69052e-4e41c54839bmr12913881cf.11.1759263520062;
        Tue, 30 Sep 2025 13:18:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb528259dsm35069431fa.31.2025.09.30.13.18.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 13:18:37 -0700 (PDT)
Date: Tue, 30 Sep 2025 23:18:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, inki.dae@samsung.com,
        sw0312.kim@samsung.com, kyungmin.park@samsung.com, krzk@kernel.org,
        alim.akhtar@samsung.com, jingoohan1@gmail.com, p.zabel@pengutronix.de,
        hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
        dianders@chromium.org, m.szyprowski@samsung.com,
        luca.ceresoli@bootlin.com, jani.nikula@intel.com,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 10/18] drm/bridge: analogix_dp: Remove unused
 &analogix_dp_plat_data.get_modes()
Message-ID: <hh4kn3qmwdbfev27xrs7eng7adfyli5xt7oiy7xgmviz2pzyql@rgggrhqckdjy>
References: <20250930090920.131094-1-damon.ding@rock-chips.com>
 <20250930090920.131094-11-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250930090920.131094-11-damon.ding@rock-chips.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDA0MSBTYWx0ZWRfX6kl7BzgqxWCY
 HFR1ScP/pzsIrXCyhlAy7AEnknaVtsEZFUUVZU7HMyxMgqwp44NxxbYWRUQ3GsxWON9SQdTw719
 SvvomvHpx+VglScULEZ0E7T+ItTcb/SOGSu+O4N+Lo7/43iTejmimYCPeSWLDeHAxTdJUoi6ZaP
 y8o8Rl8n7sMKpvvJatJ0NrfaUDzi8LqthkpKS78zQHhpFmIN7uVSuyYwaYrBHSzTjq8sjYfdx6n
 wWpzMi6mn58Fxrf2YJMslpma/61bu/PO8EeJ7lsH/rWmZT/hWBy7bun+GglLh6N7WfgUIuXENRD
 LkCJJswQ0ciecLhAfNfa4L8I3gGNhN7j/bXQW3b296DU6Y/pBxESIuQ2KNnzVDPKlBlHrT87pC+
 d6ESCObf3BsKJFI6z+XQLs4sH3tNfQ==
X-Proofpoint-GUID: tCxVQTL56N62swazcwTyg0HO1epeqHUc
X-Proofpoint-ORIG-GUID: tCxVQTL56N62swazcwTyg0HO1epeqHUc
X-Authority-Analysis: v=2.4 cv=Rfydyltv c=1 sm=1 tr=0 ts=68dc3b22 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=hD80L64hAAAA:8 a=EUspDBNiAAAA:8
 a=eBbjTLbptxnSh8XXWekA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_131842_598995_F614CA3F 
X-CRM114-Status: GOOD (  13.97  )
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

On Tue, Sep 30, 2025 at 05:09:12PM +0800, Damon Ding wrote:
> The callback &analogix_dp_plat_data.get_modes() is not implemented
> by either Rockchip side or Exynos side.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 3 ---
>  include/drm/bridge/analogix_dp.h                   | 2 --
>  2 files changed, 5 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
