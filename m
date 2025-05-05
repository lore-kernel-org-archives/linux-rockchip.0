Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A062C369DC
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 May 2025 00:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5urKq+Ogbieblv+/ZcE0SvFLVB5fp4ljdtOaUFq7n3I=; b=hM5PkEMBNvtu1A
	WvdIC1Bl49Fu3lMkOFWzR0yHGAR6T0AhB+nKX9pso33k4WpxjDZUQX3SL3eCqo/z9ezVFzzIwSx4c
	/4LOaw5McNm7MNguJ5o8+2iP5mhlN+pLUEh29f6RgJDBkMlz88Uji3saUTTG0p/HI5wGV1o4YciX/
	Xv41Qr5bnElG2QiYRbZ0TfiIi7Es6fZwkFDLmzFune4ELUqB3psUKQZ5jgZ9R6zxyrED4pn20gDKk
	91Itb4DjhmTr05047P8eUT+FUIddIVovFKdDAYvU6dk0riyywTcW8YrXJpkIhBqqwnblNrleppp6Z
	9TkKCRXM1F8F3ccVztow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBjxs-00000006CPZ-1fBQ;
	Mon, 05 May 2025 00:45:48 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBjxp-00000006CP3-2kdK;
	Mon, 05 May 2025 00:45:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=cXkMREPrerlbxBVxNZbArKbfCj+6iod7wpO5/+wdJKk=; b=MBM2GKrr+QOB1sAWkh/fBxvQpC
	LBWzS4CjJyLDB6w7AWvmEeZSxQZnvePXqHFmdGeF9h4tSBHkzyG4Dn0GZjhYufpe6b2iN/XCcthY6
	vr2UNCHn3dFGYbQ5vUYHyHQIXuSs84LAg13mTYUh59mdloK4unoY/hd2MZrAeWf2hATw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1uBjxb-00BYu4-UK; Mon, 05 May 2025 02:45:31 +0200
Date: Mon, 5 May 2025 02:45:31 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: John Clark <inindev@gmail.com>
Cc: Jonas Karlman <jonas@kwiboo.se>, heiko@sntech.de, robh@kernel.org,
	conor+dt@kernel.org, detlev.casanova@collabora.com,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add Luckfox Omni3576 Board
 support
Message-ID: <13407dae-4c73-48a9-846e-92f08449bc4d@lunn.ch>
References: <20250502205533.51744-1-inindev@gmail.com>
 <20250504102447.153551-1-inindev@gmail.com>
 <20250504102447.153551-4-inindev@gmail.com>
 <bb171ae2-c495-49a3-a7eb-a4b865e54199@kwiboo.se>
 <87892840-bdbf-43d4-bd93-cb98f5e1c672@lunn.ch>
 <b603e92f-8c1a-4aea-8bab-82a1f035c7fa@gmail.com>
 <b50c68bd-9b15-412a-ac00-1df25601edd9@lunn.ch>
 <46cbdabd-b0ed-4c9b-9f01-4d2d8eceac24@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <46cbdabd-b0ed-4c9b-9f01-4d2d8eceac24@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_174546_019585_FAC80059 
X-CRM114-Status: GOOD (  12.03  )
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

> > What PHY is it? Are you using the correct PHY driver for it, or
> > genphy?
> > 
> MAE0621A-Q3C
> http://www.maxio-tech.com/product/12928/12929/12930/12931.html

Mainline does not have a PHY driver for this. So nothing is
controlling the delays in the PHY. So what you have above works by
luck, and is likely to break once there is a PHY driver. So i suggest
you drop the Ethernet nodes for the moment.

There does appear to be a PHY driver here:

https://github.com/CoreELEC/linux-amlogic/blob/5.15.153_202501/drivers/net/phy/maxio.c

but it has a number of things wrong with it. You might want to search
around and see if there are any cleaner versions around, or if anybody
is working on upstreaming a driver for this PHY.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
