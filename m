From: Simon Glass <sjg@chromium.org>
Subject: Re: [PATCH v1 2/6] ARM: bootm: Try to use relocated ramdisk
Date: Thu, 7 Jan 2016 20:34:01 -0700
Message-ID: <CAPnjgZ0GMwkHesVSYzNYfp0O8TifZgQbC71LYWjMqEHDEn3OEQ@mail.gmail.com>
References: <1451893823-20309-1-git-send-email-jeffy.chen@rock-chips.com>
 <1451893823-20309-3-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <1451893823-20309-3-git-send-email-jeffy.chen@rock-chips.com>
List-Unsubscribe: <http://lists.denx.de/mailman/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <http://lists.denx.de/mailman/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jeffy Chen <jeffy.chen@rock-chips.com>
Cc: Joe Hershberger <joe.hershberger@ni.com>, Jan Kiszka <jan.kiszka@siemens.com>, U-Boot Mailing List <u-boot@lists.denx.de>, Tom Warren <twarren@nvidia.com>, Ian Campbell <ijc@hellion.org.uk>, linux-rockchip@lists.infradead.org, York Sun <yorksun@freescale.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Jeffy,

On 4 January 2016 at 00:50, Jeffy Chen <jeffy.chen@rock-chips.com> wrote:
> After boot_ramdisk_high(), ramdisk would be relocated to
> initrd_start & initrd_end, so use them instead of rd_start & rd_end.
>
> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
> ---
>
>  arch/arm/lib/bootm.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> index a477cae..ac94995 100644
> --- a/arch/arm/lib/bootm.c
> +++ b/arch/arm/lib/bootm.c
> @@ -225,7 +225,10 @@ static void boot_prep_linux(bootm_headers_t *images)
>                 if (BOOTM_ENABLE_MEMORY_TAGS)
>                         setup_memory_tags(gd->bd);
>                 if (BOOTM_ENABLE_INITRD_TAG) {
> -                       if (images->rd_start && images->rd_end) {
> +                       if (images->initrd_start && images->initrd_end) {
> +                               setup_initrd_tag(gd->bd, images->initrd_start,
> +                                                images->initrd_end);
> +                       } else if (images->rd_start && images->rd_end) {

Can you please add comments to these members (initrd_start/end) in
image.h? At present it is not clear what they are, compared to
rd_start/end.

>                                 setup_initrd_tag(gd->bd, images->rd_start,
>                                                  images->rd_end);
>                         }
> --
> 2.1.4
>
>

Regards,
Simon
