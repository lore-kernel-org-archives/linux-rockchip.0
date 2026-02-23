Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50505EA4FCE
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Feb 2026 15:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=khaGnraBEYS0KLRt1RE9T3HyPAOLkSALQjUCE48lo5E=; b=LwbcwmaSu8lFO1
	wawcXat0jTFGwSZwvQ6bdpzBOOMapZR64p9exEzc0/225gSuaLKDkGTGoI7omnWNcP5ajrHHSoDtP
	nTy1OYaXSZTCooZrJTevryxM/eegh3T2IMXb0IuDMcNUTAiGzdw5HwVbfVhZgPCuSSRqpfnDxLztM
	j4ZvKWB0dQ0ZRoYEXC0dE2uE+JExvtZoVOKoRwYqjp3XbiTWtSuxAwiflw3eh6Lb0AABN8NVA2RiL
	lKY7r/JIGjNklw89MZHGVapB1uv9ZaD6wM++gw+Q/d8y0qfknBvAxCCxrmYIQplTaxh2cmBkbS2sT
	xMK0Rpz38wuUGpjNyOxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuXSX-00000000XiM-2uvD;
	Mon, 23 Feb 2026 15:02:53 +0000
Received: from mgamail.intel.com ([192.198.163.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuXSV-00000000XhR-0oXi
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Feb 2026 15:02:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771858971; x=1803394971;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=QM+dqiynOi+Uf03mvXlG1xZuAaKjus3L5huhW0c37Vs=;
  b=QuP7chNhG3/PODDh2stczYiQHYZulpS4+tzDuoIJP0F2SwRLagyVFwDB
   o0NZ17VqjRSPfnjKCWUmK+resfZNRt1FaDlhqohGGAxnov4zVnBatpZGM
   5sDo6O8de7L9NDpc0nBu5PAkgyz0ooY0c+Wrzd7KphZHgWhjT8XjtVZEN
   iT0wq3M5XWD0J/+fFq/6FvfJFIVvmxHms54vnYIgc5SMhin+D/7em3wOe
   zjuciP/+QSTNMIaRkjbvjAmbGUuAwOpyrG2X6VMfnEgGanPRvu1AjcV2S
   J72qoWoHSbVY/yjMaVwvwSZxf6kWWesTNpsvT3eQAtiYkFidyigrMlRf9
   A==;
X-CSE-ConnectionGUID: ozXZBKrJSwW6jdN/keMkXQ==
X-CSE-MsgGUID: sQEjhUGqRayG0myWAxfIwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="83566710"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; 
   d="scan'208";a="83566710"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Feb 2026 07:02:51 -0800
X-CSE-ConnectionGUID: ENQ8WgYoR5uOQqa4/RN/hQ==
X-CSE-MsgGUID: P12SQUAnR7avQGwwjG/n3Q==
X-ExtLoop1: 1
Received: from mdroper-mobl2.amr.corp.intel.com (HELO kuha) ([10.124.222.123])
  by fmviesa003.fm.intel.com with SMTP; 23 Feb 2026 07:02:48 -0800
Received: by kuha (sSMTP sendmail emulation); Mon, 23 Feb 2026 17:02:12 +0200
Date: Mon, 23 Feb 2026 17:02:12 +0200
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 2/2] usb: typec: mux: avoid duplicated mux switches
Message-ID: <aZxr9DBebcQfsQiP@kuha>
References: <20260213-typec-mux-duplication-fix-v1-0-70076a7c5691@collabora.com>
 <20260213-typec-mux-duplication-fix-v1-2-70076a7c5691@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260213-typec-mux-duplication-fix-v1-2-70076a7c5691@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_070251_241312_DDE2F397 
X-CRM114-Status: GOOD (  18.99  )
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

Fri, Feb 13, 2026 at 08:23:29PM +0100, Sebastian Reichel wrote:
> Some devices use combo PHYs (i.e. USB3 + DisplayPort), which also
> handle the lane muxing. These PHYs are referenced twice from
> the USB-C connector (USB super-speed lines and SBU/AUX lines)
> resulting in the mux being configured twice. Avoid this by
> dropping duplicates.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/usb/typec/mux.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/typec/mux.c b/drivers/usb/typec/mux.c
> index db35b7398343..6a394326f236 100644
> --- a/drivers/usb/typec/mux.c
> +++ b/drivers/usb/typec/mux.c
> @@ -309,9 +309,9 @@ struct typec_mux *fwnode_typec_mux_get(struct fwnode_handle *fwnode)
>  {
>  	struct typec_mux_dev *mux_devs[TYPEC_MUX_MAX_DEVS];
>  	struct typec_mux *mux;
> +	int i, j, k;
>  	int count;
>  	int err;
> -	int i;
>  
>  	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
>  	if (!mux)
> @@ -333,6 +333,18 @@ struct typec_mux *fwnode_typec_mux_get(struct fwnode_handle *fwnode)
>  		}
>  	}
>  
> +	/* eliminate duplicates */
> +	for (i = 0; i < count; i++) {
> +		for (j = i + 1; j < count; j++) {
> +			if (mux_devs[j] == mux_devs[i]) {
> +				put_device(&mux_devs[j]->dev);
> +				for (k = j; k < count; k++)
> +					mux_devs[k] = mux_devs[k+1];
> +				count--;
> +			}
> +		}
> +	}

The same should work here. My code snippets probable has to be
modified, but the idea should work. The check should be more simple to
do in typec_switch_match().

Br,

-- 
heikki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
