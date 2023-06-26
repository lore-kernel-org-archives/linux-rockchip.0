Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D87CAEB64D7
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jun 2023 08:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7lVxN84WS+a+cdSeJAcZuKPRw2/HNY6ROWm7XqYlqY=; b=DFI0BTpiuqKpAP
	sf+gh7a1GPJcrK3iKhY61gIfrNH4JoH+VNde6J/GxgBmqkoaEA4n4I/V5wBPTE62QwrXOdrStzNXS
	BwT30vDkcl8J4x3Glgzr1vs9JrD68ht/n7sGUpCABVnxz75vlF2+XWsXsC9fXNpZcSvKKae67UxlA
	MB2ik9fC+q631t0YOaNatS4nbh+hePibE/W5OupsKB2H8mCgT84N1Twze1gYkfe6Lyx963cEp1VQH
	xV7zQu1iYSQdAyjnHRUnCXdsJ7H/rmMjzeV6WT6pjBcVknldT5f+XX6UaQL7+5JiL2F4SX1WmohtQ
	uMEv+Vc8xpoom2eHk5YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDhgt-009eV4-2X;
	Mon, 26 Jun 2023 08:35:19 +0000
Received: from mga05.intel.com ([192.55.52.43])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDhgr-009eU0-1I
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Jun 2023 08:35:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1687768517; x=1719304517;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=8onuanaQNfRRRF00iDqDufDXkTnWdCag9mJHw4FNFiw=;
  b=W/LFSYzv7mHe6oVCOmpaNwsBXiQPKYqmr0Luzo5rTkbNHeWkWVxBgbQT
   YaH3GvqMGFCQMo84Y1hevgXS5jY+wFSvM2KCprKxjwrYf3Q1Pb+/zoIcl
   LrBNUP4vvIOK1pyyHPROMSflqO+2WR3my8LZhNBxtO46XtB9DRx9jnAjp
   chb7W5vUfcoYTHpz7bDEyMKieNmwgcKpvYjWFBfEvFdZANbOCikkR4sJh
   QKuVv239uSjQPeksbK34FRqI/Gz/iNOoFXl0Kdf5+Krjxqj/HR80SQF2w
   oWAaBkVm4l5BrWxiG5ZaphINh7s2jzFQf/bKfJO0CU0eauj2YCAVH6Akm
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="447595954"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; 
   d="scan'208";a="447595954"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jun 2023 01:35:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="860606274"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; 
   d="scan'208";a="860606274"
Received: from kuha.fi.intel.com ([10.237.72.185])
  by fmsmga001.fm.intel.com with SMTP; 26 Jun 2023 01:35:07 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Mon, 26 Jun 2023 11:35:06 +0300
Date: Mon, 26 Jun 2023 11:35:06 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Frank Wang <frank.wang@rock-chips.com>
Cc: linux@roeck-us.net, gregkh@linuxfoundation.org,
	sebastian.reichel@collabora.com, heiko@sntech.de,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, huangtao@rock-chips.com,
	william.wu@rock-chips.com, jianwei.zheng@rock-chips.com,
	yubing.zhang@rock-chips.com, wmc@rock-chips.com
Subject: Re: [v4,1/2] usb: typec: tcpm: fix cc role at port reset
Message-ID: <ZJlNupB/RUYOg74j@kuha.fi.intel.com>
References: <20230616075241.27690-1-frank.wang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230616075241.27690-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_013517_446900_63472E95 
X-CRM114-Status: GOOD (  16.93  )
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

On Fri, Jun 16, 2023 at 03:52:40PM +0800, Frank Wang wrote:
> In the current implementation, the tcpm set CC1/CC2 role to open when
> it do port reset would cause the VBUS removed by the Type-C partner.
> 
> This sets CC1/CC2 according to the default state of port to fix it.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>

Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

> ---
> Changelog:
> (no changes since v3)
> 
> v2:
>  - Make some tweaking based on the default state of port, commented by Guenter Roeck.
> 
> v1:
>  - https://patchwork.kernel.org/project/linux-usb/patch/20230313025843.17162-2-frank.wang@rock-chips.com/
> 
>  drivers/usb/typec/tcpm/tcpm.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
> index 3c6b0c8e2d3ae..9f6aaa3e70ca8 100644
> --- a/drivers/usb/typec/tcpm/tcpm.c
> +++ b/drivers/usb/typec/tcpm/tcpm.c
> @@ -4885,7 +4885,8 @@ static void run_state_machine(struct tcpm_port *port)
>  		break;
>  	case PORT_RESET:
>  		tcpm_reset_port(port);
> -		tcpm_set_cc(port, TYPEC_CC_OPEN);
> +		tcpm_set_cc(port, tcpm_default_state(port) == SNK_UNATTACHED ?
> +			    TYPEC_CC_RD : tcpm_rp_cc(port));
>  		tcpm_set_state(port, PORT_RESET_WAIT_OFF,
>  			       PD_T_ERROR_RECOVERY);
>  		break;

thanks,

-- 
heikki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
