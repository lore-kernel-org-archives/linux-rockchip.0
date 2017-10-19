From: jeffy <jeffy.chen@rock-chips.com>
Subject: Re: [PATCH v6 1/3] PCI: rockchip: Add support for pcie wake irq
Date: Thu, 19 Oct 2017 19:19:57 +0800
Message-ID: <59E88A5D.8060309@rock-chips.com>
References: <20171013195059.23865-1-jeffy.chen@rock-chips.com> <20171013195059.23865-2-jeffy.chen@rock-chips.com> <20171016200350.GH25517@bhelgaas-glaptop.roam.corp.google.com> <20171018010312.GB65743@google.com> <20171018132936.GP5641@bhelgaas-glaptop.roam.corp.google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20171018132936.GP5641@bhelgaas-glaptop.roam.corp.google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Bjorn Helgaas <helgaas@kernel.org>, Brian Norris <briannorris@chromium.org>
Cc: linux-kernel@vger.kernel.org, bhelgaas@google.com, shawn.lin@rock-chips.com, dianders@chromium.org, Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi guys,

On 10/18/2017 09:29 PM, Bjorn Helgaas wrote:
>> >
>> >I guess it could work to look into pci_create_root_bus(), and
>> >do something like the following?
>> >
>> >	if (IS_ENABLED(CONFIG_OF) && parent && parent->of_node)
>> >		... do OF parsing for generic features like WAKE# ...
> That's exactly the sort of thing I was thinking.
>
i was looking at that too, but i'm not very clear about how to handle 
the platform_ops's set_wakeup...
