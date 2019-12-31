From: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 10/11] arm64: dts: rockchip: Add PX30 DSI DPHY
Date: Tue, 31 Dec 2019 16:41:25 +0100
Message-ID: <20191231164125.2aaad2e2@xps13>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
        <20191224143900.23567-11-miquel.raynal@bootlin.com>
        <1796464.bE5sXyoQCg@phil>
        <10740878.zWD4iEhqxt@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <10740878.zWD4iEhqxt@phil>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

Heiko Stuebner <heiko@sntech.de> wrote on Tue, 31 Dec 2019 13:14:02
+0100:

> Am Dienstag, 31. Dezember 2019, 12:56:14 CET schrieb Heiko Stuebner:
> > Am Dienstag, 24. Dezember 2019, 15:38:59 CET schrieb Miquel Raynal:  
> > > Add the PHY which outputs MIPI DSI and LVDS.
> > > 
> > > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>  
> > 
> > applied for 5.6 (picked early due to it being shared between lvds and dsi)  
> 
> and I've just added the VO powerdomain to the dsi-dphy node.
> 
> While the TRM is not really forthcoming in telling me if the dphy needs
> the power-domain as well, the vendor kernel does, so we should probably
> just follow their example ;-) .

Agreed!

Miquèl
