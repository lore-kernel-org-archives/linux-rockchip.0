From: Yakir <ykk@rock-chips.com>
Subject: Re: [PATCH v3 0/3] Improve eye-diagram & single-ended test for rk3288
 hdmi
Date: Wed, 01 Apr 2015 10:38:02 +0800
Message-ID: <551B5A0A.5000805@rock-chips.com>
References: <1425894141-360-1-git-send-email-ykk@rock-chips.com> <20150331162548.GT24899@n2100.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20150331162548.GT24899@n2100.arm.linux.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Russell King - ARM Linux <linux@arm.linux.org.uk>
Cc: David Airlie <airlied@linux.ie>, Philipp Zabel <p.zabel@pengutronix.de>, djkurtz@chromium.org, Fabio Estevam <fabio.estevam@freescale.com>, Shawn Guo <shawn.guo@linaro.org>, Rob Clark <robdclark@gmail.com>, Mark Yao <mark.yao@rock-chips.com>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Andy Yan <andy.yan@rock-chips.com>, mmind00@googlemail.com, dianders@chromium.org, marcheu@chromium.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Russell,

=E5=9C=A8 2015/4/1 0:25, Russell King - ARM Linux =E5=86=99=E9=81=93:
> On Mon, Mar 09, 2015 at 05:42:21PM +0800, Yakir Yang wrote:
>> RK3288 hdmi eye-diagram test would fail when pixel clock is 148.5MHz=
,
>> and single-ended test would failed when display mode is 74.25MHz.
> Has anyone reviewed these changes yet?  I don't see any replies, nor
> are they in David's git tree.  To me, they look mostly fine - the onl=
y
> issue I get is that the final patch doesn't apply cleanly to dw_hdmi.=
h
> since they're generated against a tree which has audio support merged=
=2E
> I also see no regressions on iMX6, so I think they can be merged.
>
> Unless anyone has any objections, I'll add these to my queue for Davi=
d.
>
> Thanks.

Wooh, thanks, I will send v4 now to improve the "drm:=20
dw_hdmi/dw_hdmi-rockchip".

Best regards,
Yakir Yang
