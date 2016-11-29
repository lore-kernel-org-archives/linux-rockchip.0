From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [U-Boot] Rockchip RK3288 u-boot with mainline kernel
Date: Tue, 29 Nov 2016 11:20:52 +0100
Message-ID: <1790297.5MBZbjcMZN@diego>
References: <476576ec2671ff75030249e453491add.squirrel@webmail.efn.org>
 <CAPnjgZ3-ugQ_tmYsvg_cpxwv-aHzcKncn0BXD_R8C=Y7qjySFw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAPnjgZ3-ugQ_tmYsvg_cpxwv-aHzcKncn0BXD_R8C=Y7qjySFw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: "eddie.cai" <eddie.cai-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Rick Bronson <rick-YvnXKLUTzOA@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Rick,

Am Montag, 28. November 2016, 15:09:05 schrieb Simon Glass:
> + A few rockchip people and linux-rockchip
> 
> Hi Rick,
> 
> On 25 November 2016 at 11:20, Rick Bronson <rick-YvnXKLUTzOA@public.gmane.org> wrote:
> > Hi All,
> > 
> >   I've got unsupported RK3288 hardware running the latest git u-boot to
> > 
> > SPL as explained in
> > http://git.denx.de/?p=u-boot.git;a=blob;f=doc/README.rockchip.  My goal
> > is to run the mainline (ie. not Android) Linux kernel on this hardware
> > 
> > and wondered:
> >  - Do I need to get the latest git u-boot to run before I can run the
> > 
> > mainline kernel?  Or can I use
> > github.com/linux-rockchip/u-boot-rockchip.git, which I have running
> > u-boot fully.
> 
> It's up to you - obviously mainline is where the development should
> be, but there is no requirement that I know of.

correct, the (mainline-)kernel runs just fine on both the vendor-fork of uboot 
as well as on mainline.


> Does mainline run on your board?
> 
> >  - The device tree seems to be in two places, once via:
> >         resource_tool --image=resource2.img --pack linux/logo.bmp
> >         ${DTS}.dtb
> >   
> >   that gets put into the resource file and then again at the end of the
> > 
> > kernel via CONFIG_ARM_APPENDED_DTB.  Do I need both?  When I do both
> > I get things like:
>
> > Unknow param: MACHINE_MODEL:rk30sdk!
> > Unknow param: MACHINE_ID:007!

ARM_APPEND_DTB is meant for boards where the bootloader cannot load the 
devicetree (to old or so) and also cannot be reasonably exchanged. So the 
append-mechanism was invented to allow bundling the devicetree with the actual 
kernel image, so that to the bootloader it looks like just any other kernel 
image.

So you essentially only need one or the other. Also at least mainline uboot 
also supports the FIT image type, where you can bundle the devicetree in a 
more generalized way.

For your message I would guess the kernel didn't find a usable devicetree 
somehow and was falling back to ATAGS-based board selection?
