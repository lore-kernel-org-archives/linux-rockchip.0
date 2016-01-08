From: Simon Glass <sjg@chromium.org>
Subject: Re: [PATCH v1 4/6] rockchip: kylin: Add default gpt
	partition table
Date: Thu, 7 Jan 2016 20:34:06 -0700
Message-ID: <CAPnjgZ22Ardxpz1JCZPHt6BVNca0QbPURu2ykiODbckEoL2dPQ@mail.gmail.com>
References: <1451893823-20309-1-git-send-email-jeffy.chen@rock-chips.com>
 <1451893823-20309-5-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <1451893823-20309-5-git-send-email-jeffy.chen@rock-chips.com>
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
Cc: U-Boot Mailing List <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 4 January 2016 at 00:50, Jeffy Chen <jeffy.chen@rock-chips.com> wrote:
> Add default android gpt partition table for kylin board.
>
> Use "gpt write mmc 0 $partitions" to apply.
>
> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
> ---
>
>  include/configs/kylin_rk3036.h | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)

Acked-by: Simon Glass <sjg@chromium.org>
