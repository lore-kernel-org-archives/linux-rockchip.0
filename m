From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: sound: convert rockchip spdif bindings to yaml
Date: Tue, 24 Mar 2020 14:39:56 +0100
Message-ID: <2135168.SEOWuCda4h@diego>
References: <20200324123155.11858-1-jbx6244@gmail.com> <20200324133506.GC7039@sirena.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200324133506.GC7039-GFdadSzt00ze9xe1eoZjHA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, alsa-devel-K7yf7f+aM1XWsZ/bQMPhNw@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Mark,

Am Dienstag, 24. März 2020, 14:35:06 CET schrieb Mark Brown:
> On Tue, Mar 24, 2020 at 01:31:53PM +0100, Johan Jonker wrote:
> > Current dts files with 'spdif' nodes are manually verified.
> > In order to automate this process rockchip-spdif.txt
> > has to be converted to yaml.
> 
> > Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > ---
> > Changed V2:
> >   dmas and dma-names layout
> 
> This is the second v2 you've sent of this today

hmm at least when looking at my inbox ... I got one series for
spdif in v2 (this one) and one for i2s in v2. And yes they do look
somewhat identical in what they do but of course handle binding
changes for different controllers.

Heiko

> - it adds these but
> drops Rob's ack?
> 
