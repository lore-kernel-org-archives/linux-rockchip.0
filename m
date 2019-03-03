From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk3328-roc-cc gmac2io
 tx/rx_delay
Date: Sun, 03 Mar 2019 15:10:32 +0100
Message-ID: <3120482.od4P9FZq9J@phil>
References: <20190228222923.30418-1-papadakospan@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190228222923.30418-1-papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: "Leonidas P. Papadakos" <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Levin Du <djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 28. Februar 2019, 23:29:23 CET schrieb Leonidas P. Papadakos:
> The rk3328-roc-cc board exhibits tx stability issues with large packets,
> as does the rock64 board, which was fixed with this patch
> https://patchwork.kernel.org/patch/10178969/
> 
> A similar patch was merged for the rk3328-roc-cc here
> https://patchwork.kernel.org/patch/10804863/
> but it doesn't include the tx/rx_delay tweaks, and I find that they
> help with an issue where large transfers would bring the ethernet
> link down, causing a link reset regularly.
> 
> Signed-off-by: Leonidas P. Papadakos <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

applied as fix for the 5.1-rc cycle starting in about 2 weeks.

Thanks
Heiko
