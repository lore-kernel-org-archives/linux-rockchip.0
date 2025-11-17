Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF097CEACEF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 08:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BAjDIjyL6CgtS68MPndjAbRVpdpA2c9/zZK4Apt+NYE=; b=pFxROu12UABtyY
	e9+NptefAA/m0za/CCHzuJKrqcQr5fshB5mDXI4V+BJ8Wm0uOyaZ94Q8dntYloGaGzdiUxE1gJOEM
	0QOm+Y5cxs0fsPgrO4hvu2/Au0kj/2Ffdmz4W+8BbXJVqSylLTAcvbpgHQHQWLPqkrx8NvJFjOzq7
	xXDy7qamm9t+gk2tV3aogqGVFmwFfDlM6DIjcqs0HR1/gIc0p+LlJwNxuxkRtdxHCUJv1E0sY9wzQ
	FbUZEluFafVDFjwwihlBHNqHVhpKNXw9UgfpW/y98C5MCactt9VLSjzJLGwzo4Up5BKJNbjslNmFe
	kiGw8nb4q0VTc4YVf1wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKugR-0000000FgcI-1hEI;
	Mon, 17 Nov 2025 08:33:59 +0000
Received: from mgamail.intel.com ([192.198.163.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKugN-0000000FgbQ-3ncD;
	Mon, 17 Nov 2025 08:33:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763368436; x=1794904436;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=fwZ0M264l2HDkJoHx6/s0vTo1RmcLUo2A7k4nruvgmg=;
  b=TAEBaW1YmvTVyX8eEY9bXFGnWzPvR72UW+aJVx68MhPSCLytUq3NQ5UZ
   uUK6Y8517s23CZ6Jnbo+qF6VbszFaITkpfdvWGrzghNI7bFZgKcPPkhZm
   k4iJ5IyYu4aI/4YAbVTeusKB9q+JVlmJZGImWAGvFkFtimXJlk5cFgeqL
   l1/A8RefCr8uTdCuNU80/NDnb0hjFiKNFTKrwasEcMfUQNdWmjcIfd7fV
   C6uDUh6aKgCvseU0Ms1pdvh8L4YnUtLjcdnyriBp1kIzWHo9mveCIzZLJ
   XYL6RA2GJwbkDZjVLl8QUbeXHyZzcQwsByrQIdugeJIvIcQ/IpNSBq+Ys
   g==;
X-CSE-ConnectionGUID: oLCx3IZTTAyHsofcJhllcQ==
X-CSE-MsgGUID: 1i9KS4maRuy292hUeTYp1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76711769"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; 
   d="scan'208";a="76711769"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Nov 2025 00:33:53 -0800
X-CSE-ConnectionGUID: LzySukzyT0q7wE/hYMMthQ==
X-CSE-MsgGUID: 2U3W8q32QTu8NcnLccW2lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; 
   d="scan'208";a="194842874"
Received: from mgoodin-mobl3.amr.corp.intel.com (HELO kuha.fi.intel.com) ([10.124.220.176])
  by orviesa004.jf.intel.com with SMTP; 17 Nov 2025 00:33:42 -0800
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Mon, 17 Nov 2025 10:33:39 +0200
Date: Mon, 17 Nov 2025 10:33:39 +0200
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Peter Chen <hzpeterchen@gmail.com>, Rob Herring <robh@kernel.org>,
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
Subject: Re: [PATCH v9 01/10] usb: typec: Add notifier functions
Message-ID: <aRrd48unDVdtKYH3@kuha.fi.intel.com>
References: <20251111105040.94-1-kernel@airkyi.com>
 <20251111105040.94-2-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251111105040.94-2-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_003355_963468_8EB96A38 
X-CRM114-Status: GOOD (  22.08  )
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

Tue, Nov 11, 2025 at 06:50:31PM +0800, Chaoyi Chen kirjoitti:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Some other part of kernel may want to know the event of typec bus.
> 
> This patch add common notifier function to notify these event.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
> 
> Changes in v9:
> - Remove redundant header files.
> 
> Changes in v8:
> - Fix coding style.
> 
>  drivers/usb/typec/Makefile        |  2 +-
>  drivers/usb/typec/bus.h           |  2 ++
>  drivers/usb/typec/class.c         |  2 ++
>  drivers/usb/typec/notify.c        | 23 +++++++++++++++++++++++
>  include/linux/usb/typec_altmode.h |  9 +++++++++
>  5 files changed, 37 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/usb/typec/notify.c
> 
> diff --git a/drivers/usb/typec/Makefile b/drivers/usb/typec/Makefile
> index 7a368fea61bc..20d09c5314d7 100644
> --- a/drivers/usb/typec/Makefile
> +++ b/drivers/usb/typec/Makefile
> @@ -1,6 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  obj-$(CONFIG_TYPEC)		+= typec.o
> -typec-y				:= class.o mux.o bus.o pd.o retimer.o
> +typec-y				:= class.o mux.o notify.o bus.o pd.o retimer.o
>  typec-$(CONFIG_ACPI)		+= port-mapper.o
>  obj-$(CONFIG_TYPEC)		+= altmodes/
>  obj-$(CONFIG_TYPEC_TCPM)	+= tcpm/
> diff --git a/drivers/usb/typec/bus.h b/drivers/usb/typec/bus.h
> index 643b8c81786d..820b59b6d434 100644
> --- a/drivers/usb/typec/bus.h
> +++ b/drivers/usb/typec/bus.h
> @@ -26,6 +26,8 @@ struct altmode {
>  	struct altmode			*plug[2];
>  };
>  
> +void typec_notify_event(unsigned long event, void *data);
> +
>  #define to_altmode(d) container_of(d, struct altmode, adev)
>  
>  extern const struct bus_type typec_bus;
> diff --git a/drivers/usb/typec/class.c b/drivers/usb/typec/class.c
> index 9b2647cb199b..9d2aa3dd3f56 100644
> --- a/drivers/usb/typec/class.c
> +++ b/drivers/usb/typec/class.c
> @@ -600,6 +600,8 @@ typec_register_altmode(struct device *parent,
>  		return ERR_PTR(ret);
>  	}
>  
> +	typec_notify_event(TYPEC_ALTMODE_REGISTERED, &alt->adev);
> +
>  	return &alt->adev;
>  }

You need to also send TYPEC_ALTMODE_UNREGISTERED notification in
typec_unregister_altmode().

thanks,

> diff --git a/drivers/usb/typec/notify.c b/drivers/usb/typec/notify.c
> new file mode 100644
> index 000000000000..9e50b54da359
> --- /dev/null
> +++ b/drivers/usb/typec/notify.c
> @@ -0,0 +1,23 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include <linux/notifier.h>
> +
> +#include "bus.h"
> +
> +static BLOCKING_NOTIFIER_HEAD(typec_notifier_list);
> +
> +int typec_altmode_register_notify(struct notifier_block *nb)
> +{
> +	return blocking_notifier_chain_register(&typec_notifier_list, nb);
> +}
> +EXPORT_SYMBOL_GPL(typec_altmode_register_notify);
> +
> +int typec_altmode_unregister_notify(struct notifier_block *nb)
> +{
> +	return blocking_notifier_chain_unregister(&typec_notifier_list, nb);
> +}
> +EXPORT_SYMBOL_GPL(typec_altmode_unregister_notify);
> +
> +void typec_notify_event(unsigned long event, void *data)
> +{
> +	blocking_notifier_call_chain(&typec_notifier_list, event, data);
> +}
> diff --git a/include/linux/usb/typec_altmode.h b/include/linux/usb/typec_altmode.h
> index f7db3bd4c90e..59e20702504b 100644
> --- a/include/linux/usb/typec_altmode.h
> +++ b/include/linux/usb/typec_altmode.h
> @@ -10,6 +10,7 @@
>  #define MODE_DISCOVERY_MAX	6
>  
>  struct typec_altmode_ops;
> +struct notifier_block;
>  
>  /**
>   * struct typec_altmode - USB Type-C alternate mode device
> @@ -77,6 +78,14 @@ int typec_altmode_notify(struct typec_altmode *altmode, unsigned long conf,
>  const struct typec_altmode *
>  typec_altmode_get_partner(struct typec_altmode *altmode);
>  
> +enum usb_typec_event {
> +	TYPEC_ALTMODE_REGISTERED,
> +	TYPEC_ALTMODE_UNREGISTERED,
> +};
> +
> +int typec_altmode_register_notify(struct notifier_block *nb);
> +int typec_altmode_unregister_notify(struct notifier_block *nb);
> +
>  /**
>   * struct typec_cable_ops - Cable alternate mode operations vector
>   * @enter: Operations to be executed with Enter Mode Command
> -- 
> 2.51.1

-- 
heikki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
