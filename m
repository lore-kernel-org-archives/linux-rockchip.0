From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 5/8] clk: rockchip: fix usbphy-related clocks
Date: Sat, 05 Dec 2015 11:12:55 +0100
Message-ID: <2813307.eVUP6EkfG2@diego>
References: <1446673454-9529-1-git-send-email-heiko@sntech.de> <1446673454-9529-6-git-send-email-heiko@sntech.de> <56622abb9f53f_650d3fc0582a72d85a@quark.notmuch>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <56622abb9f53f_650d3fc0582a72d85a@quark.notmuch>
Sender: linux-kernel-owner@vger.kernel.org
To: Michael Turquette <mturquette@baylibre.com>, kishon@ti.com
Cc: sboyd@codeaurora.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, dianders@chromium.org, romain.perier@gmail.com, arnd@arndb.de
List-Id: linux-rockchip.vger.kernel.org

Hi Mike

Am Freitag, 4. Dezember 2015, 16:07:23 schrieb Michael Turquette:
> Heiko Stuebner wrote:
> > The otgphy clocks really only drive the phy blocks. These in turn
> > contain plls that then generate the 480m clocks the clock controller
> > uses to supply some other clocks like uart0, gpu or the video-codec.
> > 
> > So fix this structure to actually respect that hirarchy and removed
> > that usb480m fixed-rate clock working as a placeholder till now, as
> > this wouldn't even work if the supplying phy gets turned off while
> > its pll-output gets used elsewhere.
> > 
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> 
> Acked-by: Michael Turquette <mturquette@baylibre.com>

Thanks for Ack + Review, but it seems you found a slightly old version in your 
inbox :-)

So right new we have,

- [PATCH 5/8] clk: rockchip: fix usbphy-related clocks
Acked-by: Michael Turquette <mturquette@baylibre.com>
- [PATCH 6/8] ARM: dts: rockchip: add clock-cells for usb phy nodes
Reviewed-by: Michael Turquette <mturquette@baylibre.com>


which should translate nicely to the two equivalent patches in v3:
[PATCH v3 6/8] ARM: dts: rockchip: add clock-cells for usb phy nodes
[PATCH v3 7/8] clk: rockchip: fix usbphy-related clocks


but I guess Kishon, was also looking for an Ack on the usbphy-code actually 
exposing these clocks in
[PATCH v3 5/8] phy: rockchip-usb: expose the phy-internal PLLs


If you could also take a look at that patch, I would be glad :-)


Thanks
Heiko
