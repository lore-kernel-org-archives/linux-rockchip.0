From: Russell King - ARM Linux <linux@armlinux.org.uk>
Subject: Re: [PATCH 1/3] drm: bridge: synopsys/dw-hdmi: Enable cec clock
Date: Fri, 20 Oct 2017 09:12:04 +0100
Message-ID: <20171020081203.GD20805@n2100.armlinux.org.uk>
References: <20171013225337.5196-1-phh@phh.me>
 <20171013225337.5196-2-phh@phh.me>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20171013225337.5196-2-phh@phh.me>
Sender: linux-kernel-owner@vger.kernel.org
To: Pierre-Hugues Husson <phh@phh.me>
Cc: linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, heiko@sntech.de, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Sat, Oct 14, 2017 at 12:53:35AM +0200, Pierre-Hugues Husson wrote:
> @@ -2382,6 +2383,18 @@ __dw_hdmi_probe(struct platform_device *pdev,
>  		goto err_isfr;
>  	}
>  
> +	hdmi->cec_clk = devm_clk_get(hdmi->dev, "cec");
> +	if (IS_ERR(hdmi->cec_clk)) {
> +		hdmi->cec_clk = NULL;

What if devm_clk_get() returns EPROBE_DEFER?  Does that really mean the
clock does not exist?

-- 
RMK's Patch system: http://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 8.8Mbps down 630kbps up
According to speedtest.net: 8.21Mbps down 510kbps up
