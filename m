From: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Subject: Re: Speaker pops with max98357a on rk3399-gru-kevin since v5.7
Date: Tue, 21 Jul 2020 16:31:31 +0300
Message-ID: <ba020dd4-167c-f67e-5cf7-5e4e60a71919@gmail.com>
References: <f2ca985f-7dbd-847a-1875-dd0e1044ef02@gmail.com>
 <CA+Px+wU1S1EqtW-yZH9z9aCF3ggSriBqy73SRYy8q61x0GkdQQ@mail.gmail.com>
 <846feea6-e2b6-3a0e-b05f-d70e898f9ea5@gmail.com>
 <CA+Px+wUhAHAx-qmAEWy_8Jy40NDTAHH-TNYtPtMfwocMHQ=AbA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CA+Px+wUhAHAx-qmAEWy_8Jy40NDTAHH-TNYtPtMfwocMHQ=AbA@mail.gmail.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Tzung-Bi Shih <tzungbi@google.com>
Cc: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, ALSA development <alsa-devel@alsa-project.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 21/07/2020 14:46, Tzung-Bi Shih wrote:
> Hi, I got a rk3399-gru-kevin and can reproduce the issue.
> 
> Could you take a try on the proposed patch here
> https://patchwork.kernel.org/patch/11675533/ to see if it fixes?

It does eliminate the pops, thanks.

(I've replied to the patch, I am sending this for completeness as the Cc
list isn't exactly the same.)
