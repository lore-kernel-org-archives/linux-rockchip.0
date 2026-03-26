Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAB84109E52B
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Mar 2026 01:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bd243dzBB3JYw9u6YxAgo9ZIOzCchJkxaov0DRYRqpU=; b=LfscItF5IBoR9w
	2MpQsXOmvx7k5qhzNFvQKzGTRQ/cnYqq3m49N92cwgKXgJnG/AH35Nndewmf3ODZs4XApL/M4DNq0
	mfIO0nRO48pF3aGPCm+E0BJUIVjzy0QCJDQmdpE3yQR5Omlr6oG+E2vTTNq8bUsWzyoQAqnMUK8+m
	dAGP3pHbxU3gz4XWAgtvUxYRQhfLraKWXrxQN1HiVky2IM5FofKNREYLugwI5yH9b+hK8jmwaE5UO
	Fpo5Ja5V6iRZ50h2NekhwYXdnAHP1W/xkWQoGEkp4leBmeXkSIWBXMKnYs1oBAx7w5wIdEVBw6Gy4
	GlLNSRs9PdgBlnQ6ifPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5ZDQ-00000004VFk-48nK;
	Thu, 26 Mar 2026 01:08:53 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5ZDN-00000004VEr-2bLJ;
	Thu, 26 Mar 2026 01:08:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=HZk9cX6zPb++VDwxFCjztWsZ6cPWXsFQhOd6PIpC+jg=; b=3k+TjSE4T5siYJvmjf+q67z7Bo
	blgq/01N77awBnx7m8dxKS+XWCjvcdDITItvnD/oPHPgdpnl/fYTwqn9SZnLpumvD+4pQ9MuXPyJz
	LLcgWn8WmSKGBEQCaDnMeONlaYVoPwlRLHNuJiDEDQk8r41BKPWSIExdHBN5qyXIf2iA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1w5ZD0-00DNsG-6i; Thu, 26 Mar 2026 02:08:26 +0100
Date: Thu, 26 Mar 2026 02:08:26 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Vinod Koul <vkoul@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
	Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Christophe Roullier <christophe.roullier@foss.st.com>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Radu Rendec <rrendec@redhat.com>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	Drew Fustini <dfustini@tenstorrent.com>,
	linux-sunxi@lists.linux.dev, linux-amlogic@lists.infradead.org,
	linux-mips@vger.kernel.org, imx@lists.linux.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH net-next v9 2/6] net: stmmac: qcom-ethqos: use generic
 device properties
Message-ID: <409265d8-532a-44d4-abc6-02ac5a19d286@lunn.ch>
References: <20260316-qcom-sa8255p-emac-v9-0-c58934e76ff2@oss.qualcomm.com>
 <20260316-qcom-sa8255p-emac-v9-2-c58934e76ff2@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260316-qcom-sa8255p-emac-v9-2-c58934e76ff2@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_180849_682894_2FE290AE 
X-CRM114-Status: GOOD (  17.19  )
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

On Mon, Mar 16, 2026 at 01:05:07PM +0100, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> In order to drop the dependency on CONFIG_OF, convert all device property
> getters from OF-specific to generic device properties and stop pulling
> in any linux/of.h symbols.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> ---
>  drivers/net/ethernet/stmicro/stmmac/Kconfig             | 2 +-
>  drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 9 ++++-----
>  2 files changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/Kconfig b/drivers/net/ethernet/stmicro/stmmac/Kconfig
> index 07088d03dbab5bd1abf66e9460613b839c1d565e..e2af4fdd654340d618477ed87d3889dbb9aab456 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/Kconfig
> +++ b/drivers/net/ethernet/stmicro/stmmac/Kconfig
> @@ -135,7 +135,7 @@ config DWMAC_MESON
>  config DWMAC_QCOM_ETHQOS
>  	tristate "Qualcomm ETHQOS support"
>  	default ARCH_QCOM
> -	depends on OF && (ARCH_QCOM || COMPILE_TEST)
> +	depends on ARCH_QCOM || COMPILE_TEST
>  	help
>  	  Support for the Qualcomm ETHQOS core.

Are you sure you want to do that?

static int qcom_ethqos_probe(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	const struct ethqos_emac_driver_data *data;
	struct plat_stmmacenet_data *plat_dat;
	struct stmmac_resources stmmac_res;
	struct device *dev = &pdev->dev;
	struct qcom_ethqos *ethqos;
	int ret, i;

	ret = stmmac_get_platform_resources(pdev, &stmmac_res);
	if (ret)
		return dev_err_probe(dev, ret,
				     "Failed to get platform resources\n");

	plat_dat = devm_stmmac_probe_config_dt(pdev, stmmac_res.mac);
	if (IS_ERR(plat_dat)) {
		return dev_err_probe(dev, PTR_ERR(plat_dat),
				     "dt configuration failed\n");
	}

https://elixir.bootlin.com/linux/v6.19.9/source/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c#L684


#else
struct plat_stmmacenet_data *
devm_stmmac_probe_config_dt(struct platform_device *pdev, u8 *mac)
{
	return ERR_PTR(-EINVAL);
}
#endif /* CONFIG_OF */

It seems like this is just going to result in the probe failing with
-EINVAL.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
