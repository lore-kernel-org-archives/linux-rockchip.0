From: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [U-Boot,v2,2/5] rockchip: rk322x: add sdram driver
Date: Fri, 8 Sep 2017 22:54:54 -0600
Message-ID: <CAPnjgZ09V5ZRi9wR2xWDRaLZAJx8=u-qzVTjrosOCBC3+oQmRw@mail.gmail.com>
References: <1502954257-7256-3-git-send-email-kever.yang@rock-chips.com>
 <alpine.OSX.2.21.1709051140140.20553@vpn-10-11-0-14.lan>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <alpine.OSX.2.21.1709051140140.20553-P6fm21zUGUcV4DTK6cx7e366tl449arB@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: U-Boot Mailing List <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Philipp,

On 5 September 2017 at 03:51, Philipp Tomsich
<philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org> wrote:
> + Simon
>
> Kever,
>
> thanks for moving this to the new location, but it doesn't address my
> concerns that we are duplicating large amounts of code from other SDRAM
> drivers (and that there's large amounts of #define statements where we
> usually use enum definitions for Rockchip).
>
> You may be able to convince me to apply this to the 'next' branch as-is, if
> we get a plan in place to clean up the DRAM controller code over during the
> two merge windows remaining in this year.
>
> @Simon: I know the amount of code-duplication across the DRAM controller
> drivers is a touchy subject for you too --- any additional comments or
> guidance?

Well I haven't changed my mind. I think it would be good to make a
start before any more drivers go in.

But I should leave the specifics to you.

Regards,
Simon
