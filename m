From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH] pstore/ram: Improve backward compatibility with older
 Chromebooks
Date: Tue, 7 May 2019 09:25:32 -0700
Message-ID: <CAD=FV=UKTDFwq3PSdpPmShRcOtZaH1mU=2H-ynoG4VooV=rKVQ@mail.gmail.com>
References: <20190503174730.245762-1-dianders@chromium.org>
 <CA+ASDXOkHxYumCBv-T0gxTjdMVTu-c=33Lk-0TUgJ3WGUn2DVQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CA+ASDXOkHxYumCBv-T0gxTjdMVTu-c=33Lk-0TUgJ3WGUn2DVQ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Tony Luck <tony.luck-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Kees Cook <keescook-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Anton Vorontsov <anton-9xeibp6oKSgdnm+yROfE0A@public.gmane.org>, Linux Kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Matthias Kaehlcke <mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Colin Cross <ccross-z5hGa2qSFaRBDgjK7y7TUQ@public.gmane.org>, Guenter Roeck <groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, May 6, 2019 at 2:40 PM Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
>
> On Fri, May 3, 2019 at 10:48 AM Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
> > When you try to run an upstream kernel on an old ARM-based Chromebook
> > you'll find that console-ramoops doesn't work.
>
> Ooh, nice! I still get annoyed by old depthcharge firmware. It's
> almost as if we should have gotten an upstream binding approved before
> baking it into firmware...
>
> > --- a/fs/pstore/ram.c
> > +++ b/fs/pstore/ram.c
>
> > @@ -703,6 +704,23 @@ static int ramoops_parse_dt(struct platform_device *pdev,
> >
> >  #undef parse_size
> >
> > +       /*
> > +        * Some old Chromebooks relied on the kernel setting the console_size
> > +        * and pmsg_size to the record size since that's what the downstream
> > +        * kernel did.  These same Chromebooks had "ramoops" straight under
> > +        * the root node which isn't according to the upstream bindings.
>
> The last part of the sentence technically isn't true -- the original
> bindings (notably, with no DT maintainer Reviewed-by) didn't specify
> where such a node should be found:
>
> 35da60941e44 pstore/ram: add Device Tree bindings
>
> so child-of-root used to be a valid location. But anyway, this code is
> just part of a heuristic for "old DT" (where later bindings clarified
> this), so it still seems valid.

I agree that it was unclear in the past, but it is true that being
under the root node is not according to the _current_ upstream
bindings, right?  ;-)


> >  Let's
> > +        * make those old Chromebooks work by detecting this and mimicing the
>
> s/mimicing/mimicking/

Kees: if you want me to spin with this typo fix then please let me
know.  Otherwise I'll assume it's less work for you to just fix it
yourself when applying.

-Doug
