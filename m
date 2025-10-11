Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE4B3CCA476
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Oct 2025 16:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0leLClejW9LFMSN/cZQAqb8/YmHrbCuRtWAkhp7THoU=; b=PZ8QWHb1NZlRG1
	m9hxx14P3h674E/qTmHeRcnn2f29rouua1gm3Yhw2ydqTcxlOGan+AJPMPiBjImGN7tYOfRj2IQHQ
	s86w6q3f3lU1lBZfv95Dnj+fY+lqvtfh+eSD+x6TqaqXBRplNvnwgfJiZV/PfGx+gAqsxo+HGDcJ8
	yf7b6APBMLLBvV/RNqKEkij2X0hk4Mxttzy0+VgmMt4krNL56nyMoBJZ2+GTw4/UkavN5VvllyKsp
	KU6bBz/aSjku4lupDWHwKxvG+RfDXppBFPKRjv8jcnyzm9/wqgnJPOpQxUGtLzG+M2O3l3n4gp7WO
	kXc7Me2om2sWxC/HMLbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7coy-0000000ALn3-14Oi;
	Sat, 11 Oct 2025 16:51:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7cov-0000000ALlf-1GDt
	for linux-rockchip@lists.infradead.org;
	Sat, 11 Oct 2025 16:51:51 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59B4eEDw004755
	for <linux-rockchip@lists.infradead.org>; Sat, 11 Oct 2025 16:51:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xDql/hmPHmbhLyPjNWGht0Ir
	lePqDSoVlgpyDaLxB/g=; b=EvAdmvm6JMiBwFtspv0DVRebMaZ0aXzHvBjDTmh6
	Pl60vwPGKB0cy3LVeUlVVjqCfimlC7XL7NnbIhmMZ5worXFZG91+Siul6cbVZs0L
	/tYDYwhfev7fPrgJq8VIpAhQ7xY1tndC7UIOZzQNtAtgIOpFU9lLhrlSlZ/tMh00
	G4rXeTkQIwVKyC9ovm5cMzFOzx94tfTYYTPcIji09/iwL63WTS2Gd45X9PBAW6MA
	YYde0awJMTCsglI/bbJwhzW00Y2bz+0MQmivyjvX1rPJD0xqfMcU8RutgBgNGbY1
	HiCWWxsnlZUDXyE/g5bcjD72dU2gQvJZLDvITIxdLDojUg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgdfrtwr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 11 Oct 2025 16:51:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-856c1aa079bso1725566985a.0
        for <linux-rockchip@lists.infradead.org>; Sat, 11 Oct 2025 09:51:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760201506; x=1760806306;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xDql/hmPHmbhLyPjNWGht0IrlePqDSoVlgpyDaLxB/g=;
        b=bhTqt7e8uncrxMTf1pzhtFiMQzl2V03ulxf9ojYWyWTKBUr2WiWh1mS3QKAixe6rkv
         GCpkSVGCjG1ag8ipDZIs8Z068S6Bbj4mlI1OWHWpZbya2lndnflbCyoD4qjV1u3ewgvL
         BN2Sb2Ui8DdbIMZpPj22bAUGh13z4L7UhJU+u/mr7pTjySfVd9fYSz2HGvf6jljFs+0t
         BIIjckwZT1b0zoC4dcGl7P2wd77TqOcANoqM8nMa/yYt/qaflHM1c2n1d3LJCZo8/tEy
         EdOIVPVddBcNZj/b1i+ZxK+88d+sY9+vVPt8SYQk5KmhBSJMtGF7k5weDwqzxIAkDwo6
         c3Gw==
X-Forwarded-Encrypted: i=1; AJvYcCUrbi5UhX4LllOZXDVke37T3tID6wgyWmw5LGjyKmfl3f2yAA6vmS2hSajSLf3S6iv2yYy3QiOF52eXEstMzw==@lists.infradead.org
X-Gm-Message-State: AOJu0YywkaGgUKavcbebBdeK8zgB/C0yZj4QArxNlja2aHdrDLBaqpaj
	ub6ZYUbL8EDxk3czdLmJV7oaafvVkrCJEz0jRw8bLAGE6ecQnZrFmYCy5uifdrlR6PLAiv9pGPx
	MMCXSroqWJi02IRQHnIVFmo0c+qtecYzI2z59AhTDwHbQdfqlhgQvVhDj1QMpnS9N2sbB1Ih1nG
	I=
X-Gm-Gg: ASbGnctpMc6G0FXKqrWR2QbN/tHgTfAyCMDPlUF8Z87QC5U8yIcP6ngUxXQ9HlkGjm8
	XMx3KE7aHdsr0+sbOT2ddMpDEHjzJz5s/HYW4Fix/gk/Hk8Yk314ymLzCR6hoI6qKe2kpxVsGDk
	NCUJDUQpp/8Dg/W2WSgJcsuXnSNHVPR4S4daYKJA73m4B1AeK58W9xRUr9cin2t/j+V4LK/qEkM
	ugD8Z86WvaDodwYj7Vk6aXCgd4Ua7gHdWSR0sYMZJ0GJyn0Qn+vfu7wHclRA+SZPBfBg4TUrxFz
	Nckl9fB2gofeW5x834Vquxk9ZiJMfjFJl3lxA00fq3qmVOB8O+lwsYbNSe8w+cKWByOi3mGtmaW
	0Xob9Q6gJr48TdvBbm+CQErhCeUfhrQa7phQ9M4pMvZNqkiax/6su
X-Received: by 2002:a05:620a:690f:b0:878:7b3e:7bc4 with SMTP id af79cd13be357-8820b47d5cemr2727436485a.11.1760201506230;
        Sat, 11 Oct 2025 09:51:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1knLg1ejAD4VBlbVpVAYhUPHuhDgVtfBnPSvgk3VxA9bjqCPn8ECh/NUyGL80y7radiIDxw==
X-Received: by 2002:a05:620a:690f:b0:878:7b3e:7bc4 with SMTP id af79cd13be357-8820b47d5cemr2727433485a.11.1760201505751;
        Sat, 11 Oct 2025 09:51:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5908856394bsm2060654e87.66.2025.10.11.09.51.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 09:51:44 -0700 (PDT)
Date: Sat, 11 Oct 2025 19:51:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v5 1/8] usb: typec: Add default HPD device when register
 DisplayPort altmode
Message-ID: <4eizpzejw43gqt5jauvkeij65rracols2voa2osflwyjrwbvun@sovgqfuhg6mc>
References: <20251011033233.97-1-kernel@airkyi.com>
 <20251011033233.97-2-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251011033233.97-2-kernel@airkyi.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNSBTYWx0ZWRfXz+TBLptObF/N
 GQ4SKtTuJ0Kk0GkpG6Bo9ha7PfAvaJyKnfZ6ucX7mpbzm3r8RHKFxhrIp6Vl0w9JX4AroDoWliW
 aBtbQRy4hJGJtPYuIJ+kTnkb/KQDiyESoyw2jtKeEr8IUxwYC5eRxB9yZomOj4P/IO3BqLXeRbe
 vT8PUf5uFRvAOp2ftqNOYRsGarEzVmt0AfcYUArUnjnPHRn/vEb3/V5owIzQGC9sNV5yoNaNfaT
 mcqDsGwxKH9LIo1at6EdSx3+o92pINo7x3XLD6wtEAgxLXGezJJYMPtJxwwd5oDLhDDdQCNlFca
 M6PaGbiDu0JRvseAIjAVj+WUT9X83nTsMdCvt8OrJztYujn9fwBlr4IVuNYL/LYPglW2RtsFD7e
 ogxx5LZfwybd6pEUl/Zv28WnsIQX+A==
X-Proofpoint-GUID: gxaSBD_C-RityVee49XiOF-D90yb6PvT
X-Proofpoint-ORIG-GUID: gxaSBD_C-RityVee49XiOF-D90yb6PvT
X-Authority-Analysis: v=2.4 cv=J4ynLQnS c=1 sm=1 tr=0 ts=68ea8b23 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s8YR1HE3AAAA:8 a=RXhTPAuaP42idGtAG2cA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-11_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251011_095149_347314_AA9FC045 
X-CRM114-Status: GOOD (  19.12  )
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

On Sat, Oct 11, 2025 at 11:32:26AM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Add default DRM AUX HPD bridge device when register DisplayPort
> altmode. That makes it redundant for each Type-C driver to implement
> a similar registration process in embedded scenarios.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
> 
> Changes in v5:
> - Remove the calls related to `drm_aux_hpd_bridge_notify()`.
> - Place the helper functions in the same compilation unit.
> - Add more comments about parent device.
> 
>  drivers/usb/typec/class.c         | 26 ++++++++++++++++++++++++++
>  include/linux/usb/typec_altmode.h |  2 ++
>  2 files changed, 28 insertions(+)
> 
>  
> +static void dp_altmode_hpd_device_register(struct typec_altmode *alt)
> +{
> +	if (alt->svid != USB_TYPEC_DP_SID)
> +		return;
> +
> +	/*
> +	 * alt->dev.parent->parent : USB-C controller device
> +	 * alt->dev.parent         : USB-C connector device
> +	 */
> +	alt->hpd_dev = drm_dp_hpd_bridge_register(alt->dev.parent->parent,
> +						  to_of_node(alt->dev.parent->fwnode));

You can not do this, unless you make TYPEC core:

depends on DRM || DRM=n
select DRM_AUX_HPD_BRIDGE if DRM_BRIDGE && OF

> +	if (IS_ERR(alt->hpd_dev))
> +		alt->hpd_dev = NULL;
> +}
> +
>  static struct typec_altmode *
>  typec_register_altmode(struct device *parent,
>  		       const struct typec_altmode_desc *desc)

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
