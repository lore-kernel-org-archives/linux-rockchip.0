From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: Inclusion of linux-rockchip into linux-next?
Date: Mon, 24 Aug 2015 08:07:07 +0200
Message-ID: <3506457.PRsqyPGB7c@phil>
References: <1649486.sBsNKvcodH@phil>
 <20150824090714.2e782e27@canb.auug.org.au>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20150824090714.2e782e27-3FnU+UHB4dNDw9hX6IcOSA@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Stephen Rothwell <sfr-3FnU+UHB4dNDw9hX6IcOSA@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Stephen,

Am Montag, 24. August 2015, 09:07:14 schrieb Stephen Rothwell:
> Added from today.

cool, thanks


> You may need to be a bit more careful about Signed-off-by lines - for
> example, commit cb8cc37f4d38 ("ARM: rockchip: fix broken build") has no
> Signed-off-by from its author.

You had me worried that I messed up for a bit here. But the commit actually 
does have a Signed-off-by from Caesar Wang (just above a small comment by 
myself). I guess mixing Signed-off-lines with additional info is not the 
easiest thing to read, so I'll probably try to stay away from it in the 
future.


Heiko
