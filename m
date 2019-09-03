From: "Alex Dewar" <alex.dewar90-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Broken suspend/resume on RK3399-based Chromebook
Date: Tue, 03 Sep 2019 11:26:33 +0100
Message-ID: <BWQAN40QNAV4.2CDUWRNCWYSUA@lenovo-laptop>
References: <CAHNYxRwKScOowbO5QFGbA_SibyqTds+X7hZ1zP4A-FuTEeqP1A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAHNYxRwKScOowbO5QFGbA_SibyqTds+X7hZ1zP4A-FuTEeqP1A-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Alexandru M Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Alexandru,

Thanks for your detailed response.

On Mon Aug 26, 2019 at 1:08 PM Alexandru M Stan wrote:
> Hello Alex,
>
> On Sat, Aug 24, 2019 at 2:55 AM Alex Dewar <alex.dewar90-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> > I've got an Asus Chromebook Flip C101PA, which is based on the Rockchip RK3399
> > SoC, and it seems like suspend and resume is broken (AFAIK it's never worked).
>
> Sounds about right. I don't think it ever worked.

I should probably say that I've only tested on fairly recent kernels, so
I guess it could have worked at some point.

>
> Another debugging tip:
> You should get one of these: https://www.sparkfun.com/products/14746
> It will let you get a serial console out of the rk3399, and you'll
> also be able to see what the EC has to say about stuff.
> How to use it: https://www.chromium.org/chromium-os/ccd
>

I'll look into this; thanks. And thanks for all the work you guys have
put into upstreaming the Chromebook code!

> Please let us know if you find anything interesting,
> Alexandru Stan (amstan)
