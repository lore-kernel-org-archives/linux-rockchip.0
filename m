From: Leon Romanovsky <leon@kernel.org>
Subject: Re: [PATCH] net/3com/3c515: Fix MODULE_ARCH_VERMAGIC redefinition
Date: Sat, 11 Apr 2020 19:11:56 +0300
Message-ID: <20200411161156.GA200683@unreal>
References: <20200224085311.460338-1-leon@kernel.org>
 <20200224085311.460338-4-leon@kernel.org>
 <20200411155623.GA22175@zn.tnic>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <netdev-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200411155623.GA22175@zn.tnic>
Sender: netdev-owner@vger.kernel.org
To: Borislav Petkov <bp@alien8.de>
Cc: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Tom Lendacky <thomas.lendacky@amd.com>, Keyur Chudgar <keyur@os.amperecomputing.com>, Don Fry <pcnet32@frontier.com>, Veaceslav Falico <vfalico@gmail.com>, Jay Vosburgh <j.vosburgh@gmail.com>, linux-acenic@sunsite.dk, Maxime Ripard <mripard@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Mark Einon <mark.einon@gmail.com>, Chris Snook <chris.snook@gmail.com>, linux-rockchip@lists.infradead.org, Iyappan Subramanian <iyappan@os.amperecomputing.com>, Igor Russkikh <irusskikh@marvell.com>, David Dillow <dave@thedillows.org>, Netanel Belgazal <netanel@amazon.com>, Quan Nguyen <quan@os.amperecomputing.com>, Jay Cliburn <jcliburn@gmail.com>, Lino Sanfilippo <LinoSanfilippo@gmx.>
List-Id: linux-rockchip.vger.kernel.org

On Sat, Apr 11, 2020 at 05:56:23PM +0200, Borislav Petkov wrote:
> From: Borislav Petkov <bp@suse.de>
>
> Change the include order so that MODULE_ARCH_VERMAGIC from the arch
> header arch/x86/include/asm/module.h gets used instead of the fallback
> from include/linux/vermagic.h and thus fix:
>
>   In file included from ./include/linux/module.h:30,
>                    from drivers/net/ethernet/3com/3c515.c:56:
>   ./arch/x86/include/asm/module.h:73: warning: "MODULE_ARCH_VERMAGIC" redefined
>      73 | # define MODULE_ARCH_VERMAGIC MODULE_PROC_FAMILY
>         |
>   In file included from drivers/net/ethernet/3com/3c515.c:25:
>   ./include/linux/vermagic.h:28: note: this is the location of the previous definition
>      28 | #define MODULE_ARCH_VERMAGIC ""
>         |
>
> Fixes: 6bba2e89a88c ("net/3com: Delete driver and module versions from 3com drivers")
> Signed-off-by: Borislav Petkov <bp@suse.de>
> ---
>  drivers/net/ethernet/3com/3c515.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Probably, this is the right change, but I have a feeling that the right
solution will be inside headers itself. It is a little bit strange that
both very common kernel headers like module.h and vermagic.h are location
dependant.

Thanks

>
> diff --git a/drivers/net/ethernet/3com/3c515.c b/drivers/net/ethernet/3com/3c515.c
> index 90312fcd6319..cdceef891dbd 100644
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
> @@ -67,6 +66,7 @@ static int max_interrupt_work = 20;
>  #include <linux/timer.h>
>  #include <linux/ethtool.h>
>  #include <linux/bitops.h>
> +#include <linux/vermagic.h>
>
>  #include <linux/uaccess.h>
>  #include <asm/io.h>
> --
> 2.21.0
>
> --
> Regards/Gruss,
>     Boris.
>
> https://people.kernel.org/tglx/notes-about-netiquette
