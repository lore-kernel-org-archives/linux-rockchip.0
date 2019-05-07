From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] pstore/ram: Improve backward compatibility with older Chromebooks
Date: Tue, 7 May 2019 15:19:52 -0700
Message-ID: <CAD=FV=U5heONCv=W5x6cL_JAmJaeDrjMa0CnQ=UVu+DTZZBNKQ@mail.gmail.com>
References: <20190503174730.245762-1-dianders@chromium.org>
 <CAGXu5jL9cJ+8scZ+Cg9yqdc9+rb563xs-qVjXXuPRJYjNa4Y8w@mail.gmail.com>
 <CAD=FV=WcjfUwH62bHVELOmzViv7d329r6+HfPqAyXMjKCO7LeQ@mail.gmail.com> <30361ae7-36a6-0858-77ec-40493ef44b98@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <30361ae7-36a6-0858-77ec-40493ef44b98@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Frank Rowand <frowand.list@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Rob Herring <robh@kernel.org>, Anton Vorontsov <anton@enomsg.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, Guenter Roeck <groeck@chromium.org>, Matthias Kaehlcke <mka@chromium.org>, Brian Norris <briannorris@chromium.org>, Colin Cross <ccross@android.com>, Tony Luck <tony.luck@intel.com>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Tue, May 7, 2019 at 3:17 PM Frank Rowand <frowand.list@gmail.com> wrote:
>
> On 5/6/19 4:58 PM, Doug Anderson wrote:
> > Hi,
> >
> > On Mon, May 6, 2019 at 2:10 PM Kees Cook <keescook@chromium.org> wrote:
> >>
> >> From: Douglas Anderson <dianders@chromium.org>
> >> Date: Fri, May 3, 2019 at 10:48 AM
> >> To: Kees Cook, Anton Vorontsov
> >> Cc: <linux-rockchip@lists.infradead.org>, <jwerner@chromium.org>,
> >> <groeck@chromium.org>, <mka@chromium.org>, <briannorris@chromium.org>,
> >> Douglas Anderson, Colin Cross, Tony Luck,
> >> <linux-kernel@vger.kernel.org>
> >>
> >>> When you try to run an upstream kernel on an old ARM-based Chromebook
> >>> you'll find that console-ramoops doesn't work.
> >>>
> >>> Old ARM-based Chromebooks, before <https://crrev.com/c/439792>
> >>> ("ramoops: support upstream {console,pmsg,ftrace}-size properties")
> >>> used to create a "ramoops" node at the top level that looked like:
> >>>
> >>> / {
> >>>   ramoops {
> >>>     compatible = "ramoops";
> >>>     reg = <...>;
> >>>     record-size = <...>;
> >>>     dump-oops;
> >>>   };
> >>> };
> >>>
> >>> ...and these Chromebooks assumed that the downstream kernel would make
> >>> console_size / pmsg_size match the record size.  The above ramoops
> >>> node was added by the firmware so it's not easy to make any changes.
> >>>
> >>> Let's match the expected behavior, but only for those using the old
> >>> backward-compatible way of working where ramoops is right under the
> >>> root node.
> >>>
> >>> NOTE: if there are some out-of-tree devices that had ramoops at the
> >>> top level, left everything but the record size as 0, and somehow
> >>> doesn't want this behavior, we can try to add more conditions here.
> >>>
> >>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> >>
> >> I like this; thanks! Rob is this okay by you? I just want to
> >> double-check since it's part of the DT parsing logic.
> >>
> >> I'll pick it up and add a Cc: stable.
> >
> > Hold off a second--I may need to send out a v2 but out of time for the
> > day.  I think I need a #include file to fix errors on x86:
> >
> >> implicit declaration of function 'of_node_is_root' [-Werror,-Wimplicit-function-declaration
>
> Instead of checking "of_node_is_root(parent_node)" the patch could check
> for parent_node not "/reserved-memory".  Then the x86 error would not
> occur.
>
> The check I am suggesting is not as precise, but it should be good enough
> for this case, correct?

Sure, there are a million different ways to slice it.  If you prefer
that instead of adding a dummy of_node_is_root() I'm happy to do that.

-Doug
