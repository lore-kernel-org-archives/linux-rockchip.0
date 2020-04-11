From: Leon Romanovsky <leon@kernel.org>
Subject: Re: [PATCH] net/3com/3c515: Fix MODULE_ARCH_VERMAGIC redefinition
Date: Sat, 11 Apr 2020 21:10:15 +0300
Message-ID: <20200411181015.GC200683@unreal>
References: <20200224085311.460338-1-leon@kernel.org>
 <20200224085311.460338-4-leon@kernel.org>
 <20200411155623.GA22175@zn.tnic>
 <20200411161156.GA200683@unreal>
 <20200411173504.GA11128@zn.tnic>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200411173504.GA11128@zn.tnic>
Sender: linux-kernel-owner@vger.kernel.org
To: Borislav Petkov <bp@alien8.de>
Cc: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Tom Lendacky <thomas.lendacky@amd.com>, Keyur Chudgar <keyur@os.amperecomputing.com>, Don Fry <pcnet32@frontier.com>, Veaceslav Falico <vfalico@gmail.com>, Jay Vosburgh <j.vosburgh@gmail.com>, linux-acenic@sunsite.dk, Maxime Ripard <mripard@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Mark Einon <mark.einon@gmail.com>, Chris Snook <chris.snook@gmail.com>, linux-rockchip@lists.infradead.org, Iyappan Subramanian <iyappan@os.amperecomputing.com>, Igor Russkikh <irusskikh@marvell.com>, David Dillow <dave@thedillows.org>, Netanel Belgazal <netanel@amazon.com>, Quan Nguyen <quan@os.amperecomputing.com>, Jay Cliburn <jcliburn@gmail.com>, Lino Sanfilippo <LinoSanfilippo@gmx.>
List-Id: linux-rockchip.vger.kernel.org

On Sat, Apr 11, 2020 at 07:35:04PM +0200, Borislav Petkov wrote:
> On Sat, Apr 11, 2020 at 07:11:56PM +0300, Leon Romanovsky wrote:
> > Probably, this is the right change, but I have a feeling that the right
> > solution will be inside headers itself. It is a little bit strange that
> > both very common kernel headers like module.h and vermagic.h are location
> > dependant.
>
> Judging by how only a couple of net drivers include vermagic.h directly,
> doh, of course:
>
> diff --git a/drivers/net/ethernet/3com/3c509.c b/drivers/net/ethernet/3com/3c509.c
> index b762176a1406..139d0120f511 100644
> --- a/drivers/net/ethernet/3com/3c509.c
> +++ b/drivers/net/ethernet/3com/3c509.c
> @@ -85,7 +85,6 @@
>  #include <linux/device.h>
>  #include <linux/eisa.h>
>  #include <linux/bitops.h>
> -#include <linux/vermagic.h>
>
>  #include <linux/uaccess.h>
>  #include <asm/io.h>
> diff --git a/drivers/net/ethernet/3com/3c515.c b/drivers/net/ethernet/3com/3c515.c
> index 90312fcd6319..47b4215bb93b 100644
> --- a/drivers/net/ethernet/3com/3c515.c
> +++ b/drivers/net/ethernet/3com/3c515.c
> @@ -22,7 +22,6 @@
>
>  */
>
> -#include <linux/vermagic.h>
>  #define DRV_NAME		"3c515"
>
>  #define CORKSCREW 1
>
> ---
>
> Drivers include
>
> #include <linux/module.h>
>
> which includes
>
> #include <asm/module.h>
>
> which defines the arch-specific MODULE_ARCH_VERMAGIC.
>
> Why did you need to include vermagic.h directly? i386 builds fine with
> the vermagic.h includes removed or was it some other arches which needed
> it?

I want to think that it was an outcome of some 0-day kbuild report,
but I am not sure about that anymore [1].

Thanks

[1] https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org/

>
> Thx.
>
> --
> Regards/Gruss,
>     Boris.
>
> https://people.kernel.org/tglx/notes-about-netiquette
