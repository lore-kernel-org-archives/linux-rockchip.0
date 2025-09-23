Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2E0FCAC5AC
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Sep 2025 01:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mDbVg/CuftpP7/cu/3m6iIRU2VySCRgfrJZMjTg74EI=; b=hVJ47ZHnAJO/LX
	UqmUwmeAYqHkCnxzkp3eN9CAaDyXlbdF6oitqKFHGt2E8p062Ea9azL80DB7cQ1HdpYsAg8GFv7SU
	LvHwI6qYsg60ruM+HFv/V+LYCjkq6d3GO7Xp6Lsa2WlkLeD2+TKW5RiauvTZH8dKxmwQGvXuJoSYH
	gNzKeUVjUpriYxvc4ONsDkVH6P6bKqZ68v7MIDvK8oxmoqh8rV45e9V1oOn0x7FV5OmqCxxrVAyjZ
	upnF8tHU1ZsIdeEmL+kZr31QSkElKjaSCRrK/G+HK3x9m6DJiY/oH0yXnJ60vaPim7Qci/E2j8gBS
	SraC16Y22s40Bf81DC2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0rY1-0000000By1z-3g7W;
	Tue, 23 Sep 2025 01:10:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0rXy-0000000By0q-2NQr
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Sep 2025 01:10:23 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MHiibq022695
	for <linux-rockchip@lists.infradead.org>; Tue, 23 Sep 2025 01:10:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aC6xtZ2Xq3V/aoM/1E2yl/Rv
	YTGjb8DsxBZkEhoHUs0=; b=kQP4aTFzNQ2UuzbT4ikHpSFm3WaFRyXiNs2GrX1D
	NOWQh3swouH9vJ1fAxVXC6PCPqnticuckinCgv8kquP2cFLdmTNHqGDbpgIh3ic5
	HhdSV0BKnlWkJLFZeGrTyNU2cQym6INqa8JoGWm3XQiSkQd1Fv+CWSb1KePAMs2k
	wGIvF9VgWOBP9v+kIAh4IRCzFD1nQtI8BHSCyjVKIOz8cr1W+zSd/EEDTKsqq248
	YjLoM6Pq0PFnCL7+VWkYLy7Cy/zDlG7J3Z2vOWAuA+pfn3YrzhzFUnQ9mU9MG101
	Hb90tz017gvT47+qynKe99HkOwpeaZHUOOOyb39SLXiPMw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3nyaex6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 23 Sep 2025 01:10:21 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-78e50889f83so126727096d6.1
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Sep 2025 18:10:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758589820; x=1759194620;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aC6xtZ2Xq3V/aoM/1E2yl/RvYTGjb8DsxBZkEhoHUs0=;
        b=hzDWabRMla6hEhiJd8tMrUxSAg7naQtHT3tThjo6a2MGk21ck1Q8Ez1kB0U9a71mwX
         VJE9b6hWv5/v2Wyd63RUzff2jjyZcZVN7S+reScjBL409U6BRjMQWDnRQ2ZdYu43W9rb
         xpGKvZlNRIHe/dPBgiXV4PJO7UWUBvohMq1T8YcmBQWBarqWllnrLomOo2W13GVhQ3ts
         vcql2DrAoiqNGhVezvJSR2I5iXQDo398Ac06gmdMKkE7tByh/LBu1RfOBdeYsKXrWzP4
         IDYnTw037ugPcQQHEvKUg7rmtIH/6Rg64GE4lQP1D4cjiXCNqVAuoB0c7kSi8s9kOZCE
         IBZw==
X-Forwarded-Encrypted: i=1; AJvYcCU3z7FKccZBOti9B8rx95x55DOc9XmHV+auP42T0Ll+nKYUjkoLwTHxvcztsBDyPV2iC9zECji4EdCz3AUOKw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzdBB/6GRyXOWQOOlxpG3PGTj/Cy/Kwv6TIJdtdw1U8bxU0S77U
	iB4vfA/lBop3rdTBomB2m+tRus+BcLVM6sgVWtVh4NEwZpqNLP4sAyymdf9Kvjnjf+FaoOZQPqS
	P1jY8WHYP7pFRSKWbHpS3/szed1iWM1IAsrMZvofRAZ2DGMG25od+RgcoiJrQAm992iyP3dc2pm
	Y=
X-Gm-Gg: ASbGncvGz89dFGwFBzfbtErlbnwB3d3Eu82jugZjiz26ZehLL9E69nPWJ3gWhDAzWJo
	Wt+D+stEerbCp3xLIhB9WKWTSJakusvsf219a2NHsAKHJPePCf0mIWu34gLulod+DF0Ro899Fe7
	bBQK6eDq/xkxrz+0W3JyMpfMRleKoi0C1VVq2nuOWT8dNmJc5BalaRbNGKEw/Wmzpfs1m2y/sXf
	sDykCEod3UHQVaBr+QZtYOMs5qSECKuXekIfiDo6e4TIiWJsl+2zk+X2Wu/Qzf94aq3iaUQLP1b
	8PD9NCy90WqY+/090TWFGQ5jsrXvihVQMSwMZF0zHvc9ZBwm2rPljoigUhI3hdzMtXscyieHzlQ
	+GNSJDhvBORLDiqAhxenoNP9pWktFJQhWB28oGD69szB/evP5Gpxe
X-Received: by 2002:a05:6214:21cd:b0:75f:6116:83e with SMTP id 6a1803df08f44-7e712ef9c76mr10311836d6.37.1758589820514;
        Mon, 22 Sep 2025 18:10:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/AqhiaebrPXH+fi3RCpVWDIqMTUfClYaLPwNMtBGbndVg1ntx4aReI8HayNz/8sSGkQvDNw==
X-Received: by 2002:a05:6214:21cd:b0:75f:6116:83e with SMTP id 6a1803df08f44-7e712ef9c76mr10311466d6.37.1758589819848;
        Mon, 22 Sep 2025 18:10:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-579e716407dsm3036752e87.97.2025.09.22.18.10.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 18:10:18 -0700 (PDT)
Date: Tue, 23 Sep 2025 04:10:17 +0300
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
Subject: Re: [PATCH v4 1/7] usb: typec: Add default HPD device when register
 DisplayPort altmode
Message-ID: <mygbqhiom6pkwsadzz2bqf5bth3ogsbd6iku5a7r5swxrakein@fjhz7udnkcks>
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-2-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250922012039.323-2-kernel@airkyi.com>
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d1f37e cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=BpK9xR3a_xoX_XwHwW8A:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: ij6Xqjv_TtVRXYOphbbRjtw4gTA2wHcz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfXx5xZzM8+2tOo
 8gbHIh6TCust6w4Ex5PpXpFy3ErJ4hUQr06LG65gWm6H914Vj5GpfPN92NyLV9NNDouJYXWKMfb
 k+jEI+3N7bEWmW61RD9YtA3PtFripuS5G3LeohFSRoSnO7MNMgJU7jgx5tTpZbhybIXYDojSDxf
 gCEhaY+OIZbh7EVLkZkiHgYacfwH7Ghi8ywk/7aFJu4WLz9OMCTCDBgyisBwgcjW76jm7ZHwbEQ
 GVl3I/BGpTsfYjpXHCYhR9hfBwnRFno7W6khD+9bxXgatNfWOdCbMhI7z731pYbiLX3lWYTnhns
 od63aope6sa3QODaXqodw2OwFQRud7jXTm77ao1EUfQ4D+AGdc5mI+rHG103plougsa9J/VzRVq
 IKleJV+i
X-Proofpoint-ORIG-GUID: ij6Xqjv_TtVRXYOphbbRjtw4gTA2wHcz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_05,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_181022_614333_6BFB7DAF 
X-CRM114-Status: GOOD (  29.46  )
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

On Mon, Sep 22, 2025 at 09:20:33AM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Add default DRM AUX HPD bridge device when register DisplayPort
> altmode. That makes it redundant for each Type-C driver to implement
> a similar registration process in embedded scenarios.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>  drivers/usb/typec/altmodes/displayport.c | 27 ++++++++++++++++++++++++
>  drivers/usb/typec/altmodes/displayport.h |  2 ++
>  drivers/usb/typec/class.c                |  8 +++++++
>  include/linux/usb/typec_altmode.h        |  2 ++
>  4 files changed, 39 insertions(+)
> 
> diff --git a/drivers/usb/typec/altmodes/displayport.c b/drivers/usb/typec/altmodes/displayport.c
> index 1dcb77faf85d..e026dc6e5430 100644
> --- a/drivers/usb/typec/altmodes/displayport.c
> +++ b/drivers/usb/typec/altmodes/displayport.c
> @@ -14,6 +14,7 @@
>  #include <linux/property.h>
>  #include <linux/usb/pd_vdo.h>
>  #include <linux/usb/typec_dp.h>
> +#include <drm/bridge/aux-bridge.h>
>  #include <drm/drm_connector.h>
>  #include "displayport.h"
>  
> @@ -182,6 +183,10 @@ static int dp_altmode_status_update(struct dp_altmode *dp)
>  				dp->pending_irq_hpd = true;
>  		}
>  	} else {
> +		if (dp->port->hpd_dev)
> +			drm_aux_hpd_bridge_notify(dp->port->hpd_dev,
> +						  hpd ? connector_status_connected :
> +							connector_status_disconnected);

There should be no need for these calls. Once the HPD bridge is added to
a correct fwnode, the drm_connector_oob_hotplug_event() calls should
deliver the signal as expected.

>  		drm_connector_oob_hotplug_event(dp->connector_fwnode,
>  						hpd ? connector_status_connected :
>  						      connector_status_disconnected);
> @@ -206,6 +211,9 @@ static int dp_altmode_configured(struct dp_altmode *dp)
>  	 * configuration is complete to signal HPD.
>  	 */
>  	if (dp->pending_hpd) {
> +		if (dp->port->hpd_dev)
> +			drm_aux_hpd_bridge_notify(dp->port->hpd_dev,
> +						  connector_status_connected);
>  		drm_connector_oob_hotplug_event(dp->connector_fwnode,
>  						connector_status_connected);
>  		sysfs_notify(&dp->alt->dev.kobj, "displayport", "hpd");
> @@ -391,6 +399,9 @@ static int dp_altmode_vdm(struct typec_altmode *alt,
>  			dp->data.status = 0;
>  			dp->data.conf = 0;
>  			if (dp->hpd) {
> +				if (dp->port->hpd_dev)
> +					drm_aux_hpd_bridge_notify(dp->port->hpd_dev,
> +								  connector_status_disconnected);
>  				drm_connector_oob_hotplug_event(dp->connector_fwnode,
>  								connector_status_disconnected);
>  				dp->hpd = false;
> @@ -751,6 +762,18 @@ static const struct attribute_group *displayport_groups[] = {
>  	NULL,
>  };
>  
> +void dp_altmode_hpd_device_register(struct typec_altmode *alt)
> +{
> +	if (alt->svid != USB_TYPEC_DP_SID)
> +		return;
> +
> +	alt->hpd_dev = drm_dp_hpd_bridge_register(alt->dev.parent->parent,
> +						  dev_of_node(alt->dev.parent->parent));

This needs at least a comment, what is dev.parent->parent. Also, the
of_node is not correct here. It should be a node of the connector,
rather than the device itself. Consider USB-C controllers which handle
several USB-C connectors (e.g. UCSI). The DRM core won't be able to
identify the correct bridge.

> +	if (IS_ERR(alt->hpd_dev))
> +		alt->hpd_dev = NULL;
> +}
> +EXPORT_SYMBOL_GPL(dp_altmode_hpd_device_register);

Having the function here will bring a typec -> displayport dependency
between drivers (which you didn't document). It means it won't be
possible to build typec core into the kernel, having the DP AltMode
driver in the module (which also doesn't sound like a good idea).

> +
>  int dp_altmode_probe(struct typec_altmode *alt)
>  {
>  	const struct typec_altmode *port = typec_altmode_get_partner(alt);

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
