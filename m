From: Alexandru M Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: Broken suspend/resume on RK3399-based Chromebook
Date: Mon, 26 Aug 2019 13:08:25 -0700
Message-ID: <CAHNYxRwKScOowbO5QFGbA_SibyqTds+X7hZ1zP4A-FuTEeqP1A@mail.gmail.com>
References: <20190824095446.ztcuounx5stnsven@alex-chromebook>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190824095446.ztcuounx5stnsven@alex-chromebook>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Alex Dewar <alex.dewar90-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hello Alex,

On Sat, Aug 24, 2019 at 2:55 AM Alex Dewar <alex.dewar90-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> I've got an Asus Chromebook Flip C101PA, which is based on the Rockchip RK3399
> SoC, and it seems like suspend and resume is broken (AFAIK it's never worked).

Sounds about right. I don't think it ever worked.

It's possible there's still some patches missing from upstream. You
could check to see if there's anything suspect that's only in the
chromeos-4.4 kernel tree (which is what bob ships with) and was
forgotten to be upstreamed.
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-4.4

> When I try to suspend, the screen goes blank, but the power light stays on
> rather than flashing as it usually does when it suspends. The system then seems
> to be frozen.

The led blinking is dictated by the EC. And the EC knows the state of
the rk3399 because it's supposed to be outputting if it's in suspend
or not via the AP_EC_S3_S0_L pin.
You can follow along at home by looking at the firmware that's running
on the EC: https://chromium.googlesource.com/chromiumos/platform/ec/+/refs/heads/firmware-gru-8785.B
Areas of interest in this codebase: board/bob, power/rk3399.c
Not saying that there's anything wrong in the EC firmware, but it's a
sign that the rk3399 is not doing the right thing (at least in regards
to that gpio).

Another debugging tip:
You should get one of these: https://www.sparkfun.com/products/14746
It will let you get a serial console out of the rk3399, and you'll
also be able to see what the EC has to say about stuff.
How to use it: https://www.chromium.org/chromium-os/ccd

Please let us know if you find anything interesting,
Alexandru Stan (amstan)
