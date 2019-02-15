From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [GIT PULL] Rockchip clock updates for 5.1
Date: Fri, 15 Feb 2019 11:32:45 +0100
Message-ID: <2268273.zyHXOlfcUi@diego>
References: <48408534.cOKhDiQbmB@phil>
 <154940450309.169292.16565688865245958654@swboyd.mtv.corp.google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <154940450309.169292.16565688865245958654-n1Xw8LXHxjTHt/MElyovVYaSKrA+ACpX0E9HWUfgJXw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Stephen Boyd <sboyd-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 5. Februar 2019, 23:08:23 CET schrieb Stephen Boyd:
> Quoting Heiko Stuebner (2019-02-01 03:17:47)
> 
> > Hi Mike, Stephen,
> > 
> > looks I can re-use my introduction from 4.20 and 5.0 - no big changes
> > again this time.
> > 
> > A rate_parent flag and some fixup for the fractional part of a PLL
> > 
> > So please pull.
> 
> Thanks. Pulled into clk-next. If you like I can pick patches directly
> from list if you send out a reviewed-by tag on the patches. I'm happy
> either way.

It's hard to determine that before each cycle :-) .

The upside right now is, that handling clock-ids gets very easy.
Shared branches between trees for dt-binding ids are not favored,
instead the way to go seems to be doing numbers first and replacing
them in the next cycle when the ids got merged.

Right now I'm also in control of the shared id-branch, merging it myself
into both clock and dts branches, which somehow seems to still be ok,
and hence I save a bit of work :-D .

But of course we can merge the real easy things directly into the clock
tree ... I'll keep that in mind for the next clock patches.


Heiko
