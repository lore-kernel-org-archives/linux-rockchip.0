From: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [Bug] Rockchip crypto driver sometimes produces wrong ciphertext
Date: Thu, 4 Apr 2019 10:12:05 -0700
Message-ID: <20190404171204.GA121392@gmail.com>
References: <20190126210530.GB709@sol.localdomain>
 <CAKv+Gu-RKu9jt+2FnV2529zqyLGR8RSu8r4B8eOs-7Om-pL0aQ@mail.gmail.com>
 <1894799.pWIprST79S@phil>
 <f7a0d04c-339e-d9f8-7188-a27d55ad8b4d@rock-chips.com>
 <20190315033140.GB1671@sol.localdomain>
 <AM5PR0901MB115570ABE89DC1285AE07E60D2500@AM5PR0901MB1155.eurprd09.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <AM5PR0901MB115570ABE89DC1285AE07E60D2500@AM5PR0901MB1155.eurprd09.prod.outlook.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Herbert Xu <herbert@gondor.apana.org.au>
Cc: Tao Huang <huangtao@rock-chips.com>, Zain Wang <wzz@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, Pascal Van Leeuwen <pvanleeuwen@insidesecure.com>, Zhang Zhijie <zhangzj@rock-chips.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, Olof Johansson <olof@lixom.net>, "ezequiel@collabora.com" <ezequiel@collabora.com>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Apr 04, 2019 at 01:41:50PM +0000, Pascal Van Leeuwen wrote:
> > The issue is that the self-tests now verify that CBC implementations update the
> > IV buffer to contain the next IV, aka the last ciphertext block.  But the Rockchip
> > crypto driver doesn't do that, so it needs to be fixed.
> >
> > This has always been a requirement for CBC implementations so that users can
> > chain CBC requests.  Unfortunately it was just never tested for...
> >
> This did not immediately trigger me when it came flying past a couple of weeks
> ago, but I ran into the same issue today with the inside_secure driver I'm playing
> with: it does NOT return correct IV outputs for CBC modes.
> 
> However ... I'd like to question that very requirement ... if I may :-)
> 
> My reasoning is that this IV output *is* available as the last block of either the
> output (for encrypt) or input (for decrypt) datastream. So requiring it to be
> updated in the IV buffer as well seems redundant to me. It burdens the driver
> with an extra data copy operation, while in the majority of practicle use cases
> you would not even *need* this output IV. (chaining IV's would not work on
> a hardware accelerator anyway, because you would need to serialize the
> datastream, meaning you run at the speed of the round-trip latency instead
> of the throughput, which is typically one to two orders of a magnitude slower)
> 
> And in the odd case you do need it, you can just grab it from the data buffer
> yourself.
> 
> Pascal van Leeuwen
> Silicon IP Architect, Multi-Protocol Engines
> 

Herbert, can you explain what users actually rely on the next IV being returned?
I don't know all the historical context behind this.

- Eric
