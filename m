From: "Lukasz Janyst" <lukasz@jany.st>
Subject: Re: Memory issues with NanoPi M4 (rk3399)
Date: Sat, 26 Oct 2019 23:56:00 +0200
Message-ID: <3e0a4532-9ddf-4773-92aa-dedeac557707@www.fastmail.com>
References: <7a98e121-21e8-4b83-91e1-7b7002643ce1@www.fastmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <7a98e121-21e8-4b83-91e1-7b7002643ce1@www.fastmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Oct 24, 2019, at 23:34, Lukasz Janyst wrote:
> My setup uses the master branch of uboot as of a couple of day ago. I 
> also use the master branch of arm-trusted-firmware as BL31 with the 
> 0aad563c commit reverted. I reverted this commit because the system 
> fails to boot with it in even though all the addresses processed by 
> arch/arm/mach-rockchip/make_fit_atf.py seem right. The kernel I try to 
> boot is a couple days old version of linux-next with defconfig, but I 
> see the same problems with any mainline kernel I tried.

The code in uboot's drivers/ram/rockchip/sdram_rk3399.c seems to be broken even when looking from a standpoint of a layperson. Some error checks are incorrect, parameters are overridden in multiple places for no good reason, the way some loops and function calls are structured does not make much sense. Furthermore, it appears that the code in plat/rockchip/rk3399/drivers/dram of arm-trusted-firmware is undoing what the bootloader is doing. Has that ever worked for anyone? 

Lukasz
