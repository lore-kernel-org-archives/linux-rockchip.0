Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C88A0C369CB
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Apr 2025 17:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+mzSPhcKB5USV3jOyT0zmkjMvTqjjyGRgevAxkdjgog=; b=s/h4+HqmNelkz5
	fOr0CTwlACgrAPvHVS23SaRqZBuYxr/FLVGIlP66UbYPhFSfGNz4r56SuQA++iwRrB30OBDsQBqTt
	BvJ+enugaZpHlwIP2E/zML8vuLFUkEiGZXTWVnG/EPozzUAajbw/9Vz4b1/up8nXG3O+ooPieHZEA
	sSSdy1EKG9TZOWuQKSOsgbPvNcU9owEivdZQeQ98xazQsT891GWOzaggXBcj6eC2OPdSJiuRSz5Tn
	MtLkRP0IaLz1OFgMYafOv/Ayt1aOs5JFi2oo7ewj30bDwxKnuytYP5G+B8rqibCvT1zblIX9WXCsP
	f/UQEEJRPh7kiAGEZK3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7eLA-0000000BRCa-2uyX;
	Wed, 23 Apr 2025 17:56:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7dkI-0000000BFIl-3mlj
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Apr 2025 17:18:52 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAaDBc015927
	for <linux-rockchip@lists.infradead.org>; Wed, 23 Apr 2025 17:18:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WDO88YLi7hpWsK2u0hPMTkEs
	gQvBzxRt+jPQGFOJ+w8=; b=IekQLsG2extxrqNLyKp5XBR0b6EvA524PJBBBKYR
	QEBc7W2dgxFPPFKocappfMI17JugezOKVFv1q0i5PgtRgi3QQD4sr4mXJof7uQV+
	+H7gEpHRlszCWegkZlyi1qRH01EnHuY+sanHCurwJmDK78nCF1Tlqs+du0HigG/h
	FJM6lFGCFvCvcLxMC9pkdZrV4ygOaX82rZHQQmgSNk1Blzuoad+mdywya3erwOwp
	XfgMlca6OU8lkgJuq98ORSXj3mvY0pFHyLF3b1L0m21EGgV/4bPtotEmyzjhx6Gc
	fgHLEZwGrIjzZ5jreKSGsLFHhwuxKEK81OdNKpObQCZSBA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh0awy2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 23 Apr 2025 17:18:49 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c53e316734so9915185a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Apr 2025 10:18:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745428729; x=1746033529;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WDO88YLi7hpWsK2u0hPMTkEsgQvBzxRt+jPQGFOJ+w8=;
        b=F9zQ9vX0t8HKqaUjzVTAvVpdJAfWrDSGV/Bey+c5MWddhfXWV3PEq3Al/1OuPUWaeD
         f4JoUETx56V+ilLRajFeT8rDUxcPZGF29B31/hZJc8x1JPMz6WaoHHD/TcB6RrvKPptp
         EBj7VT5X+zzPFXF6VQ0wOBDXyT31TMGT74VzJPyIY2QJLD3Rg7r77KP0Q44kjs9z4Mgm
         3MG3Ux1lTLHuzGsnMJ5ZZrnHEu/aZd3jy4/M7Vw2gVuvW0vPzAY1JpZ6SxHLzCFQoTl4
         nR04fjdCFPw+kF7xeOlWGhs2kIW2ZMrXoSQB7C1Qs8+VcKmO1eZXtwt1zq1JYrFW11Hg
         LvHg==
X-Forwarded-Encrypted: i=1; AJvYcCUCGikAlxyn+DdrieYGv5idqkkR5AAqJj23BVEZtQRN36i9zwuU46kpb4t8iCZaqYQLPkMaSJJGgydI3EM1Ng==@lists.infradead.org
X-Gm-Message-State: AOJu0YxA/g0AscEZyPhBr41sygWRya9GhoIjT5d1gx9+Tn9DURr5gFya
	Gea6sutuNNvGGU0ZlBm/IsHpNKEt9TzD611cet0T8KQ6/eAyH2GTNlhLAVBcrsT7vGgYQmfbD3k
	G0/lDC3spXRh4o0gjDU8gT3Pr27xoWGb0PUPyur+knzPg8Irzr8fs0SaBCWO6XvYLBVniOsM=
X-Gm-Gg: ASbGncu1aiKslFRrKUcg06NJSzpWUigId39bfhE8Gbi4TWv63TX/5/rMJmi8mH1UFvF
	32z1gHwtwDppy8NtbmNHrSyp5UaJPBD+HjpL4VQie5uF4ifZRsFHaEi9oJNJQZkecm7jXXNt9Gx
	p6XPv9x4SM+snMa/4I0+wBJ1dmaUWuSkyOJtPXHLp72SRrI263hb+ydYIaWCjxAxX53yQmFVYQ2
	po6r6SGZLakjQXtO1BKKNHHTgC1GgJaYAEw1z1G9SGKT0xvvt4vQ2weoTm/x6CeOqYsmKICOBRN
	mEVdqYw/l8A4b3aKEbqwLDZsig/SYto8/ddjnSilx4iSlVAL+PNYLn/yZfFoMPKqd6vRowHamLE
	=
X-Received: by 2002:a05:620a:199d:b0:7c9:2612:32d6 with SMTP id af79cd13be357-7c92805fbe9mr3542964885a.48.1745428728645;
        Wed, 23 Apr 2025 10:18:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG4YRFe2I2adKtjK/DTqagD31VvQyfxBA06e/fj1CyPoBrdGi/d4dL6lTARcuXkFMIqRSCSow==
X-Received: by 2002:a05:620a:199d:b0:7c9:2612:32d6 with SMTP id af79cd13be357-7c92805fbe9mr3542959585a.48.1745428728212;
        Wed, 23 Apr 2025 10:18:48 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-31090826cafsm18525361fa.69.2025.04.23.10.18.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 10:18:47 -0700 (PDT)
Date: Wed, 23 Apr 2025 20:18:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Arnd Bergmann <arnd@kernel.org>
Subject: Re: [PATCH] drm/rockchip: add CONFIG_OF dependency
Message-ID: <a4tcrxepuvvxixpab3txz6tdbh6janiedjqddl2ybfo6plhjcl@r5bxdabuhjep>
References: <20250423164422.2793634-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250423164422.2793634-1-arnd@kernel.org>
X-Proofpoint-GUID: OKV5UtuxWfn-eNycyqZeX2sIcaNj4YtS
X-Proofpoint-ORIG-GUID: OKV5UtuxWfn-eNycyqZeX2sIcaNj4YtS
X-Authority-Analysis: v=2.4 cv=Fv0F/3rq c=1 sm=1 tr=0 ts=680920fa cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=8SeTOrC02ZtG1eAnSgcA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDEyMSBTYWx0ZWRfX6ViW1gF9jh2S gzGlCE5H/gy5IL25ax/qcd7HzppzIJpitz2ny+bF8uWNdY3jbqX0f1VUvKh5UN67Br9keUu8sqB KXvIyfv8kwGDf1JZWtjKUxVoEa8yT8nEFUPwiNfQMXi2seMvbwmL1gkOmOHUEEdoHwii67hXFBY
 JiLKVjGfpMe37QrSx4/CP5ErjUOdlkyYTa+LJvKZTAkk7sbUK8ShC8JZpobNuB1Ruvy6c8l70KY f+GAS4uJKvSxV3S7Sk6+ud8rLNy5XGQTUhPCo/onZAk2aaHTCU6jxhMY8HmpYb4RWQ0LxEek1ZE FhHRX+DT9TEGTdWkviHJ2PL5vOgewYei8dQL2NxDBGftqKal1ocXZV/qcsmMmplSuSVYNGmvm7T
 /FjID61JtMgCyYWXrOvSfhfpf7CFPUyUQyHiKWqG9AmGT31IPuq5TOLjpWW9mL58Cev6mnWJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_09,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 mlxscore=0
 malwarescore=0 mlxlogscore=999 priorityscore=1501 suspectscore=0
 adultscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_101850_963634_9FC90DE4 
X-CRM114-Status: GOOD (  16.26  )
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
Cc: Simona Vetter <simona@ffwll.ch>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Heiko Stuebner <heiko.stuebner@cherry.de>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Geert Uytterhoeven <geert+renesas@glider.be>, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <lumag@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Apr 23, 2025 at 06:44:16PM +0200, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> DRM_DISPLAY_DP_AUX_BUS cannot be selected when CONFIG_OF is disabled:
> 
> WARNING: unmet direct dependencies detected for DRM_DISPLAY_DP_AUX_BUS
>   Depends on [n]: HAS_IOMEM [=y] && DRM [=y] && OF [=n]
>   Selected by [y]:
>   - DRM_ROCKCHIP [=y] && HAS_IOMEM [=y] && DRM [=y] && ROCKCHIP_IOMMU [=y] && ROCKCHIP_ANALOGIX_DP [=y]
> 
> Rockchip platforms all depend on OF anyway, so add the dependency here
> for compile testing.
> 
> Fixes: d7b4936b2bc0 ("drm/rockchip: analogix_dp: Add support to get panel from the DP AUX bus")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/gpu/drm/rockchip/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
