Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 243B4C3ABCE
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Sep 2024 12:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P1+of2O2T7RSaY68HC9oClJ0EL0jyrnK8QJkd31qMgE=; b=WCIqLdH+zPefUw
	U26cHHoUT4L0VtxtFsQBoZu5sQEKyE/2kGXa0eLMOWbK4g+5a+qaFyXP11Sp7DiqPTUqGcO0CE9hS
	nNdiUf1QThx2pAqS513bX/psyO51toJrwM3SsAqIAb8W3b2a9UDpDCL7WMJegyXTxoIw9saWv0kHO
	8p6mhmo6aobWlrFZ7PDImuSa4njCxnjXcwO9T2S+AbtMjKgQz7PcPFv9SJI6Vg8BuG+fxS9OZ74xg
	1wP38BhSgXJzZLWF5e8/gBt7q59Ynx4GFyHPkaNZYpDWTZ3nrEbSBKnyrUJljMOuDsu5QEBMAVxrx
	EcOof/tQoPsy3xGaYk4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqAzB-000000040M7-1TZD;
	Mon, 16 Sep 2024 12:37:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqAz8-000000040La-1R3U
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Sep 2024 12:37:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=PLzXIHIxZWgoYaUEXDx3PwMb1pxlvF2RUqJddmVU4kw=; b=c+q5vCkowBNHuV4tex9LjcCmi3
	braWOndU5d3d00Sbzf6scWHTZovCzaCH9BqZ6jpSrDCkWu80S94KSRhj5EO3xOH525BRQktlOZNoC
	kTRy/bAQTAR8q8g+e0iqLSfUlRKX90ZIZZn95/4JdoplDQUcoaq11goen/MHt7B21MgtC+/XrieKX
	XK/GlB7DeK7TIRWv9hBWoJXtwCuGiEIMRLW9LrdtTf6sJPcWGLJjvCrnapooGyOmXa9EvGfsZaWM7
	7mbC4w99cOtVUW0mK7D0Z4bJhs3vEbYlOjTxNYZzBJu2XzDKE5axxXNjvgm/7cWrKJTSgu2BiY1iB
	n1jivncg==;
Received: from [83.68.141.146] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sqAyy-0000uk-5l; Mon, 16 Sep 2024 14:37:32 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
 =?ISO-8859-1?Q?Adri=E1n_Mart=EDnez?= Larumbe <adrian.larumbe@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH v1 5/6] pmdomain: rockchip: add regulator support
Date: Mon, 16 Sep 2024 14:37:31 +0200
Message-ID: <2197494.irdbgypaU6@phil>
In-Reply-To: <20240910180530.47194-6-sebastian.reichel@collabora.com>
References: <20240910180530.47194-1-sebastian.reichel@collabora.com>
 <20240910180530.47194-6-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_053742_461185_F9BCC989 
X-CRM114-Status: GOOD (  22.40  )
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

Am Dienstag, 10. September 2024, 19:57:14 CEST schrieb Sebastian Reichel:
> Some power domains require extra voltages to be applied. For example
> trying to enable the GPU domain on RK3588 fails when the SoC does not
> have VDD GPU enabled.
> 
> The solution to temporarily change the device's device tree node has
> been taken over from the Mediatek power domain driver.
> 
> The regulator is not acquired at probe time, since that creates circular
> dependencies. The power domain driver must be probed early, since SoC
> peripherals need it. Regulators on the other hand depend on SoC
> peripherals like SPI, I2C or GPIO.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/pmdomain/rockchip/pm-domains.c | 57 +++++++++++++++++++++++++-
>  1 file changed, 55 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index 663d390faaeb..ae6990897928 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -18,6 +18,7 @@
>  #include <linux/of_clk.h>
>  #include <linux/clk.h>
>  #include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
>  #include <linux/mfd/syscon.h>
>  #include <soc/rockchip/pm_domains.h>
>  #include <dt-bindings/power/px30-power.h>
> @@ -89,6 +90,8 @@ struct rockchip_pm_domain {
>  	u32 *qos_save_regs[MAX_QOS_REGS_NUM];
>  	int num_clks;
>  	struct clk_bulk_data *clks;
> +	struct device_node *node;
> +	struct regulator *supply;
>  };
>  
>  struct rockchip_pmu {
> @@ -571,18 +574,67 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
>  	return 0;
>  }
>  
> +static int rockchip_pd_regulator_disable(struct rockchip_pm_domain *pd)
> +{
> +	return pd->supply ? regulator_disable(pd->supply) : 0;
> +}
> +
> +

nit: double-empty line

other than that, this looks ok for the time being and as Sebastian
mentioned in Vienna, this also blocks actually testing
the Panthor-GPU driver right now.

So while we will likely convert to the hopefully soon existing
regulator stuff, this change is helpful for right now

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
