From: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v2] timers: Fix usleep_range() in the context of
 wake_up_process()
Date: Tue, 11 Oct 2016 09:14:38 +0200 (CEST)
Message-ID: <alpine.DEB.2.20.1610110908240.7794@nanos>
References: <1476133442-17757-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1476133442-17757-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: John Stultz <john.stultz@linaro.org>, Andreas Mohr <andi@lisas.de>, briannorris@chromium.org, huangtao@rock-chips.com, tony.xie@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, 10 Oct 2016, Douglas Anderson wrote:
> Users of usleep_range() expect that it will _never_ return in less time
> than the minimum passed parameter.  However, nothing in any of the code
> ensures this.  Specifically:

There is no such guarantee for that interface and never has been, so how
did you make sure that none of the existing users is relying on this?

You can't just can't just declare that all all of the users expect that and
be done with it.

Thanks,

	tglx
