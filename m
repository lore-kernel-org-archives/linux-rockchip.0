Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6BC7C74A5B
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Mar 2023 11:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZzuKqh46YAamYWDqX4rETnWmDJLcu8fFNoJ8qyZ78rk=; b=bHzO+QHhoZZ42G
	MZj5fWNRPC925VTRfeAenh2Qae4o99Zi7sizTwThBtBlJ++xoWZKUHSn2NCwvZeVbxuBWLMdO/Efb
	UERIyvfwfyQggZPDmUZGEvven6h/6+U21DSwc2YUCrMalaM44sd7gVUB8rdQqseyq6o6f5eagL0RU
	HOqKASPx1r/iWMMvIhMK8CIKZZuoPQ7UBowvxXq6ccWXzbjzfQvGnRFLRD4ztUIi5/coS6E+leMSz
	7lu7D9L2KZqGVgNXfjdio82G2nhQoKwWS5CRA8JwVDofMDduUSx/5QRkVD7u+CpZdDV1fWKkcr52/
	KkbPgKLuxF08isa/S8Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pd8Ey-0023Jq-3D;
	Fri, 17 Mar 2023 11:27:21 +0000
Received: from mga05.intel.com ([192.55.52.43])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pd8Ew-0023J7-2E
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Mar 2023 11:27:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679052438; x=1710588438;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=oXEH4raOHe9XIYNL/oWXWLkQeWwzTTJBZIKfeP18xtk=;
  b=gI1+9dHmc2vdSWCtxW/+g7P/+WW3RH8PZ3QyzS1yd4yUFz1M2MRxbTbv
   BTH6CllwlIHp7HpQ1L7LG4KmRwd0WfpO3z2LAvJfx90mdqa06A6Q5CM+G
   BA8anuYzixCDjdvwtjEwcKCILky7BkjmjzR8UHE1C3zWqYm2RAYhvkStV
   /42cW6ZJ8wu3UVnG1SYgBKVmkH4+cRao6EH5c1TcGcbINtqNPhMSSF+eQ
   nslCTBs5U3k6ULH2AzmC+myGdKfQx2v5EuIApFb+GKvs7z2+EaLvvohrE
   cgDnqaJALBD93XVwv3jvbZArL++GxxMuFxZdh1SIWxbdO7Or+xNiwrMST
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="424511527"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; 
   d="scan'208";a="424511527"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2023 04:27:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="823638782"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; 
   d="scan'208";a="823638782"
Received: from kuha.fi.intel.com ([10.237.72.185])
  by fmsmga001.fm.intel.com with SMTP; 17 Mar 2023 04:27:14 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Fri, 17 Mar 2023 13:27:13 +0200
Date: Fri, 17 Mar 2023 13:27:13 +0200
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Frank Wang <frank.wang@rock-chips.com>
Cc: linux@roeck-us.net, gregkh@linuxfoundation.org, heiko@sntech.de,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, huangtao@rock-chips.com,
	william.wu@rock-chips.com, jianwei.zheng@rock-chips.com,
	yubing.zhang@rock-chips.com, wmc@rock-chips.com
Subject: Re: [PATCH v2] usb: typec: tcpm: fix multiple times discover svids
 error
Message-ID: <ZBROkdOFAP4GPPU6@kuha.fi.intel.com>
References: <20230316081149.24519-1-frank.wang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230316081149.24519-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230317_042718_738327_A90C7962 
X-CRM114-Status: GOOD (  21.57  )
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

On Thu, Mar 16, 2023 at 04:11:49PM +0800, Frank Wang wrote:
> PD3.0 Spec 6.4.4.3.2 say that only Responder supports 12 or more SVIDs,
> the Discover SVIDs Command Shall be executed multiple times until a
> Discover SVIDs VDO is returned ending either with a SVID value of
> 0x0000 in the last part of the last VDO or with a VDO containing two
> SVIDs with values of 0x0000.
> 
> In the current implementation, if the last VDO does not find that the
> Discover SVIDs Command would be executed multiple times even if the
> Responder SVIDs are less than 12, and we found some odd dockers just
> meet this case. So fix it.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
>  drivers/usb/typec/tcpm/tcpm.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
> index 66de02a56f512..a3ae2c79f3540 100644
> --- a/drivers/usb/typec/tcpm/tcpm.c
> +++ b/drivers/usb/typec/tcpm/tcpm.c
> @@ -1515,7 +1515,21 @@ static bool svdm_consume_svids(struct tcpm_port *port, const u32 *p, int cnt)
>  		pmdata->svids[pmdata->nsvids++] = svid;
>  		tcpm_log(port, "SVID %d: 0x%x", pmdata->nsvids, svid);
>  	}
> -	return true;
> +
> +	/*
> +	 * PD3.0 Spec 6.4.4.3.2: The SVIDs are returned 2 per VDO (see Table
> +	 * 6-43), and can be returned maximum 6 VDOs per response (see Figure
> +	 * 6-19). If the Respondersupports 12 or more SVID then the Discover
> +	 * SVIDs Command Shall be executed multiple times until a Discover
> +	 * SVIDs VDO is returned ending either with a SVID value of 0x0000 in
> +	 * the last part of the last VDO or with a VDO containing two SVIDs
> +	 * with values of 0x0000.
> +	 *
> +	 * However, some odd dockers support SVIDs less than 12 but without
> +	 * 0x0000 in the last VDO, so we need to break the Discover SVIDs
> +	 * request and return false here.
> +	 */
> +	return cnt == 7;
>  abort:
>  	tcpm_log(port, "SVID_DISCOVERY_MAX(%d) too low!", SVID_DISCOVERY_MAX);
>  	return false;

This is OK by men, but let's wait for Guenter.

thanks,

-- 
heikki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
