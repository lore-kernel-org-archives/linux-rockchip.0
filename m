Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E94BAEB64D7
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jun 2023 08:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EuCtcbR0rw97SQXxH6v7Ez+Dt3snefChtwOYQSp9hyY=; b=Loxu87iA1FPG1y
	x24wxUyZFZRUmi20PrDqilxkkT1Mh2ckffmWr7KChw5hIuwZv4wa5GVbtE/2DFYfnb25IZ9B2G8qw
	Zt1Dsr7oUFuOqHlkYAN9DNn1+nJ8orH4tEJ+DG2TJ7bFVnNhEkJ3/lhQ3p/rAnlFh4nXcAireA2CL
	+HkUo2+lpOesS5GmmeVEvJwgXPJK067p9tMISg08iYqyFbyz6mK28aXA/wNpOeAj+EpwN7Q56XYPF
	Z0FMOcZ6tIJEt5C8hmo1wVVklvN9xZlzdQt0336gDzDPKDkGvb7a9DmHIj76fmxVCq5L4T3tfDaj+
	sxbidGzx1GRinDgkml2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDhkb-009ekL-0C;
	Mon, 26 Jun 2023 08:39:09 +0000
Received: from mga05.intel.com ([192.55.52.43])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDhkY-009ejt-19
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Jun 2023 08:39:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1687768746; x=1719304746;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=G+bzOM4xppYQ3XDthN1Saehe84ye48XnjIYxuz/qNiA=;
  b=EqBVUeaeQekb2UfK6rpltBGAkCX6vwEwpqg7szRVXEHZRMTcv/VD5+3D
   zxBNUf6V6FrhkYUnRl2Ce4QfuY0BbwO1+P36tj1mqHiD/Z1T45dG+qFPo
   eqNOqlmMmG2McZjO9joxls9c0LC2Hi2HrMX6s5S0xZR96nWTmbGXGwG93
   Qdeb3w9c219nLg9orWowqHphJ6xPYJkCNJ53t0O7egKrAVMnAv78pKyua
   gxhHK1xOEsrJuUnhRmPozXij+hxG0FOVStWjW1tEsALpnFXp8J929OTLE
   f58Y9EzkxpytT1nkx7x5KbcEMzQrijlewnIehnE9ooafk4YOWGDyzMwrm
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="447596762"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; 
   d="scan'208";a="447596762"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jun 2023 01:39:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="860607441"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; 
   d="scan'208";a="860607441"
Received: from kuha.fi.intel.com ([10.237.72.185])
  by fmsmga001.fm.intel.com with SMTP; 26 Jun 2023 01:39:01 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Mon, 26 Jun 2023 11:39:01 +0300
Date: Mon, 26 Jun 2023 11:39:01 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Frank Wang <frank.wang@rock-chips.com>
Cc: linux@roeck-us.net, gregkh@linuxfoundation.org,
	sebastian.reichel@collabora.com, heiko@sntech.de,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, huangtao@rock-chips.com,
	william.wu@rock-chips.com, jianwei.zheng@rock-chips.com,
	yubing.zhang@rock-chips.com, wmc@rock-chips.com
Subject: Re: [v4,2/2] usb: typec: tcpm: add get max power support
Message-ID: <ZJlOpQtxNiSvmlR/@kuha.fi.intel.com>
References: <20230616075241.27690-1-frank.wang@rock-chips.com>
 <20230616075241.27690-2-frank.wang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230616075241.27690-2-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_013906_446977_E28D159D 
X-CRM114-Status: GOOD (  21.03  )
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

On Fri, Jun 16, 2023 at 03:52:41PM +0800, Frank Wang wrote:
> Traverse fixed pdos to calculate the maximum power that the charger
> can provide, and it can be get by POWER_SUPPLY_PROP_INPUT_POWER_LIMIT
> property.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>

Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

> ---
> Changelog:
> v4:
>  - No change
> 
> v3:
>  - Use Microwatts instead of Milliwatts to follow the ABI, commented by Sebastian Reichel.
> 
> v2:
>  - No change
> 
> v1:
>  - https://patchwork.kernel.org/project/linux-usb/patch/20230313025843.17162-4-frank.wang@rock-chips.com/
> 
>  drivers/usb/typec/tcpm/tcpm.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
> index 9f6aaa3e70ca8..829d75ebab422 100644
> --- a/drivers/usb/typec/tcpm/tcpm.c
> +++ b/drivers/usb/typec/tcpm/tcpm.c
> @@ -6340,6 +6340,27 @@ static int tcpm_psy_get_current_now(struct tcpm_port *port,
>  	return 0;
>  }
>  
> +static int tcpm_psy_get_input_power_limit(struct tcpm_port *port,
> +					  union power_supply_propval *val)
> +{
> +	unsigned int src_mv, src_ma, max_src_uw = 0;
> +	unsigned int i, tmp;
> +
> +	for (i = 0; i < port->nr_source_caps; i++) {
> +		u32 pdo = port->source_caps[i];
> +
> +		if (pdo_type(pdo) == PDO_TYPE_FIXED) {
> +			src_mv = pdo_fixed_voltage(pdo);
> +			src_ma = pdo_max_current(pdo);
> +			tmp = src_mv * src_ma;
> +			max_src_uw = tmp > max_src_uw ? tmp : max_src_uw;
> +		}
> +	}
> +
> +	val->intval = max_src_uw;
> +	return 0;
> +}
> +
>  static int tcpm_psy_get_prop(struct power_supply *psy,
>  			     enum power_supply_property psp,
>  			     union power_supply_propval *val)
> @@ -6369,6 +6390,9 @@ static int tcpm_psy_get_prop(struct power_supply *psy,
>  	case POWER_SUPPLY_PROP_CURRENT_NOW:
>  		ret = tcpm_psy_get_current_now(port, val);
>  		break;
> +	case POWER_SUPPLY_PROP_INPUT_POWER_LIMIT:
> +		tcpm_psy_get_input_power_limit(port, val);
> +		break;
>  	default:
>  		ret = -EINVAL;
>  		break;
> -- 
> 2.17.1

-- 
heikki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
