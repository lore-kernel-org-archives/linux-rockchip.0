From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Failed to boot ARM64 boards for recent linux-next
Date: Tue, 20 Mar 2018 16:48:49 +0800
Message-ID: <dae4b3b8-3da4-4a86-ac4a-0631802fa546@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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
To: Marc Zyngier <marc.zyngier@arm.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, shawn.lin@rock-chips.com, Jeffy Chen <jeffy.chen@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Marc,

     I was able to boot my RK3399 board with in linux-next-20180314,
but not today. My bisect robot shows me it was introduced by

commit d6062a6d62c643a06c393745d032da3e6441d4bd
Author: Marc Zyngier <marc.zyngier@arm.com>
Date:   Fri Mar 9 14:53:19 2018 +0000

     irqchip/gic-v3: Reset APgRn registers at boot time

     Booting a crash kernel while in an interrupt handler is likely
     to leave the Active Priority Registers with some state that
     is not relevant to the new kernel, and is likely to lead
     to erratic behaviours such as interrupts not firing as their
     priority is already active.

     As a sanity measure, wipe the APRs clean on startup. We make
     sure to wipe both group 0 and 1 registers in order to avoid
     any surprise.


The panic log is here:
https://paste.ubuntu.com/p/7WrJJDG6JQ/

Is it a known issue or is there a coming patch for that?
