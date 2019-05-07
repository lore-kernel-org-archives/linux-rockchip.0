From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] pstore/ram: Improve backward compatibility with older Chromebooks
Date: Mon, 6 May 2019 21:51:20 -0700
Message-ID: <CAD=FV=Vxp-U7mZUNmAAOja5pt-8rZqPryEvwTg_Dv3ChuH_TrA@mail.gmail.com>
References: <20190503174730.245762-1-dianders@chromium.org>
 <CAGXu5jL9cJ+8scZ+Cg9yqdc9+rb563xs-qVjXXuPRJYjNa4Y8w@mail.gmail.com> <CAD=FV=WcjfUwH62bHVELOmzViv7d329r6+HfPqAyXMjKCO7LeQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=WcjfUwH62bHVELOmzViv7d329r6+HfPqAyXMjKCO7LeQ@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Kees Cook <keescook@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Anton Vorontsov <anton@enomsg.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, Guenter Roeck <groeck@chromium.org>, Matthias Kaehlcke <mka@chromium.org>, Brian Norris <briannorris@chromium.org>, Colin Cross <ccross@android.com>, Tony Luck <tony.luck@intel.com>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, May 6, 2019 at 4:58 PM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Mon, May 6, 2019 at 2:10 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > From: Douglas Anderson <dianders@chromium.org>
> > Date: Fri, May 3, 2019 at 10:48 AM
> > To: Kees Cook, Anton Vorontsov
> > Cc: <linux-rockchip@lists.infradead.org>, <jwerner@chromium.org>,
> > <groeck@chromium.org>, <mka@chromium.org>, <briannorris@chromium.org>,
> > Douglas Anderson, Colin Cross, Tony Luck,
> > <linux-kernel@vger.kernel.org>
> >
> > > When you try to run an upstream kernel on an old ARM-based Chromebook
> > > you'll find that console-ramoops doesn't work.
> > >
> > > Old ARM-based Chromebooks, before <https://crrev.com/c/439792>
> > > ("ramoops: support upstream {console,pmsg,ftrace}-size properties")
> > > used to create a "ramoops" node at the top level that looked like:
> > >
> > > / {
> > >   ramoops {
> > >     compatible = "ramoops";
> > >     reg = <...>;
> > >     record-size = <...>;
> > >     dump-oops;
> > >   };
> > > };
> > >
> > > ...and these Chromebooks assumed that the downstream kernel would make
> > > console_size / pmsg_size match the record size.  The above ramoops
> > > node was added by the firmware so it's not easy to make any changes.
> > >
> > > Let's match the expected behavior, but only for those using the old
> > > backward-compatible way of working where ramoops is right under the
> > > root node.
> > >
> > > NOTE: if there are some out-of-tree devices that had ramoops at the
> > > top level, left everything but the record size as 0, and somehow
> > > doesn't want this behavior, we can try to add more conditions here.
> > >
> > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> >
> > I like this; thanks! Rob is this okay by you? I just want to
> > double-check since it's part of the DT parsing logic.
> >
> > I'll pick it up and add a Cc: stable.
>
> Hold off a second--I may need to send out a v2 but out of time for the
> day.  I think I need a #include file to fix errors on x86:
>
> > implicit declaration of function 'of_node_is_root' [-Werror,-Wimplicit-function-declaration
>
> I'm unfortunately out of time for now, but I'll post a v2 within the next day.

OK, it needs this to land first:

https://lore.kernel.org/lkml/20190507044801.250396-1-dianders@chromium.org/T/#u

I thought it'd be OK to just send a separate patch.

-Doug
