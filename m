From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2 1/2] drm/bridge/synopsys: dw-hdmi: Handle audio for
 more clock rates
Date: Wed, 26 Jun 2019 12:24:32 -0700
Message-ID: <CAD=FV=VNR1z_WL7rrfv-O5cXFjDowq3qZe-3tg9o9YHjQgyCAA@mail.gmail.com>
References: <CGME20190619211151epcas3p4dbb163c034afa4063869c761b93e24b1@epcas3p4.samsung.com>
 <20190619210718.134951-1-dianders@chromium.org>
 <bec87373-48cc-0c55-9662-a74a7d2a47a0@samsung.com>
 <CAD=FV=WJBkYfRznh6aAyvgKgHb8-AG0hMORdKA0BXCL89wG_7w@mail.gmail.com>
 <a94d9554-fc93-a2d0-9a30-9604db8c123e@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <a94d9554-fc93-a2d0-9a30-9604db8c123e-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Cc: Jernej Skrabec <jernej.skrabec-gGgVlfcn5nU@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Maxime Ripard <maxime.ripard-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Neil Armstrong <narmstrong-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, dri-devel <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Daniel Vetter <daniel-/w4YWyX8dFk@public.gmane.org>, Dylan Reid <dgreid-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Jerome Brunet <jbrunet-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>, Cheng-Yi Chiang <cychiang-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wed, Jun 26, 2019 at 2:56 AM Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org> wrote:
>
> >   AKA: anyone using auto-CTS won't notice any change
> > at all.  I guess the question is: with Auto-CTS should you pick the
> > "ideal" 6272 or a value that allows CTS to be the closest to integral
> > as possible.  By reading between the lines of the spec, I decided that
> > it was slightly more important to allow for an integral CTS.  If
> > achieving an integral CTS wasn't a goal then the spec wouldn't even
> > have listed special cases for any of the clock rates.  We would just
> > be using the ideal N and Auto-CTS and be done with it.  The whole
> > point of the tables they list is to make CTS integral.
>
>
> Specification recommends many contradictory things without explicit
> prioritization, at least I have not found it.
>
> So we should relay on our intuition.
>
> I guess that with auto-cts N we should follow recommendation - I guess
> most sinks have been better tested with recommended values.
>
> So what with non-auto-cts case:
>
> 1. How many devices do not have auto-cts? how many alternative TMDS
> clocks we have? Maybe it is theoretical problem.
>
> 2. Alternating CTS in software is possible, but quite
> complicated/annoying, but at least it will follow recommendation :)

It is OK w/ me if we want to drop my patch.  With the auto-CTS patch
it shouldn't matter anymore.  ...but I still wanted to post it to the
list for posterity in case it is ever useful for someone else.

-Doug
