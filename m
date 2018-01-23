From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v1 2/2] drm/bridge/synopsys: dsi: Add a warning msg on dsi
 read operations
Date: Tue, 23 Jan 2018 13:28:20 -0800
Message-ID: <CA+ASDXPJ9uPDwRhP2WbazjeT6o=6L0ttffWXjwjkD3KxB+1cuQ@mail.gmail.com>
References: <20180123142618.28384-1-philippe.cornu@st.com>
 <20180123142618.28384-3-philippe.cornu@st.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20180123142618.28384-3-philippe.cornu@st.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Philippe Cornu <philippe.cornu@st.com>
Cc: linux-arm-kernel@lists.infradead.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Archit Taneja <architt@codeaurora.org>, Heiko Stubner <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, David Airlie <airlied@linux.ie>, Linux Kernel <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, Yannick Fertre <yannick.fertre@st.com>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Ludovic Barre <ludovic.barre@st.com>, Mickael Reulier <mickael.reulier@st.com>, Vincent Abriou <vincent.abriou@st.com>, Bhumika Goyal <bhumirks@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Philippe,

I see you sent this out already today, while I only just responded
(late) to your questions about it... oh well :)

On Tue, Jan 23, 2018 at 6:26 AM, Philippe Cornu <philippe.cornu@st.com> wrote:
> The DCS/GENERIC DSI read feature is not yet implemented so it
> is important to warn the host_transfer() caller in case of
> read operation requests.
>
> Signed-off-by: Philippe Cornu <philippe.cornu@st.com>
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> index 096cf5e5bb30..e46ddff8601c 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -417,7 +417,14 @@ static ssize_t dw_mipi_dsi_host_transfer(struct mipi_dsi_host *host,
>         if (ret)
>                 return ret;
>
> -       nb_bytes = packet.size;
> +       if (msg->rx_buf && msg->rx_len > 0) {

It feels like you should do this check *before* you start writing
anything. It's possible to have a combination TX/RX command, and it
would be counterintuitive to only do half the operation then return
with an argument error.

> +               /* TODO dw drv improvements: implement read feature */
> +               dev_warn(dsi->dev, "read operations not yet implemented\n");
> +               return -EPERM;

I'm not sure -EPERM is right. Feels like -EINVAL, -ENOSYS, or
-EOPNOTSUPP. I think -ENOSYS actually has been abused somewhat, so
maybe one of the other two.

> +

Spurious blank line?

> +       } else {
> +               nb_bytes = packet.size;
> +       }

You don't actually need to put this sort of thing in the 'else' case.
The other branch is an error-handling case, which definitely 'return's
early, and it's pretty standard coding style to avoid indenting the
"good" path like this.

Brian

>
>         return nb_bytes;
>  }
> --
> 2.15.1
>
