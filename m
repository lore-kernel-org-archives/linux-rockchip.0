From: Alex Williamson <alex.williamson-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Question] rk3399 vfio-pci/sr-iov support
Date: Mon, 9 Dec 2019 10:05:09 -0700
Message-ID: <20191209100509.5cb950ac@x1.home>
References: <CAMdYzYoPXWbv4zXet6c9JQEMbqcJi6ZEOui_n82NVmrqNLy_pw@mail.gmail.com>
 <b597b9a6-870a-8fbd-6490-59734c04367f@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <b597b9a6-870a-8fbd-6490-59734c04367f-5wv7dgnIgG8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, 9 Dec 2019 14:07:02 +0000
Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org> wrote:

> On 09/12/2019 1:28 pm, Peter Geis wrote:
> > Good Morning,
> > 
> > I'm back with more pcie fun on the rk3399.
> > I'm trying to get pcie passthrough working for a vm on the rk3399, and
> > have encountered some roadblocks.
> > 
> > First, vfio-pci doesn't work on the rk3399, as the pcie controller
> > doesn't bind explicitly to a iommu.
> > [37528.138212] vfio-pci 0000:01:00.0: assign IRQ: got 226
> > [37528.138254] vfio-pci: probe of 0000:01:00.0 failed with error -22
> > 
> > # find /sys/kernel/iommu_groups/ -type l
> > /sys/kernel/iommu_groups/1/devices/ff8f0000.vop
> > /sys/kernel/iommu_groups/2/devices/ff900000.vop
> > 
> > # virsh start openwrt
> > error: Failed to start domain openwrt
> > error: internal error: Process exited prior to exec: libvirt:  error :
> > internal error: Invalid device 0000:01:00.0 iommu_group file
> > /sys/bus/pci/devices/0000:01:00.0/iommu_group is not a symlink  
> 
> That much I can help with somewhat: the major impediment is that RK3399 
> doesn't have an IOMMU in front of PCIe. As far as I'm aware your only 
> option is to resort to the "here be dragons" CONFIG_VFIO_NOIOMMU mode 
> (which I don't know an awful lot about beyond that it's a thing).

And it's a thing that's really only useful if your motivation is to run
something like DPDK in the host and you're not concerned about
isolation between userspace drivers and the host kernel, and you don't
mind tainting the kernel.  It's not useful for things like assigning a
device to a VM as we can't readily do that without an IOMMU for
translation.  Thanks,

Alex
