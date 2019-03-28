From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: rk3399: nanopc-t4 usb otg
Date: Thu, 28 Mar 2019 12:21:38 +0000
Message-ID: <2458cca9-4209-7658-b4ba-e2067a3fbce5@arm.com>
References: <a94d70c2-8495-bf91-41c5-bff013ade381@embed.me.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <a94d70c2-8495-bf91-41c5-bff013ade381-psbXN780rFT10XsdtD+oqA@public.gmane.org>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jack Mitchell <ml-psbXN780rFT10XsdtD+oqA@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Jack,

On 28/03/2019 11:34, Jack Mitchell wrote:
> Hi,
> 
> Can anyone confirm working operation of USB OTG over a type c phy on an
> RK3399 at commit 8c2ffd9174779014c3fe1f96d9dc3641d9175f00 (tag: v5.1-rc2).
> 
> I've got a nanopc-t4 here and when I try to load the g_ether driver I
> receive
> 
> [    6.359280] udc-core: couldn't find an available UDC - added
> [g_ether] to list of pending drivers
> 
> I've had a look through the dts and all seems to be in order. USB
> devices work fine in the host ports and I've confirmed otg mode.
> 
> root@rk3399:/sys/kernel/debug/fe800000.dwc3# cat mode
> otg
> 
> The cable is being detected at plug/unplug as can be seen from
> 
> [ 1252.479273] phy phy-ff770000.syscon:usb2-phy@e450.2: charger =
> USB_SDP_CHARGER
> 
> My defconfig is the standard arm64 as provided with the addition of
> CONFIG_USB_ETH=m.
> 
> Any information would be helpful, especially if this is working on other
> 3399 based boards at the mentioned commit.

I've not tried the type C port since I was playing with the initial dts, 
but IIRC not even host mode was working at that point. My vague 
understanding is that there was (and probably still is) some 
communication missing between the fusb302 driver and the dwc3 driver 
(since NanoPC-T4 is using that external chip rather than the RK3399's 
internal type C controller).

It's certainly something I've been meaning to come back and take another 
look at, so I'll try to have a play over the weekend to see how much I 
can make sense of.

Robin.
