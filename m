Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 953ACCD3427
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 May 2026 16:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qX6/YIwfugLwuwLhgFYt40Xkw2ZdTx5bofu4+zBM7H0=; b=m9YScQ9BxtW9CE
	IrNDZi1HugTGpCqyfTJ2cJ+dvHQ3obaqA9OaGLi4p7YXjUjgyQ35Qi1B4EayMcsxBsybKApt2L9VD
	qizy7T4/4z9T3rWtkVYDHL0gvVfkESyKeYLujCETZsY6T3RCu4ZinI4OPvRZmzgixr189HR+W+ZWF
	NRKcNG4iMwnv/rqlkw8j7pU6o6q+HUKWQyIKpoXilMlocLF/MX2ejytS2v6zOUEbDwbUveyLIrV3L
	1e99akmEQxGl7sjnkLF7UXR5W1v1OXhics5ZPdniLtIqIIS3WFfvZhuUq5ARREC7bFsW317VF0ruX
	YWEgVbVo2h2dKJagnQIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJwWD-0000000DlCI-1Wlw;
	Mon, 04 May 2026 16:51:41 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJwWB-0000000DlBj-0Cnb
	for linux-rockchip@lists.infradead.org;
	Mon, 04 May 2026 16:51:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B294040A5F;
	Mon,  4 May 2026 16:51:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92EF5C2BCB8;
	Mon,  4 May 2026 16:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777913497;
	bh=582ffjRQ2Uc7xO+mybW8CfmzvW/0hm+vSpZmgcG8WHA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=V+wV8L06C5RT90jT8FE5GFQPRbYwdI48y0F1bgt/y2s73vyfWFs/e2UXriCOkrFoh
	 N5zvp48M83E25cIU3BzGp5nQ8gDTxzOZDADIDc7KS/C15oeNUlRpOmdIL4jJqyO8VK
	 gyFMCnBBHAX6MnV/WHrLRBdFPNulgd3xMbk50XZNZxzo9uwRYlPj7A8NglxWz/z1VD
	 ACq0TVNhL/WCS2TgTEk7/76hyVrerjca9lFzwLe51SSQTJaCtopMX0Dd8Kls2yJvx7
	 u56QC7gzzF6VlZuf+oAGZ4rdSLG7PPLs36RPkC5Q+FgBiiTb6V0fxrHMq6VTVEZOGy
	 ARMwvldtUCvnA==
Date: Mon, 4 May 2026 17:51:28 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Chris Morgan
 <macroalpha82@gmail.com>, linux-iio@vger.kernel.org, andy@kernel.org,
 nuno.sa@analog.com, dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com
Subject: Re: [PATCH V4 01/10] dt-bindings: iio: imu: icm42600: Add icm42607
 binding
Message-ID: <20260504175128.0bfdefe0@jic23-huawei>
In-Reply-To: <PH0PR19MB997338AB2F626D5898BAB27E53A5302@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20260501221152.194251-1-macroalpha82@gmail.com>
	<20260501221152.194251-2-macroalpha82@gmail.com>
	<20260503-convivial-aquatic-yak-d2dbeb@quoll>
	<PH0PR19MB997338AB2F626D5898BAB27E53A5302@PH0PR19MB997338.namprd19.prod.outlook.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_095139_134996_F887011D 
X-CRM114-Status: GOOD (  26.30  )
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

On Sun, 3 May 2026 15:51:30 -0500
Chris Morgan <macromorgan@hotmail.com> wrote:

> On Sun, May 03, 2026 at 02:18:18PM +0200, Krzysztof Kozlowski wrote:
> > On Fri, May 01, 2026 at 05:11:40PM -0500, Chris Morgan wrote:  
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > Add devicetree binding for the Invensense ICM42607 and Invensense
> > > ICM42607P inertial measurement unit. This unit is a combined
> > > accelerometer, gyroscope, and thermometer available via I2C or SPI.
> > > 
> > > This device is functionally very similar to the icm42600 series with a
> > > very different register layout. Additionally, add mount-matrix
> > > attribute to schema.  
> > 
> > Why adding it? Is it something new? Is it applicable to other variants?
> > If not, why it is allowed for them?  
> 
> It's not new, technically this is a bug/oversight from the very first
> iteration of the invensense icm42600 driver. The driver requests a
> mount matrix using iio_read_mount_matrix and then returns an error from

Unless it's broken (always possible) iio_read_mount_matrix() is supposed
to return an identity matrix if there isn't any info in the binding.

	/* Matrix was not declared at all: fallback to identity. */
	return iio_setup_mount_idmatrix(dev, matrix);

So not required by the linux driver at least.  Probably not something
we should require in general.

Separate patch to introduce it to the binding as optional and say something
about what it is for to justify it's inclusion.  That patch goes before
this one.

> the probe function if it can't read one [1]. So it's very much required
> (and for the next version I'll upgrade it to a required element). I'm
> adding it because a cursory grep suggests that my use case (for the
> Anbernic RG-DS and in the near future the Anbernic RG Vita Pro) are the
> first devices to use this driver in mainline in a device tree based
> system.
> 
> Thank you,
> Chris
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/iio/imu/inv_icm42600/inv_icm42600_core.c?h=v7.1-rc1#n746
> 
> > 
> > Do not say WHAT you did, say why you did it.
> > 
> > Best regards,
> > Krzysztof
> >   


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
