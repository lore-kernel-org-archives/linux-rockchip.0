From: Pascal Van Leeuwen <pvanleeuwen-TMv6SC2IrX7YdpcV/sKalQ@public.gmane.org>
Subject: RE: [Bug] Rockchip crypto driver sometimes produces wrong ciphertext
Date: Mon, 8 Apr 2019 08:59:02 +0000
Message-ID: <AM6PR09MB35238739075B080390C11341D22C0@AM6PR09MB3523.eurprd09.prod.outlook.com>
References: <20190126210530.GB709@sol.localdomain>
 <CAKv+Gu-RKu9jt+2FnV2529zqyLGR8RSu8r4B8eOs-7Om-pL0aQ@mail.gmail.com>
 <1894799.pWIprST79S@phil>
 <f7a0d04c-339e-d9f8-7188-a27d55ad8b4d@rock-chips.com>
 <20190315033140.GB1671@sol.localdomain>
 <AM5PR0901MB115570ABE89DC1285AE07E60D2500@AM5PR0901MB1155.eurprd09.prod.outlook.com>
 <20190404171204.GA121392@gmail.com>
 <20190407124211.fv7pjsozxhnhw56i@gondor.apana.org.au>
 <AM6PR09MB352377D3A58CE6C12464414ED2530@AM6PR09MB3523.eurprd09.prod.outlook.com>
 <20190408055841.xa5dof4e5xqgaitv@gondor.apana.org.au>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190408055841.xa5dof4e5xqgaitv-lOAM2aK0SrRLBo1qDEOMRrpzq4S04n8Q@public.gmane.org>
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
To: Herbert Xu <herbert-lOAM2aK0SrRLBo1qDEOMRrpzq4S04n8Q@public.gmane.org>
Cc: Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Zhang Zhijie <zhangzj-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Zain Wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>, Ard Biesheuvel <ard.biesheuvel-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Eric Biggers <ebiggers-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>, "ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org" <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

> > Then where is this specified? Because I read through all the Kernel
> > Crypto API documentation multiple times, but I have not been able to
> > find ANY reference to any output IV being stored anywhere.
> > Yes, I can infer from the source code that this is what the standard
> > CBC wrapper does, but that may just as well have been a side-effect of
> > that particular implementation.
>
> Patches to improve the documentation are welcome.
>
How should someone who did not architect the API himself know the
documentation is wrong in this regard?  The documentation is the only thing
I have available to go by ...

> Any drivers not obeying this API rule will be broken when used in conjunction
> with algif_skcipher as well as templates such as cts.
>
Ok, so  removing it breaks some existing functionality, that might  be a valid
reason to keep it in ... BUT these may still not be relevant use cases for a
certain hardware accelerator. Which was NOT a problem until the testmgr
started actually *failing* and *disabling* implementations on these features.
(the iv output is just the tip of the iceberg here, really ...)

So now implementors of hw crypto acceleration have 2 options:
1) tell their customers to keep the run-time self-tests disabled, which makes
them look bad
-or-
2) implement some convoluted work-around in the driver that will slow
down their actual main use cases to the point where the HW becomes useless

It would be nice to have some option in testmgr to just test the core algorithm
itself and not all the nitty gritty corners of the API that may not be relevant
i.e. split off the core algorithm cases (e.g. proper straightforward encryption
of a single block of data with a certain key) from the API cases.
Perhaps a driver could advertise this through some flag: "I'm not fully API
compliant, so just test the algorithm and not any API corner cases". Or even
"please don't test me, I will test myself".

An alternative approach would be capability flags to advertise specific API
features, but I can see how you can quickly go overboard with that.

But please do keep in mind that:
a) These crypto accelerators were NOT designed specifically for the Kernel
Crypto API, in fact, the majority of them predate it by quite some margin.
They may have very specific target use cases, like IPsec acceleration or
disk encryption and not be able to (efficiently) support other API features.
b) Some features are simply NOT suitable for HW acceleration. A HW centric
API would not advertise those, but we are where we are now ...
c) Working around a) or b) in the driver is sometimes possible, but you don't
want to do that for exception cases as it slows down the common case.

Regards,
Pascal
