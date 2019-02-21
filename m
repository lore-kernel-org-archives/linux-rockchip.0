From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: rk3399: Graphical artifacts when running for-next
Date: Thu, 21 Feb 2019 16:53:48 +0100
Message-ID: <1654246.IP1FNPqO5J@phil>
References: <69ddf17a-232d-fc1f-f6a7-59dbde220395@collabora.com>
 <2996476.nJxoliyDTa@phil>
 <48fe80bd-92bf-41fa-f508-941765e4354b@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <48fe80bd-92bf-41fa-f508-941765e4354b-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Robert Foss <robert.foss-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Tom Cubie <tom-ZvE2cuBqvIQAvxtiuMwx3w@public.gmane.org>, Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 21. Februar 2019, 16:46:19 CET schrieb Robert Foss:
> 
> On 2/21/19 2:26 PM, Heiko Stuebner wrote:
> > Hi Robert,
> > 
> > Am Donnerstag, 21. Februar 2019, 11:27:15 CET schrieb Robert Foss:
> >> Hey Heiko,
> >>
> >> I've just started booting the RK3399 based Radxa Rock Pi 4 on the mainline
> >> kernel. Specifically on linux-rockchip/for-next, with an additional patch
> >> adding the GPU DT node[1].
> >>
> >> Unfortunately I'm seeing an artifact on all display output[2].
> >> It, from the VT to 3D content.
> >>
> >> Is this an issue that has been encountered before?
> > 
> > I haven't seen something like this before. I do test graphics
> > on most Rockchip socs regularly (right now dw-hdmi only
> > on non-rk3399 socs though).
> > 
> > Did you try full linux-next as well? My for-next branch obviously
> > only carries dt/soc-driver stuff but not things like drm-misc.
> > 
> > One possible issue might be the generated clocks. You could check
> > $debug/clk/clk_summary for the dclk_vopX to see if that matches
> > the suggested clock for the mode. (For example check the requested
> > rate in rockchip_vop.c against what it actually gets).
> > 
> 
> I had a look using the current linux-next/master, and I'm seeing the same results.
> Commit: 550f4769c7c4 - Add linux-next specific files for 20190221
> 
> 
> I had also look at the debugfs output:
> # cat /sys/kernel/debug/clk/clk_summary | grep dclk_vop
>    dclk_vop0_div    0 1 0 27000000  0 0  50000
>      dclk_vop0      0 2 0 27000000  0 0 50000
>      dclk_vop0_frac 0 0 0 1350000   0 0 50000
>    dclk_vop1_div    1 1 0 59400000  0 0 50000
>      dclk_vop1      2 2 0 59400000  0 0 50000
>      dclk_vop1_frac 0 0 0 2970000   0 0 50000
> 
> But I can't find a file named rockchip_vop.c exactly. And I'm not entirely sure 
> about how to decipher the expected values from the driver.

drivers/gpu/drm/rockchip_drm_vop.c (my memory of the filename was faulty
it seems). As for comparing to the expected rate, I guess the easiest
way would be to just insert a printk into vop_crtc_mode_fixup()
after the clk_round_rate call, outputting both the requested and
calculated rate and then looking that up in the dmesg.


Heiko
