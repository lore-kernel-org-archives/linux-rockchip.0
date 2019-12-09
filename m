From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [Question] rk3399 vfio-pci/sr-iov support
Date: Mon, 9 Dec 2019 08:28:43 -0500
Message-ID: <CAMdYzYoPXWbv4zXet6c9JQEMbqcJi6ZEOui_n82NVmrqNLy_pw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Good Morning,

I'm back with more pcie fun on the rk3399.
I'm trying to get pcie passthrough working for a vm on the rk3399, and
have encountered some roadblocks.

First, vfio-pci doesn't work on the rk3399, as the pcie controller
doesn't bind explicitly to a iommu.
[37528.138212] vfio-pci 0000:01:00.0: assign IRQ: got 226
[37528.138254] vfio-pci: probe of 0000:01:00.0 failed with error -22

# find /sys/kernel/iommu_groups/ -type l
/sys/kernel/iommu_groups/1/devices/ff8f0000.vop
/sys/kernel/iommu_groups/2/devices/ff900000.vop

# virsh start openwrt
error: Failed to start domain openwrt
error: internal error: Process exited prior to exec: libvirt:  error :
internal error: Invalid device 0000:01:00.0 iommu_group file
/sys/bus/pci/devices/0000:01:00.0/iommu_group is not a symlink

Second, sr-iov support is broken.
root@rockpro64:/sys/bus/pci/devices/0000:01:00.0# echo 1 > sriov_numvfs
bash: echo: write error: Input/output error
[37352.907558] pci 0000:01:10.0: [8086:1520] type 7f class 0xffffff
[37352.907578] pci 0000:01:10.0: unknown header type 7f, ignoring device

Do any of y'all have some insight into these issues?
