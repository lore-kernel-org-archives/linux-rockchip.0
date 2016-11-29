From: Simon Glass <sjg@chromium.org>
Subject: Re: Rockchip RK3288 u-boot with mainline kernel
Date: Tue, 29 Nov 2016 14:40:49 -0700
Message-ID: <CAPnjgZ0NOsW1Qm9ho0q=ibagcDq9NVy-C8pfpT5dJTrjJVuLLw@mail.gmail.com>
References: <22a3c520dfce32c8baa59ced883afd53.squirrel@webmail.efn.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <22a3c520dfce32c8baa59ced883afd53.squirrel@webmail.efn.org>
List-Unsubscribe: <http://lists.denx.de/mailman/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <http://lists.denx.de/mailman/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Rick Bronson <rick@efn.org>
Cc: U-Boot Mailing List <u-boot@lists.denx.de>, "eddie.cai" <eddie.cai@rock-chips.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Rick,

On 29 November 2016 at 11:22, Rick Bronson <rick@efn.org> wrote:
> Hi Heiko and Simon,
>
>   Thank you both for your help, I really appreciate it.
>
>   No, I do not have the Linux mainline running yet as I was focusing
> on getting the mainline u-boot running since I saw some references
> that implied I may need that to use the mainline Linux.  I did try the
> mainline kernel with the vendor-fork u-boot but got nothing pas the
> "Loading Linux...." line from u-boot.
>
>   I think what I will probably do is take the easy way out and use the
> vendor-fork u-boot since that boots on this hardware.
>
>   But since I've invested some amount of time in the mainline u-boot
> and it's drinving me mad that I can't seem to figure out what's wrong,
> I do have one last question (hopefully).

It would certainly make sense to invest in getting this running if you can.

>
>   I've got mainline u-boot getting this far (I added debug to show
> what GPIO0 and 2 are outputting).
>
> --------------------
> U-Boot SPL 2016.11-00138-g136179b-dirty (Nov 28 2016 - 13:29:59)
> Trying to boot from MMC1
> Card did not respond to voltage select! GPIO0=0x0 GPIO2=0x0
> ...
> --------------------
>
>   I've modified rk3288-firefly.dts (the closest thing to hardware I
> have) to set the eMMC reset line high but as you see above, nothing is
> set on any GPIO.  This leads me to believe that I do not understand
> how the device tree is loaded/used in SPL.  Can anyone point me to
> help on whether I should use u-boot-spl-nodtb or u-boot-spl-dtb (I've
> tried both) or how to debug if I am in fact even reading my dtb.

You should be able to use 'gpio status' to see the GPIO state once you
get to U-Boot.

But if your board is booting SPL from MMC how can it possibly fail to
load U-Boot from MMC? The MMC GPIO must already work for you to get
this far. Or are you loading SPL from something other than MMC?

You want u-boot-spl.bin (which includes the device tree).

>
>   Thanks again,
>
>   Rick
>
> PS.  My Makefile is here if you are so inclined:
> http://members.efn.org/~rick/pub/Makefile  See the targets u-boot-denx
> and uboot_new_flash to see what I've tried.

You could push your tree somewhere or a patch showing what changes you
have made.

Regards,
Simon

>>
>> From heiko@sntech.de Tue Nov 29 08:45:02 2016
>> To: u-boot@lists.denx.de
>> Cc: Simon Glass <sjg@chromium.org>, Rick Bronson <rick@efn.org>,
> "eddie.cai" <eddie.cai@rock-chips.com>,
> linux-rockchip@lists.infradead.org
>> Subject: Re: [U-Boot] Rockchip RK3288 u-boot with mainline kernel
>> Date: Tue, 29 Nov 2016 11:20:52 +0100
>>
>> Hi Rick,
>>
>> Am Montag, 28. November 2016, 15:09:05 schrieb Simon Glass:
>> > + A few rockchip people and linux-rockchip
>> >
>> > Hi Rick,
>> >
>> > On 25 November 2016 at 11:20, Rick Bronson <rick@efn.org> wrote:
>> > > Hi All,
>> > >
>> > >   I've got unsupported RK3288 hardware running the latest git u-boot to
>> > >
>> > > SPL as explained in
>> > > http://git.denx.de/?p=u-boot.git;a=blob;f=doc/README.rockchip.  My goal
>> > > is to run the mainline (ie. not Android) Linux kernel on this hardware
>> > >
>> > > and wondered:
>> > >  - Do I need to get the latest git u-boot to run before I can run the
>> > >
>> > > mainline kernel?  Or can I use
>> > > github.com/linux-rockchip/u-boot-rockchip.git, which I have running
>> > > u-boot fully.
>> >
>> > It's up to you - obviously mainline is where the development should
>> > be, but there is no requirement that I know of.
>>
>> correct, the (mainline-)kernel runs just fine on both the vendor-fork of
> uboot
>> as well as on mainline.
>>
>>
>> > Does mainline run on your board?
>> >
>> > >  - The device tree seems to be in two places, once via:
>> > >         resource_tool --image=resource2.img --pack linux/logo.bmp
>> > >         ${DTS}.dtb
>> > >
>> > >   that gets put into the resource file and then again at the end of the
>> > >
>> > > kernel via CONFIG_ARM_APPENDED_DTB.  Do I need both?  When I do both
>> > > I get things like:
>> >
>> > > Unknow param: MACHINE_MODEL:rk30sdk!
>> > > Unknow param: MACHINE_ID:007!
>>
>> ARM_APPEND_DTB is meant for boards where the bootloader cannot load the
>> devicetree (to old or so) and also cannot be reasonably exchanged. So the
>> append-mechanism was invented to allow bundling the devicetree with the
> actual
>> kernel image, so that to the bootloader it looks like just any other kernel
>> image.
>>
>> So you essentially only need one or the other. Also at least mainline uboot
>> also supports the FIT image type, where you can bundle the devicetree in a
>> more generalized way.
>>
>> For your message I would guess the kernel didn't find a usable devicetree
>> somehow and was falling back to ATAGS-based board selection?
>>
>>
>
>
>
