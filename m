From: Anatolij Gustschin <agust@denx.de>
Subject: Re: [PATCH 4/4] rockchip: Enable HDMI output on rk3399 board w/ HDMI
Date: Mon, 3 Feb 2020 23:10:55 +0100
Message-ID: <20200203231055.0a3732b6@crub>
References: <20200123162845.10651-1-jagan@amarulasolutions.com>
 <20200123162845.10651-5-jagan@amarulasolutions.com>
 <20200124152735.GR26536@bill-the-cat>
 <CAMty3ZBQ_mRY4ojo_4iHUzup2tD-FO6ZmskwJyXskg4O4iHz+Q@mail.gmail.com>
 <20200203144708.GK13379@bill-the-cat>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200203144708.GK13379@bill-the-cat>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Tom Rini <trini@konsulko.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, U-Boot-Denx <u-boot@lists.denx.de>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

On Mon, 3 Feb 2020 09:47:08 -0500
Tom Rini trini@konsulko.com wrote:
... 
> > yes, this evb board config is common across most of the rk3399
> > defconfig boards. this patch enable hdmi on few rk3399 boards all use
> > same config file, evb_rk3399.h  
> 
> Yes, the ROCKCHIP_DEVICE_SETTINGS part makes sense, but the rest looks
> very much like part of we need to rework the commit I mentioned.  I
> don't object to this going in as-is.  Anatolij, how goes the rework of
> things however?  I do want to see that get in sooner rather than later
> so we can sort out other regressions from just a lack of CONFIG options
> being enabled.  Thanks!

A patch [1] for this is under build testing.

[1] http://patchwork.ozlabs.org/patch/1233033

--
Anatolij
