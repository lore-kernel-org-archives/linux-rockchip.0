From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH 2/3] ASoC: rockchip: Make RK3328 GPIO_MUTE control explicit
Date: Thu, 6 Feb 2020 13:05:27 -0500
Message-ID: <CAMdYzYqTEnG_Q-8SvO2R6PeaPXQ3VBKu6iVYhYvb=wK7tT7c3A@mail.gmail.com>
References: <cover.1580950046.git.robin.murphy@arm.com> <29a846da33c02df64eca62b5fa0f3884652f788f.1580950046.git.robin.murphy@arm.com>
 <20200206114606.GM3897@sirena.org.uk> <ad2c941a-9724-510e-959f-3cca3cab1dc2@arm.com>
 <20200206135718.GQ3897@sirena.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200206135718.GQ3897-GFdadSzt00ze9xe1eoZjHA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, alsa-devel-K7yf7f+aM1XWsZ/bQMPhNw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Feb 6, 2020 at 8:57 AM Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
>
> On Thu, Feb 06, 2020 at 12:36:04PM +0000, Robin Murphy wrote:
> > On 2020-02-06 11:46 am, Mark Brown wrote:
>
> > > This makes sense but it is an ABI break so is going to need
> > > quirking for existing boards that unfortunately rely on the
> > > existing behaviour.
>
> > I guess the existing (mis)behaviour could be predicated on an
> > of_machine_is_compatible() check for Rock64 boards - it's ugly, but should
> > do the job if you feel it's more important to be 100% strict about not
> > regressing supported systems for any possible kernel/DTB combination.
>
> Yes, that's what I'm suggesting - we don't need to be exhaustive
> but having an obvious place for people to put the quirk in if
> they are affected is much better practice than just silently
> letting things break.

Might want to put a warning in there too, so that if someone is paying
attention they will see that they are using an out of date device
tree.
