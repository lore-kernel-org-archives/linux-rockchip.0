Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDF79F0181F
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Mar 2026 09:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8oLuMrc4Gx4BVE+BKFVKZHQRpOOlA+Mp9YTb1iRTe68=; b=zY2q30H+imzHX7
	hz6Efx+YOtdaZzXr+1J+RQiEKkNK9NZ+049BYRGI8DnpBp+K3FTX8WuhWvAY3uMuEzTQP+UzWsFgr
	MXunJ/9eDkPLg/B+BS0fa01jfSKW+PVNA5qrH8zTKUe6tzDcy1Z9QmARE/04bX7ZHlnT2dxDI1evD
	A7oY2pWwfUMQnEaGLSHCja7GYf3hgtV+4ffLHTa4p62g7tz95z36YG7iB+JYUUncHFUq5Bvn6RjUh
	EKhNPxPs1jB/BImgxFuGl4G3cWGbXXNucEghvUAyjit5flkC2X2s6rzP/39UMwNixDb5BSei8QArw
	+kv0PgKttW6IlVsQ2jZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyRvM-00000003OCl-1xNm;
	Fri, 06 Mar 2026 09:56:48 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyRvJ-00000003O9m-0EyO;
	Fri, 06 Mar 2026 09:56:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1772791004; x=1804327004;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=M0XofkcuBdV1zkdsuj7RJ1maZEJbks9g3VqYv60iJnU=;
  b=twuf04TVYVqIu4COwwBJGikIziT4WVc4rAk8o62fHa8wMUUt9TAkhcPX
   ST/jufyAnvjuucNTVpi+aZKYZPfQnnyN96HCZvGx7+wb2RdjcwzCiKZJW
   SxRKb8Mk9MuAf8E7H1EiHZA7710ev+JtGXJBbDXJLCEKWd/jy387uXL9F
   gVBXSJFxHqhi/IFSOAnszB6gqk0JDKLiaL/eWOLdNEbsw99dCnXVMliAM
   qAQFnmcIphnqS+gWhC43gxQJ4GtHFiJU31ABivT7cNj9/uEm3FEkMLp/W
   YnB/izdu1UCQe3AdXaqDPOFYylldwmPe1yeJtUDtXO96DHDSf5jv0OPSa
   g==;
X-CSE-ConnectionGUID: kkklftjzTt+tmC5CjQykRw==
X-CSE-MsgGUID: y9hzzWGpTbWY5hyCt1eJ5w==
X-IronPort-AV: E=Sophos;i="6.23,104,1770620400"; 
   d="scan'208";a="54313383"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 06 Mar 2026 02:56:43 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Fri, 6 Mar 2026 02:56:27 -0700
Received: from DEN-DL-M70577 (10.10.85.11) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Fri, 6 Mar 2026 02:56:22 -0700
Date: Fri, 6 Mar 2026 10:56:22 +0100
From: Daniel Machon <daniel.machon@microchip.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
CC: <linux-phy@lists.infradead.org>, Vinod Koul <vkoul@kernel.org>, "Neil
 Armstrong" <neil.armstrong@linaro.org>, <dri-devel@lists.freedesktop.org>,
	<freedreno@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-arm-msm@vger.kernel.org>, <linux-can@vger.kernel.org>,
	<linux-gpio@vger.kernel.org>, <linux-ide@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-media@vger.kernel.org>,
	<linux-pci@vger.kernel.org>, <linux-renesas-soc@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <linux-rockchip@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <linux-sunxi@lists.linux.dev>,
	<linux-tegra@vger.kernel.org>, <linux-usb@vger.kernel.org>,
	<netdev@vger.kernel.org>, <spacemit@lists.linux.dev>,
	<UNGLinuxDriver@microchip.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Steen Hegelund
	<Steen.Hegelund@microchip.com>
Subject: Re: [PATCH phy-next 07/22] net: lan969x: include missing <linux/of.h>
Message-ID: <20260306095622.rh3sje3wnexbdsqb@DEN-DL-M70577>
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-8-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260304175735.2660419-8-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_015645_137415_03A8572E 
X-CRM114-Status: GOOD (  13.73  )
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

> This file is calling of_property_read_u32() without including the proper
> header for it. It is provided by <linux/phy/phy.h>, which wants to get
> rid of it.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> Cc: Daniel Machon <daniel.machon@microchip.com>
> Cc: Andrew Lunn <andrew+netdev@lunn.ch>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Eric Dumazet <edumazet@google.com>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Paolo Abeni <pabeni@redhat.com>
> Cc: Steen Hegelund <Steen.Hegelund@microchip.com>
> ---
>  drivers/net/ethernet/microchip/sparx5/lan969x/lan969x_rgmii.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/microchip/sparx5/lan969x/lan969x_rgmii.c b/drivers/net/ethernet/microchip/sparx5/lan969x/lan969x_rgmii.c
> index 4e422ca50828..249114b40c42 100644
> --- a/drivers/net/ethernet/microchip/sparx5/lan969x/lan969x_rgmii.c
> +++ b/drivers/net/ethernet/microchip/sparx5/lan969x/lan969x_rgmii.c
> @@ -4,6 +4,7 @@
>   * Copyright (c) 2024 Microchip Technology Inc. and its subsidiaries.
>   */
> 
> +#include <linux/of.h>
>  #include "lan969x.h"
> 
>  /* Tx clock selectors */
> --
> 2.43.0
>

Acked-by: Daniel Machon <daniel.machon@microchip.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
