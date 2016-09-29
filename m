From: Doug Anderson <dianders@google.com>
Subject: Re: [PATCH v2 4/4] mmc: sdhci-of-arasan: add sdhci_arasan_voltage_switch
 for arasan,5.1
Date: Thu, 29 Sep 2016 12:49:06 -0700
Message-ID: <CAD=FV=VwyUyz=EgBomouQ=OZT+wQGh7xgh0mzDnqw0bmB8aMXw@mail.gmail.com>
References: <1474588991-10344-1-git-send-email-shawn.lin@rock-chips.com> <1474588991-10344-4-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-mmc-owner@vger.kernel.org>
In-Reply-To: <1474588991-10344-4-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-mmc-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Jaehoon Chung <jh80.chung@samsung.com>, Ulf Hansson <ulf.hansson@linaro.org>, "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Thu, Sep 22, 2016 at 5:03 PM, Shawn Lin <shawn.lin@rock-chips.com> wrote:
> Per the vendor's requirement, we shouldn't do any setting for
> 1.8V Signaling Enable, otherwise the interaction/behaviour between
> phy and controller will be undefined. Mostly it works fine if we do
> that, but we still see failures. Anyway, let's fix it to meet the
> vendor's requirement. The error log looks like:
>
>  [   93.405085] mmc1: unexpected status 0x800900 after switch
>  [   93.408474] mmc1: switch to bus width 1 failed
>  [   93.408482] mmc1: mmc_select_hs200 failed, error -110
>  [   93.408492] mmc1: error -110 during resume (card was removed?)
>  [   93.408705] PM: resume of devices complete after 213.453 msecs
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>
> Changes in v2: None
>
>  drivers/mmc/host/sdhci-of-arasan.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)

Seems OK to me.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
