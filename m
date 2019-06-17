From: Arend Van Spriel <arend.vanspriel-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
Subject: Re: [PATCH v4 3/5] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
Date: Mon, 17 Jun 2019 12:35:50 +0200
Message-ID: <be97a37a-d81b-5756-7a97-418d9b36a381@broadcom.com>
References: <20190613234153.59309-1-dianders@chromium.org>
 <20190613234153.59309-4-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20190613234153.59309-4-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Content-Language: en-US
Sender: linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Ulf Hansson <ulf.hansson-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Kalle Valo <kvalo-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, Adrian Hunter <adrian.hunter-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: brcm80211-dev-list.pdl-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Double Lo <double.lo-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Naveen Gupta <naveen.gupta-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, Madhan Mohan R <madhanmohan.r-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Wright Feng <wright.feng-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, Chi-Hsien Lin <chi-hsien.lin-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, brcm80211-dev-list-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org, Hans de Goede <hdegoede-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Franky Lin <franky.lin-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Hante Meuleman <hante.meuleman-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, YueHaibing <yuehaibing-hv44wF8Li93QT0dZR+AlfA@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 6/14/2019 1:41 AM, Douglas Anderson wrote:
> There are certain cases, notably when transitioning between sleep and
> active state, when Broadcom SDIO WiFi cards will produce errors on the
> SDIO bus.  This is evident from the source code where you can see that
> we try commands in a loop until we either get success or we've tried
> too many times.  The comment in the code reinforces this by saying
> "just one write attempt may fail"
> 
> Unfortunately these failures sometimes end up causing an "-EILSEQ"
> back to the core which triggers a retuning of the SDIO card and that
> blocks all traffic to the card until it's done.
> 
> Let's disable retuning around the commands we expect might fail.
> 
> Fixes: bd11e8bd03ca ("mmc: core: Flag re-tuning is needed on CRC errors")

Reviewed-by: Arend van Spriel <arend.vanspriel-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
