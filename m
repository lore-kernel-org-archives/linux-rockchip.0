From: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v3 0/7] Raspberry Pi 4 PCIe support
Date: Tue, 26 Nov 2019 15:50:21 -0600
Message-ID: <20191126215020.GA191414@google.com>
References: <20191126091946.7970-1-nsaenzjulienne@suse.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191126091946.7970-1-nsaenzjulienne@suse.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc: andrew.murray@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org, james.quinlan@broadcom.com, mbrugger@suse.com, f.fainelli@gmail.com, phil@raspberrypi.org, wahrenst@gmx.net, jeremy.linton@arm.com, linux-pci@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org, linux-acpi@vger.kernel.org, netdev@vger.kernel.org, linux-rdma@vger.kernel.org, linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, Nov 26, 2019 at 10:19:38AM +0100, Nicolas Saenz Julienne wrote:
> This series aims at providing support for Raspberry Pi 4's PCIe
> controller, which is also shared with the Broadcom STB family of
> devices.

> Jim Quinlan (3):
>   dt-bindings: PCI: Add bindings for brcmstb's PCIe device
>   PCI: brcmstb: add Broadcom STB PCIe host controller driver
>   PCI: brcmstb: add MSI capability

Please update these subjects to match the others, i.e., capitalize
"Add".  Also, I think "Add MSI capability" really means "Add support
for MSI ..."; in PCIe terms the "MSI Capability" is a structure in
config space and it's there whether the OS supports it or not.

No need to repost just for this.

> Nicolas Saenz Julienne (4):
>   linux/log2.h: Add roundup/rounddown_pow_two64() family of functions
>   ARM: dts: bcm2711: Enable PCIe controller
>   MAINTAINERS: Add brcmstb PCIe controller
>   arm64: defconfig: Enable Broadcom's STB PCIe controller
