From: Pascal Van Leeuwen <pvanleeuwen-TMv6SC2IrX7YdpcV/sKalQ@public.gmane.org>
Subject: RE: [Bug] Rockchip crypto driver sometimes produces wrong ciphertext
Date: Sun, 7 Apr 2019 19:12:43 +0000
Message-ID: <AM6PR09MB352377D3A58CE6C12464414ED2530@AM6PR09MB3523.eurprd09.prod.outlook.com>
References: <20190126210530.GB709@sol.localdomain>
 <CAKv+Gu-RKu9jt+2FnV2529zqyLGR8RSu8r4B8eOs-7Om-pL0aQ@mail.gmail.com>
 <1894799.pWIprST79S@phil>
 <f7a0d04c-339e-d9f8-7188-a27d55ad8b4d@rock-chips.com>
 <20190315033140.GB1671@sol.localdomain>
 <AM5PR0901MB115570ABE89DC1285AE07E60D2500@AM5PR0901MB1155.eurprd09.prod.outlook.com>
 <20190404171204.GA121392@gmail.com>
 <20190407124211.fv7pjsozxhnhw56i@gondor.apana.org.au>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190407124211.fv7pjsozxhnhw56i-lOAM2aK0SrRLBo1qDEOMRrpzq4S04n8Q@public.gmane.org>
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
To: Herbert Xu <herbert-lOAM2aK0SrRLBo1qDEOMRrpzq4S04n8Q@public.gmane.org>, Eric Biggers <ebiggers-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Zain Wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>, Ard Biesheuvel <ard.biesheuvel-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Zhang Zhijie <zhangzj-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "open list:HARDWARE RANDOM NUMBER
 GENERATOR CORE" <linux-crypto-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>, "ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org" <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

> > Herbert, can you explain what users actually rely on the next IV being
> returned?
> > I don't know all the historical context behind this.
>
> Chaining by reusing the output IV has always been part of the API.
>
Then where is this specified? Because I read through all the Kernel Crypto
API documentation multiple times, but I have not been able to find ANY
reference to any output IV being stored anywhere.
Yes, I can infer from the source code that this is what the standard CBC
wrapper does, but that may just as well have been a side-effect of that
particular implementation.

Fact is, there are at least 2 hardware device drivers NOT doing this - and
I want to bet a nice sum of money there will be more - and that this has
not been noticed prior to adding these tests to testmgr, otherwise this
would have been fixed by now. Which seems to confirm that there is no
real use case for this functionality.

So why would we fail and disable crypto drivers that have been working
perfectly fine so far on their true use cases just because of some purely
theoretical "part of the API" that may just as well be personal opinion?

Or add some expensive work-around to the driver, for that matter.
Expensive, because the driver will have to compute the last crypto block
offset, walk the scatter chain, copy the last block data while taking into
account the corner case where this data is crossing scatter blocks.
That's a lot of overhead for something that has no real use case.

Regards,
Pascal
