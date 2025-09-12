Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10CE8CA101F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Sep 2025 10:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8rYEmWHGQc/qg6OLgGUT7U8XL3cMLyEsaezZma9XPkY=; b=CQy3T0yePccHfU
	Y/xTficw7YCcGWoilJNF7TZgVZ0YUd9KCWfO3rPfT3zZ/g2BdRPhuedYWPRv0CySK1Y8RxFhiCp3x
	+IGjQ/PHjMguqX8wAQpwRQcUevWO/dTLSgcdZIgzXQKjWRH+We1NuHIoJ7SvTaQKT19/MpBZahsWT
	7l3t++9ZO49M6eEZNgWw86mpcJ95UnavpLl9TPZq7EmozZfdl2pxGG9ieUBfqnXQy187VS9E+Vv9p
	+082kwjKTb8xKtMkjtmet6ryajxzl3MDokxR1z6P9p4OPadPNVY8AEYQe84hfmTHz5MV/BTjWvKWo
	hmCtbu8b80BiXmUtACnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux1Nr-00000008hor-3kxc;
	Fri, 12 Sep 2025 10:52:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux1Np-00000008ho9-3dUH
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Sep 2025 10:52:02 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fDAo018532
	for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 10:52:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=sc6ZaRdU870GtUz0ddcaJRC5
	N+bG/TcHWfDRb085fYA=; b=KglbGKZyau0m7rAfBtql8TcV3fcXhTM7IRNfHSM4
	rF2R3h55HNvAAehUvUeSIJipGzrkTmsIXkpAP4Zp3ct56EckVcUgbSE37bG3m9/x
	DZE8ngbQ2V+07qXuBQAu/PWgi7Ae3u+9Pgjz2t4qDH7+QpdpkOgfSStc1tPR/BIO
	AEqVJgKVNn4mXEAeb1xuKqynNrJoi25eFFzp+dtMBenfkCxG1f80DWz+E1ezUGv1
	3wbBWm6QU599/45i10OCayUyfxJJTYNsHoo6wq/EdlS4qID7rmiAtrd7iK4qm469
	gteRU/oxWdaTh+ANAeoDnrxfKWeYpEBhUjqu0ctuhdO17g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8ak8dm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 10:52:01 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5d5cc0f25so35985021cf.2
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 03:52:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757674320; x=1758279120;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sc6ZaRdU870GtUz0ddcaJRC5N+bG/TcHWfDRb085fYA=;
        b=hSPVWJpOtfIPzL/pCT9EGwyVaesyZfv6a63Lyas9HlKHbNffqLZm//AIe4AEZh/gdC
         XmhO6ZgQxwuRM7bW56iywZVxzC/YhXC0uRGNtWzrmF9ximF+1v7aMVpttzKXN7HRfhMe
         Ugu6Ku4T8pxZMomctxI7mbrx+6oFO/JspJLNZpApt4rbR0VmG9tw6Oya3xv3FsnN81Nu
         6ATR5oY6At2x/I4epRgoeUINGBy20aZbmTzb8hpUFGILLpiwC0FCWqRUwQz535KpJIYJ
         6ScvMRML/SNnt0xUu7qu9CW7RcYpoXISM/Ns1jBTmCb6kTpGeNTIE7f6JiJ4UEZO5Dde
         AEkA==
X-Forwarded-Encrypted: i=1; AJvYcCX9feG855M3swdWKc5gITWxc2Kv13HQ1JcAelNVS17Yg6+wmTzYfMBJuaC7D7qhQDkiIHddJn4HhCn+oTBJYQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyv9UMew2EvO+NCyRIoSjqy/r6+VosygsCiweeWptV7ccW+rDKq
	scJiqDoXcFHdJl99gjpkX46PYNpE1vo/5D58NDZpWXfLXzu6jBBJ8jPY0AcPzZIzoIqDCd+SvQJ
	2fzcJhunF08u00a2fJgC29ME2tnQSQxe82Gg0XOrtGXnyHP68Mq1iZnmGEJ8WDNDGFso3a0JpRJ
	w=
X-Gm-Gg: ASbGnctg0ZOVAv8UWXWq8aWTtO9MKWK4zQqTFAC0rf6Q/+UFzRRzM7na5mguYgHfLUm
	9rc66aY05SbeQH2CdgXvpZM6/mHli1WhP1U4NaKn4543QaeqzZteI3cslLs6ERUWR5aQKLro5cj
	gftM54TabHTm3KwqoWpTKSlPGvRsO+5JuQ2Nfw5yNd3Gyq2YDPQmRdP3oJxLu3ibo33sAn97fSm
	l6HXBPjdq/C/CKHhYxLgbgplK4GzNoNOc9xsCDqxz+zHVmRuqVUltl/FSuvCQ1pG4pO2G32ufZ2
	b3E91z6lCg3EpGxb6Qt4K/79qApWeNCAqt79+/lgq5sffc1jWK2WQVU78uI6a4LLYONBGyHS1jW
	xjVCTyIVZXqyNkWq26tVoT+9wjohv78S12MH2yRWtjET+Sfra1Chs
X-Received: by 2002:a05:622a:355:b0:4b3:5081:24c8 with SMTP id d75a77b69052e-4b77d14cce4mr29097461cf.56.1757674319870;
        Fri, 12 Sep 2025 03:51:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1+roIEGAbRV03P+o9D7MGOVoPmamN2QAkYmfx/FAe0qn4B/Og1foVsAi/kIVH/xOLtFDijA==
X-Received: by 2002:a05:622a:355:b0:4b3:5081:24c8 with SMTP id d75a77b69052e-4b77d14cce4mr29097151cf.56.1757674319346;
        Fri, 12 Sep 2025 03:51:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1a821180sm7960691fa.32.2025.09.12.03.51.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 03:51:58 -0700 (PDT)
Date: Fri, 12 Sep 2025 13:51:55 +0300
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
Subject: Re: [PATCH v5 07/17] drm/exynos: exynos_dp: Add legacy bridge to
 parse the display-timings node
Message-ID: <xwenycscalzdlpuxytorbiyvej3k7pv3lhxwtadilxq65ipwsv@x5rxm53w5e22>
References: <20250912085846.7349-1-damon.ding@rock-chips.com>
 <20250912085846.7349-8-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250912085846.7349-8-damon.ding@rock-chips.com>
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c3fb51 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=xJsYSp2GQeFlw7CnCu0A:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: KyjRtBfTC4hLniULdnDI29XIt7tfRJdc
X-Proofpoint-ORIG-GUID: KyjRtBfTC4hLniULdnDI29XIt7tfRJdc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX2/ZVMpw+H9rV
 bN51NSCn76SY4b8Qh77RLOmSP2Np39Hiwu0ChUR1/L5CCN0qDnXDGGqQP8YKiJl2GqB1P/cR3Qb
 hSD4Zb+2cFoPqibuGz8exBv0VXwIxCGu82GBpriKokHmRCgVen/3PlHrYezaHCwBBpeRlOqC4It
 6hj58KupwMWoCEsZr0+Q54EBGithqTYTGJ+Rx0mGv7VX2NfyULtaozbpuAn1sCz/UejfgaLtN0M
 YU0P/nC9237LnBj3uFcA2vVuEvt9uOoQZZI5Y47kyy6NvjtMXctLgM/i2X1WvUd2S5IdzA7aNMm
 3O8NmUn/leik/Hv3O1iVLZg/PZxFRugOkLd4Nb8oFP/0uli/ZsFZE1LlFyYv3l6rMukMAP84Ynd
 14pH2ybY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_035201_909136_DADE333C 
X-CRM114-Status: GOOD (  16.61  )
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

On Fri, Sep 12, 2025 at 04:58:36PM +0800, Damon Ding wrote:
> If there is neither a panel nor a bridge, the display timing can be
> parsed from the display-timings node under the dp node.
> 
> Adding a legacy bridge to parse the display-timings node would get
> rid of &analogix_dp_plat_data.get_modes() and make the codes more
> consistent.

If it's the same as imx-legacy-bridge, it might make sense to pull it
out of imx/ subdir and use it as is.

> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/exynos/exynos_dp.c | 132 ++++++++++++++++++-----------
>  1 file changed, 82 insertions(+), 50 deletions(-)
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
