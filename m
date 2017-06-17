From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] soc: rockchip: disable jtag switching for RK3328 Soc
Date: Sat, 17 Jun 2017 19:59:31 +0200
Message-ID: <1588999.nO53AL4emg@phil>
References: <1495699104-137633-1-git-send-email-shawn.lin@rock-chips.com>
 <b11e5b39-dc90-ded5-f767-4058dffa85a8@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <b11e5b39-dc90-ded5-f767-4058dffa85a8@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Douglas Anderson <dianders@chromium.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 16. Juni 2017, 16:17:45 CEST schrieb Shawn Lin:
> Hi Heiko,
> 
> Ping.... :)
> 
> On 2017/5/25 15:58, Shawn Lin wrote:
> > Disable IO function switching between sdmmc and jtag
> > for RK3328 Soc.
> > 
> > Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Ihad already applied this on thursday, just forgot to push the branch :-) .

As there was some unresolved discussion with the driver itself, we'll
see where this ends up.


Heiko
