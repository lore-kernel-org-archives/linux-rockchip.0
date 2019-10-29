From: Cheng-yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH v8 3/6] ASoC: rockchip_max98090: Optionally support HDMI
 use case
Date: Tue, 29 Oct 2019 10:40:55 +0800
Message-ID: <CAFv8NwJYrpT=hCFwWfbdRvC971X-XGS-mjEBJrggQTJ02nhv7g@mail.gmail.com>
References: <20191025133007.11190-4-cychiang@chromium.org> <201910290345.w2EEW5S3%lkp@intel.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <201910290345.w2EEW5S3%lkp@intel.com>
Sender: linux-kernel-owner@vger.kernel.org
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, linux-kernel <linux-kernel@vger.kernel.org>, Neil Armstrong <narmstrong@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>, Hans Verkuil <hverkuil@xs4all.nl>, Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>, Russell King <rmk+kernel@armlinux.org.uk>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Doug Anderson <dianders@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Oct 29, 2019 at 3:10 AM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Cheng-Yi,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on rockchip/for-next]
> [also build test ERROR on v5.4-rc5 next-20191028]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>
> url:    https://github.com/0day-ci/linux/commits/Cheng-Yi-Chiang/Add-HDMI=
-jack-support-on-RK3288/20191028-212502
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockc=
hip.git for-next
> config: i386-allmodconfig (attached as .config)
> compiler: gcc-7 (Debian 7.4.0-14) 7.4.0
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=3Di386
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    sound/soc/rockchip/snd-soc-rockchip-max98090: struct of_device_id is 1=
96 bytes.  The last of 3 is:
>    0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 =
0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 =
0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 =
0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 =
0x00 0x00 0x00 0x00 0x00 0x72 0x6f 0x63 0x6b 0x63 0x68 0x69 0x70 0x2c 0x72 =
0x6f 0x63 0x6b 0x63 0x68 0x69 0x70 0x2d 0x61 0x75 0x64 0x69 0x6f 0x2d 0x6d =
0x61 0x78 0x39 0x38 0x30 0x39 0x30 0x2d 0x68 0x64 0x6d 0x69 0x00 0x00 0x00 =
0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 =
0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 =
0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 =
0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 =
0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 =
0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x10 0x00 =
0x00 0x00
> >> FATAL: sound/soc/rockchip/snd-soc-rockchip-max98090: struct of_device_=
id is not terminated with a NULL entry!

Please ignore this error for v8 patch series because the change in
rockchip_max98090.c of of_device_id is removed in v9 patch series.
Thanks!

>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Ce=
nter
> https://lists.01.org/pipermail/kbuild-all                   Intel Corpora=
tion
