Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85FC3E9B247
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 09:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VXStG5KuAsyjo8Fl1yZvBl0PhBYWYLEwO4/mx4mx33U=; b=1SLS0FDspjDnzH
	JMJr6LjS3wSWji5gTW1DwLj1156OTCys3vYqfOzwwW68G2HketA/VYJ0lQcQ7D34Fo2LAl9V+PxU6
	KwO++GGOTGQfQRt6ID7sgY+WMoKJo32/W1QbAdWjaDVElWw2CHHZeeXgIj2n6Wl1x52ZLQrY7F6J5
	tUsM8Avkla0DyWbdZBXeu0KB6sm9wx4vIcVzpX9ne9+b0MNh4rEfny1fyrZdWK98fnDwXdZC7XRWo
	ffHLZveDKldVKAKDdrH+3nwtGJasMK/GI9b4G+/sofeV/LFi/WL8ynxmCgZ95e4WgS7UX7ZitThO4
	kmlZT94QFDzzUXsKNpPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vup4E-00000001ncR-3bx2;
	Tue, 24 Feb 2026 09:50:58 +0000
Received: from mgamail.intel.com ([198.175.65.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vup4C-00000001nc4-1sFh
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Feb 2026 09:50:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771926657; x=1803462657;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=IM0e0fy50KkE7mIOOuYjlTi1dOxwNjogYv5ELqFwu9Q=;
  b=WpXVXW4JraMC3MWzFSX6rtlJOK1ovD8kbH5qy5dSZqgE9EPl4aZlv6av
   gwWX2JywnL2y+0lpXhc/FjQ5zKJ6vUHBAqV12CKApuJGTJb3LANPlyLoB
   2XyUc/Lef3eZQn8KAX7X8lBh/UTgyFmYF+J7+HooswvdFCf2OM2E87TD3
   D+8OX3LKtUsSffC6/0nVUpBpGFJlFe24uIcDCF5CYBgpL7IX7cqr4Ga18
   IxWYKJs/BLjZyRKgDZISaicyTrB88FxAlNHwblsgG5iNcM2NT1aCynjzY
   slN+OFzZpcO/DLOTrY3fNQ1aNow3Z2WmzGNVUbGIeoPF8i4ZLpmy2H9ra
   Q==;
X-CSE-ConnectionGUID: r3Mxf/boQuaMo4b8/PVcAQ==
X-CSE-MsgGUID: Gjw8X8YnRfaAfZqjikJojQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="76768242"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; 
   d="scan'208";a="76768242"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 01:50:56 -0800
X-CSE-ConnectionGUID: Fa/sx7/DRM6aL0jVymc2gA==
X-CSE-MsgGUID: 01eSOxuVQ+6yZvzsq4DjXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; 
   d="scan'208";a="220850020"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO kuha) ([10.124.222.187])
  by orviesa005.jf.intel.com with SMTP; 24 Feb 2026 01:50:53 -0800
Received: by kuha (sSMTP sendmail emulation); Tue, 24 Feb 2026 11:50:17 +0200
Date: Tue, 24 Feb 2026 11:50:17 +0200
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v2 1/2] usb: typec: mux: avoid duplicated orientation
 switches
Message-ID: <aZ10NJshUtgtQqEw@kuha>
References: <20260223-typec-mux-duplication-fix-v2-0-0402fefc222e@collabora.com>
 <20260223-typec-mux-duplication-fix-v2-1-0402fefc222e@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260223-typec-mux-duplication-fix-v2-1-0402fefc222e@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_015056_568072_DF04906B 
X-CRM114-Status: GOOD (  21.27  )
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

Mon, Feb 23, 2026 at 07:27:38PM +0100, Sebastian Reichel kirjoitti:
> Some devices use combo PHYs (i.e. USB3 + DisplayPort), which also
> handle the orientation mux. These PHYs are referenced twice from
> the USB-C connector (USB super-speed lines and SBU/AUX lines)
> resulting in the switch being configured twice. Avoid this by
> dropping duplicates.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

> ---
>  drivers/usb/typec/mux.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/typec/mux.c b/drivers/usb/typec/mux.c
> index 58fb97ea6877..9b908c46bd7d 100644
> --- a/drivers/usb/typec/mux.c
> +++ b/drivers/usb/typec/mux.c
> @@ -35,7 +35,9 @@ static int switch_fwnode_match(struct device *dev, const void *fwnode)
>  static void *typec_switch_match(const struct fwnode_handle *fwnode,
>  				const char *id, void *data)
>  {
> +	struct typec_switch_dev **sw_devs = data;
>  	struct device *dev;
> +	int i;
>  
>  	/*
>  	 * Device graph (OF graph) does not give any means to identify the
> @@ -56,6 +58,13 @@ static void *typec_switch_match(const struct fwnode_handle *fwnode,
>  	dev = class_find_device(&typec_mux_class, NULL, fwnode,
>  				switch_fwnode_match);
>  
> +	/* Skip duplicates */
> +	for (i = 0; i < TYPEC_MUX_MAX_DEVS; i++)
> +		if (to_typec_switch_dev(dev) == sw_devs[i]) {
> +			put_device(dev);
> +			return NULL;
> +		}
> +
>  	return dev ? to_typec_switch_dev(dev) : ERR_PTR(-EPROBE_DEFER);
>  }
>  
> @@ -80,7 +89,8 @@ struct typec_switch *fwnode_typec_switch_get(struct fwnode_handle *fwnode)
>  	if (!sw)
>  		return ERR_PTR(-ENOMEM);
>  
> -	count = fwnode_connection_find_matches(fwnode, "orientation-switch", NULL,
> +	count = fwnode_connection_find_matches(fwnode, "orientation-switch",
> +					       (void **)sw_devs,
>  					       typec_switch_match,
>  					       (void **)sw_devs,
>  					       ARRAY_SIZE(sw_devs));
> 
> -- 
> 2.51.0

-- 
heikki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
