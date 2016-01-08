From: Simon Glass <sjg@chromium.org>
Subject: Re: [PATCH v1 1/6] common/image-fdt.c: Make boot_get_fdt()
 perform a check for Android images
Date: Thu, 7 Jan 2016 20:33:58 -0700
Message-ID: <CAPnjgZ23onM40qLaOZ7H07j=LeYLbqX5w0CXh7XC15UJk2VUtw@mail.gmail.com>
References: <1451893823-20309-1-git-send-email-jeffy.chen@rock-chips.com>
 <1451893823-20309-2-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <1451893823-20309-2-git-send-email-jeffy.chen@rock-chips.com>
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
Cc: U-Boot Mailing List <u-boot@lists.denx.de>, Marcel Ziswiler <marcel.ziswiler@toradex.com>, Joe Hershberger <joe.hershberger@ni.com>, Max Krummenacher <max.krummenacher@toradex.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 4 January 2016 at 00:50, Jeffy Chen <jeffy.chen@rock-chips.com> wrote:
> Android images don't have a fdt.
>
> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
> ---
>
>  common/image-fdt.c | 4 ++++
>  1 file changed, 4 insertions(+)

Acked-by: Simon Glass <sjg@chromium.org>
