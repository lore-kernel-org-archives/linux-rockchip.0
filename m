From: Jack Mitchell <ml-psbXN780rFT10XsdtD+oqA@public.gmane.org>
Subject: Re: RK3288 dwc2 USB OTG + macOS
Date: Fri, 30 Aug 2019 11:49:32 +0100
Message-ID: <bcda1da2-fcdf-2c5b-d07b-5cf397571eb7@embed.me.uk>
References: <e6321abc-1d3a-cfa1-638a-6051719462ad@embed.me.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <e6321abc-1d3a-cfa1-638a-6051719462ad-psbXN780rFT10XsdtD+oqA@public.gmane.org>
Content-Language: en-BW
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Cc: hminas-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, Phillip Karls <prkarls-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 22/08/2019 17:06, Jack Mitchell wrote:
> I'm having issues on a Firefly rk3288 board when trying to use USB
> gadget ethernet on macOS. The dr_mode is set to "otg" and it works fine
> with my Linux desktop.
> 
> If I set the dr_mode to "peripheral" macOS will work, but still takes
> around 10 seconds to enumerate the device which makes me think it's only
> just working. However, I need the port to be in "otg" mode as it will
> switch between peripheral/host use cases.
> 
> I've attached a log from the dwc2 driver from mainline Linux 5.2 when
> being plugged into the macOS device for 30 seconds, then removed. The
> mac in this case is a 2013 macbook pro. Any pointers in the right
> direction would be greatly appreciated.
> 
> Regards,
> Jack.
> 

I've been poking about with this some more and I've managed to bisect
the issue down to the following commit

729cac693eecfebdb9e152eaddddd358ae2decb7 usb: dwc2: Change ISOC DDMA flow

If I build before this commit everything works fine with a g_ether
gadget device on mac. Unfortunately it's a rather large change which I
can't just revert in master as it's got multiple dependant commits
later. So, any advice on what could be causing this or how to help debug
it would be much appreciated, as at the moment I've just forward ported
the working 4.16 version of the driver over the 5.3-rc6 broken driver
which isn't very sustainable in the long run.

Regards,
Jack.
