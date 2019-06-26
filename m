From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: Re: [U-Boot] [PATCH v2 00/99] ram: rk3399: Add LPDDR4 support
Date: Wed, 26 Jun 2019 15:52:44 +0530
Message-ID: <CAMty3ZA9HRYx4tYDWAFoG5geQeyB1VPkofdU-4jSDNHY0ZEHdA@mail.gmail.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
 <CA+E=qVfuy-UYUWujYC8fG+Os4tefPdYzFECkZZdoctvmiSMzcA@mail.gmail.com>
 <CAMty3ZBr3oy1PxQ3C6fLQZAfPR3Dio7pX0m+y7LApAMQr5gbkA@mail.gmail.com>
 <CAAEAJfAxgF2JqOUhjXLmn5RVGMLbM2-7JqsyZgXvfU6Q9ScK+A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAAEAJfAxgF2JqOUhjXLmn5RVGMLbM2-7JqsyZgXvfU6Q9ScK+A-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Ezequiel Garcia <ezequiel-30ULvvUtt6G51wMPkGsGjgyUoB5FGQPZ@public.gmane.org>
Cc: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Akash Gajjar <gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Vasily Khoruzhick <anarsoul-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, U-Boot Mailing List <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Jun 26, 2019 at 12:12 AM Ezequiel Garcia
<ezequiel-30ULvvUtt6G51wMPkGsGjgyUoB5FGQPZ@public.gmane.org> wrote:
>
> Hi Jagan,
>
> Thanks for your hard work. I'm sure everyone in the Rockchip community
> is excited about finally having this support in U-Boot.
>
> On Tue, 25 Jun 2019 at 12:46, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org> wrote:
> [..]
> > >
> > > Was it absolutely necessary to split these changes into 99 commits? I
> > > believe at least some of them can be squashed. Reviewing 99 patches
> > > isn't feasible.
> >
> > Squashed, I'm not sure because the patches were created to satisfy the
> > bisectability and travis-ci, if you find any please feel to comment.
> > About the commit count, I have mentioned in v1, the idea of having
> > many commits in one series to have all lpddr4(-related) changes in one
> > place and also all the commit has incremental approach of supporting
> > rank detection and lpddr4. If require I'm open to sent next versions
> > as multiple series, no problem on that.
> >
>
> I strongly agree with Vasily, and I don't think multiple series makes it any
> better.
>
> What's the reason for having two commits for:
>
> "ram: rk3399: Set lpddr4 MR3" and "ram: rk3399: Set lpddr4 MR12" ?

These are individual lpddr4 set rate registers to support, each one is
independent on it' own initialization and more over on the whole, it
is critical to review.

>
> Or splitting all the "ram: rk3399: Add ... macro" ?

You mean the patches 13 to 20 same like above each one has it's own
meaning. It is not meaningful to squash them all.

>
> What do you loose if you merge the patches into one?
>
> I must confess I am very surprised, and don't really understand what do you
> gain with this excessive split. Normally, when we are adding a new feature,
> we normally don't need many patches, so it's the other way around, really.
>
> Bisectability is about not breaking existing support, but because the feature
> is new, normally this is easy.

Look, like the whole confusion seems to be because of more patches in
one series and the cover-letter states that it support lpddr4. I
understand it now, will send the relevant changes in next version
accordingly, if require I will squash if any.

Jagan.
