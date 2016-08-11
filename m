From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2 1/4] nvmem: rockchip-efuse: update compatible strings
 for Rockchip efuse
Date: Thu, 11 Aug 2016 10:14:03 +0200
Message-ID: <21647624.nrv841C5QK@diego>
References: <1470878029-11878-1-git-send-email-finley.xiao@rock-chips.com>
 <1470878029-11878-2-git-send-email-finley.xiao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1470878029-11878-2-git-send-email-finley.xiao@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Finlye Xiao <finley.xiao@rock-chips.com>
Cc: mark.rutland@arm.com, huangtao@rock-chips.com, tony.xie@rock-chips.com, catalin.marinas@arm.com, will.deacon@arm.com, linux@armlinux.org.uk, dianders@chromium.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, srinivas.kandagatla@linaro.org, linux-arm-kernel@lists.infradead.org, maxime.ripard@free-electrons.com, jay.xu@rock-chips.com, cl@rock-chips.com, wxt@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 11. August 2016, 09:13:46 schrieb Finlye Xiao:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> Rk3399-efuse is organized as 32bits by 32 one-time programmable electrical
> fuses. The efuse of earlier SoCs are organized as 32bits by 8 one-time
> programmable electrical fuses with random access interface.
> 
> Add different device tree compatible string for different SoCs to be able
> to differentiate between the two. The old binding is of course preserved,
> though deprecated.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
