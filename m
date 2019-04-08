From: Ard Biesheuvel <ard.biesheuvel-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug] Rockchip crypto driver sometimes produces wrong ciphertext
Date: Mon, 8 Apr 2019 23:17:51 +0200
Message-ID: <CAKv+Gu8q6RTT134kZTjKkxDrWLezfio0AVWf8rnTji4wVdUpnw@mail.gmail.com>
References: <20190126210530.GB709@sol.localdomain>
 <CAKv+Gu-RKu9jt+2FnV2529zqyLGR8RSu8r4B8eOs-7Om-pL0aQ@mail.gmail.com>
 <1894799.pWIprST79S@phil>
 <f7a0d04c-339e-d9f8-7188-a27d55ad8b4d@rock-chips.com>
 <20190315033140.GB1671@sol.localdomain>
 <AM5PR0901MB115570ABE89DC1285AE07E60D2500@AM5PR0901MB1155.eurprd09.prod.outlook.com>
 <20190404171204.GA121392@gmail.com>
 <20190407124211.fv7pjsozxhnhw56i@gondor.apana.org.au>
 <AM6PR09MB352377D3A58CE6C12464414ED2530@AM6PR09MB3523.eurprd09.prod.outlook.com>
 <20190408182757.GD9145@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190408182757.GD9145-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Eric Biggers <ebiggers-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Zain Wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Herbert Xu <herbert-lOAM2aK0SrRLBo1qDEOMRrpzq4S04n8Q@public.gmane.org>, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>, Pascal Van Leeuwen <pvanleeuwen-TMv6SC2IrX7YdpcV/sKalQ@public.gmane.org>, Zhang Zhijie <zhangzj-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>, "ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org" <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, 8 Apr 2019 at 20:28, Eric Biggers <ebiggers-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
>
> On Sun, Apr 07, 2019 at 07:12:43PM +0000, Pascal Van Leeuwen wrote:
> >
> > Fact is, there are at least 2 hardware device drivers NOT doing this - and
> > I want to bet a nice sum of money there will be more - and that this has
> > not been noticed prior to adding these tests to testmgr, otherwise this
> > would have been fixed by now. Which seems to confirm that there is no
> > real use case for this functionality.
> >
>
> I really shouldn't have to say this, but just because something hasn't been
> reported doesn't mean it's not a real problem.  Someone could easily be affected
> by one of these bugs where crypto drivers produce the wrong output, and never
> notice it because their use case doesn't involve checking the output against
> another implementation.  Or, perhaps they noticed but never reported it
> upstream.  Or perhaps they didn't have the time or skill to debug the problem so
> just they disabled the broken driver, or used No Crypto instead.
>
> That's why we have tests -- so bugs can be detected immediately rather than
> maybe years out in the field after causing critical security vulnerabilities.
>

Perhaps we could wire this up using a CRYPTO_ALG flag? I.e.,
implementations that need the compliant behavior (such as cts) check
for the flag, and the asynchronous implementations produce two
versions, where the one that lacks the flag has a higher priority.
That way, we don't take the performance hit in cases where it is not
needed.
