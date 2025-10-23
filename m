Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21A2ACCD1BF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Oct 2025 11:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vgAcg8YL+m/G20roQ8qF4EbSTUdlWcMmnttjHpBa2rM=; b=WtymiXkqIM7q1z
	a9Wm1bJE916rWfz92kcdmzx9SiH3arfhJxARzS7WAOvxAPtSmqv/ukpVQHEUa/GQHLV80BHKIB2Du
	4a1J6pgoUOzhpzCuQf0V7VecT8Em1CFjlPhwyNZzieDA1+qwNAiixmkvWONHteAhkUcOf93XAvxig
	KfNP5BiILf3yb+0eASdxM0p5SNSYwd3CEuZXmrm/qG9xqQGAspCA3XM+eBsyhcUYGMSxuu3VFe65i
	qrGd5CD+atz+7UN/lM/vUFldLMaQqh6EG8QkYvwppY5oKfXKlUl5bn0TUvADq9l7+d2FZMmgSl5ZS
	IjG/JBZ5anhes9QW8U+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBtce-000000066Sl-0Jl3;
	Thu, 23 Oct 2025 11:36:48 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBtcb-000000066RQ-0UK5;
	Thu, 23 Oct 2025 11:36:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1761219405; x=1792755405;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=f2YqjnkzS7XblEQQzbQJuEEnfM++QTqRRHZndsLcws0=;
  b=JUWeC6VVYEx9Wq015Gsh0I9Yvw7yFR4f7NVZmmvgA/yBgRLBuhJccd9B
   +6Er2+iuSpFXk/Xx0elrg3tTKO5nuQpOtfkuX8nVVis3gI6eFViI0HeZk
   m2EOrJI9rTEWskiiixUrYf2Rb5ZL2JJtgFv5pkiuFEameFNZWM8CtmzHr
   upZMZARTulkz8TL3ARmqxKffvqLwxk3gOVVl98RIuLMItauZsQdKmLEOp
   U2tpkYo43WlQnuCHuONX9fcW3XjjpUX3ApZoKoEAyWChJBJj+Gu5oQp7B
   CPqAbkD8AslI6lB0S5/PVwck8+H7p4Oy4ORD6AXZBIq5+DjH4TnWJuv0n
   g==;
X-CSE-ConnectionGUID: aF2yE9ZyTBW4yGo6G5z+Dg==
X-CSE-MsgGUID: rTfLsZeoTRyWkzS1FMPUng==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67252080"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; 
   d="scan'208";a="67252080"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Oct 2025 04:36:41 -0700
X-CSE-ConnectionGUID: 1TqIq3snTL+ZCxmH6TFP0g==
X-CSE-MsgGUID: z60IloovRZGSCzaw8UIrVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; 
   d="scan'208";a="189267971"
Received: from bkammerd-mobl.amr.corp.intel.com (HELO kuha.fi.intel.com) ([10.124.221.165])
  by orviesa005.jf.intel.com with SMTP; 23 Oct 2025 04:36:31 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Thu, 23 Oct 2025 14:36:30 +0300
Date: Thu, 23 Oct 2025 14:36:30 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
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
	Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v7 1/9] usb: typec: Add notifier functions
Message-ID: <aPoTPr28cBzwbH0T@kuha.fi.intel.com>
References: <20251023033009.90-1-kernel@airkyi.com>
 <20251023033009.90-2-kernel@airkyi.com>
 <aPni4AeDaem_rfZH@kuha.fi.intel.com>
 <aPnvoSRJefwDlpNO@kuha.fi.intel.com>
 <aPn4-S7upPOOtenr@kuha.fi.intel.com>
 <9c52db41-14f3-41a8-9423-3efe604361aa@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9c52db41-14f3-41a8-9423-3efe604361aa@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_043645_157577_7889147A 
X-CRM114-Status: GOOD (  15.45  )
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


> Thank you for your detailed explanation. I noticed that there is a
> device_register() action in typec_register_altmode(), so we can just take
> advantage of this.
> 
> Another thing is that we need to distinguish between different devices in the
> notifier callback, as
> typec_register_altmode()/typec_register_partner()/typec_register_plug()/typec_register_cable()
> may all register devices. Since the data passed in bus_notify() is struct
> device *dev, I think we can distinguish them through `dev->type.name`? We may
> already have such names, "typec_alternate_mode", "typec_partner", "typec_plug"
> in class.c . And then extract these names as macros and put them in the typec
> header file.

You don't need to worry about that. Only partner altmodes are bind to
the bus. The device you see in the notifier will always be an altmode.

But in general, if you need to identify the device type, then
you use the device type itself, not the name of the type. It would
require that the device types are exported, but as said, you don't
need to worry about that in this case.

thanks,

-- 
heikki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
