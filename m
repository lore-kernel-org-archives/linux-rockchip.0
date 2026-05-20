Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F29ECCD5BA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 May 2026 18:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZS0YfCMJYLhE6yVYvk5FZjtaX0VXN2qJODG+p1TTkk=; b=JtI6rHcJp21+JD
	dXYFHAjYFS/D3tp08u2bCvTD9QFdiVf9kKvI5f1AmaziGAMNiNwZchybX6T6LvkhzkmdNDCo6pwlw
	0bGTzaXuWeT6DxkYyAwffEvOd4GUbUvUE3eVDxC/ehTFfhU9UgbmIucc8+iDgNAC/9I0d74Sinlmv
	bCWnhvVYckbCu2VlpL+R5LgA36mxozYBnniDQHwzWstVJTY0VkwI9SE0retG26F+SZpF7VrlCHBEz
	dTKcS8se4R1zYn5llm3f3Rg3N2S+WJJD55SwizElLUxDyJTTXJI4Gh5GfC7tlPKjpE+soWi+EK+rK
	1xO/HkxwNXDYTYK4cjmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPla4-00000005R0v-2JMr;
	Wed, 20 May 2026 18:23:46 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPla1-00000005R0K-2Y6G
	for linux-rockchip@lists.infradead.org;
	Wed, 20 May 2026 18:23:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 05883444C6;
	Wed, 20 May 2026 18:23:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBB741F00894;
	Wed, 20 May 2026 18:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779301420;
	bh=gubjDCCRfPt2+6a28Rol+A7fNFT/WfoM0ypzk3iynrc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=hbZNqBCTk9VklHOkhdFu1srZYDdlDJYno2S5h9z9YVHa37+QyX8AqCbbaDGDO+c/c
	 ggC90hJGA+Tm8l+awiLV7PenKB0wzxsH+KswNgCj6trUXI8KVawvuHBnOS2fOmfyjy
	 ulbZiCmpNeQ8eaL4trHy0UDFwsd2t/t5/tNE0Gqy+mTPj2ZnNBEZ5WbNQ4njMuYMmR
	 93tztnIpD+y4w8iI31NlyYaYCBmVJXSUmWM/03ew/riPdJc6+L0o7ERhpgwQmx2I8M
	 +exATMvMXDzn50Fxp8VMFVeSZkk+xX9LS/Zs7kb9cknjGZZfKcg4unrXmLtBwPHNvZ
	 agX+0MXp93E6g==
Date: Wed, 20 May 2026 19:23:30 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V8 03/10] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Message-ID: <20260520192330.36dfb573@jic23-huawei>
In-Reply-To: <20260518200526.458421-4-macroalpha82@gmail.com>
References: <20260518200526.458421-1-macroalpha82@gmail.com>
	<20260518200526.458421-4-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_112341_668666_9D4E5968 
X-CRM114-Status: GOOD (  15.43  )
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

On Mon, 18 May 2026 15:05:18 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the core component of a new inv_icm42607 driver. This includes
> a few setup functions and the full register definition in the
> header file.
> 
How are you driving the fifo capture? There isn't a trigger
and the irq isn't wired up that I can find.

I'm struggling to see how this works.
I would expect to see something like:
inv_icm42600_irq_handler()

Ah. This was previously in the wake up patch.  That bit we still need
for this driver to work.


> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

> +int inv_icm42607_core_probe(struct regmap *regmap, const struct inv_icm42607_hw *hw,
> +			    inv_icm42607_bus_setup bus_setup)
> +{
> +	struct device *dev = regmap_get_device(regmap);
> +	struct inv_icm42607_state *st;
> +	int irq;
> +	int ret;
> +
> +	irq = fwnode_irq_get_byname(dev_fwnode(dev), "INT1");
> +	if (irq < 0)
> +		return dev_err_probe(dev, irq, "Unable to get INT1 interrupt\n");
This doesn't seem to be used?

> +

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
