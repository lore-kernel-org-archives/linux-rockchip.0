From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v3 6/8] ARM: dts: rockchip: add clock-cells for usb phy nodes
Date: Mon, 25 Jan 2016 15:06:57 +0100
Message-ID: <2533572.i0vRkUzAgm@diego>
References: <1447968149-10979-1-git-send-email-heiko@sntech.de> <1447968149-10979-7-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1447968149-10979-7-git-send-email-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: kishon@ti.com
Cc: mturquette@baylibre.com, sboyd@codeaurora.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, dianders@chromium.org, romain.perier@gmail.com, arnd@arndb.de, hl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 19. November 2015, 22:22:27 schrieb Heiko Stuebner:
> Add the #clock-cells properties for the usbphy nodes as they
> provide the pll-clocks now.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

applied to my dts32 branch for 4.6 with Mike's Review-tag from v1
