From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v6 3/3] ARM: rockchip: fix the SMP code style
Date: Tue, 9 Jun 2015 11:17:49 -0700
Message-ID: <CAD=FV=V31o3Jj-26hiSHMikAbWw3x4p=NqUW-tca2xqUxmjgsA@mail.gmail.com>
References: <1433843400-24831-1-git-send-email-wxt@rock-chips.com>
 <1433843400-24831-4-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1433843400-24831-4-git-send-email-wxt@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: Russell King <linux@arm.linux.org.uk>, Heiko Stuebner <heiko@sntech.de>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Caesar,

On Tue, Jun 9, 2015 at 2:49 AM, Caesar Wang <wxt@rock-chips.com> wrote:
> Use the below scripts to check:
> scripts/checkpatch.pl -f --subject arch/arm/mach-rockchip/platsmp.c
>
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
>
> ---
>
> Changes in v6:
> - fix the commnet Unified format.
> Series-changes: 5
> - Add the changelog.
> Series-changes: 2
> - Use the checkpatch.pl -f --subjective to check.
>
>  arch/arm/mach-rockchip/platsmp.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)

This patch hasn't changed, so you could have kept my Reviewed-by that
I gave previously.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
