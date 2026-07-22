Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A932CC4451C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 06:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qaw8OCZPdRyW+5stUMXnxqOZbekQW9Ade1Ah827AVdo=; b=0t3QpSgFPbqOKh
	lxWOnWGfdHKivL5tpvr8IiSMj+asVakV9WBLQm2Lhywn8CyGfAen1jTtvE6NSikJHHF44QhNT6+NW
	of1FHb2IUXgY+NyXnSSKK+IBF4rQKH6WJe7b5KzO7ZzXAUBN4gd/sOELAnKm7xNuGwo2DefYxM4Lc
	+Se/GnEDDqjEhByOA1AxB8BAyOqzLxsQh5Ydnm0nfRm7D0PeqIw4WNHyeffBTAzdhELSfajebiOih
	Z4EthRd5Sn07xAvzrrEjmO/pHcxyMOUa6RKbAXd9bbbEXna1nLIJcdduv59ApI5EmJ6f+okSFz99U
	EYJVeAdcd5S7b50tgRmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQpn-0000000B0ku-3pkf;
	Wed, 22 Jul 2026 06:53:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQpk-0000000B0kL-3hfG
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 06:53:38 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66M6fkAr200282
	for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 06:53:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DfBI63uQ2/HBYGxVHjRe87BT
	GBCvc/oFJXrDryfPiSo=; b=ItkIlSkM/YDanAdF/JRIbRP99ovJ0jVPKE8SXAMC
	YonLF+vx746kfgCnmsKfgdVqhU5W6KcAkZXh52py4Imv3jkhLhfNP5FlhIGMm4ur
	0lSjHnPkk9yEauDXm1krN18+XPUVFMyg50lcsAZSpb0e4VfbOYgALbToSFHoZzN0
	k6tDZ/LgBiPVTm4V/UuJrIE4es9z2RKoYM80TtaQqjbtS3tberV0KeLv+SHOogkH
	d8C2bLVkj5c+vOZhStMO8o6AYzxzYkVW0z6WTV6RQl/PCRfSj+Bolnmsm/jeXvD/
	ZIC+ekjmpFi7hLLYx+rpm6c23PfNW8B73Zyj7LpVNiUh+w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjrtt01nn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 06:53:36 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-52827090cc5so4926971cf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Jul 2026 23:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784703215; x=1785308015; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=DfBI63uQ2/HBYGxVHjRe87BTGBCvc/oFJXrDryfPiSo=;
        b=SgPKKH4omN1CnEQNHmZ0y4vcCj2P6fYIq10GRlqcaF7sjXsHsFdeG63ngKjGV1AvA2
         gw6cbyMPMz46PYoGPHgTSbpFvix0JR3g4DVPHiVNJVk8mWpv04o08GlcyuII01rbRcLr
         HdyWNSVBtfk0F/y6MN/1GwdIDs8KPFNviaP4x5MZ5YM6YHYrMyBU/YcfAggETXrJecNk
         Bx4IW3l9+pJD9AGURhRZRpgfv6xSxydnqPvOqDOInzfyaAVmQv5ybKJ7n0Sf6cT18p7f
         OGI6w7nnC5RW+7/j6Es+woIeLvdSV/Sppu6wbhL7drGJDkIjPzWUILZPLYDA1sIpytmi
         MLEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784703215; x=1785308015;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DfBI63uQ2/HBYGxVHjRe87BTGBCvc/oFJXrDryfPiSo=;
        b=Htrf7qopD/C0KyKedWYIRm1EiYu+BBvbuBcfsWZph0gSlFubwsHJEo0XZx+NVsmgKO
         5IgUjCTJgz7nzdTTCl5Eu/30RPu+StsK5zU8EBFXvB/p/AaFQEUwk/ctOWqZg9MeWfqN
         qViDkvpDl9AACJjFUS7q29TWG+gkbjwkqoP3E3x4FCWKhMYZftmxulegB6pI1nNM1i9D
         pqyfIfIJtWd7rgz47dK7KiGEC8k/2uAvbM3X9Ly5CgcHg9US+nAN6wWxvy1SJ29YRGux
         kOHz4wPTONj117CbW49S8HdTvsFu3/Er+6BY4Vfje9Pora37TfQR+M4YSIRO3TP8md5r
         Aefw==
X-Forwarded-Encrypted: i=1; AHgh+RoxM6iW+9QMdEA9Qqyj2HMcqU4lx95ifMZ5D5oeVP6lcfrd+w3Bthjz7BetIKZbWGNL45KeIfSNgR6uRYDNmA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzoEUuAtR/9foFrUiuIBc82RwQwheCcmPX/ldWYNutsno6SC1iu
	7NFU+UY5rUT0UAxvknUqHGyd02T/WMidoMcJluWx9cLba8pkr2lkY9LVo2gn5pu90aT4q9uagpb
	/L5ocF67Dbf11QbMyPeNk1M4sO4ePj6tPkcpXvZy1Smmx649OHZhB/SSer7LKveGjm33ijkOo2n
	Q=
X-Gm-Gg: AR+sD10uTsFAPqNWV5q1R37yFhZuuO4d/YvJD/jA/4obK2Wz6Kg3U1kc0B9Vh2O15aR
	rF2idETTB3YujOKKLaCXSOMbU773iAqZbYwAdJDun+HXzTWj5qyo7MP6yfCEbS4u/7xmNM5wsQp
	npbYjFEtPLU0XFiwTnuZOA0QoRdPg7eyI+94kqa4Fcjh5gnzAg1cCr89+xw6yC4SxfW9QViRCSl
	uzWdBF7jQavtUOR34De7zTz+F09XF5cGUs/lmg4q1oZeiTehvNaAnUrph4+jQsv0MZbI09AaIGA
	k+0SvHXMu478ZiYyH0/CbBEyC4W6UTkSUTOeqwdsKgABqp1mCVnVBJJH5V7n8/r5FULfl/canyK
	w6j5bnq/wCzaGml8RPdiGexE9mXp4RSoBd52bLzQkTvtkGk5AKjDfMLj/hyy/RSVv2n5ckkmMd5
	wqqKp0AtQP65Tmew==
X-Received: by 2002:ac8:5903:0:b0:51c:7aa7:e0f1 with SMTP id d75a77b69052e-527a9ef2cc4mr27795461cf.44.1784703215025;
        Tue, 21 Jul 2026 23:53:35 -0700 (PDT)
X-Received: by 2002:ac8:5903:0:b0:51c:7aa7:e0f1 with SMTP id d75a77b69052e-527a9ef2cc4mr27795141cf.44.1784703214499;
        Tue, 21 Jul 2026 23:53:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2a9b9a7f6sm303545e87.18.2026.07.21.23.53.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 23:53:33 -0700 (PDT)
Date: Wed, 22 Jul 2026 09:53:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Luca Ceresoli <luca.ceresoli@bootlin.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Daniel Stone <daniels@collabora.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        kernel@collabora.com, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v8 06/39] drm/display: scdc-helper: Add helper to set
 SCDC version information
Message-ID: <4aznbqeel6jld6qaulbpj2jeelqyppftxnpgmxlqyg5byb5bli@6qd2lxjzhj4z>
References: <20260702-dw-hdmi-qp-scramb-v8-0-d79890d00b6a@collabora.com>
 <20260702-dw-hdmi-qp-scramb-v8-6-d79890d00b6a@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260702-dw-hdmi-qp-scramb-v8-6-d79890d00b6a@collabora.com>
X-Proofpoint-ORIG-GUID: pZzxAsbcSR_7uHr7kr4ADByTLeLfQHrE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDA2MiBTYWx0ZWRfX/iUKuAtuxAx1
 yM0R7Dkb3xD1ta8GeqLHgB+fRwAWiaYxh5xjO/9klAYavxfg/HdfjuGTnb21vqE59/scBn5moAy
 zp6sXz6Z4CsV9DwWYKxtNnCwx2f6Yq9Q++yJdh68PCx146ft6ZCaO0MYgmkKQMPwFjVqfJA/bqr
 M9o9930KoZlZfkS9X7JxgMIuN7NUzqJKTP26ho1KvQEmYfhD3YVG+dpuqqgUbD9FroOKBjXS/c/
 gs7gtUI9rkUlChLqvz4SczMGT58+kFe/+dy4m1xVA27meZy9N9i+cnELRHoiqA0qDqLGkWQKZMi
 f2hWF/8IeDMGaC9/LVPdHdVVCDaT4QpcmpXVPb792gz7/W8ymSE7XHwqgKVXyITgpTSu8WA09II
 pIdxM5fJqg4RC5F2CnSDVeLatHIXPRwprC/QUiyt2WCK1FAiGcgFfYWvYJFGgRCBnzjVqlT+SiP
 2WIRntv87AUJFRvqnMA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDA2MiBTYWx0ZWRfX7N81n0kXZNQw
 5e7GNbA+GnmR6kcXw3F8SE7iEeUHIPS2UbK+oSFx1P3xjcl82ZQOz1wCsHsGZxVsz27Fo1NYwKy
 gUo22CO0OVymkzq/Y5zv6hVBJL/2c0c=
X-Proofpoint-GUID: pZzxAsbcSR_7uHr7kr4ADByTLeLfQHrE
X-Authority-Analysis: v=2.4 cv=V8lNF+ni c=1 sm=1 tr=0 ts=6a6068f0 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=oPwEgnVxf_mYLS787iAA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_02,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607220062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_235336_924191_22CC3F5E 
X-CRM114-Status: GOOD (  22.96  )
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

On Thu, Jul 02, 2026 at 05:46:19PM +0300, Cristian Ciocaltea wrote:
> The HDMI 2.x specs mandate that compliant Sink devices report their SCDC
> version in the Sink Version register, which reads as 1 on any
> SCDC-capable sink.
> 
> There is also a dedicated Source Version register.  Writing it is not
> compulsory, but the spec advises that compliant Source devices do so, in
> which case the value must be 1.
> 
> Add drm_scdc_set_source_version() to follow this recommendation.  The
> Sink Version register is read first, both to log the advertised SCDC
> version and to guard against non-conformant devices: a sink reporting
> version 0 is either not SCDC-version-aware or broken, so writing the
> source version gains nothing and risks upsetting such hardware.  In that
> case the write is skipped.
> 
> The source version is passed as a parameter rather than hardcoded, as
> future spec revisions may define additional rules for the allowable
> version values.  The written value is additionally clamped to the sink's
> reported version so the source never advertises a version the sink does
> not understand.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/display/drm_scdc_helper.c | 46 ++++++++++++++++++++++++++++++-
>  include/drm/display/drm_scdc_helper.h     |  2 ++
>  2 files changed, 47 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
