Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49231E77188
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jan 2025 11:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LxaTZI9H3lnyIvDkUUuidkMZ/rZEqUvYCrOg2y/pP/8=; b=LDA9LXM+N1/Qpk
	LT01U0dIA1JGC7EgIQneFYxSsL0vyCBT8/H4oJafv48zn1mV/u1TIP5EqlANNBlPdERiPs3l+WzRy
	riFpcTgjeBcCh5Qb+aJ15txkfCAqfSbcijby1VEHRJiVauV3O8x4qsI2CMXxdzUL9KkbctRVNix6c
	D9NN/9+IiXdpDmY6bjs25mv/bQ8Bb3TSRXLIdlQ6a9rjwpseKkcCnw8P67UKOTkP0A7Lo1wn3diCu
	GrEzpk6oCzZnX++RkmWBdoHr92zQYR8R7kBWYhrV9NsxUgmQUOjGsN3b7G8Fw0AJ/Pa0heQte4MOz
	aNg3JSieiUteUywX7O5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTJqD-0000000AImj-1fBO;
	Thu, 02 Jan 2025 11:58:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTJp1-0000000AIe3-3BAr;
	Thu, 02 Jan 2025 11:57:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=j9BRYqtU1/upqh8/+Oi84LPuS1gHyWF/MWynsZDnmsI=; b=YIeI3qCH5MGj7bJGccxx3mZoYZ
	tyrZ+UeWV1Yz1LAvt0YJLRqpxWMflvnA9fEWguGwPda7GTs4zUt+waTidGWxa1hYWmZnRyWvXbsmG
	ybecqROk8igzdkLkShtoNPGwCnqjcZvIAOD2SMrND5QKmjFCXCxMQSYDXTt1vq5pumbeWbTWN9DjZ
	A91+2EwTPjnT0meDoGRe0Gq6vMIPCoK6axxlSUXYOLtNXpbrQPK0ps029ffIW13hc5lSMUXnb+/6e
	puxeAU7lbZ/kGCjrQLkFgJOEj4T7EbOyD4EsUQ0KZKcbzflN+eJ2s8G5M4PqgTf1OmZgTrumrY6rn
	M5UQx5Kg==;
Received: from i5e860d14.versanet.de ([94.134.13.20] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tTJou-0007jf-8O; Thu, 02 Jan 2025 12:56:56 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>,
 Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH 3/3] drm/rockchip: Add basic RK3576 HDMI output support
Date: Thu, 02 Jan 2025 12:56:55 +0100
Message-ID: <15367137.tv2OnDr8pf@diego>
In-Reply-To: <20241225103741.364597-4-andyshrk@163.com>
References: <20241225103741.364597-1-andyshrk@163.com>
 <20241225103741.364597-4-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250102_035703_804117_68371729 
X-CRM114-Status: GOOD (  21.27  )
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
Cc: devicetree@vger.kernel.org, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, mripard@kernel.org, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 25. Dezember 2024, 11:37:31 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The HDMI on RK3576 shares the same IP block (PHY and Controller)
> with rk3588.
> However, there are some control bits scattered in different GRF.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> Tested-by: Detlev Casanova <detlev.casanova@collabora.com>

The attribution is strange. Where does the Signed-off from Detlev come
from?

At that position it would mean that he's the sender, but that's obviously
not the case.

I guess it's either just the Tested-by ... or you need an additional
Co-Developed-by if Detlev contributed to this patch.


> ---
> 
>  .../gpu/drm/rockchip/dw_hdmi_qp-rockchip.c    | 143 +++++++++++++++++-
>  1 file changed, 141 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> index b21e868e7c16..bd9216e45e74 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
[...]
> @@ -287,8 +422,12 @@ static const struct rockchip_hdmi_qp_cfg rk3588_hdmi_cfg = {
>  };
>  
>  static const struct of_device_id dw_hdmi_qp_rockchip_dt_ids[] = {
> -	{ .compatible = "rockchip,rk3588-dw-hdmi-qp",
> -	  .data = &rk3588_hdmi_cfg },
> +	{ .compatible = "rockchip,rk3576-dw-hdmi-qp",
> +	  .data = &rk3576_hdmi_cfg
> +	}, {
> +	  .compatible = "rockchip,rk3588-dw-hdmi-qp",
> +	  .data = &rk3588_hdmi_cfg
> +	},

nit: please keep consistent styling between the listentries. Right now the
rk3576 and changed rk3588 entries use different styles.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
