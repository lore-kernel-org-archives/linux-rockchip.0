From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: fix PCIe domain number for rk3399
Date: Wed, 22 Mar 2017 17:51:13 +0100
Message-ID: <165580299.rddJx4TLPp@phil>
References: <1489977480-8785-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1489977480-8785-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 20. M=E4rz 2017, 10:38:00 CET schrieb Shawn Lin:
> It's suggested to fix the domain number for all PCIe
> host bridges or not set it at all. However, if we don't
> fix it, the domain number will keep increasing ever when
> doing unbind/bind test, which makes the bus tree of lspci
> introduce pointless domain hierarchy. More investigation shows
> the domain number allocater of PCI doesn't consider the conflict
> of domain number if we have more than one PCIe port belonging to
> different domains. So once unbinding/binding one of them and keep
> others would going to overflow the domain number so that finally
> it will share the same domain as others, but actually it shouldn't.
> We should fix the domain number for PCIe or invent new indexing
> ID mechanisms. However it isn't worth inventing new indexing ID
> mechanisms personlly, Just look at how other Root Complex drivers
> did, for instance, broadcom and qualcomm, it seems fixing the domain
> number was more popular. So this patch gonna fix the domain number
> of PCIe for rk3399.
> =

> Cc: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

applied for 4.12 with Brian's tags.


Thanks
Heiko
