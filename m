From: Pascal Van Leeuwen <pvanleeuwen@insidesecure.com>
Subject: RE: [Bug] Rockchip crypto driver sometimes produces wrong ciphertext
Date: Tue, 9 Apr 2019 16:43:06 +0000
Message-ID: <AM6PR09MB3523E27600A51FA6AC0B2702D22D0@AM6PR09MB3523.eurprd09.prod.outlook.com>
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
 <20190408180948.GC9145@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190408180948.GC9145@gmail.com>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Eric Biggers <ebiggers@kernel.org>
Cc: Tao Huang <huangtao@rock-chips.com>, Zain Wang <wzz@rock-chips.com>, Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, Zhang Zhijie <zhangzj@rock-chips.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "open list:HARDWARE RANDOM NUMBER
 GENERATOR CORE" <linux-crypto@vger.kernel.org>, Olof Johansson <olof@lixom.net>, "ezequiel@collabora.com" <ezequiel@collabora.com>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

> One person's "corner case" is another person's "use case".  Once you
>
That argument works both ways though. Someone else's use case may be
getting decent performance from an accelerator for a specific
application, which has worked fine for years but is now broken to
comply with some (for them!) possibly irrelevant corner of the API.

> register
> your driver with the crypto API, you can't control how it's used.  If
> you
> provide "cbc(aes)", for example, anyone in the kernel may get your
> driver when
> they ask the crypto API to do "cbc(aes)" encryption or decryption.
>
I understand that's how it currently works. So maybe we need some
more control from the driver there, as you suggested below yourself.

> Correctness comes first, and there's no such thing as "testing the
> algorithm,
> not the API", since the API is means by which the algorithm is
> accessed.  So you
> *must* implement the API correctly.  If you don't, it's very much
> Working As
> Intended for the self-tests to disable your driver.
>
But, lacking a formal specification, who decides what is a "correct"
implementation of the API?

> If you aren't happy with the API, then please work with the community
> to improve
> the API instead.
>
That's exactly the plan :-) And I'm not unhappy, by the way ;-)

> E.g. perhaps we should annotate with a new request
> flag all
> users who may actually need the IV chaining behavior.  Then on all
> other
> requests, implementations wouldn't be required to provide the next IV.
> It would
> add complexity, but perhaps it would be worthwhile.
>
There was another suggestion along those lines, but then inverted,
like the user requesting that it does NOT need the IV chaining.
I like that better as it would be fully backward compatible and
you could change just the users that would actually benefit and
leave everything else untouched.

> Remember that in the case of unsupported lengths, keys, or data
> layouts, you
> also have the option of using a fallback algorithm to handle those
> cases.  Grep
> for CRYPTO_ALG_NEED_FALLBACK to see examples in other drivers.
>
Yes, except that I cannot fallback because of the output IV thing
if I don't know the user is going to need the output IV.
I surely don't want to fallback by default! So I need that flag.

Regards,
Pascal
