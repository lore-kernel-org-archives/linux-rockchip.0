From: David Miller <davem@davemloft.net>
Subject: Re: [PATCH] net/3com/3c515: Fix MODULE_ARCH_VERMAGIC redefinition
Date: Sun, 12 Apr 2020 21:03:41 -0700 (PDT)
Message-ID: <20200412.210341.1711540878857604145.davem@davemloft.net>
References: <20200224085311.460338-1-leon@kernel.org>
        <20200224085311.460338-4-leon@kernel.org>
        <20200411155623.GA22175@zn.tnic>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <20200411155623.GA22175@zn.tnic>
Sender: netdev-owner@vger.kernel.org
To: bp@alien8.de
Cc: leon@kernel.org, kuba@kernel.org, leonro@mellanox.com, thomas.lendacky@amd.com, keyur@os.amperecomputing.com, pcnet32@frontier.com, vfalico@gmail.com, j.vosburgh@gmail.com, linux-acenic@sunsite.dk, mripard@kernel.org, heiko@sntech.de, mark.einon@gmail.com, chris.snook@gmail.com, linux-rockchip@lists.infradead.org, iyappan@os.amperecomputing.com, irusskikh@marvell.com, dave@thedillows.org, netanel@amazon.com, quan@os.amperecomputing.com, jcliburn@gmail.com, LinoSanfilippo@gmx.de, linux-arm-kernel@lists.infradead.org, andreas@gaisler.com, andy@greyhouse.net, netdev@vger.kernel.org, thor.thayer@linux.intel.com, linux-kernel@vger.kernel.org, ionut@badula.org, akiyano@amazon.com, jes@trained-monkey.org, nios2-dev@lists.rocketboards.org, wens@csie.org
List-Id: linux-rockchip.vger.kernel.org

From: Borislav Petkov <bp@alien8.de>
Date: Sat, 11 Apr 2020 17:56:23 +0200

> From: Borislav Petkov <bp@suse.de>
> 
> Change the include order so that MODULE_ARCH_VERMAGIC from the arch
> header arch/x86/include/asm/module.h gets used instead of the fallback
> from include/linux/vermagic.h and thus fix:
> 
>   In file included from ./include/linux/module.h:30,
>                    from drivers/net/ethernet/3com/3c515.c:56:
>   ./arch/x86/include/asm/module.h:73: warning: "MODULE_ARCH_VERMAGIC" redefined
>      73 | # define MODULE_ARCH_VERMAGIC MODULE_PROC_FAMILY
>         |
>   In file included from drivers/net/ethernet/3com/3c515.c:25:
>   ./include/linux/vermagic.h:28: note: this is the location of the previous definition
>      28 | #define MODULE_ARCH_VERMAGIC ""
>         |
> 
> Fixes: 6bba2e89a88c ("net/3com: Delete driver and module versions from 3com drivers")
> Signed-off-by: Borislav Petkov <bp@suse.de>

I'm so confused, that commit in the Fixes: tag is _removing_ code but adding
new #include directives?!?!

Is vermagic.h really needed in these files?
