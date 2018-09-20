From: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Subject: Re: usb typec not doing handling in-kernel
Date: Thu, 20 Sep 2018 13:49:48 -0700
Message-ID: <20180920204948.GA21382@roeck-us.net>
References: <3762490.crBoikqiXD@phil>
 <6e3e7449-1957-e98d-c186-97d960e06c09@roeck-us.net>
 <1961701.QUyZfenaBu@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1961701.QUyZfenaBu@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Heikki Krogerus <heikki.krogerus-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Sep 20, 2018 at 10:21:59AM +0200, Heiko Stuebner wrote:
> Hi Guenter,
> 
> Am Montag, 13. August 2018, 14:29:15 CEST schrieb Guenter Roeck:
> > On 08/13/2018 03:36 AM, Heiko Stuebner wrote:
> > > Hi,
> > > 
> > > I'm currently trying to wrap my head around the new typec subsystem and
> > > also how to do it correctly on Rockchip rk3399 devices.
> > > 
> > > The issue (and Guenter might know quite a bit about that) is that on
> > > ChromeOS devices the embedded controller hides the whole tcpm/vdm
> > > logic from the operating system and just provides a custom interface to
> > > query things like cable state, display-port hotplug status and so on.
> > > 
> > > So right now the rk3399-typec-phy uses that extcon-based interface to
> > > get all status changes but that of course leaves out all systems directly
> > > talking to a fusb302. I did a small drawing to showcase that:
> > > 
> > > -------------    ------------------
> > > | typec-phy |----| extcon-cros-ec |\
> > > -------------    ------------------ \
> > >       |        \                      \
> > > -------------  \ ------------------   \ -----------
> > > |  cdn-dp   |   \|     ?????      |-----| fusb302 |
> > > -------------    ------------------     -----------
> > > 
> > > So to bring everything on the same page, I guess the cros-ec extcon
> > > (drivers/extcon/extcon-usbc-cros-ec.c) should somehow use the typec
> > > functions instead of implementing an extcon? But from reading into the
> > > typec code, it somehow looks like the typec framework expects to be in
> > > control of things like altmode negotiations, or am I misreading something?
> > > 
> > I used to have a patch for the cros-ec extcon driver which ties it into the
> > typec subsystem. Let me see if I can dig it up.
> 
> were your archeological skills working in finding said old patch?
> 

Not very well :-(

Guenter
