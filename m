Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE707C55184
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 13:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C4Xb1HDxYRBVfzU+g5A5dbPJk/BgNtOG4Dw6My9GHT4=; b=36RD4PKj690Tex
	3AZKir3lXN24fIyTbFnp0oxPmy5G0InUJOK6HNj7A/NmbtFGAhxTwHDxWo8BV1oFgbKdlnzzKsR3p
	IYj0AOeWNZScF9QSYfaxjVD2h4DU/nm+qVgIJSZC/41SbkayGPD8xjnExnDsa59XJZ5lAwD4nBcSJ
	ACzPZQ1CsEtgJUNxGjdMPgA+BgDNwd4ewuXFKbwgxu9+LFOq3CGsJbJpqbl2GZFQkJrLbbqKeIRib
	+233gHkIUzPNg7hcE8h4KHR7aepK2+5hPt7LTZ6TWwjovjQ2JCVeSltg8hEM2euu4k9Gq3AvCp8R+
	8JbR8JMDIQ7vmIApHypg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsIk-0000000H6O4-0Eqg;
	Mon, 03 Aug 2026 13:01:54 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsIg-0000000H6Ma-3lIt;
	Mon, 03 Aug 2026 13:01:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=hRXn5kzc97BQTjib/Wj0YW5AbHYZrqSl7Di4vozL+yk=; b=44VXgAvShSfyUZOOhHGJmb8U/1
	knBdqbXRkyUJrsKE6mh5V36V9fJJDComtnWDbSenQ4KQWk+FQw8sQnu+MFJaIVdN3vAkOphjPptWN
	7SVc+xjX5VaRedewLqN/xtp6VqFOVwiPgkFYuXrUmBQwoFPonWcRio1yCqS4ybSaQxHk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wqsIN-00Fixe-Bi; Mon, 03 Aug 2026 15:01:31 +0200
Date: Mon, 3 Aug 2026 15:01:31 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: James Hilliard <james.hilliard1@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Andre Przywara <andre.przywara@arm.com>,
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
Message-ID: <8088f2b1-1fd9-4acc-b9f4-8bfbaa2bd28a@lunn.ch>
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_060150_936369_084C607A 
X-CRM114-Status: GOOD (  18.70  )
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

On Sun, Aug 02, 2026 at 11:14:10PM -0600, James Hilliard wrote:
> The Allwinner H616/H618 secondary EMAC is commonly connected to a Fast
> Ethernet PHY in an X-Powers AC200 or AC300 companion package.  The two
> packages expose the same link PHY ID and largely compatible link-side
> registers, but require different control paths before those registers can
> be accessed: AC200 is initialized through its I2C MFD, while AC300 uses a
> non-PHY Clause 22 control endpoint.
> 
> Some H616-family products were shipped with either package under the same
> board identity.  For those systems, this series uses a SID NVMEM field to
> select the control provider at run time.  With CONFIG_OF_DYNAMIC, the link
> PHY enables only the selected fail-needs-probe provider, so an AC300 board
> does not probe the unused AC200 I2C controller or claim its pins.  The same
> drivers also support fixed descriptions without CONFIG_OF_DYNAMIC: a board
> can reference one enabled provider, or enable both candidates when runtime
> selection is still required.
> 
> The series adds:
> 
>   - the H616 EMAC1 binding, stmmac variant and controller node;
>   - generic MDIO OF reconfiguration support for PHYs, packages, scanned
>     addresses and generic MDIO devices;
>   - the AC200 MFD and AC200/AC300 EPHY control providers;
>   - the shared AC200/AC300 link-PHY driver, including calibration, power and
>     reset sequencing, MDI/MDI-X, statistics, EDPD, PHY-managed EEE, package
>     LEDs, interrupts and Wake-on-LAN; and
>   - H6 and H616-family device-tree descriptions and arm64 defconfig support.
> 
> The AC200 and AC300 control and link paths were exercised on H616-family
> hardware during development, including link traffic, address handling,
> ethtool EDPD/EEE controls, statistics and LEDs.  The H6 interrupt and
> Wake-on-LAN description still needs validation by an H6 hardware user.
> 
> This series depends on Richard Genoud's v7 H616 PWM controller series,
> which provides the bypass clock used by the companion EPHY:
> 
>   https://lore.kernel.org/all/20260703152215.192859-1-richard.genoud@bootlin.com/
> 
> The PWM patches are an external prerequisite and are intentionally not
> included in this 21-patch series.

21 patches is on the big side. Now you have shown the big picture, can
you break this up into a couple of series?

    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
