From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [BUG] rk3399 rockpro64 fails to power off
Date: Mon, 25 Nov 2019 19:06:41 -0500
Message-ID: <CAMdYzYoCxdeW-eNksDC1Gss0it4_4j+xbHbXFhtJ0reR44Ezpw@mail.gmail.com>
References: <CAMdYzYpi-wAsUu92gJUF3CMm7dDd8yFCAV-yDpuy=d7ZBGoZnA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAMdYzYpi-wAsUu92gJUF3CMm7dDd8yFCAV-yDpuy=d7ZBGoZnA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Nov 25, 2019 at 11:34 AM Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>
> Good Morning,
>
> Another issue I've come across with the rockpro64.
> When issuing a shutdown command, the board will halt, but never powers off.
>
> While the rk808 is assigned as the rockchip,system-power-controller in
> the devicetree, it is not binding to the pm-poweroff command.
> This is due to the psci driver already binding to the pm-poweroff command.
>
> I have only managed to test this with the rockchip miniloader, both on
> rockchip-u-boot and mainline-u-boot, the behavior is the same.
> I'm not sure if this is a bootloader issue, atf issue, or psci driver
> misbehavior.
> As atf should be handling the psci command, it should be powering off
> the board, but I am unsure if it has the capability of doing so.
> If it does not, then the rk808 driver should be assigned to
> pm-poweroff, but it does not because psci already claimed it.

Confirmed the issue also occurs with tpl/spl mainline u-boot.
I'm running the latest atf from the atf github repository.
