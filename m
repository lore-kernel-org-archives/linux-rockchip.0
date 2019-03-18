From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v2] drm/rockchip: vop: Support dithering to RGB666
Date: Mon, 18 Mar 2019 15:01:37 +0100
Message-ID: <2165626.tMbNAqDHxK@diego>
References: <CAPCnQJnDB5Z=xNCdBw0R3k18GDKdUeZ__2fBA_YKYzZ6Rdny2Q@mail.gmail.com>
 <223cf04e-5b35-4194-33c2-5614b329ec4b@gmail.com>
 <CAPCnQJ=V32yJ01NZr0EO8hjjs=-zj+0MGddS+qd6txWqFs0mvg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAPCnQJ=V32yJ01NZr0EO8hjjs=-zj+0MGddS+qd6txWqFs0mvg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Urja Rannikko <urjaman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Urja,

Am Montag, 18. M=E4rz 2019, 14:47:37 CET schrieb Urja Rannikko:
> On Thu, Mar 14, 2019 at 5:20 PM Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> > How about RK3066? See/use linux-next.
> =

> Hi and thanks for the notice. The rest of this mail "addressed" for
> anyone interested.

would be me I guess ;-) .

And I was also just looking at the v2 today.

DRM tends to be difficult, as I'm not _that_ confident in spotting all
things while just looking at the patch, that I want to do a roundtrip of
testing on the Rockchip boards I have in my farm.

And finding that time is surprisingly difficult, especially as I haven't
yet managed to export graphical output - in contrast I can do all non-
graphic testing from everywhere with an internet connection.

So in any case, sorry about letting this sit for waaaay to long.


> I've added the dither bits for RK3066 - it doesnt have the bit for
> Allegro/FRC (sel)
> which really isnt a problem, but brought up a question for me:
> Should the code avoid calling vop_reg_write with unsupported registers/bi=
ts?
> I assumed a yes, but based on my tests it already does it on RK3288..
> (atleast x/y_mir_en and act_info iirc).
> =

> This only results in a "Warning: not support reg_name" print in drm
> debug output,
> but to me printing warnings during normal operations (even if they're
> only in debug output) seems wrong.

Rockchip VOPs have the issue, that it seems soc designers make it a game
to move as much registers around as possible between each implementation.

So I guess the silently ignoring of non-existent registers was somehow the
easiest way of dealing with that gracefully.
