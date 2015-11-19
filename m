From: Chris Zhong <zyw@rock-chips.com>
Subject: Re: [PATCH v3 03/12] drm/rockchip: return a true clock rate to
 adjusted_mode
Date: Thu, 19 Nov 2015 16:10:03 +0800
Message-ID: <564D83DB.9040705@rock-chips.com>
References: <1447904131-29328-1-git-send-email-zyw@rock-chips.com>
 <1447904131-29328-4-git-send-email-zyw@rock-chips.com>
 <564D756D.9050000@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <564D756D.9050000@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark yao <mark.yao@rock-chips.com>, heiko@sntech.de, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org



On 11/19/2015 03:08 PM, Mark yao wrote:
> On 2015=E5=B9=B411=E6=9C=8819=E6=97=A5 11:35, Chris Zhong wrote:
>> +
>> +    /*
>> +     * Sometimes the clock driver can not set a accurate clock_rate=
=20
>> for vop,
>> +     * get the true rate of vop_dclk and set it back to adjusted_mo=
de.
>> +     */
>> +    adjusted_mode->clock =3D clk_get_rate(vop->dclk) / 1000;
>>   out:
>>       ret_clk =3D clk_enable(vop->dclk);
>>       if (ret_clk < 0) {
> Hi Chris
>      How about use clk_round_rate to check the clock rate first?
>      I think we can check it on vop_crtc_mode_fixup.
Hi Mark
     Nice advice, I'll modify it in next version. Thanks.
>
> Thanks.
> - =EF=BC=ADark Yao
>
>
>
