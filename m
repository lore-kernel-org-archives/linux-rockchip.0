From: Pascal Van Leeuwen <pvanleeuwen-TMv6SC2IrX7YdpcV/sKalQ@public.gmane.org>
Subject: RE: [Bug] Rockchip crypto driver sometimes produces wrong ciphertext
Date: Thu, 4 Apr 2019 13:41:50 +0000
Message-ID: <AM5PR0901MB115570ABE89DC1285AE07E60D2500@AM5PR0901MB1155.eurprd09.prod.outlook.com>
References: <20190126210530.GB709@sol.localdomain>
 <CAKv+Gu-RKu9jt+2FnV2529zqyLGR8RSu8r4B8eOs-7Om-pL0aQ@mail.gmail.com>
 <1894799.pWIprST79S@phil>
 <f7a0d04c-339e-d9f8-7188-a27d55ad8b4d@rock-chips.com>
 <20190315033140.GB1671@sol.localdomain>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190315033140.GB1671-8Kz7deQLoS0mYvmMESoHnA@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Eric Biggers <ebiggers-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Zhang Zhijie <zhangzj-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Zain Wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>, Ard Biesheuvel <ard.biesheuvel-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "open list:HARDWARE RANDOM NUMBER
 GENERATOR CORE" <linux-crypto-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>, "ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org" <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

> The issue is that the self-tests now verify that CBC implementations update the
> IV buffer to contain the next IV, aka the last ciphertext block.  But the Rockchip
> crypto driver doesn't do that, so it needs to be fixed.
>
> This has always been a requirement for CBC implementations so that users can
> chain CBC requests.  Unfortunately it was just never tested for...
>
This did not immediately trigger me when it came flying past a couple of weeks
ago, but I ran into the same issue today with the inside_secure driver I'm playing
with: it does NOT return correct IV outputs for CBC modes.

However ... I'd like to question that very requirement ... if I may :-)

My reasoning is that this IV output *is* available as the last block of either the
output (for encrypt) or input (for decrypt) datastream. So requiring it to be
updated in the IV buffer as well seems redundant to me. It burdens the driver
with an extra data copy operation, while in the majority of practicle use cases
you would not even *need* this output IV. (chaining IV's would not work on
a hardware accelerator anyway, because you would need to serialize the
datastream, meaning you run at the speed of the round-trip latency instead
of the throughput, which is typically one to two orders of a magnitude slower)

And in the odd case you do need it, you can just grab it from the data buffer
yourself.

Pascal van Leeuwen
Silicon IP Architect, Multi-Protocol Engines
