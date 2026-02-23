Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD438EA4FC7
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Feb 2026 14:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hIHhdkVsxw8Cq0Ru/A2PaOwRfRYtM+/RWmwmcXrwxT4=; b=jPCi8up0e6dcao
	gSb07dg9HSHBFPj7u0/sy0ogD74FTCxEmdnYB8HLCAamKyqpUeApRub3sa0ZgPgUb0CWQ1YJdFjkS
	OC2yBj+nMiL4yTIqfykHktm9KgSs7dpzre8ijY3nbvOp+r8q+QdPTU18QL4JzMInuLf5BnWTZQ482
	7q3M4+CJK0Z3Kh6dvBSxk/eCqQrHFS7eD4vHZ/mNqbiU2LXSfCaPsiPUNjjnU178YWhiRXXo9KP3t
	GDs53SQVuHjnV3Z6sBjz5xMokXGdTGDkFNtP55qPh0eIvsSBtXGOxMR5HigYKCUV+aBT4Kl7iP/K5
	lr4yCyDDoDYhqRXLPCxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuXLJ-00000000VVU-1heF;
	Mon, 23 Feb 2026 14:55:25 +0000
Received: from mgamail.intel.com ([198.175.65.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuXLH-00000000VUn-38pY
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Feb 2026 14:55:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771858522; x=1803394522;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=5IbrP43YuwUMRwawyvo7eC4LnK4C/CdOF8gk03etGpw=;
  b=PrMxQk1Dz2BaNA+tuh2hBuDFSbZvbWQLDj4/UY+ucT/IQhe92PKLVWNk
   j66vbB33xtquG4jBTpPNLeF1CfQud3t12Hc4wF5IKDWPVZpfYcxTRnKHZ
   X38UTEK7uo1b5XGmz+ENBoUpEu34OfUOTJzgu4gB7JVYQoPT8ds/I6WCZ
   YH8sNDoRPL7NJUh6uOKeRHpCesfzyl+r0zs72RBRBvkxcIgv7gvzyiq3W
   uKuFBqWG4uBj7qolDhD9Ol8cFw0yXhljYxzmutxH9mz1TVTBxbEXyywiH
   G5T7NmM/2LORqIU/Movhnq597WUbeQoyG/jVqvs0cSmk5auRU2qv6E65R
   A==;
X-CSE-ConnectionGUID: Ymm/PvX9RLeSIJnMLS+Dqg==
X-CSE-MsgGUID: chxQXYQHSP2BRRXSbqsQAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="90261323"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; 
   d="scan'208";a="90261323"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Feb 2026 06:55:21 -0800
X-CSE-ConnectionGUID: QGgQYAeuRXC9C/lsAvv2XQ==
X-CSE-MsgGUID: QTmotb0FQC+7y4arImpo1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; 
   d="scan'208";a="253306556"
Received: from mdroper-mobl2.amr.corp.intel.com (HELO kuha) ([10.124.222.123])
  by orviesa001.jf.intel.com with SMTP; 23 Feb 2026 06:55:19 -0800
Received: by kuha (sSMTP sendmail emulation); Mon, 23 Feb 2026 16:54:44 +0200
Date: Mon, 23 Feb 2026 16:54:44 +0200
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 1/2] usb: typec: mux: avoid duplicated orientation
 switches
Message-ID: <aZxqNJCsUMaBlMmB@kuha>
References: <20260213-typec-mux-duplication-fix-v1-0-70076a7c5691@collabora.com>
 <20260213-typec-mux-duplication-fix-v1-1-70076a7c5691@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260213-typec-mux-duplication-fix-v1-1-70076a7c5691@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_065523_831581_D5BCA73E 
X-CRM114-Status: GOOD (  20.98  )
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

Hi Sebastian,

Fri, Feb 13, 2026 at 08:23:28PM +0100, Sebastian Reichel wrote:
> Some devices use combo PHYs (i.e. USB3 + DisplayPort), which also
> handle the orientation mux. These PHYs are referenced twice from
> the USB-C connector (USB super-speed lines and SBU/AUX lines)
> resulting in the switch being configured twice. Avoid this by
> dropping duplicates.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/usb/typec/mux.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/typec/mux.c b/drivers/usb/typec/mux.c
> index 182c902c42f6..db35b7398343 100644
> --- a/drivers/usb/typec/mux.c
> +++ b/drivers/usb/typec/mux.c
> @@ -72,9 +72,9 @@ struct typec_switch *fwnode_typec_switch_get(struct fwnode_handle *fwnode)
>  {
>  	struct typec_switch_dev *sw_devs[TYPEC_MUX_MAX_DEVS];
>  	struct typec_switch *sw;
> +	int i, j, k;
>  	int count;
>  	int err;
> -	int i;
>  
>  	sw = kzalloc(sizeof(*sw), GFP_KERNEL);
>  	if (!sw)
> @@ -96,6 +96,18 @@ struct typec_switch *fwnode_typec_switch_get(struct fwnode_handle *fwnode)
>  		}
>  	}
>  
> +	/* eliminate duplicates */
> +	for (i = 0; i < count; i++) {
> +		for (j = i + 1; j < count; j++) {
> +			if (sw_devs[j] == sw_devs[i]) {
> +				put_device(&sw_devs[j]->dev);
> +				for (k = j; k < count; k++)
> +					sw_devs[k] = sw_devs[k+1];
> +				count--;
> +			}
> +		}
> +	}

I think that check could be done in typec_switch_match(). Just pass
that sw_devs to it as "data":

        -        count = fwnode_connection_find_matches(fwnode, "orientation-switch", NULL,
        +        count = fwnode_connection_find_matches(fwnode, "orientation-switch", sw_devs,

And then in typec_switch_match(), probable as the second last step:

         static void *typec_switch_match(const struct fwnode_handle *fwnode,
                                         const char *id, void *data)
         {
        +       struct typec_switch_dev *sw_devs = data;
        +       int i;
                ...
                dev = class_find_device(&typec_mux_class, NULL, fwnode,
                                        switch_fwnode_match);

        +	/* Skip duplicates */
        +       for (i = 0; i < TYPEC_MUX_MAX_DEVS; i++)
        +               if (to_typec_switch_dev(dev) == sw_devs[i]) {
        +                       put_device(dev);
        +                       return NULL;
        +               }

                return dev ? to_typec_switch_dev(dev) : ERR_PTR(-EPROBE_DEFER);
         }

thanks,

-- 
heikki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
