From: Philippe CORNU <philippe.cornu@st.com>
Subject: Re: [Linux-stm32] [PATCH v8 08/10] drm: stm: dw-mipi-dsi: let the
 bridge handle the HW version check
Date: Fri, 29 May 2020 15:45:44 +0000
Message-ID: <4acc09e8-0610-01f6-b18d-3ffc390c45a3@st.com>
References: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
 <20200427081952.3536741-9-adrian.ratiu@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <20200427081952.3536741-9-adrian.ratiu@collabora.com>
Content-Language: en-US
Content-ID: <EB516333C6BA834A9DE9BB87A8FFBD44@st.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Adrian Ratiu <adrian.ratiu@collabora.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Heiko Stuebner <heiko@sntech.de>, Adrian Pop <pop.adrian61@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Yannick FERTRE <yannick.fertre@st.com>, Andrzej Hajda <a.hajda@samsung.com>, "linux-imx@nxp.com" <linux-imx@nxp.com>, "kernel@collabora.com" <kernel@collabora.com>, "linux-stm32@st-md-mailman.stormreply.com" <linux-stm32@st-md-mailman.stormreply.com>, Arnaud Ferraris <arnaud.ferraris@collabora.com>, Benjamin GAIGNARD <benjamin.gaignard@st.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Adrian,
and thank you very much for the patchset.
Thank you also for having tested it on STM32F769 and STM32MP1.
Sorry for the late response, Yannick and I will review it as soon as 
possible and we will keep you posted.
Note: Do not hesitate to put us in copy for the next version 
(philippe.cornu@st.com, yannick.fertre@st.com)
Regards,
Philippe :-)


On 4/27/20 10:19 AM, Adrian Ratiu wrote:
> The stm mipi-dsi platform driver added a version test in
> commit fa6251a747b7 ("drm/stm: dsi: check hardware version")
> so that HW revisions other than v1.3x get rejected. The rockchip
> driver had no such check and just assumed register layouts are
> v1.3x compatible.
> 
> Having such tests was a good idea because only v130/v131 layouts
> were supported at the time, however since adding multiple layout
> support in the bridge, the version is automatically checked for
> all drivers, compatible layouts get picked and unsupported HW is
> automatically rejected by the bridge, so there's no use keeping
> the test in the stm driver.
> 
> The main reason prompting this change is that the stm driver
> test immediately disabled the peripheral clock after reading
> the version, making the bridge read version 0x0 immediately
> after in its own probe(), so we move the clock disabling after
> the bridge does the version test.
> 
> Tested on STM32F769 and STM32MP1.
> 
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Reported-by: Adrian Pop <pop.adrian61@gmail.com>
> Tested-by: Adrian Pop <pop.adrian61@gmail.com>
> Tested-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
> New in v6.
> ---
>   drivers/gpu/drm/stm/dw_mipi_dsi-stm.c | 12 +++---------
>   1 file changed, 3 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> index 2e1f2664495d0..7218e405d7e2b 100644
> --- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> +++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> @@ -402,15 +402,6 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
>   		goto err_dsi_probe;
>   	}
>   
> -	dsi->hw_version = dsi_read(dsi, DSI_VERSION) & VERSION;
> -	clk_disable_unprepare(pclk);
> -
> -	if (dsi->hw_version != HWVER_130 && dsi->hw_version != HWVER_131) {
> -		ret = -ENODEV;
> -		DRM_ERROR("bad dsi hardware version\n");
> -		goto err_dsi_probe;
> -	}
> -
>   	dw_mipi_dsi_stm_plat_data.base = dsi->base;
>   	dw_mipi_dsi_stm_plat_data.priv_data = dsi;
>   
> @@ -423,6 +414,9 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
>   		goto err_dsi_probe;
>   	}
>   
> +	dsi->hw_version = dsi_read(dsi, DSI_VERSION) & VERSION;
> +	clk_disable_unprepare(pclk);
> +
>   	return 0;
>   
>   err_dsi_probe:
> 
