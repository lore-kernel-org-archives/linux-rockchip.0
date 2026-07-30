Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B61AFC55167
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 14:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/OiMO3dcpDqXSeaQFwqg++Ic9e003bXqrJ6h4toHDq8=; b=MlXDN7Tj7l3kXj
	P0DFVwui/JW+mciARSsY4Sr3KC539LtanZhCZCjzOvySRECXYN0t2PFo2oaf8entz/Wiup+mp4aAH
	YOY3AjBi2RHSVCKPvE8yLnt0p4k7ri2WZS8d2ZtnKsQxKJSrg7wgr3e2FWoqesM8IFTdtKqxxOvSu
	UeWn3OPnR+BY+71gbor+MIkOyDbXUZjb+kvD8OFHMYmh53qtDrXZoXZqzZMU062TdEigqG+4dS39v
	zJskLAABhbvUcsZ9ZJiIHMu1nmT3Uuew9569o506Y7V0D3GTTm+v/vreH+IpP0vOCgj0lxtKekxrN
	xvFGvgViGBPu50wdwS/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRbo-0000000AjNG-2epy;
	Thu, 30 Jul 2026 14:19:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRbl-0000000AjM6-3ZBa
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 14:19:39 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66UE24ir2202940
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 14:19:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=t+oYZclcsoyBpPMuFhCDB16e
	voi/Be0njDL+8RrwXAE=; b=DyhAbkPLmpDz8Fk6GCx2bPi/DWaEufFRre0P0qxE
	oSMzgKiDTv/oYWO0lZELMQXXGz0x01CutRG/PMREYYomKABL0d7coL7K0wfCO5VN
	zQlRAt63jNpzcvqNuWZWpmMD86Xat2tca6OQwkgRzYoq/wEHhJIjqtMsnpKHi52y
	z/eg6y4fNBGzhy1lr1owiqHBj0y3RCd5PlrHDRMGtyY8pzj/KWtxnw3ZdF1mH0dk
	r2/SaHT4TsR7yHCAqSnDY1lv/GhSEGEhoSw8q1zlhdsrHbfgVvgBgHmh4b30ms5m
	VY2Ag9fqxyMcSa42xaLufu4eNOrAGNzTvB03nuc522NcBQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fr81682wc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 14:19:37 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c0e702df8so23271751cf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 07:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785421176; x=1786025976; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=t+oYZclcsoyBpPMuFhCDB16evoi/Be0njDL+8RrwXAE=;
        b=gfQjwy9SV9kTIyA+99aMUl9PFaLQz4luhR5VQuQDQp+91ml5fDa6kMiTdbBVIYfiF0
         lTJKl44ukaAomUiehDPVnu7bXLc7/pdeuaFrIGCkN6zK7W80XuECIjtDLHRAHoHaxjiW
         KV4TDmCZap+w38lq5wjkz7K9yELlwJEMJiCpI4e//oK9dRjwDoFBbOSbNXKzDqgzE0ld
         f2ZRyqoiRKHeQrm9M+Gu1KLlTVs4HyRtmVkleSO4rhoGpTgSzaqRcv+nChtMH8f5fFZ1
         M2TVMWk2M2Vj1buO5xynqbigTcYe9TxY+GsmfrkbwrsynWbYg40R73v27+qh3SVcO8yK
         w8wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785421176; x=1786025976;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=t+oYZclcsoyBpPMuFhCDB16evoi/Be0njDL+8RrwXAE=;
        b=bCWA8XT3tNozYMNIdtVM3dWb5s/kKMdONGXEehYiW5ODSljOnIykXG0yeNBjeLUf6q
         ozCdf2ZkiTOoFDnDKNoubXUTI/OzWKsJNdBCywhjTv2yRap1GufRI4T/LhjcM1do7YDo
         N+Y3oi89jGqYUqhP6b72EMlymc9hVtxzFw8oKcvilRCqS/Lfkl/nUgh99022bss1DtRb
         qCRj5bDH0Vus7x9SZeduVospQLXUqYxdlpdzhKERBSNJh1tN8DLX8yIX4ZB4TyEPH8uU
         ge57m4XCoUtV96dz9XuHDv94ZDphJ8LJG1/0Hj+Q42x1loBH9ox0FJIfpVNyNzezQs6S
         tQnQ==
X-Forwarded-Encrypted: i=1; AHgh+RpAiyXp2jjzF3kl03PKookGHScm/tOCdxqcrQpebnzOWlyPMkXO7VN5LzNkIrJEOHRZ02J8NVcvRMBlZnv0LA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3z2nV6/0hy5cnkr4kLzVGVZONY5FntDRp7q6V+NBNYBSJ+Tdz
	7LTuBsR+Hz0L5qOZYJkjmy78KUYod2BbZEesZdquoH/K/5E6YwcscCxdG2Mvc7ZLAeOKOmkH40W
	B03i4vGYTp1ayRqVG1zu34z0iafMrNWOCvX29K9CGuoRVmqK/N+0rKAqYCG53tOh/nMAsYEku3z
	E=
X-Gm-Gg: AR+sD13OeeKI+dOT32YfjNHxGKn7YHyuscrLCaP8zxLaAsP5HTSD5DqKkjjahHgRl1d
	f/kegUXBqEPq7VV2BeIIWOJr1cf0s4DYYZD/Lo4FZBluyicesoi5QvgggLnGPDC1dxvQOqNLzMR
	9YFj83su7Yvi5nvYr8YhIaI+yA3ACmj3KDDULxRE2N0lNlfabLs5ozOo6dmlkaeLtFVMw5bQS0h
	+BxPMwPAhS5GkG3lv90/aUektLDvuJtAf33LlZKPfTVbEw5sjmMb4lhIPjzPf0JMBlWltzdsQ/T
	74oc8Fs8Uc5HHb6eevwldDYuCGf3Jqq9241Pvdtp6pZ6IC6IHdBouuM57lTGjuwu53amGevLB1f
	xSiQTEi2GTRwqRxczRfZpm3zo0dn/o9IViF0M5vzWdOchBoUZ/yJX1B4eR1L2G5l/1DI8pl2SKn
	4C62UNFWrMiwaw7A==
X-Received: by 2002:ac8:5955:0:b0:529:bf39:f1a with SMTP id d75a77b69052e-52b386be80dmr27853521cf.71.1785421174766;
        Thu, 30 Jul 2026 07:19:34 -0700 (PDT)
X-Received: by 2002:ac8:5955:0:b0:529:bf39:f1a with SMTP id d75a77b69052e-52b386be80dmr27852851cf.71.1785421174000;
        Thu, 30 Jul 2026 07:19:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2db9ba882sm368911e87.43.2026.07.30.07.19.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 07:19:32 -0700 (PDT)
Date: Thu, 30 Jul 2026 17:19:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Luca Ceresoli <luca.ceresoli@bootlin.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Chen-Yu Tsai <wens@kernel.org>, Samuel Holland <samuel@sholland.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Algea Cao <algea.cao@rock-chips.com>,
        Daniel Stone <daniels@collabora.com>, Liu Ying <victor.liu@nxp.com>,
        Phong LE <ple@baylibre.com>, kernel@collabora.com,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v9 03/61] drm/connector: Add drmm_connector_hdmi_init()
 with new signature
Message-ID: <exkyukl6jnkwwoap62v4n5j4obyhoks5ysbo7iqjdhzhb2ltsu@nyp7csbmzott>
References: <20260723-dw-hdmi-qp-scramb-v9-0-4fb12ea22ac9@collabora.com>
 <20260723-dw-hdmi-qp-scramb-v9-3-4fb12ea22ac9@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723-dw-hdmi-qp-scramb-v9-3-4fb12ea22ac9@collabora.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMwMDEwOSBTYWx0ZWRfX1PFnLEiJ7h+e
 NDiQeC7UdGB+J8B7SwdLu0WAZydYRBWtb3AV8j/xgKW/X3rhiygdrizGr5ODb6HFUYvKhfIw57S
 uG5q9bwwf6kPqeClDqK5/Aejn+bOO67YCX50mzcR5oFyEWhmGjvP5+AJIU5NWP3x2RapxXWR8M0
 rAWdclDYa6/qUDmLEOHHx0tDpU+SAyLUxcWgNw7O2z+ZfZleVzuLOUzONzlo0m8e8zKL94Wq6h9
 5fhuo8/Opc8K8ShTk4isASL3KFoP8IPD/0lxcO5EOgmVwRKrG8KqlTYpRiba1NeIBVYgROzHykT
 XqYCdQHVQnPykPiJcFVWJv/wBpiL1m4A+13sMgpA2fUzQu3eL9z7FoLYbucrW7+CMHzP2FkBthh
 9GJg4QJrnATXS0WNZKsFNvIJqZ2WbMgsn9bpu6C8l87mg6jTjdxrVQcXs0GAFfgBGqOtEuAihkk
 HmMBq/SeMfcfvPWP6Cw==
X-Authority-Analysis: v=2.4 cv=LIlWhpW9 c=1 sm=1 tr=0 ts=6a6b5d79 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=QX4gbG5DAAAA:8
 a=L-MVhf8o2HZ0jOEqR2wA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: f2S4rOZlN20Fu72DWInv8sq-Wp02raLA
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMwMDEwOSBTYWx0ZWRfX0An5blaOAYhu
 k1ogD0VcyjrbgjPNw5qU+AfJvzk2hz+dpU65iuOflP0plTDGwN8tnyjswYIcelbyxsc8t91XJ3F
 hxPUNWgmRs6v4eDorTaf0gfWIq1hGKk=
X-Proofpoint-GUID: f2S4rOZlN20Fu72DWInv8sq-Wp02raLA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-30_04,2026-07-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 suspectscore=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607300109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_071938_274254_E1EAEBC5 
X-CRM114-Status: GOOD (  22.02  )
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

On Thu, Jul 23, 2026 at 04:34:52AM +0300, Cristian Ciocaltea wrote:
> In preparation for providing HDMI 2.x source capabilities, move the
> vendor, product, supported_formats and max_bpc parameters out of the
> init function into struct drm_connector_hdmi_funcs, and add new
> supported_hdmi_ver and supported_tmds_char_rate fields there as well.

I really don't like the idea of putting data into the functions. The
data might be mutable, it might depend on the particular platform, etc.
while funcs are typically static. Even for the drm_bridge case we have
two separate structures: static funcs and changeable drm_bridge
instance.

I'd suggest populating that data in the drm_connector before calling
drmm_connector_hdmi_init(). The only exception would be vendor / product
since they use strtomem_pad() to ensure them being properly initialized.
I'd suggest leaving those two as is.

> Appending more HDMI-specific arguments to that function would not scale
> well, hence introduce drmm_connector_hdmi_init() with the reduced
> signature.
> 
> Additionally, add the max_tmds_char_rate field to struct
> drm_connector_hdmi and use the supported HDMI version to determinate the
> maximum TMDS character rate allowed by the specification.  Some
> controllers, however, may support a lower rate than that version would
> imply.  A non-zero supported_tmds_char_rate lets drivers override this
> default with the actual controller capability.  A value of zero keeps
> the limit inferred from supported_hdmi_ver.
> 
> Callers are converted in the following patches, while the old and now
> renamed *_ini2() helper is removed at the end of the series.
> 
> No functional changes expected for existing callers.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/drm_connector.c | 134 ++++++++++++++++++++++++++++++++++++++++
>  include/drm/drm_connector.h     |  62 ++++++++++++++++++-
>  2 files changed, 195 insertions(+), 1 deletion(-)
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
