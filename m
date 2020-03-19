From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH 2/2] phy: phy-rockchip-inno-usb2: remove support for
 rockchip, rk3366-usb2phy
Date: Thu, 19 Mar 2020 15:01:20 +0100
Message-ID: <625d2904-458b-1edc-d91c-21614653a274@gmail.com>
References: <20200318192901.5023-1-jbx6244@gmail.com>
 <20200318192901.5023-2-jbx6244@gmail.com>
 <233769c3-a44a-0ebd-7a2c-6fab17fb56f2@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <233769c3-a44a-0ebd-7a2c-6fab17fb56f2@arm.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>, kishon@ti.com
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

Some questions.
Can Rockchip or Heiko explain why we have half finished support in the
upstream kernel for rk3366? What happened?
Are any plans to add a rk3366.dtsi?
How wide spread was the use of rk3366? Products?
ie. When does support stop?

There's also a rk3368. Is there a need for "rockchip,rk3368-usb2phy"?

We'll keep "rockchip,rk3366-usb2phy" aboard for v2.

Thanks

On 3/19/20 2:07 PM, Robin Murphy wrote:
> Hi Johan,
> 
> On 2020-03-18 7:29 pm, Johan Jonker wrote:
>> 'phy-rockchip-inno-usb2.txt' is updated to yaml, whereby
>> the compatible string 'rockchip,rk3366-usb2phy' was removed,
>> because it's not in use by a dts file, so remove support
>> in the code as well.
> 
> Here's a DT using it:
> 
> https://github.com/rockchip-linux/kernel/blob/develop-4.4/arch/arm64/boot/dts/rockchip/rk3366.dtsi#L820
> 
> 
> Please note that although DT bindings happen to be primarily maintained
> in the upstream kernel tree at the moment, it is mostly as a consequence
> of Linux being the source of most active development. Bindings should
> not be considered to be "owned" by upstream Linux since there are many
> other consumers, both downstream, and in completely different projects
> like the BSDs. As far as I'm aware there is still a long-term plan to
> eventually flip the switch and move maintenance to a standalone repo:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git
> 
> 
> Things like PCI Device IDs and ACPI HIDs aren't even documented as
> formally as DT bindings, so by the reasoning here we could arguably
> delete the majority of drivers from the kernel...
> 
> Robin.
