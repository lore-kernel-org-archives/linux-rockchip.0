From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: assign clock rate for some
 cpll child clock
Date: Fri, 16 Mar 2018 10:16:43 -0700
Message-ID: <CAD=FV=VBkKU7ApaMHw5haCtj2Mvn7j_Uszkg_3Ur1NBQgdnBOQ@mail.gmail.com>
References: <1521169348-8552-1-git-send-email-hl@rock-chips.com>
 <1521169348-8552-2-git-send-email-hl@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1521169348-8552-2-git-send-email-hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Derek Basehore <dbasehore-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, diander-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-clk <linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Thu, Mar 15, 2018 at 8:02 PM, Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
> These clocks do not assign default clock frequency, and use the
> default cru register value to get frequency, so if cpll increase
> frequency, these clocks also increase their frequency, that may
> exceed their signed off frequency. So assign default clock for
> them to avoid it.
>
> Change-Id: If79368aeda5c51dbf2a3b6659f17052a2ae4a401
> Signed-off-by: Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi |  8 +++++++-
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi     | 14 ++++++++++++--
>  2 files changed, 19 insertions(+), 3 deletions(-)

This seems fine to me.

For the previous similar change I liked the idea of explaining in the
commit message why it's a good idea to include these rates in the CRU
node even though the same CRU node explicitly sets the CPLL to 800
MHz.  AKA, you could add to the commit message:

NOTE: on none of the boards currently in mainline do we expect CPLL to
be anything other than 800 MHz, but some future boards might have it.
It's still good to be explicit about the clock rates to make diffing
against future boards easier and also to rely less on BIOS muxing.



> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 4550c0f..b358533 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -315,6 +315,8 @@
>                 clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
>                          <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
>                 clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> +               assigned-clocks = <&cru HCLK_SD>;
> +               assigned-clock-rates = <200000000>;

To make things symmetric I'd probably also add a similar setting for
hclk_sdio unless there's a reason that 200 MHz isn't the right rate
there.

Oh, actually, the clock tree isn't very symmetric here anyway, is it?
For SDIO the clocks all come straight from "hclk_perilp1".  I guess
you could explicitly set "hclk_sdio", and "hclk_sdio_noc" (and
"hclk_sdioaudio_noc"?) to 200 MHz.

In any case, since it's not symmetric then I won't push for it being
in this patch.  Certainly the change in CPLL won't affect them since
they're parented off hclk_peripl1 and we already have that taken care
of...


Reviewed-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org><div
class="gmail_extra"><br><div class="gmail_quote">On Thu, Mar 15, 2018
at 8:02 PM, Lin Huang <span dir="ltr">&lt;<a
href="mailto:hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org"
target="_blank">hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org</a>&gt;</span> wrote:<br><blockquote
class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc
solid;padding-left:1ex">These clocks do not assign default clock
frequency, and use the<br>
default cru register value to get frequency, so if cpll increase<br>
frequency, these clocks also increase their frequency, that may<br>
exceed their signed off frequency. So assign default clock for<br>
them to avoid it.<br>
<br>
Change-Id: If79368aeda5c51dbf2a3b6659f170<wbr>52a2ae4a401<br>
Signed-off-by: Lin Huang &lt;<a
href="mailto:hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org">hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org</a>&gt;<br>
---<br>
&nbsp;arch/arm64/boot/dts/rockchip/<wbr>rk3399-gru.dtsi |&nbsp; 8 +++++++-<br>
&nbsp;arch/arm64/boot/dts/rockchip/<wbr>rk3399.dtsi&nbsp; &nbsp;
&nbsp;| 14 ++++++++++++--<br>
&nbsp;2 files changed, 19 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/arch/arm64/boot/dts/<wbr>rockchip/rk3399-gru.dtsi
b/arch/arm64/boot/dts/<wbr>rockchip/rk3399-gru.dtsi<br>
index 18f546f..84e367b 100644<br>
--- a/arch/arm64/boot/dts/<wbr>rockchip/rk3399-gru.dtsi<br>
+++ b/arch/arm64/boot/dts/<wbr>rockchip/rk3399-gru.dtsi<br>
@@ -588,7 +588,10 @@<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;&amp;cru
ACLK_PERILP0&gt;, &lt;&amp;cru HCLK_PERILP0&gt;,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;&amp;cru
PCLK_PERILP0&gt;, &lt;&amp;cru ACLK_CCI&gt;,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;&amp;cru
HCLK_PERILP1&gt;, &lt;&amp;cru PCLK_PERILP1&gt;,<br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;&amp;cru
ACLK_VIO&gt;;<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;&amp;cru
ACLK_VIO&gt;,<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;&amp;cru
ACLK_GIC_PRE&gt;,<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;&amp;cru
PCLK_DDR&gt;,<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;&amp;cru
ACLK_HDCP&gt;;<br>
&nbsp; &nbsp; &nbsp; &nbsp; assigned-clock-rates =<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&lt;600000000&gt;, &lt;800000000&gt;,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;1000000000&gt;,<br>
@@ -597,6 +600,9 @@<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&lt;100000000&gt;, &lt;100000000&gt;,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&lt;50000000&gt;, &lt;800000000&gt;,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&lt;100000000&gt;, &lt;50000000&gt;,<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;400000000&gt;,<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;200000000&gt;,<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;200000000&gt;,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;400000000&gt;;<br>
&nbsp;};<br>
<br>
diff --git a/arch/arm64/boot/dts/<wbr>rockchip/rk3399.dtsi
b/arch/arm64/boot/dts/<wbr>rockchip/rk3399.dtsi<br>
index 4550c0f..b358533 100644<br>
--- a/arch/arm64/boot/dts/<wbr>rockchip/rk3399.dtsi<br>
+++ b/arch/arm64/boot/dts/<wbr>rockchip/rk3399.dtsi<br>
@@ -315,6 +315,8 @@<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; clocks =
&lt;&amp;cru HCLK_SDMMC&gt;, &lt;&amp;cru SCLK_SDMMC&gt;,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp;&lt;&amp;cru SCLK_SDMMC_DRV&gt;, &lt;&amp;cru
SCLK_SDMMC_SAMPLE&gt;;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; clock-names =
"biu", "ciu", "ciu-drive", "ciu-sample";<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp;assigned-clocks = &lt;&amp;cru HCLK_SD&gt;;<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp;assigned-clock-rates = &lt;200000000&gt;;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; fifo-depth =
&lt;0x100&gt;;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; power-domains
= &lt;&amp;power RK3399_PD_SD&gt;;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; resets =
&lt;&amp;cru SRST_SDMMC&gt;;<br>
@@ -466,8 +468,10 @@<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; clocks =
&lt;&amp;cru SCLK_DP_CORE&gt;, &lt;&amp;cru PCLK_DP_CTRL&gt;,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp;&lt;&amp;cru SCLK_SPDIF_REC_DPTX&gt;, &lt;&amp;cru
PCLK_VIO_GRF&gt;;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; clock-names =
"core-clk", "pclk", "spdif", "grf";<br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;phys =
&lt;&amp;tcphy0_dp&gt;, &lt;&amp;tcphy1_dp&gt;;<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp;assigned-clocks = &lt;&amp;cru SCLK_DP_CORE&gt;, &lt;&amp;cru
SCLK_SPDIF_REC_DPTX&gt;;<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp;assigned-clock-rates = &lt;100000000&gt;, &lt;200000000&gt;;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; power-domains
= &lt;&amp;power RK3399_PD_HDCP&gt;;<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;phys =
&lt;&amp;tcphy0_dp&gt;, &lt;&amp;tcphy1_dp&gt;;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; resets =
&lt;&amp;cru SRST_DPTX_SPDIF_REC&gt;, &lt;&amp;cru
SRST_P_UPHY0_DPTX&gt;,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp;&lt;&amp;cru SRST_P_UPHY0_APB&gt;, &lt;&amp;cru
SRST_DP_CORE&gt;;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; reset-names =
"spdif", "dptx", "apb", "core";<br>
@@ -1323,7 +1327,10 @@<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &lt;&amp;cru ACLK_PERILP0&gt;, &lt;&amp;cru
HCLK_PERILP0&gt;,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &lt;&amp;cru PCLK_PERILP0&gt;, &lt;&amp;cru
ACLK_CCI&gt;,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &lt;&amp;cru HCLK_PERILP1&gt;, &lt;&amp;cru
PCLK_PERILP1&gt;,<br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;&lt;&amp;cru ACLK_VIO&gt;;<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;&lt;&amp;cru ACLK_VIO&gt;,<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;&lt;&amp;cru ACLK_GIC_PRE&gt;,<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;&lt;&amp;cru PCLK_DDR&gt;,<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;&lt;&amp;cru ACLK_HDCP&gt;;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
assigned-clock-rates =<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp;&lt;594000000&gt;,&nbsp; &lt;800000000&gt;,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &lt;1000000000&gt;,<br>
@@ -1332,6 +1339,9 @@<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp;&lt;100000000&gt;,&nbsp; &lt;100000000&gt;,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &lt;50000000&gt;, &lt;600000000&gt;,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp;&lt;100000000&gt;,&nbsp;
&nbsp;&lt;50000000&gt;,<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &lt;400000000&gt;,<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &lt;200000000&gt;,<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &lt;200000000&gt;,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp;&lt;400000000&gt;;<br>
&nbsp; &nbsp; &nbsp; &nbsp; };<br>
<span class="HOEnZb"><font color="#888888"><br>
--<br>
2.7.4<br>
<br>
<br>
______________________________<wbr>_________________<br>
Linux-rockchip mailing list<br>
<a href="mailto:Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org">Linux-rockchip@lists.<wbr>infradead.org</a><br>
<a href="http://lists.infradead.org/mailman/listinfo/linux-rockchip"
data-saferedirecturl="https://www.google.com/url?hl=en&amp;q=http://lists.infradead.org/mailman/listinfo/linux-rockchip&amp;source=gmail&amp;ust=1521301078018000&amp;usg=AFQjCNGCFi3WNAm5H3Wpohoas1jdNEBfOA"
rel="noreferrer"
target="_blank">http://lists.infradead.org/<wbr>mailman/listinfo/linux-<wbr>rockchip</a><br>
</font></span></blockquote></div><br></div>
