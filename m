From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [RFC] Permanent Fix for RK33 gmac 1500 mtu bug
Date: Fri, 10 Jan 2020 14:36:23 -0500
Message-ID: <CAMdYzYokRUXRQiZ8d0QxvmT9KZkypZfNpQUbzWovx+WzKu_OFg@mail.gmail.com>
References: <CAMdYzYpHxMELdB4HzsViFvrLcDzG0A4000PJU6wHTaq4V9c1Nw@mail.gmail.com>
 <CAMdYzYo6HG+NK2BHNaULtD=Lu=Ozd6pFW4YRXF8QF_UGLjJN_w@mail.gmail.com>
 <E3092315-8D1F-4A43-B485-02D526F57B21@gmail.com>
 <CAMdYzYordu8S4S9nT=af4SeuLq-nvUT12XN9TgE=EbSYo4=81A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAMdYzYordu8S4S9nT=af4SeuLq-nvUT12XN9TgE=EbSYo4=81A-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Hugh Cole-Baker <sigmaris-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

<snip>

Good Afternoon,

There has been significant code dumped in to 5.4.x by Jose Abreu
<Jose.Abreu-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>.
Today I clean built 5.4.10 and it seems at least on the rk3399 our tx
offload issue is resolved.

I'm currently load testing, but if a few others would be willing to
test as well it would be greatly appreciated.

Happy New Year!
