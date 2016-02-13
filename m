From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] usb: dwc2: Add extra delay when forcing dr_mode
Date: Sat, 13 Feb 2016 22:13:50 +0100
Message-ID: <24688651.GlpVaD0cKm@phil>
References: <cover.1454633496.git.johnyoun@synopsys.com> <52b1b554810ac3a434e3c570cade28cab3dd6b1e.1454633496.git.johnyoun@synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <52b1b554810ac3a434e3c570cade28cab3dd6b1e.1454633496.git.johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Caesar Wang <caesar.upstream-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 4. Februar 2016, 17:50:34 schrieb John Youn:
> Fixes an issue found on rockchip rk3036-based SOC platforms. For some
> reason, the existing msleep(25) is not enough after the force mode. The
> following patch was reported to fix the issue.
> 
> This does increase the probe delay again slightly, but not up to the
> level it was before the original series of patches that this fixes. It
> does not cause any other issues when tested on Synopsys HAPS and Altera
> socfpga platforms.
> 
> Need to revisit this series next release to see if we can address these
> issues without having an unconditional delay.
> 
> Fixes: 09c96980dc72 ("usb: dwc2: Add functions to set and clear force
> mode") Reported-by: Caesar Wang <caesar.upstream-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Tested-by: Caesar Wang <caesar.upstream-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Signed-off-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>

Tested-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
(also on a rk3036 where I hit the described problem)

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
