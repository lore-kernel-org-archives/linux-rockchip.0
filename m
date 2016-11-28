From: Simon Glass <sjg@chromium.org>
Subject: Re: Rockchip RK3288 u-boot with mainline kernel
Date: Mon, 28 Nov 2016 15:09:05 -0700
Message-ID: <CAPnjgZ3-ugQ_tmYsvg_cpxwv-aHzcKncn0BXD_R8C=Y7qjySFw@mail.gmail.com>
References: <476576ec2671ff75030249e453491add.squirrel@webmail.efn.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <476576ec2671ff75030249e453491add.squirrel@webmail.efn.org>
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

+ A few rockchip people and linux-rockchip

Hi Rick,

On 25 November 2016 at 11:20, Rick Bronson <rick@efn.org> wrote:
> Hi All,
>
>   I've got unsupported RK3288 hardware running the latest git u-boot to
> SPL as explained in
> http://git.denx.de/?p=u-boot.git;a=blob;f=doc/README.rockchip.  My goal
> is to run the mainline (ie. not Android) Linux kernel on this hardware
> and wondered:
>
>  - Do I need to get the latest git u-boot to run before I can run the
> mainline kernel?  Or can I use
> github.com/linux-rockchip/u-boot-rockchip.git, which I have running
> u-boot fully.

It's up to you - obviously mainline is where the development should
be, but there is no requirement that I know of.

Does mainline run on your board?

>
>  - The device tree seems to be in two places, once via:
>
>         resource_tool --image=resource2.img --pack linux/logo.bmp ${DTS}.dtb
>
>   that gets put into the resource file and then again at the end of the
> kernel via CONFIG_ARM_APPENDED_DTB.  Do I need both?  When I do both
> I get things like:
>
> ....
> Unknow param: MACHINE_MODEL:rk30sdk!
> Unknow param: MACHINE_ID:007!

I don't know much about that. Hopefully someone on the linux-rockchip
list knows. But for mainline U-Boot I'm not sure why you would need
this?

> ....
>
>   Thanks much for any help.
>
>   Rick Bronson
>
>

Regards,
Simon
