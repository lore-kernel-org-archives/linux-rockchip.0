Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A631EC55179
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 13:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nEStfkfMRBuYoYUICXGpuVleQeAgziG0uZcZTl7GIsA=; b=BAsaS6sR51Xivq
	XsDZQI4tz/rDow4Ua9k3DvFaIN+Vk8C67UaMqPqUWabeP85MqUpTF+CRVZHhk67Lslnu6Sltp7bpC
	2I8por0tL84aKCZADQiEvKO8N33VTABSyStiyIowkUDt72OV34xCHUkpx2XPHHMwZjBXZBF54Q/uA
	k4YHcfI8k4MzTTWWeaDFB2NdG0nEK26ZM8J4+HjcHI9vDbSryx5VLht9EkqMoyra+3cJVE4hvZQNQ
	bVFfFU2zkjfGbO1QLb8AxLJ6NEnYJrESd7hCFeXsJeU7hZUXgzs1KMXYcDF3Q1HzyQTZlgVyT3KnY
	ZogNLZjEqMPdx5s0jFfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqskg-0000000HAKE-3I5O;
	Mon, 03 Aug 2026 13:30:46 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqske-0000000HAJK-18C8;
	Mon, 03 Aug 2026 13:30:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=s0Nn8hdIgXmWzmhcG99Oh2fhpDgLrw7IOOOOFJwYqeY=; b=DFsKnY+gVEOvTe+do19wn9YHgk
	jRtADcklHMwQYphjMhoDQN3im0vzjhJqZ+cZcdQM2GvtsYAPRMsh0XeCmjR+RO9EVWjPvFEyPxI3L
	mV4GVOWX7lPAQ81k17dC9bRNcl+WjRpzx1/y0tvhwiSHxj9sDpNY3vCz1EMcEb8ZaSwc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wqskO-00FjGe-HJ; Mon, 03 Aug 2026 15:30:28 +0200
Date: Mon, 3 Aug 2026 15:30:28 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Andre Przywara <andre.przywara@arm.com>
Cc: James Hilliard <james.hilliard1@gmail.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Richard Genoud <richard.genoud@bootlin.com>,
	Maxime Ripard <mripard@kernel.org>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com, mfd@lists.linux.dev,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 00/21] net: phy: add X-Powers AC200/AC300 EPHY support
Message-ID: <19241d58-1a69-4776-8d91-012de9fc421c@lunn.ch>
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
 <aaec8809-8218-4412-a60d-931406dbf287@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aaec8809-8218-4412-a60d-931406dbf287@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_063044_312141_F8E5506E 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
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

> Just to bring that shallow discussion we had on IRC to the list: I wonder if
> this is the right solution? Alternatively I was wondering if just patching
> the DT in U-Boot would simplify things, and also help other DT users like
> *BSD or U-Boot (proper) itself, to not boil the ocean, but just allowing
> them to follow a standard DT description.

I've not looked into the MDIO bus probing changes in detail yet, but
that was also what i was thinking.

     Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
