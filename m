From: Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH] net/3com/3c515: Fix MODULE_ARCH_VERMAGIC redefinition
Date: Sat, 11 Apr 2020 20:41:01 +0200
Message-ID: <20200411184101.GB11128@zn.tnic>
References: <20200224085311.460338-1-leon@kernel.org>
 <20200224085311.460338-4-leon@kernel.org>
 <20200411155623.GA22175@zn.tnic>
 <20200411161156.GA200683@unreal>
 <20200411173504.GA11128@zn.tnic>
 <20200411181015.GC200683@unreal>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200411181015.GC200683@unreal>
Sender: linux-kernel-owner@vger.kernel.org
To: Leon Romanovsky <leon@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Tom Lendacky <thomas.lendacky@amd.com>, Keyur Chudgar <keyur@os.amperecomputing.com>, Don Fry <pcnet32@frontier.com>, Veaceslav Falico <vfalico@gmail.com>, Jay Vosburgh <j.vosburgh@gmail.com>, linux-acenic@sunsite.dk, Maxime Ripard <mripard@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Mark Einon <mark.einon@gmail.com>, Chris Snook <chris.snook@gmail.com>, linux-rockchip@lists.infradead.org, Iyappan Subramanian <iyappan@os.amperecomputing.com>, Igor Russkikh <irusskikh@marvell.com>, David Dillow <dave@thedillows.org>, Netanel Belgazal <netanel@amazon.com>, Quan Nguyen <quan@os.amperecomputing.com>, Jay Cliburn <jcliburn@gmail.com>, Lino Sanfilippo <LinoSanfilippo@gmx.>
List-Id: linux-rockchip.vger.kernel.org

On Sat, Apr 11, 2020 at 09:10:15PM +0300, Leon Romanovsky wrote:
> I want to think that it was an outcome of some 0-day kbuild report,
> but I am not sure about that anymore [1].

I pushed it here:

https://git.kernel.org/pub/scm/linux/kernel/git/bp/bp.git/log/?h=rc0%2b0-3c

The 0day bot will send me a mail soon. :)

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette
