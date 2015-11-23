From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH v2 2/2] drm/rockchip: Convert the probe function to the
 generic drm_of_component_probe()
Date: Mon, 23 Nov 2015 17:39:41 +0800
Message-ID: <5652DEDD.60603@rock-chips.com>
References: <1448029325-14602-1-git-send-email-Liviu.Dudau@arm.com> <1448029325-14602-3-git-send-email-Liviu.Dudau@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1448029325-14602-3-git-send-email-Liviu.Dudau@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Liviu Dudau <Liviu.Dudau@arm.com>, Russell King <rmk+kernel@arm.linux.org.uk>, =?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, Daniel Vetter <daniel.vetter@ffwll.ch>, David Airlie <airlied@linux.ie>, Eric Anholt <eric@anholt.net>
Cc: linux-rockchip <linux-rockchip@lists.infradead.org>, dri-devel <dri-devel@lists.freedesktop.org>, LAKML <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On 2015=E5=B9=B411=E6=9C=8820=E6=97=A5 22:22, Liviu Dudau wrote:
> Initial attempt to convert rockchip to drm_of_component_probe() misse=
d the
> difference between ports and encoders when using the compare_of() fun=
ction.
> Now that drm_of_component_probe() has been enhanced, let's try again =
the
> conversion.
>
> Signed-off-by: Liviu Dudau<Liviu.Dudau@arm.com>

Looks good for me, and it works on popmetal board, so
      Acked-by: Mark Yao <mark.yao@rock-chips.com>

Thanks.

--=20
=EF=BC=ADark Yao
