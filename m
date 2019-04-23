From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 2/2] ARM: errata: add support for A12/A17 errata CR711784
Date: Tue, 23 Apr 2019 07:37:53 -0700
Message-ID: <CAD=FV=XWGm6vhdDdYJOSfftYsevnS8VuQUox_9z-kU=08M1oJg@mail.gmail.com>
References: <20190419221803.99322-1-dianders@chromium.org> <20190419221803.99322-2-dianders@chromium.org>
 <c28d37ab-b6d1-4bd0-9e03-dcf9ce499fc8@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <c28d37ab-b6d1-4bd0-9e03-dcf9ce499fc8@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>
Cc: Russell King <linux@armlinux.org.uk>, Mark Rutland <mark.rutland@arm.com>, Jose Salvador Climent Bayarri <Salva.Climent@arm.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Sonny Rao <sonnyrao@chromium.org>, Will Deacon <will.deacon@arm.com>, Bobby Batacharia <bbatacha@arm.com>, Matthias Kaehlcke <mka@chromium.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada <yamada.masahiro@socionext.com>, LKML <linux-kernel@vger.kernel.org>, Paul Burton <paul.burton@mips.com>, Palmer Dabbelt <palmer@sifive.com>, Florian Fainelli <f.fainelli@gmail.com>, Geert Uytterhoeven <geert@linux-m68k.org>, Marc Zyngier <marc.zyngier@arm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, Lin
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Tue, Apr 23, 2019 at 3:19 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Hi Doug,
>
> On 19/04/2019 23:18, Douglas Anderson wrote:
> > This adds a code for turning on chicken bit 11, which appears to avoid
> > a potential CPU deadlock that could occur.  The exact set of
> > instruction needed to trigger this errata is not totaly known but we
> > have a high level of confidence that the problem is fixed by setting
> > chicken bit 11.
> >
> > All details are in http://crbug.com/711784
> >
> > This erratum has no known number and thus I have tagged it CR711784
> > (after the Chrome OS bug number).  I have created separate A12 / A17
> > configs to match how the rest of the A12 / A17 errata is handled.
>
> The written-up workarounds for 85727[12] do actually say to set both
> bits 10 and 11 of the diagnostic register, so you could probably just
> fold this into the first patch and not have to worry about what to call it.
>
> Robin.

Thanks!  I was unable to find any official docs here and my past
contacts with ARM about this matter have been silent.  All I had was a
preliminary errata description and it only included bit 10.

I'll spin a v2 with them both together then.

-Doug
