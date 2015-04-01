From: Yakir <ykk@rock-chips.com>
Subject: Re: [PATCH v3 2/3] drm: bridge/dw_hdmi_rockchip: improve hdmi eye-diagram
 test
Date: Wed, 01 Apr 2015 10:37:23 +0800
Message-ID: <551B59E3.9090802@rock-chips.com>
References: <1425894141-360-1-git-send-email-ykk@rock-chips.com> <1425894199-489-1-git-send-email-ykk@rock-chips.com> <20150331165758.GV24899@n2100.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20150331165758.GV24899@n2100.arm.linux.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Russell King - ARM Linux <linux@arm.linux.org.uk>
Cc: David Airlie <airlied@linux.ie>, Philipp Zabel <p.zabel@pengutronix.de>, djkurtz@chromium.org, Fabio Estevam <fabio.estevam@freescale.com>, Shawn Guo <shawn.guo@linaro.org>, Rob Clark <robdclark@gmail.com>, Mark Yao <mark.yao@rock-chips.com>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Andy Yan <andy.yan@rock-chips.com>, mmind00@googlemail.com, dianders@chromium.org, marcheu@chromium.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Russell,

=E5=9C=A8 2015/4/1 0:57, Russell King - ARM Linux =E5=86=99=E9=81=93:
> On Mon, Mar 09, 2015 at 05:43:19PM +0800, Yakir Yang wrote:
>> As for 1920x1080 display resolution, we should turn on the
>> Transmitter Trailer-B.
>>
>> Signed-off-by: Yakir Yang <ykk@rock-chips.com>
>> ---
> BTW, one of:
>
>   drm/rockchip: dw_hdmi-rockchip: ...
>   drm/rockchip: dw_hdmi: ...
>   drm: rockchip: dw_hdmi-rockchip: ...
>   drm: rockchip: dw_hdmi: ...
>   drm: rockchip/dw_hdmi-rockchip: ...
>   drm: rockchip/dw_hdmi: ...
>
> might be a better subject line for patches which only touch the rockc=
hip
> part of this driver.  I'd also suggest one of:

Okay, I choose the "drm: rockchip/dw_hdmi-rockchip: ...", improve in v4

Thanks
Yakir Yang

>   drm/imx: dw_hdmi-imx: ...
>   drm/imx: dw_hdmi: ...
>   drm: imx: dw_hdmi-imx: ...
>   drm: imx: dw_hdmi: ...
>   drm: imx/dw_hdmi-imx: ...
>   drm: imx/dw_hdmi: ...
>
> for iMX-only patches.  It doesn't really mater which as we already ha=
ve
> a mixture of these formats already.
>
