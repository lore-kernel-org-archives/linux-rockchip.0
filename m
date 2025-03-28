Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AD61C36010
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Mar 2025 08:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pNe7NOkVXic5oAC0BmzFuZnwXG6yrSqaYn2xXKhNnqc=; b=Us0qfY6h/orioy
	8UMA+AMwPjNMitVfbTwRLBAVftIQpOp/a2611tk7pLc/vecSejyIIgLkcS7c7I+sXfy7yccZ1HGK9
	PsrGtuw+/hsfs2witNiLjStQctrOU09WGj4TbRORQ2IlGdDH9jjZwnt3kQ2yiDfgvhblAM9IQmTqI
	d8RDGycYA7ORimTDgsQf2bueMK+4O64jSFPW3rRhCi2CyJNhOQ12s8ztxirGRfH8TyWRjIsWwvQ0i
	4mO+Xwt6etF0zYB/Ft++ut2OPgv93KE4ubhY3Ah1BrxW78Wv2xLqi0uqazUxWZ155XwejfM9eJZ31
	9sv7TdqAoaqLpWhSjNuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty4xU-0000000CtwK-1WBk;
	Fri, 28 Mar 2025 08:20:56 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty4vk-0000000CtfA-1ZO3;
	Fri, 28 Mar 2025 08:19:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2C9F9614B5;
	Fri, 28 Mar 2025 08:19:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60D4AC4CEE4;
	Fri, 28 Mar 2025 08:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743149947;
	bh=eXkyQAmWLQhgbflGuE6/2roWByAJGJzRKnWkxqKXpr0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qG3GtZtnCFsiKLE21GDIQj94MikZUdLpBnmZDeoZNnTD4vf6OZTlRrVb/NtZAe/TW
	 xMQySvO4HGCmmIA/+2e6Yyf97jRCGtfxzaFD9JfBBdqMCSHugcNjRSf0k0pMeWNgkh
	 JIlDAfdbTjEMPggbhusLn7HjPZRbb9ZyDaSM9gNN1uHaer1mVDimaxp4XXvlg9DaQN
	 8A9hMhvqSYBg39PkGF82aQkFCwKwLe8JRmwdXBGyenkYje5d/VayiU2KFIO1pOGS0P
	 6taEZ0fWLi6pnQqARE7alhTwPZKLy55U8x0/sD7ZVfQmljHmIx4+JjPZQI+p0rSACc
	 ps4zNQAIpwVfw==
Date: Fri, 28 Mar 2025 09:19:03 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Cc: Matthias Kaehlcke <mka@chromium.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Benjamin Bara <benjamin.bara@skidata.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Klaus Goger <klaus.goger@theobroma-systems.com>, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, quentin.schulz@cherry.de, stable@vger.kernel.org
Subject: Re: [PATCH 1/5] usb: misc: onboard_usb_dev: fix support for Cypress
 HX3 hubs
Message-ID: <20250328-holistic-feathered-guppy-5bac92@krzk-bin>
References: <20250326-onboard_usb_dev-v1-0-a4b0a5d1b32c@thaumatec.com>
 <20250326-onboard_usb_dev-v1-1-a4b0a5d1b32c@thaumatec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250326-onboard_usb_dev-v1-1-a4b0a5d1b32c@thaumatec.com>
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

On Wed, Mar 26, 2025 at 05:22:56PM +0100, Lukasz Czechowski wrote:
> diff --git a/drivers/usb/misc/onboard_usb_dev.h b/drivers/usb/misc/onboard_usb_dev.h
> index 317b3eb99c02..17696f7c5e43 100644
> --- a/drivers/usb/misc/onboard_usb_dev.h
> +++ b/drivers/usb/misc/onboard_usb_dev.h
> @@ -104,8 +104,14 @@ static const struct of_device_id onboard_dev_match[] = {
>  	{ .compatible = "usb451,8027", .data = &ti_tusb8020b_data, },
>  	{ .compatible = "usb451,8140", .data = &ti_tusb8041_data, },
>  	{ .compatible = "usb451,8142", .data = &ti_tusb8041_data, },
> +	{ .compatible = "usb4b4,6500", .data = &cypress_hx3_data, },
> +	{ .compatible = "usb4b4,6502", .data = &cypress_hx3_data, },
> +	{ .compatible = "usb4b4,6503", .data = &cypress_hx3_data, },
>  	{ .compatible = "usb4b4,6504", .data = &cypress_hx3_data, },
>  	{ .compatible = "usb4b4,6506", .data = &cypress_hx3_data, },
> +	{ .compatible = "usb4b4,6507", .data = &cypress_hx3_data, },
> +	{ .compatible = "usb4b4,6508", .data = &cypress_hx3_data, },

Why are you adding so many entries? Same entry is a strong sign these
are compatible.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
