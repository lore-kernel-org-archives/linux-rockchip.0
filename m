Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E9D3CCA470
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Sep 2025 20:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wadpNo2PEALZKlEC4MDfXyRb3RwSTLtGgvxVbPUS5SY=; b=kYjVdGpjw+I0CZ
	3KSQACJQf9Pm7ylqGBvIVMwdLyEz1aoO5I2IeWwS1Q1NkeMHhDAxW0PIKlZNmFf+i3j+6aPv3Tcf6
	8ceD6114ZIQtN2x2YGsldOGOhXL0FGpQZBO1AeFlScJeCkKUYhI9JbbalO9gS6dnI5MrEPSN8fWMl
	p4OsCM08+lRmZq4spkvsCdwtwnY6PQj8g8ad2RJezSJ3sQ5p885GaPZ7ucfhVJvsHm743JYSQ22L2
	CyisylDBWPuBNRoag/Y+9YWlDiu/BpApmRbEVyjfRfDBewcfSZfbLxSE4CPB49eQxtt8T6Zl7yEdM
	NafygYcTAo4JGJh+cWGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3gnv-000000069y2-2Td4;
	Tue, 30 Sep 2025 20:18:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3gnt-000000069wD-2VCq
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Sep 2025 20:18:31 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UBmR0a016961
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 20:18:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=n8MgadJhrhV1HSlrIC9UJrgh
	Bv6+bn6nyOEgzE424I4=; b=KC4LMGSI/MkfGts/Zkvpo++UDTVu6cGxuLJRMZN6
	B3V3ISoLz+WZKqAOjUMg1ITb///6JCiV70XD/NnyJP4qb8hEt23JcKTMhFQlytzk
	WFRy4OOmGC+cv2PTMqMUgxUVX+O4B41wIOhjLvHhgRZrJZqg47a31LzD9X6TSHwx
	66AqZTneRJW3OwKZZGG1tMul6aPdINuXo220OJlxMO3cLlRixLKH09JCmuddVpKQ
	XaH+Du6KXizvQnTqc5ct2MX+9rfjAf42liLu+8BTrYS0AOO/iR2rEEwzsalGWn0P
	YQE10RDlZZ01gGBQiahlpcF2hMToLxvPI72MqumAKq9Fmw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e93hj2hn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 20:18:28 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e0e7caf22eso78152321cf.3
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 13:18:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759263507; x=1759868307;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n8MgadJhrhV1HSlrIC9UJrghBv6+bn6nyOEgzE424I4=;
        b=dX2DMbAHXtuLkP5DQJ/DWvzlTeKvMvRxPa6+F/LITOud+9MqkucUQdMiBt4VtYfNzn
         eEKOtq8ET9XjZZIF5u8YOJqLvZd8Fmhe+BjcuLAkxyVkqNgljrYWj0MHsXDput/Wt+Lf
         vfWx81fjt+Bac6aonrBijCRX8dVgWIsWNcKGU/xS5bGJUmY86NfW6QRNflmzxixJm1Uy
         JVrnzVtBErFNdtGwFenqY8zc+AOYdI3jSorhoPf8vwFyr4k8bfVzVfw2fcbirkm2UuX5
         N4gs/vgIyvJc+cuo+UwisXRknMlZ3s49peLe/t7sViGBtEaevXcjIza4y2ozTGoa6Xu8
         X65Q==
X-Forwarded-Encrypted: i=1; AJvYcCXVrIE0EysPIiiUtmLFAXXB4KQgwGLgAn0RB79QqEsQL3/m/8BCMAERYs5DqvzxpWpHcGY/bxjrE3FENCocKA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyeFxPWPsq1r9028CuolkfpsDHZ+Dgi5d4r3knI9HgV9D569KCo
	vTwO0jctJOpQwDjU9Og1jxoreyKtup3k0CV9V3yUbJW8mWBbg55nMraWfnGtTI0PUL8kVvXv6JS
	Mji7FyclpRvX540vgZKQhPeZ0Q6Hchyl80nAPtYp+NkbV4cIgpL0qD7Kvk8BBIU9PVPWGkwIeTq
	4=
X-Gm-Gg: ASbGncsExR6LsWsbSluJS4B7drFcnSBA8rBWGruhTxoIOqD0HHtwgsbYP0bB97VaRGe
	bpwaHhagxiemtN47J26zn/l35HT3arHA/KyWPkLqTpJ7JS5n0+wZGAVue2ahDOEeahY9xJTDqpI
	LSRWcjd00VpOQ33uDxa4KM6rW2GQkPaEuk4ZtGPHEnkEGpJRngGvjwHyWhZmfJkvshgprgi1Any
	2H7F8aIRWPdSDhRLcCEJ5Q4KSBrlE18WW00BJUzxtEmqRz6f4sd7oL/Xk2OrgNUxMnS47m2bJG9
	T7yms4vHtkRTWfMXA8tQmO8rZq0gNDXtllikKSvs2SnOhsDKp4ftzxUZ5pzRSV7CGhdyowIFRHQ
	QP6uUn9LlckMrGmAtcL0JxGYWxtT9aXNbWT8JBjs78Dih+Q8EWiJgkp8LzA==
X-Received: by 2002:ac8:594d:0:b0:4d9:1d03:83c9 with SMTP id d75a77b69052e-4e41c733801mr12497441cf.25.1759263507515;
        Tue, 30 Sep 2025 13:18:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IETZ6omCmx9fZgdyWrCa0U77D6Uv9hU6fSO42h/F5hPLOdENOJ0bn/O6k9+KhYjIKci/Pfe9A==
X-Received: by 2002:ac8:594d:0:b0:4d9:1d03:83c9 with SMTP id d75a77b69052e-4e41c733801mr12496841cf.25.1759263506980;
        Tue, 30 Sep 2025 13:18:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316ff5bafsm5186157e87.136.2025.09.30.13.18.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 13:18:24 -0700 (PDT)
Date: Tue, 30 Sep 2025 23:18:22 +0300
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
Subject: Re: [PATCH v6 09/18] drm/bridge: analogix_dp: Move the color format
 check to .atomic_check() for Rockchip platforms
Message-ID: <5ed4lpdjqru6fbjl5ulaqdex7kppk7bsze2hv37mzgq3c22qir@2srh3jc7sqnf>
References: <20250930090920.131094-1-damon.ding@rock-chips.com>
 <20250930090920.131094-10-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250930090920.131094-10-damon.ding@rock-chips.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDA0MSBTYWx0ZWRfX35XPHdzsIujD
 cIQQChXfCGPMCkp+iecrlDg4LGfwkslyBaxDBvhNgHCmkUFMFEbVixQOrkg1dFtHgxXi21YAROs
 QlFZBxgL8SVM9wCx4IG+h9kAvOzXfJ1XiOgXETHiYVBUbts+YIsfYPN8zH4AufUE0f+9fKZO+XI
 UmuB1fY+D4sfO90lPGisOUxvtTYtOZvKbRgHZq5a/6AORZKDRJXiNyBD7J9WVwsWRdRd2Mvm9Gv
 fy3Nh+DilwjjCOQliKPLfCM5r5uiLhTk6xC14zz5msfySK3kfBMPcxu+juW/CWWWKJMtNI0Tpvx
 4Pue3Wvnv8EcCG8J1KIZWrQqNgfpHXS1pBCmOcsbQNAxyGLwaQaPjoPu5b3oPsUVRr3U/Bu8/Jx
 Ir/HGObtfGyUDnQ/tYUZf2jKukpGbA==
X-Proofpoint-GUID: 8-fomOCVb3i9FDa-3ds56Pk4lTqt2O7i
X-Proofpoint-ORIG-GUID: 8-fomOCVb3i9FDa-3ds56Pk4lTqt2O7i
X-Authority-Analysis: v=2.4 cv=Rfydyltv c=1 sm=1 tr=0 ts=68dc3b14 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=0r3lTzsetTvyPaIB0MAA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_131829_637794_31EDDD9E 
X-CRM114-Status: GOOD (  15.52  )
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

On Tue, Sep 30, 2025 at 05:09:11PM +0800, Damon Ding wrote:
> For Rockchip platforms, the YUV color formats are currently unsupported.
> This compatibility check was previously implemented in
> &analogix_dp_plat_data.get_modes().
> 
> Moving color format check to &drm_connector_helper_funcs.atomic_check()
> would get rid of &analogix_dp_plat_data.get_modes() and be more
> reasonable than before.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../gpu/drm/bridge/analogix/analogix_dp_core.c | 11 +++++++++++
>  .../gpu/drm/rockchip/analogix_dp-rockchip.c    | 18 ------------------
>  2 files changed, 11 insertions(+), 18 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
