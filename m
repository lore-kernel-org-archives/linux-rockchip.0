From: Xing Zheng <zhengxing@rock-chips.com>
Subject: Re: [RESEND PATCH v2 5/5] clk: rockchip: add clock controller for the
 RK3399
Date: Wed, 9 Mar 2016 09:26:34 +0800
Message-ID: <56DF7BCA.3000900@rock-chips.com>
References: <1456827275-8035-1-git-send-email-zhengxing@rock-chips.com>
 <1456827322-8130-1-git-send-email-zhengxing@rock-chips.com>
 <CAD=FV=VhMY=YO7zVYeP-+LY0gPvQ8yjaAUEGVJrMGLwbGjqVmg@mail.gmail.com>
 <56DF7393.4020600@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <56DF7393.4020600@rock-chips.com>
Sender: linux-clk-owner@vger.kernel.org
To: Jianqun Xu <jay.xu@rock-chips.com>, Doug Anderson <dianders@chromium.org>
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-clk <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Tao Huang <huangtao@rock-chips.com>, elaine.zhang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,
     Yes, I will resend my patch series include the previous patches=20
(header file and dt-bindings) of the Jianqun, and update the header fil=
e=20
for the MMC defines.

Thanks.

On 2016=E5=B9=B403=E6=9C=8809=E6=97=A5 08:51, Jianqun Xu wrote:
> Hi Doug:
>
> =E5=9C=A8 09/03/2016 07:34, Doug Anderson =E5=86=99=E9=81=93:
>> Xing Zheng,
>>
>> On Tue, Mar 1, 2016 at 2:15 AM, Xing Zheng <zhengxing@rock-chips.com=
>=20
>> wrote:
>>> +       MMC(SCLK_SDMMC_DRV, "emmc_drv",    "clk_sdmmc",=20
>>> RK3399_SDMMC_CON0, 1),
>>> +       MMC(SCLK_SDMMC_SAMPLE,  "emmc_sample", "clk_sdmmc",=20
>>> RK3399_SDMMC_CON1, 1),
>>
>> Can you and Jianqun Xu please coordinate?  Though I don't have a TRM
>> for rk3399 and I haven't looked through this whole patch, I know for
>> sure there's a problem when I pick the latest patch series from both
>> of you it doesn't compile.
>>
>> I believe this is the latest from each of you in patchwork:
>>
>> 8462411   [v3,1/3] dt-bindings: add bindings for rk3399 clock contro=
ller
>> 8462431   [v3,2/3] clk: rockchip: add dt-binding header for rk3399
>> 8462441   [v3,3/3] ARM64: dts: rockchip: add core dtsi file for rk33=
99
>>
>> 8463741   [RESEND,v2,1/5] clk: rockchip: add more mux parameters for
>> new pll sources
>> 8463801   [RESEND,v2,2/5] clk: rockchip: Add support for multiple
>> clock providers
>> 8463771   [RESEND,v2,3/5] clk: rockchip: add new pll-type for rk3399
>> and similar socs
>> 8463781   [RESEND,v2,4/5] clk: rockchip: add a=20
>> COMPOSITE_FRACMUX_NOGATE type
>> 8463831   [RESEND,v2,5/5] clk: rockchip: add clock controller for th=
e=20
>> RK3399
>>
>>
>> Specifically your patch from March 1st refers to SCLK_SDMMC_DRV and
>> SCLK_SDMMC_SAMPLE.  Those defines existed in Jianqun Xu's patch back
>> on Feb 19th <https://patchwork.kernel.org/patch/8355411/>, but his
>> latest patch series from March 1st
>> <https://patchwork.kernel.org/patch/8462431/> no longer has those
>> #defines.
>>
>> Can you two resolve this so I can pick both patch series and see tha=
t
>> they compile?  ...or let me know where I messed up, of course.
>>
> ok, we will upload dtsi later after the clk-rk3399 driver been applie=
d.
> xing will send the patches for rk3399 together.
>
> We hope the dtsi could be applied first but depends on clk driver, bu=
t=20
> it seems
> not a good idea, we will resend dtsi patch after more drivers are=20
> applied.
>
> Thanks Doug.
>
>> Thanks!
>>
>> -Doug
>>
>>
>>
>
>
>

--=20
- Xing Zheng


