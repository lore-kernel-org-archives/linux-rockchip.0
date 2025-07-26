Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19973C87FCF
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Jul 2025 12:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5JvchOOCM0RS573zi5BtABDcJ3KXOuFhdBLrKgWGjv0=; b=aE/EbyldgAuRiH
	dYWaRdvqdTy/LjOmWu/d2KCQn/U9087Xtb4qrw5QJhDp1QWNWg+ypsKvQFkR326FW5fD8w3+kIFCm
	UoSHesrhdkNHRFoRM2Qn05EOe3D2g1v5fBDNcxOAc7pndxXLnBUICp4JV7TJ85y9HXqzon9WNMXuO
	XbirBUFmjDxTE5uOzhPfUkAgGyROcZs19YDjEqVrRtW9iGCoRMIs1n3VQePfzDlmsf/M0Aj84/Qoh
	eN69KwcQPA65oLxcihkFz0MI2QaT24l5n+7sI/WinNVVe9GXMOAfw4X0exkSiYGND7To+fA6pBz8O
	IHF8pd2j7rA6AUXp6asQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufdkC-0000000BR2c-3Hxa;
	Sat, 26 Jul 2025 12:11:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufdeW-0000000BQVX-2URA
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Jul 2025 12:05:25 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56Q9Mrgw013911
	for <linux-rockchip@lists.infradead.org>; Sat, 26 Jul 2025 12:05:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DTIGg+kC61P58j186QXClRnL
	U812M4zddHYS5CcqKJU=; b=BHP6I2YAIqdJi7tJv2nQQJe7Is0zZkqGNEQjjuOH
	1wYHb08R2f91VnkqBvY9h0/mlhFa5BbA361u9hL4nV+TUfqSIU32qKfbxRZKaa8v
	55TP8DPqemAB8XZVDM1cBoWQOxk7LoSWKCjDXAsI58KUbKJ3RO1tsxNFt8uhFr/A
	f6/hLa+1ij3bXOx/31nxb69vRQ/AUPMDBtwKqmVkEeAp+NgTs/JuImttIqr1shJz
	oLgNwoDaFYQe1o/a66mX6KaTcPu7ibLA+qr/AOz5Q33gtRsY+zZwaDnQWn/LJQIQ
	0dKthinJR0wxwQDvb98XnzwfwBa8qn8sM8MzyaUFDilOEg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484qd9rjf7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 26 Jul 2025 12:05:23 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fabd295d12so58159496d6.1
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Jul 2025 05:05:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753531523; x=1754136323;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DTIGg+kC61P58j186QXClRnLU812M4zddHYS5CcqKJU=;
        b=pB2gsJWma8NnPLPVMneXGOj6v+Hqo/BWNxoR3XZX3lpjLcWRNSmy6FQQJmON0L+Lre
         l9DzkRB9qBk4yQOqoQ/NUDdvf0PJYERU66XvShCzmIH9+P8T6Ch+zNOxdVALmiYBhStd
         COOdwYl7F4QZwJAApr2nd6rDHSZm8dWtOBjHGhl+BTFuEPci++31BbYhdR92mvB/qkYQ
         dbgm0L5P3EkQ/iXrcTrQ+k5ooliZQ06p40ErGHZq4vuQQcU7tdoVGxZj1GxgaPD9zGAi
         WGUM0hZfXPDgiHgkeYb+nMDN9ojQ4t/XtABfvOcxWZGSw8dbojjzCjFo/mASm+ROofcc
         1ANA==
X-Forwarded-Encrypted: i=1; AJvYcCW4BBbbynsLBBZvfX1ZyoJRZLcKPBESxNbFRx7A/EiYhgNmSSeTTcRWOR0zTB1TynUTejh0SDdeQjfRLkP9Qg==@lists.infradead.org
X-Gm-Message-State: AOJu0YysUcfIHXwGVq1OvuGJqmYfhnwFn5zSX/qc62WveSSeYJL8B5CS
	PhqvhuPGClRHKGd88vpn57I5nw1P8GimZk2ZoumE5xhApIxalF2YV0T0Lebtpg5qUEVP0OACqUr
	s5ZfTXdEt7cAKR/pjT7nG8dn01Vum4l/7zQb1T++AkiFZe/N4gfE5R/V2a4y1330icG7hK1G+bB
	k=
X-Gm-Gg: ASbGncuu8BuJI7Rwfs63F90qdtOKXv/ho9DT9eVQdt8Ib+crG815J/bd2sU/Ei+5ChO
	y84XxtPSnI0/VNgk4dNe6B0Mqap+6+iaWFiraSxkfY5hKGGR5D8LC0AmWoIrWHay09K2v0fzfwX
	rNqQM2FS/+bMgYYBwFVBweVv3k8mfyR0paxR3liqKpMXlHtNgJu24liMOfkSvDQ56XY+Rdl3FNa
	e1FbM2Rbf/Qz7XHzsMArJhO78PPYtzMrpoNOANkbfRfcR5atmCF8czt3GlblGC6WUb+yDVaBosW
	n+jFj3P/bLJTWSMOszDMpGqASBKyEUJL+/ywwrY+pnAW+xx9ew28SFOeTvJH67se9uP+qH4voUX
	SImi+3SU5c86rqHncmHm1f7xlOqg6FQGLOspe1kmg0XwZSV8vkPSC
X-Received: by 2002:a05:6214:29ee:b0:707:14d5:ee74 with SMTP id 6a1803df08f44-707204b2a68mr71727946d6.3.1753531522587;
        Sat, 26 Jul 2025 05:05:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqLS1jVGgdye44ecBKfrqDjWtpGZOfSZrTK9StpLefqH75rrfs9TCl1Ca6g9vIQ221L1XPHA==
X-Received: by 2002:a05:6214:29ee:b0:707:14d5:ee74 with SMTP id 6a1803df08f44-707204b2a68mr71727076d6.3.1753531521882;
        Sat, 26 Jul 2025 05:05:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b6337f3d5sm406862e87.165.2025.07.26.05.05.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Jul 2025 05:05:19 -0700 (PDT)
Date: Sat, 26 Jul 2025 15:05:16 +0300
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
Subject: Re: [PATCH v3 11/14] drm/exynos: exynos_dp: Apply
 analogix_dp_find_panel_or_bridge()
Message-ID: <lhzh32ji4gy44kh6ymobbyp6xdwkx5hwfwdhdx3fy25vaeigin@6ofhouk6nd4h>
References: <20250724080304.3572457-1-damon.ding@rock-chips.com>
 <20250724080304.3572457-12-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250724080304.3572457-12-damon.ding@rock-chips.com>
X-Proofpoint-ORIG-GUID: l27wr2dZSNAOfkoFHOIvgFwuW65tIj4_
X-Authority-Analysis: v=2.4 cv=Pfv/hjhd c=1 sm=1 tr=0 ts=6884c483 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=xX9fryL7oNgbU_NKkWoA:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: l27wr2dZSNAOfkoFHOIvgFwuW65tIj4_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI2MDEwNCBTYWx0ZWRfXyxOP6ZE628mr
 1dNjgTATLTUY3ZX0F7vthFt2Ai3xyvWSZ+8vwBbgThZZfAJTOE+feD5E/AeFUDLco2qVAZH78zh
 0ZKFYdcDuVX1AJjuI2fNMeDplt/fSCKo6bnDwT/d1GX0mL9F4fZXl26QOaHSZyx2jR7FVzRBhl2
 kcVw0xXl1wrBZ74Hu/QkbA9qwuAsXHgYiEJNHkvnS1JQ+9z3IVvXreR+Yd+FXDwT5I9bkcVK9Mp
 hhkZt0/pWdUUryLAC6xHrrE39jN/PAxTWtA4u7n9+Bh8sYqkoDcR17dzJYS0D5RJ7J0sh60Nmco
 fexerMuPFiz3PKbJ4AzhlQprp5fOpgPER6joA3QhJA8+Npe8iCYsBDon3PSWuYUTX3Z7gRA676w
 m64Zy5XUaKFxr1dK8XxnxeqPSpvmGHXae6YTs1DJxr9N0im+VnrCEZzHXSvouRPYpJ1Z9zrM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-26_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=737 clxscore=1015 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507260104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250726_050524_746494_79CB845B 
X-CRM114-Status: GOOD (  12.11  )
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

On Thu, Jul 24, 2025 at 04:03:01PM +0800, Damon Ding wrote:
> Apply analogix_dp_find_panel_or_bridge() in order to move the
> panel/bridge parsing from Exynos side to the Analogix side.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/exynos/exynos_dp.c | 18 +++++++-----------
>  1 file changed, 7 insertions(+), 11 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
