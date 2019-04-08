From: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [Bug] Rockchip crypto driver sometimes produces wrong ciphertext
Date: Mon, 8 Apr 2019 11:27:58 -0700
Message-ID: <20190408182757.GD9145@gmail.com>
References: <20190126210530.GB709@sol.localdomain>
 <CAKv+Gu-RKu9jt+2FnV2529zqyLGR8RSu8r4B8eOs-7Om-pL0aQ@mail.gmail.com>
 <1894799.pWIprST79S@phil>
 <f7a0d04c-339e-d9f8-7188-a27d55ad8b4d@rock-chips.com>
 <20190315033140.GB1671@sol.localdomain>
 <AM5PR0901MB115570ABE89DC1285AE07E60D2500@AM5PR0901MB1155.eurprd09.prod.outlook.com>
 <20190404171204.GA121392@gmail.com>
 <20190407124211.fv7pjsozxhnhw56i@gondor.apana.org.au>
 <AM6PR09MB352377D3A58CE6C12464414ED2530@AM6PR09MB3523.eurprd09.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <AM6PR09MB352377D3A58CE6C12464414ED2530@AM6PR09MB3523.eurprd09.prod.outlook.com>
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

On Sun, Apr 07, 2019 at 07:12:43PM +0000, Pascal Van Leeuwen wrote:
> 
> Fact is, there are at least 2 hardware device drivers NOT doing this - and
> I want to bet a nice sum of money there will be more - and that this has
> not been noticed prior to adding these tests to testmgr, otherwise this
> would have been fixed by now. Which seems to confirm that there is no
> real use case for this functionality.
> 

I really shouldn't have to say this, but just because something hasn't been
reported doesn't mean it's not a real problem.  Someone could easily be affected
by one of these bugs where crypto drivers produce the wrong output, and never
notice it because their use case doesn't involve checking the output against
another implementation.  Or, perhaps they noticed but never reported it
upstream.  Or perhaps they didn't have the time or skill to debug the problem so
just they disabled the broken driver, or used No Crypto instead.

That's why we have tests -- so bugs can be detected immediately rather than
maybe years out in the field after causing critical security vulnerabilities.

- Eric
