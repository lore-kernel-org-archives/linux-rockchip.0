From: Leon Romanovsky <leon@kernel.org>
Subject: Re: [PATCH] net/3com/3c515: Fix MODULE_ARCH_VERMAGIC redefinition
Date: Mon, 13 Apr 2020 07:55:55 +0300
Message-ID: <20200413045555.GE334007@unreal>
References: <20200224085311.460338-1-leon@kernel.org>
 <20200224085311.460338-4-leon@kernel.org>
 <20200411155623.GA22175@zn.tnic>
 <20200412.210341.1711540878857604145.davem@davemloft.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <20200412.210341.1711540878857604145.davem@davemloft.net>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: David Miller <davem@davemloft.net>
Cc: thor.thayer@linux.intel.com, heiko@sntech.de, irusskikh@marvell.com, andreas@gaisler.com, chris.snook@gmail.com, dave@thedillows.org, jes@trained-monkey.org, iyappan@os.amperecomputing.com, quan@os.amperecomputing.com, linux-acenic@sunsite.dk, andy@greyhouse.net, akiyano@amazon.com, linux-rockchip@lists.infradead.org, wens@csie.org, LinoSanfilippo@gmx.de, vfalico@gmail.com, kuba@kernel.org, thomas.lendacky@amd.com, jcliburn@gmail.com, j.vosburgh@gmail.com, keyur@os.amperecomputing.com, mripard@kernel.org, pcnet32@frontier.com, bp@alien8.de, nios2-dev@lists.rocketboards.org, linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, ionut@badula.org, netanel@amazon.com, mark.einon@gmail.com
List-Id: linux-rockchip.vger.kernel.org

On Sun, Apr 12, 2020 at 09:03:41PM -0700, David Miller wrote:
> From: Borislav Petkov <bp@alien8.de>
> Date: Sat, 11 Apr 2020 17:56:23 +0200
>
> > From: Borislav Petkov <bp@suse.de>
> >
> > Change the include order so that MODULE_ARCH_VERMAGIC from the arch
> > header arch/x86/include/asm/module.h gets used instead of the fallback
> > from include/linux/vermagic.h and thus fix:
> >
> >   In file included from ./include/linux/module.h:30,
> >                    from drivers/net/ethernet/3com/3c515.c:56:
> >   ./arch/x86/include/asm/module.h:73: warning: "MODULE_ARCH_VERMAGIC" redefined
> >      73 | # define MODULE_ARCH_VERMAGIC MODULE_PROC_FAMILY
> >         |
> >   In file included from drivers/net/ethernet/3com/3c515.c:25:
> >   ./include/linux/vermagic.h:28: note: this is the location of the previous definition
> >      28 | #define MODULE_ARCH_VERMAGIC ""
> >         |
> >
> > Fixes: 6bba2e89a88c ("net/3com: Delete driver and module versions from 3com drivers")
> > Signed-off-by: Borislav Petkov <bp@suse.de>
>
> I'm so confused, that commit in the Fixes: tag is _removing_ code but adding
> new #include directives?!?!
>
> Is vermagic.h really needed in these files?

You are completely right, it is not needed at all in those files.

Thanks
