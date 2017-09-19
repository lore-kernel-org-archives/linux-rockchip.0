From: Nickey Yang <nickey.yang@rock-chips.com>
Subject: Re: [PATCH 5/7] arm64: dts: rockchip: rk3399: Correct MIPI DPHY PLL
 clock
Date: Tue, 19 Sep 2017 10:47:16 +0800
Message-ID: <a063a0a3-885c-9fa2-7a71-5289d69d98ef@rock-chips.com>
References: <1505725539-6309-1-git-send-email-nickey.yang@rock-chips.com>
 <1505725539-6309-5-git-send-email-nickey.yang@rock-chips.com>
 <1555719.xlEhX7V6v3@diego>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============2134910913=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1555719.xlEhX7V6v3@diego>
Content-Language: en-US
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: mark.rutland@arm.com, bivvy.bi@rock-chips.com, hl@rock-chips.com, briannorris@chromium.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, zyw@rock-chips.com, xbl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.
--===============2134910913==
Content-Type: multipart/alternative;
 boundary="------------EAA6B87C7359867115D6EC6C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------EAA6B87C7359867115D6EC6C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Heiko,


On 2017年09月18日 19:31, Heiko Stübner wrote:
> Hi Nickey,
>
> Am Montag, 18. September 2017, 17:05:37 CEST schrieb Nickey Yang:
>> clk_24m --> Gate11[14] --> clk_mipidphy_ref --> Gate21[0] --> clk_dphy_pll
> please try to be a bit more verbose in your commit messages :-) .
>
> It looks to me, like this patch does not depend on the other ones and
> I can just pick it directly. Correct?
Yes, this patch is independent,you can pick it directly.
>
> Heiko
>
>> Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> b/arch/arm64/boot/dts/rockchip/rk3399.dtsi index d79e9b3..6aa43fd 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> @@ -1629,7 +1629,7 @@
>>   		compatible = "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi";
>>   		reg = <0x0 0xff960000 0x0 0x8000>;
>>   		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH 0>;
>> -		clocks = <&cru SCLK_MIPIDPHY_REF>, <&cru PCLK_MIPI_DSI0>,
>> +		clocks = <&cru SCLK_DPHY_PLL>, <&cru PCLK_MIPI_DSI0>,
>>   			 <&cru SCLK_DPHY_TX0_CFG>;
>>   		clock-names = "ref", "pclk", "phy_cfg";
>>   		power-domains = <&power RK3399_PD_VIO>;
>
>
>
>


--------------EAA6B87C7359867115D6EC6C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi Heiko,<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 2017年09月18日 19:31, Heiko Stübner
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:1555719.xlEhX7V6v3@diego">
      <pre wrap="">Hi Nickey,

Am Montag, 18. September 2017, 17:05:37 CEST schrieb Nickey Yang:
</pre>
      <blockquote type="cite">
        <pre wrap="">clk_24m --&gt; Gate11[14] --&gt; clk_mipidphy_ref --&gt; Gate21[0] --&gt; clk_dphy_pll
</pre>
      </blockquote>
      <pre wrap="">
please try to be a bit more verbose in your commit messages :-) .

It looks to me, like this patch does not depend on the other ones and
I can just pick it directly. Correct?
</pre>
    </blockquote>
    Yes, this patch is independent,you can pick it directly.<span
      style="color: rgb(255, 255, 255); font-family: Arial,
      &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, STHeiti,
      &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;,
      sans-serif; font-size: 14px; font-style: normal;
      font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(67, 149,
      255); text-decoration-style: initial; text-decoration-color:
      initial; display: inline !important; float: none;"><br>
    </span>
    <blockquote type="cite" cite="mid:1555719.xlEhX7V6v3@diego">
      <pre wrap="">

Heiko

</pre>
      <blockquote type="cite">
        <pre wrap="">Signed-off-by: Nickey Yang <a class="moz-txt-link-rfc2396E" href="mailto:nickey.yang@rock-chips.com">&lt;nickey.yang@rock-chips.com&gt;</a>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
b/arch/arm64/boot/dts/rockchip/rk3399.dtsi index d79e9b3..6aa43fd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1629,7 +1629,7 @@
 		compatible = "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi";
 		reg = &lt;0x0 0xff960000 0x0 0x8000&gt;;
 		interrupts = &lt;GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH 0&gt;;
-		clocks = &lt;&amp;cru SCLK_MIPIDPHY_REF&gt;, &lt;&amp;cru PCLK_MIPI_DSI0&gt;,
+		clocks = &lt;&amp;cru SCLK_DPHY_PLL&gt;, &lt;&amp;cru PCLK_MIPI_DSI0&gt;,
 			 &lt;&amp;cru SCLK_DPHY_TX0_CFG&gt;;
 		clock-names = "ref", "pclk", "phy_cfg";
 		power-domains = &lt;&amp;power RK3399_PD_VIO&gt;;
</pre>
      </blockquote>
      <pre wrap="">




</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------EAA6B87C7359867115D6EC6C--


--===============2134910913==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============2134910913==--
