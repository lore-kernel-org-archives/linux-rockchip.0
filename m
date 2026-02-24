Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0704E9B247
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 09:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Glj6MdA9ZOOiFc3V7BsES35ZOSW7pgPr/FPVy2qHxE8=; b=Xy/yyCewozC6yy
	ZG+tHYThA59XoLsWoYsyvKfwxHSgU2oqhK37EUodV8BL0kpn2s4t3wJv5HILdzelXVRZu6vaF6qQg
	flnZp3hqGczQuAjF1XschaUOYAq9XZzglHZTEL2QIWT2bj7ZXDXXrB0gv7yN2/bQVjBJu4F5/X9bO
	hKUcZS/BqNn4a5WiccKoWvtVv8g/bXFjlkEWX9gZNwE4GEsCPnTwOmLhfOUinyZxM4sOoYc0KFg7z
	QRFfj/KBzUthcKYPJyBUWuZHi79buArhugZRcDioMWblBr5X0JvtPGUY7pDATaHHlqIEmw7nzHLzh
	g09VVXp12XqeBJ5w4P9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vup5P-00000001nis-1hSf;
	Tue, 24 Feb 2026 09:52:11 +0000
Received: from mgamail.intel.com ([198.175.65.19])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vup5N-00000001niY-3ECF
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Feb 2026 09:52:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771926730; x=1803462730;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=6pRu6zq62WMN+WyuOARkXhLVVqohePZFybaoMP30tgE=;
  b=V6P7jZjXOp7dGq2bPPUvn76MJrS+PBiWRfeb4K0oFENkKYRLFwFzszzF
   L6uSyCqTvkbO+mkiboBbv2Lt5DlRtmuShbuG54EIbVrJyl1xN63+0bKtb
   V4HhROTvWqkBS2ivVqL88F3dqg2SlMYijZuY8TpIRooIjHakBE0NvLPMd
   CnMyopWR+FU8rq/MF4e0RnsiZoUDSSeCuekO6Y7KSVD0dzLJCLSC4O55j
   sDMF42r/kjh9N0YafRpyqDsAhhEzEuZ8ReHo+rwWPj48xH6vLFCrxGHDH
   zub6S1e31PnO+q/WYyeCxMnQFvMnpkVlQzTa/rPSL+/qGoA0x6j6oz+Wr
   g==;
X-CSE-ConnectionGUID: vw5nhNhfRe+B+/TrT2f2dQ==
X-CSE-MsgGUID: 10nAo3FWSfqCL4YlVAyFrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72839845"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; 
   d="scan'208";a="72839845"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 01:52:09 -0800
X-CSE-ConnectionGUID: gAL2aXsLSUO2SshtxEY5qA==
X-CSE-MsgGUID: N2EPebGQTo+YHb65fFnqkw==
X-ExtLoop1: 1
Received: from aschofie-mobl2.amr.corp.intel.com (HELO kuha) ([10.124.222.187])
  by fmviesa003.fm.intel.com with SMTP; 24 Feb 2026 01:52:06 -0800
Received: by kuha (sSMTP sendmail emulation); Tue, 24 Feb 2026 11:51:31 +0200
Date: Tue, 24 Feb 2026 11:51:31 +0200
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v2 2/2] usb: typec: mux: avoid duplicated mux switches
Message-ID: <aZ10o7G_9yjYmiQL@kuha>
References: <20260223-typec-mux-duplication-fix-v2-0-0402fefc222e@collabora.com>
 <20260223-typec-mux-duplication-fix-v2-2-0402fefc222e@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260223-typec-mux-duplication-fix-v2-2-0402fefc222e@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_015209_877438_0FA9562F 
X-CRM114-Status: GOOD (  21.16  )
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

Mon, Feb 23, 2026 at 07:27:39PM +0100, Sebastian Reichel wrote:
> Some devices use combo PHYs (i.e. USB3 + DisplayPort), which also
> handle the lane muxing. These PHYs are referenced twice from
> the USB-C connector (USB super-speed lines and SBU/AUX lines)
> resulting in the mux being configured twice. Avoid this by
> dropping duplicates.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

> ---
>  drivers/usb/typec/mux.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/typec/mux.c b/drivers/usb/typec/mux.c
> index 9b908c46bd7d..db5e4a4c0a99 100644
> --- a/drivers/usb/typec/mux.c
> +++ b/drivers/usb/typec/mux.c
> @@ -275,7 +275,9 @@ static int mux_fwnode_match(struct device *dev, const void *fwnode)
>  static void *typec_mux_match(const struct fwnode_handle *fwnode,
>  			     const char *id, void *data)
>  {
> +	struct typec_mux_dev **mux_devs = data;
>  	struct device *dev;
> +	int i;
>  
>  	/*
>  	 * Device graph (OF graph) does not give any means to identify the
> @@ -291,6 +293,14 @@ static void *typec_mux_match(const struct fwnode_handle *fwnode,
>  	dev = class_find_device(&typec_mux_class, NULL, fwnode,
>  				mux_fwnode_match);
>  
> +	/* Skip duplicates */
> +	for (i = 0; i < TYPEC_MUX_MAX_DEVS; i++)
> +		if (to_typec_mux_dev(dev) == mux_devs[i]) {
> +			put_device(dev);
> +			return NULL;
> +		}
> +
> +
>  	return dev ? to_typec_mux_dev(dev) : ERR_PTR(-EPROBE_DEFER);
>  }
>  
> @@ -316,7 +326,8 @@ struct typec_mux *fwnode_typec_mux_get(struct fwnode_handle *fwnode)
>  		return ERR_PTR(-ENOMEM);
>  
>  	count = fwnode_connection_find_matches(fwnode, "mode-switch",
> -					       NULL, typec_mux_match,
> +					       (void **)mux_devs,
> +					       typec_mux_match,
>  					       (void **)mux_devs,
>  					       ARRAY_SIZE(mux_devs));
>  	if (count <= 0) {
> 
> -- 
> 2.51.0

-- 
heikki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
