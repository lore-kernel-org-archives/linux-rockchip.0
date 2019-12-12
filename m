From: Vicente Bergas <vicencb@gmail.com>
Subject: Re: WARNING: CPU: 3 PID: 1 at =?iso-8859-1?Q?=5F=5Fflush=5Fwork.isra.47+0x22c/0x248?=
Date: Thu, 12 Dec 2019 19:41:46 +0100
Message-ID: <8dec2d95-f483-44a9-8223-0f8f3de33238@gmail.com>
References: <5708082a-680f-4107-aaf8-a39d76037d77@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <5708082a-680f-4107-aaf8-a39d76037d77@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Thursday, December 12, 2019 12:09:21 AM CET, Vicente Bergas wrote:
> Hi,
> since v5.5-rc1 four equal consecutive traces appeared that seem related to
> rockchip sound. As i wasn't sure to whom sent the report just added
> everybody from
> ./scripts/get_maintainer.pl sound/soc/rockchip/rk3399_gru_sound.c
> which is the file containg one of the functions in the trace.
>
> By the way, sound works fine. After all traces, there is this message that
> could also be related:
> [    0.625354] da7219 8-001a: Using default DAI clk names:=20
> da7219-dai-wclk, da7219-dai-bclk
>
> Regards,
>  Vicente.

Please, ignore this email. The issue has already been solved with
https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git/commit/?h=3D=
for-5.5&id=3D4bf2e385aa59c2fae5f880aa25cfd2b470109093

Regards,
  Vicen=C3=A7.
