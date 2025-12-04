Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D1A9D2068B
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Dec 2025 13:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oga7oJOnFh8gxIPR2NS6wOJ9eUPzB9fLhcNSpfPVZyQ=; b=CT2utTtrF98/Ji
	2RKCN4CwKHMAedEbov5obvMOCnCUQT8tXar62lrDN/PhhjPmZZHaqLzljruwo/NaCwaqKJS5C7Rqc
	mBSjlYUh+dZbTrFLjftIXKMILgNO2WkmgJFcg4vqVnjTAm1nnmm1RmGe9COa9oXOdhLy0tqTf4JLj
	JIA//3Vvgq1dyS6fDOhDxfzTnu0JcWIK3DxHLRY+wX5LbccEOOFjDVeNhETL/TCthcu3NePfd+S0/
	0m6BUMHC21v7eVHOAMPspfQ+SU8ttXft+9Gc8wPXOaBLmFoJu1lXP3muK0id8JKynvIMAPBGsulOu
	sg8j6KDMjlgzKjLPcOwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR9Em-000000082uH-15oP;
	Thu, 04 Dec 2025 13:19:12 +0000
Received: from mgamail.intel.com ([192.198.163.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR9Ej-000000082tL-1Kwo;
	Thu, 04 Dec 2025 13:19:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1764854349; x=1796390349;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=xqFQrU44fEiJ1KuRpa3rRjXuBbQsUbuhOFIk0S/39e0=;
  b=kPMP9FQvJg5NMbZ2n6JBYrcBxyAvluk9M4zaxITtrjo9c9KMuQieUNVo
   aE80kAxyL3Tc/AvLV1+keeyJLQIO9ilto2tMuN4NJhl02Wa41N0t+osVr
   l/7IwAdvq/rZtOb6Ho9TJAXjE/SU9bu6pdVclZQyWpJEAvlNXeNEQ43Xa
   cOL81pYbfXEcppGq1Z+iwUE2fB/XDVaA46fuwHp9MhEEWbdF5CBTRFWgr
   YA6kxWTtH4rv3kyxVcZT46WMnt84+slNKFCXJ5SC3lCUfoXkxubhAwkVh
   oQWl6MEPgzpDR5fy/OM9FrYQrU8Pu4efelxZ53qD5P+hskGBwH4cO/27q
   g==;
X-CSE-ConnectionGUID: 6ObgTrl9QeCIOr6GUpyWrg==
X-CSE-MsgGUID: 46D2TUU2SRe36n4UlrmEOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="77553073"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; 
   d="scan'208";a="77553073"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Dec 2025 05:19:08 -0800
X-CSE-ConnectionGUID: 6hnV95oCRRiK6KPTByZfvQ==
X-CSE-MsgGUID: HfWUZWD7SnmB6CaIbu9f3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; 
   d="scan'208";a="199943225"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO kuha) ([10.124.220.149])
  by fmviesa004.fm.intel.com with SMTP; 04 Dec 2025 05:18:57 -0800
Received: by kuha (sSMTP sendmail emulation); Thu, 04 Dec 2025 15:18:48 +0200
Date: Thu, 4 Dec 2025 15:18:48 +0200
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Peter Chen <hzpeterchen@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Frank Wang <frank.wang@rock-chips.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Amit Sunil Dhamne <amitsd@google.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v11 03/11] drm/bridge: Implement generic USB Type-C DP
 HPD bridge
Message-ID: <aTGKODdf7vsHFY72@kuha>
References: <20251128020405.90-1-kernel@airkyi.com>
 <20251128020405.90-4-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251128020405.90-4-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_051909_370337_3EC44A29 
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

Hi,

Fri, Nov 28, 2025 at 10:03:57AM +0800, Chaoyi Chen kirjoitti:
> diff --git a/drivers/gpu/drm/bridge/aux-hpd-typec-dp-bridge.c b/drivers/gpu/drm/bridge/aux-hpd-typec-dp-bridge.c
> new file mode 100644
> index 000000000000..94be3d5f69e9
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/aux-hpd-typec-dp-bridge.c
> @@ -0,0 +1,51 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +#include <linux/of.h>
> +#include <linux/usb/typec_altmode.h>
> +#include <linux/usb/typec_dp.h>
> +
> +#include <drm/bridge/aux-bridge.h>
> +
> +static int drm_typec_bus_event(struct notifier_block *nb,
> +			       unsigned long action, void *data)
> +{
> +	struct device *dev = (struct device *)data;
> +	struct typec_altmode *alt = to_typec_altmode(dev);
> +
> +	if (action != BUS_NOTIFY_ADD_DEVICE)
> +		goto done;
> +
> +	if (is_typec_partner_altmode(&alt->dev) || alt->svid != USB_TYPEC_DP_SID)
> +		goto done;

There are also plug altmodes. Just make sure it's a plug altmode.

	if (!is_typec_plug_altmode(&alt->dev) || alt->svid != USB_TYPEC_DP_SID)
                goto done;

> +	/*
> +	 * alt->dev.parent->parent : USB-C controller device
> +	 * alt->dev.parent         : USB-C connector device
> +	 */
> +	drm_dp_hpd_bridge_register(alt->dev.parent->parent,
> +				   to_of_node(alt->dev.parent->fwnode));
> +
> +done:
> +	return NOTIFY_OK;
> +}
> +
> +static struct notifier_block drm_typec_event_nb = {
> +	.notifier_call = drm_typec_bus_event,
> +};
> +
> +static void drm_aux_hpd_typec_dp_bridge_module_exit(void)
> +{
> +	bus_unregister_notifier(&typec_bus, &drm_typec_event_nb);
> +}
> +
> +static int __init drm_aux_hpd_typec_dp_bridge_module_init(void)
> +{
> +	bus_register_notifier(&typec_bus, &drm_typec_event_nb);
> +
> +	return 0;
> +}
> +
> +module_init(drm_aux_hpd_typec_dp_bridge_module_init);
> +module_exit(drm_aux_hpd_typec_dp_bridge_module_exit);
> +
> +MODULE_DESCRIPTION("DRM TYPEC DP HPD BRIDGE");
> +MODULE_LICENSE("GPL");

thanks,

-- 
heikki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
