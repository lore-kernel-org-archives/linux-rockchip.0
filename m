From: "Lukasz Janyst" <lukasz@jany.st>
Subject: Memory issues with NanoPi M4 (rk3399)
Date: Thu, 24 Oct 2019 23:34:07 +0200
Message-ID: <7a98e121-21e8-4b83-91e1-7b7002643ce1@www.fastmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
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

Dear mailing lists,

I have been trying to install vanilla Debian on my NanoPi M4 with 4GB of RAM (rk3399) and I have been experiencing kernel panics in random places happening always under significant IO pressure. The panics occur mostly in different DMA handlers and the system can work fine for days if it's not under IO pressure.

My setup uses the master branch of uboot as of a couple of day ago. I also use the master branch of arm-trusted-firmware as BL31 with the 0aad563c commit reverted. I reverted this commit because the system fails to boot with it in even though all the addresses processed by arch/arm/mach-rockchip/make_fit_atf.py seem right. The kernel I try to boot is a couple days old version of linux-next with defconfig, but I see the same problems with any mainline kernel I tried.

Robin Murphy pointed me to this conversation: https://lore.kernel.org/linux-arm-kernel/006d3ee0-2711-1b4e-d8cf-6a226fcad0e4@arm.com/ Which led me to believe that the kernel indeed trips over some memory reserved by TF-A at EL3. Therefore, I started playing with memtest to identify the exact address of the problematic region and it turned out to be random. It's always about 300-500 MB in the 0x0000000040000000:0x00000000f5828000 region though.

My knowledge of the internal workings of DRAM is very limited, so I would very much appreciate any hints that may point me in the right direction.

Kind Regards,
Lukasz
