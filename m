From: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [Bug] Rockchip crypto driver sometimes produces wrong ciphertext
Date: Mon, 8 Apr 2019 11:09:51 -0700
Message-ID: <20190408180948.GC9145@gmail.com>
References: <CAKv+Gu-RKu9jt+2FnV2529zqyLGR8RSu8r4B8eOs-7Om-pL0aQ@mail.gmail.com>
 <1894799.pWIprST79S@phil>
 <f7a0d04c-339e-d9f8-7188-a27d55ad8b4d@rock-chips.com>
 <20190315033140.GB1671@sol.localdomain>
 <AM5PR0901MB115570ABE89DC1285AE07E60D2500@AM5PR0901MB1155.eurprd09.prod.outlook.com>
 <20190404171204.GA121392@gmail.com>
 <20190407124211.fv7pjsozxhnhw56i@gondor.apana.org.au>
 <AM6PR09MB352377D3A58CE6C12464414ED2530@AM6PR09MB3523.eurprd09.prod.outlook.com>
 <20190408055841.xa5dof4e5xqgaitv@gondor.apana.org.au>
 <AM6PR09MB35238739075B080390C11341D22C0@AM6PR09MB3523.eurprd09.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <AM6PR09MB35238739075B080390C11341D22C0@AM6PR09MB3523.eurprd09.prod.outlook.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Pascal Van Leeuwen <pvanleeuwen@insidesecure.com>
Cc: Tao Huang <huangtao@rock-chips.com>, Zain Wang <wzz@rock-chips.com>, Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, Zhang Zhijie <zhangzj@rock-chips.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, Olof Johansson <olof@lixom.net>, "ezequiel@collabora.com" <ezequiel@collabora.com>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Apr 08, 2019 at 08:59:02AM +0000, Pascal Van Leeuwen wrote:
> > > Then where is this specified? Because I read through all the Kernel
> > > Crypto API documentation multiple times, but I have not been able to
> > > find ANY reference to any output IV being stored anywhere.
> > > Yes, I can infer from the source code that this is what the standard
> > > CBC wrapper does, but that may just as well have been a side-effect of
> > > that particular implementation.
> >
> > Patches to improve the documentation are welcome.
> >
> How should someone who did not architect the API himself know the
> documentation is wrong in this regard?  The documentation is the only thing
> I have available to go by ...
> 
> > Any drivers not obeying this API rule will be broken when used in conjunction
> > with algif_skcipher as well as templates such as cts.
> >
> Ok, so  removing it breaks some existing functionality, that might  be a valid
> reason to keep it in ... BUT these may still not be relevant use cases for a
> certain hardware accelerator. Which was NOT a problem until the testmgr
> started actually *failing* and *disabling* implementations on these features.
> (the iv output is just the tip of the iceberg here, really ...)
> 
> So now implementors of hw crypto acceleration have 2 options:
> 1) tell their customers to keep the run-time self-tests disabled, which makes
> them look bad
> -or-
> 2) implement some convoluted work-around in the driver that will slow
> down their actual main use cases to the point where the HW becomes useless
> 
> It would be nice to have some option in testmgr to just test the core algorithm
> itself and not all the nitty gritty corners of the API that may not be relevant
> i.e. split off the core algorithm cases (e.g. proper straightforward encryption
> of a single block of data with a certain key) from the API cases.
> Perhaps a driver could advertise this through some flag: "I'm not fully API
> compliant, so just test the algorithm and not any API corner cases". Or even
> "please don't test me, I will test myself".
> 
> An alternative approach would be capability flags to advertise specific API
> features, but I can see how you can quickly go overboard with that.
> 
> But please do keep in mind that:
> a) These crypto accelerators were NOT designed specifically for the Kernel
> Crypto API, in fact, the majority of them predate it by quite some margin.
> They may have very specific target use cases, like IPsec acceleration or
> disk encryption and not be able to (efficiently) support other API features.
> b) Some features are simply NOT suitable for HW acceleration. A HW centric
> API would not advertise those, but we are where we are now ...
> c) Working around a) or b) in the driver is sometimes possible, but you don't
> want to do that for exception cases as it slows down the common case.
> 

One person's "corner case" is another person's "use case".  Once you register
your driver with the crypto API, you can't control how it's used.  If you
provide "cbc(aes)", for example, anyone in the kernel may get your driver when
they ask the crypto API to do "cbc(aes)" encryption or decryption.

Correctness comes first, and there's no such thing as "testing the algorithm,
not the API", since the API is means by which the algorithm is accessed.  So you
*must* implement the API correctly.  If you don't, it's very much Working As
Intended for the self-tests to disable your driver.

If you aren't happy with the API, then please work with the community to improve
the API instead.  E.g. perhaps we should annotate with a new request flag all
users who may actually need the IV chaining behavior.  Then on all other
requests, implementations wouldn't be required to provide the next IV.  It would
add complexity, but perhaps it would be worthwhile.

Remember that in the case of unsupported lengths, keys, or data layouts, you
also have the option of using a fallback algorithm to handle those cases.  Grep
for CRYPTO_ALG_NEED_FALLBACK to see examples in other drivers.

- Eric
