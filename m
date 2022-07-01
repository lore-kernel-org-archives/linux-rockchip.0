Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43513C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 07:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IV5ieleJx7tOlFjJRBAHFF1IZRxM46Z7vesAAINu7gM=; b=4m2di+nEXpdm08
	wseLt4vsFg++WYOktBbTTE/crQ7koWOuyGzIJxfZGNKrCY0Gbivb6x1sXZrT+WE2OzAg9ICmFOgHM
	bzGIX6Z0Hl+rBGD8wnT8q3b/Ra/7coZlyzGapxxJptl+tYvgYOfJonm397muq2xGxMKrGnozSyXQD
	kVHS+USoKsQ3me1KnHeQ3qmChoajht4voGruEFI/svuNdP0VOK4b1w+YyHxq6VAtELNoTK1aHpJqL
	w0MHOUIB0/1GSR/XyCQjgH8rFfhHQ54rWCSc+0mASlluYutv4/v99fC+wmSqsvKFqhKzVuhI9q+lG
	RD1wHM5b6ARH/kwgrDiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7B2v-003Oqy-9n; Fri, 01 Jul 2022 07:26:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7B2j-003Omb-SH; Fri, 01 Jul 2022 07:26:23 +0000
Received: from p508fd39e.dip0.t-ipconnect.de ([80.143.211.158] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o7B2S-0008DI-2C; Fri, 01 Jul 2022 09:26:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Judy Hsiao <judyhsiao@chromium.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Brian Norris <briannorris@chromium.org>, Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wenst@chromium.org>, alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Judy Hsiao <judyhsiao@chromium.org>
Subject: Re: [PATCH v1] FROMGIT: ASoC: rockchip: i2s: Fix error code when fail to read I2S_CLR
Date: Fri, 01 Jul 2022 09:26:03 +0200
Message-ID: <11057863.VV5PYv0bhD@phil>
In-Reply-To: <20220701021427.3120549-1-judyhsiao@chromium.org>
References: <20220701021427.3120549-1-judyhsiao@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_002621_954269_9BA88027 
X-CRM114-Status: GOOD (  17.11  )
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

Hi Judy,

Am Freitag, 1. Juli 2022, 04:14:27 CEST schrieb Judy Hsiao:
> Add the error code '-EBUSY' when fail to read I2S_CLR
> in rockchip_snd_rxctrl() and rockchip_snd_txctrl()
> 
> Fixes: 44f362c2cc6d ("ASoC: rockchip: i2s: switch BCLK to GPIO")
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>

those chromium-tags in patch subjects are not meant to go into
upstream submissions, so please drop the FROMGIT.

> ---
>  sound/soc/rockchip/rockchip_i2s.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
> index f783994cc16a..fd36c0bacc43 100644
> --- a/sound/soc/rockchip/rockchip_i2s.c
> +++ b/sound/soc/rockchip/rockchip_i2s.c
> @@ -171,6 +171,7 @@ static int rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
>  				retry--;
>  				if (!retry) {
>  					dev_warn(i2s->dev, "fail to clear\n");
> +					ret = -EBUSY;
>  					break;
>  				}
>  			}
> @@ -232,6 +233,7 @@ static int rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
>  				retry--;
>  				if (!retry) {
>  					dev_warn(i2s->dev, "fail to clear\n");
> +					ret = -EBUSY;
>  					break;
>  				}
>  			}
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
