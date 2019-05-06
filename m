From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] pstore/ram: Improve backward compatibility with older Chromebooks
Date: Mon, 6 May 2019 16:33:59 -0500
Message-ID: <CAL_Jsq+NyMmRqOUehpPCo_PpnU7k+UmPGv0DUGH1uCb54WOtVA@mail.gmail.com>
References: <20190503174730.245762-1-dianders@chromium.org> <CAGXu5jL9cJ+8scZ+Cg9yqdc9+rb563xs-qVjXXuPRJYjNa4Y8w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAGXu5jL9cJ+8scZ+Cg9yqdc9+rb563xs-qVjXXuPRJYjNa4Y8w@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Kees Cook <keescook@chromium.org>
Cc: Douglas Anderson <dianders@chromium.org>, Anton Vorontsov <anton@enomsg.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, Guenter Roeck <groeck@chromium.org>, Matthias Kaehlcke <mka@chromium.org>, Brian Norris <briannorris@chromium.org>, Colin Cross <ccross@android.com>, Tony Luck <tony.luck@intel.com>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, May 6, 2019 at 4:10 PM Kees Cook <keescook@chromium.org> wrote:
>
> From: Douglas Anderson <dianders@chromium.org>
> Date: Fri, May 3, 2019 at 10:48 AM
> To: Kees Cook, Anton Vorontsov
> Cc: <linux-rockchip@lists.infradead.org>, <jwerner@chromium.org>,
> <groeck@chromium.org>, <mka@chromium.org>, <briannorris@chromium.org>,
> Douglas Anderson, Colin Cross, Tony Luck,
> <linux-kernel@vger.kernel.org>
>
> > When you try to run an upstream kernel on an old ARM-based Chromebook
> > you'll find that console-ramoops doesn't work.
> >
> > Old ARM-based Chromebooks, before <https://crrev.com/c/439792>
> > ("ramoops: support upstream {console,pmsg,ftrace}-size properties")
> > used to create a "ramoops" node at the top level that looked like:
> >
> > / {
> >   ramoops {
> >     compatible = "ramoops";
> >     reg = <...>;
> >     record-size = <...>;
> >     dump-oops;
> >   };
> > };
> >
> > ...and these Chromebooks assumed that the downstream kernel would make
> > console_size / pmsg_size match the record size.  The above ramoops
> > node was added by the firmware so it's not easy to make any changes.
> >
> > Let's match the expected behavior, but only for those using the old
> > backward-compatible way of working where ramoops is right under the
> > root node.
> >
> > NOTE: if there are some out-of-tree devices that had ramoops at the
> > top level, left everything but the record size as 0, and somehow
> > doesn't want this behavior, we can try to add more conditions here.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>
> I like this; thanks! Rob is this okay by you? I just want to
> double-check since it's part of the DT parsing logic.

I'll leave it to you. It does fall into the case of supporting
downstream bindings that weren't reviewed (IIRC reviewed maybe, but
not accepted) which isn't great precedent. OTOH, it's a small change
for a largish number of devices.

Rob
