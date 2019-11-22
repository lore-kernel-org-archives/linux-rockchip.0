From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [BUG] rk3399-rockpro64 pcie synchronous external abort
Date: Thu, 21 Nov 2019 20:02:50 -0500
Message-ID: <CAMdYzYowLb-FRUxP_TC+4LFwYdvszq+mBvfXBiDTCqtbF0x5xg@mail.gmail.com>
References: <CAMdYzYp7kQdMKzX2RQW0tY2P4Um=CNJW93RPquBmYATRGrxwng@mail.gmail.com>
 <20191112022938.GA89741@google.com>
 <CAMdYzYrYHtiEXwiKxwWcKSV7Re6dG4zTvkKtZxvso+fLBRYbPQ@mail.gmail.com>
 <991e386e-4c4f-fcbd-89a1-1edd82f63ece@arm.com>
 <CAMdYzYri-yroFtvVXdNZH=sNOM7RP_PBHVnmbHuAKmGBZ0GifA@mail.gmail.com>
 <CAMdYzYrc-AJNpnqR6Xw9Np0wuUvS4-u+TCS2WEo78TfyEhCQKg@mail.gmail.com>
 <CAMdYzYow8SuXb_8ow433O_+Wezxb-U08WDUiLxcTKh+1_zBzkQ@mail.gmail.com>
 <CAMdYzYphu1vHEprfry52+vH9Hjp3ZddgY5hk4Xqk2b3v=DU80g@mail.gmail.com>
 <2a381384-9d47-a7e2-679c-780950cd862d@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2a381384-9d47-a7e2-679c-780950cd862d-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Bjorn Helgaas <helgaas-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, Nov 20, 2019 at 9:05 PM Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
>
<snip>
>
> Not having too much time to follow up w/ upstream development, sorry.
> I attach a patch based on Linux-next for debugging, but I don't know if
> it could work as expected since I can't test it now. But at least it
> shows what the problems were.

Well it is certainly hideous, and does not compile cleanly (built-in
complains, module is broken), but it finished scanning all buses.
I'll do some more serious testing and get back to you with more results.
Thanks!
