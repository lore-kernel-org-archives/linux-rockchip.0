From: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [RFCv1 0/8] RK3399 clean shutdown issue
Date: Mon, 9 Dec 2019 20:26:42 +0530
Message-ID: <CANAwSgTPrP5FS3xb7SadZ+BwASWQxfO8rBmno8ZW0JzAxcqWKA@mail.gmail.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com> <724aa7db-3838-16f9-d344-1789ae2a5746@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <724aa7db-3838-16f9-d344-1789ae2a5746@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Daniel Schultz <d.schultz@phytec.de>, devicetree <devicetree@vger.kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, linux-rockchip@lists.infradead.org, Linux Kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Robin,

On Mon, 9 Dec 2019 at 18:59, Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 06/12/2019 6:45 pm, Anand Moon wrote:
> > Most of the RK3399 SBC boards do not perform clean
> > shutdown and clean reboot.
>
> FWIW reboot problems on RK3399 have been tracked down to issues in
> upstream ATF, and are unrelated to the PMIC.

Yes I am aware of this changes.
But, I have tired to study *RK808 datasheet V1.4* [0] below section
*5.2.3 Power Channel Control/Monitor Registers*
for clean reboot I was going to try disable some bit in below
into reboot handle in the future patch.

DCDC_EN_REG
SLEEP_SET_OFF_REG1
SLEEP_SET_OFF_REG2
DCDC_UV_STS_REG

I was going see if this helps to do clean reboot.
further more use this in suspend/resume operation.

[0] http://rockchip.fr/RK808%20datasheet%20V1.4.pdf

But I feed that their is some more issue with related to mmc or PCIe
not able to cleanly release the resources while reboot which caused
then to disable after reboot.

>
> > These patches try to help resolve the issue with proper
> > shutdown by turning off the PMIC.
>
> As mentioned elsewhere[1], although this is what the BSP kernel seems to
> do, and in practice it's unlikely to matter for the majority of devboard
> users like you and me, I still feel a bit uncomfortable with this
> solution for systems using ATF as in principle the secure world might
> want to know about orderly shutdowns, and this effectively makes every
> shutdown an unexpected power loss from secure software's point of view.
>
> Robin.
>
> [1]
> http://lists.infradead.org/pipermail/linux-rockchip/2019-December/028183.html
>

Yes I have follow the mailing list and I read this thread.
I am not aware of ATF complete architecture.

-Anand
