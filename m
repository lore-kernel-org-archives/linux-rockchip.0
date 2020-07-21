From: Tzung-Bi Shih <tzungbi@google.com>
Subject: Re: Speaker pops with max98357a on rk3399-gru-kevin since v5.7
Date: Tue, 21 Jul 2020 19:46:56 +0800
Message-ID: <CA+Px+wUhAHAx-qmAEWy_8Jy40NDTAHH-TNYtPtMfwocMHQ=AbA@mail.gmail.com>
References: <f2ca985f-7dbd-847a-1875-dd0e1044ef02@gmail.com>
 <CA+Px+wU1S1EqtW-yZH9z9aCF3ggSriBqy73SRYy8q61x0GkdQQ@mail.gmail.com> <846feea6-e2b6-3a0e-b05f-d70e898f9ea5@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <846feea6-e2b6-3a0e-b05f-d70e898f9ea5@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, ALSA development <alsa-devel@alsa-project.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, Jul 21, 2020 at 6:40 AM Alper Nebi Yasak
<alpernebiyasak@gmail.com> wrote:
>
> On 17/07/2020 05:27, Tzung-Bi Shih wrote:
> > I am not convinced the pop comes from 128f825aeab7.
>
> Maybe some pre-existing defect in rk3399_gru_sound got exposed by
> 128f825aeab7 or the machine driver needs some changes to complement
> that commit?

Hi, I got a rk3399-gru-kevin and can reproduce the issue.

Could you take a try on the proposed patch here
https://patchwork.kernel.org/patch/11675533/ to see if it fixes?
