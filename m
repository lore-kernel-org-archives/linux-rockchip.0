Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FCC7CA5FFF
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Oct 2026 09:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u5P4nxrqM1ogQwlJFtTKhUm3XBphRP0QbS7qLnutp/w=; b=dEeXBGzfuBeBt9
	/ia+M6wOaP+g5LZQD1D/bftYvvLhKwOy1K7hEXRHDw+VvJQ8Oi7z/ns/Fy7MTR5oQL/1gPIMZWxwS
	LrkB1dHK0fFVt6BSirtMRJjgk4X0i1+bCPUakmU8MES8b2ecc72+qTs2YZdkCo0IcKhIcPZ/lvz3d
	wd73aVixvXtkdbeeQmrj1u3/FRIRRk4Cgc/ebR8EUt5xjBwLMOUvISleXg+yvR7ckFsMSonBEpqWm
	Lydnp3lqa1x/IXmT41W3v7d88SjSOH+HDFYYUR1CYspDF+Av9Wme8D+HY/7cfgBc2BRBQVYk+WFAz
	9Z76lvDRdmFaFGiLh7Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xENaw-000000021Dk-1WIJ;
	Wed, 07 Oct 2026 09:05:50 +0000
Received: from out-1.mta1.migadu.com ([2001:41d0:203:375::1] helo=mta1.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xENat-000000021CB-3Rkf
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Oct 2026 09:05:49 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=KMH1zkny9ilMhYC1I0oOOb4b2JHCQIp99oDaje7LMqY=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1791363943; v=1; x=1791968743;
 b=FB5QDV34VdfLNUokk+LGm0ntL3HTSy7/jxtEhdDrIPtzgsQfsQgBhPVhwWWxaJKvcOblMG6U
 CEXep69VRW0ANvXlw8wiZd1q+v1Jv+OeNo3AIawShuJKfJqr6IarrRYQBbdYhSvwKpx1M2bLbAM
 k7L+r7kMZtqYcUmUgumiuJfVawRy1yblMAW8E3pdwALjQXQINEB4pWaDhdM0+IddZ739ol53eAW
 UaR6+gIMDCILSjAWtM2gVRdFA6WjEe4XXNMNS9e4Df3lkSsl5ZBQEk/qPAFNpKu5l74rM5cu1qK
 0xoyYfzkEl8veP28VNxLlw0XfhkMG5ii5ZqS74QAED1pA==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 15939383617e4296;
	Wed, 07 Oct 2026 09:05:18 +0000
X-Mizu-Trace-ID: 15939383617e4296
X-Migadu-Flow: FLOW_OUT
Mime-Version: 1.0
Date: Wed, 07 Oct 2026 11:05:13 +0200
Message-Id: <DLYHID2E4YBE.2HBQU3ZC3SAYZ@cknow-tech.com>
Cc: <kernel@collabora.com>, <dri-devel@lists.freedesktop.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, "Diederik de Haas"
 <diederik@cknow-tech.com>
Subject: Re: [PATCH v12 01/16] drm/bridge: dw-hdmi-qp: Demote i2c bus error
 messages to debug level
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>, "Sandy Huang"
 <hjc@rock-chips.com>, =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "Andy Yan" <andy.yan@rock-chips.com>, "Andrzej Hajda"
 <andrzej.hajda@intel.com>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Robert Foss" <rfoss@kernel.org>, "Laurent Pinchart"
 <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman" <jonas@kwiboo.se>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Luca Ceresoli"
 <luca.ceresoli@bootlin.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Algea Cao"
 <algea.cao@rock-chips.com>, "Daniel Stone" <daniels@collabora.com>
X-Mailer: aerc 0.22.0-31-g5c1c510d2b65
References: <20261005-dw-hdmi-qp-scramb-v12-0-195157ba0b40@collabora.com>
 <20261005-dw-hdmi-qp-scramb-v12-1-195157ba0b40@collabora.com>
In-Reply-To: <20261005-dw-hdmi-qp-scramb-v12-1-195157ba0b40@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_020547_998737_72785A1A 
X-CRM114-Status: GOOD (  20.45  )
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

Hi Cristian,

On Mon Oct 5, 2026 at 2:38 AM CEST, Cristian Ciocaltea wrote:
> A NACK or timeout on the DDC bus is a normal condition when the sink is
> absent or unpowered.  Some displays keep HPD asserted and the EDID
> EEPROM readable while in standby, but leave the SCDC slave unpowered.
> This results in i2c-related error messages on every boot during
> scrambling setup, even though the condition is handled gracefully and
> the SCDC configuration is restored on the next hotplug event.
>
> Log the i2c bus level failures with dev_dbg_ratelimited() instead,
> matching the silent behaviour of the non-QP dw-hdmi i2c bus algorithm.

I can confirm that with this patch I no longer see warnings like this:

  dwhdmiqp-rockchip fde80000.hdmi: i2c read error
  dwhdmiqp-rockchip fde80000.hdmi: i2c write nack!

When I add ``dw_hdmi_qp.dyndbg`` to the kernel command line, I do see
them at debug level.
This is when I boot up my NanoPC-T6 LTS connected to my 4K TV while it
is turned OFF.

When I boot up my NanoPC-T6 LTS connected to my 4K TV while it is
turned ON, dmesg is rather clean wrt dw_hdmi_qp both with and without
``dw_hdmi_qp.dyndbg`` in my kernel command line.

So it acts exactly as intended :-) Thus feel free to include my:

Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # NanoPC-T6 LTS

Thanks!

Cheers,
  Diederik

> The DDC users already report failures at the appropriate level, e.g. the
> SCDC helpers via drm_scdc_dbg().  This also makes the no-hpd special
> casing of the read path messages redundant, so drop it.
>
> Reported-by: Diederik de Haas <diederik@cknow-tech.com>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 16 ++++------------
>  1 file changed, 4 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> index c9568aea98dc..9abcea92b720 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> @@ -350,22 +350,14 @@ static int dw_hdmi_qp_i2c_read(struct dw_hdmi_qp *hdmi,
>  
>  		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
>  		if (!stat) {
> -			if (hdmi->no_hpd)
> -				dev_dbg_ratelimited(hdmi->dev,
> -						    "i2c read timed out\n");
> -			else
> -				dev_err(hdmi->dev, "i2c read timed out\n");
> +			dev_dbg_ratelimited(hdmi->dev, "i2c read timed out\n");
>  			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
>  			return -EAGAIN;
>  		}
>  
>  		/* Check for error condition on the bus */
>  		if (i2c->stat & I2CM_NACK_RCVD_IRQ) {
> -			if (hdmi->no_hpd)
> -				dev_dbg_ratelimited(hdmi->dev,
> -						    "i2c read error\n");
> -			else
> -				dev_err(hdmi->dev, "i2c read error\n");
> +			dev_dbg_ratelimited(hdmi->dev, "i2c read error\n");
>  			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
>  			return -EIO;
>  		}
> @@ -404,14 +396,14 @@ static int dw_hdmi_qp_i2c_write(struct dw_hdmi_qp *hdmi,
>  
>  		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
>  		if (!stat) {
> -			dev_err(hdmi->dev, "i2c write time out!\n");
> +			dev_dbg_ratelimited(hdmi->dev, "i2c write time out!\n");
>  			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
>  			return -EAGAIN;
>  		}
>  
>  		/* Check for error condition on the bus */
>  		if (i2c->stat & I2CM_NACK_RCVD_IRQ) {
> -			dev_err(hdmi->dev, "i2c write nack!\n");
> +			dev_dbg_ratelimited(hdmi->dev, "i2c write nack!\n");
>  			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
>  			return -EIO;
>  		}



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
