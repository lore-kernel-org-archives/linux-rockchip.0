From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: bring rk3399-firefly power-tree
 in line
Date: Tue, 30 May 2017 12:07:23 +0200
Message-ID: <2924720.omGovoX6XK@phil>
References: <20170523095427.7421-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20170523095427.7421-1-heiko@sntech.de>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-rockchip@lists.infradead.org
Cc: kever.yang@rock-chips.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 23. Mai 2017, 11:54:25 CEST schrieb Heiko Stuebner:
> The power-tree on the rk3399-firefly did not completely match the
> documentation and vendor devicetree. It was also missing some
> supply-hirarchy information and some regulator-gpio names did not
> match the schematics. Fix this for the existing regulators before
> introducing new things.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

applied all 3 for 4.13, with the ethernet alias changed to ethernet0
as suggested


Heiko
