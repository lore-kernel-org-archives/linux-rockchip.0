From: Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>
Subject: Re: [GIT PULL 2/2] Rockchip soc fix for 4.3
Date: Tue, 25 Aug 2015 10:17:38 -0700
Message-ID: <CAOesGMiVy5F-EJFCyj5LLKCGUWNZGenrK6AhbjubfBADXMxE_A@mail.gmail.com>
References: <1879932.6Bpqy7C2KO@phil>
	<9416843.VhjrryKIms@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <9416843.VhjrryKIms@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org" <arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Aug 25, 2015 at 2:30 AM, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
> Hi Arnd, Kevin, Olof,
>
> Fabio did find an error in what is returned as error codes in the init of
> the suspend code. Nobody complained about this actually breaking stuff
> but it would be nice to have this fixed nevertheless, so please pull.
>
>
> Thanks
> Heiko
>
>
> The following changes since commit 9bb91ae970dd004393a3d7d09bdcc30dfe2f8693:
>
>   ARM: rockchip: enable PMU_GPIOINT_WAKEUP_EN when entering shallow suspend (2015-08-06 13:05:14 +0200)
>
> are available in the git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.3-rockchip32-soc3
>
> for you to fetch changes up to 2a03c025fdea25a491c359b31d8a8c8d452b06d0:
>
>   ARM: rockchip: pm: Fix PTR_ERR() argument (2015-08-24 12:39:14 +0200)

Merged, thanks.


-Olof
