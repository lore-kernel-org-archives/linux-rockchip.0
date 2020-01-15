From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH v1 1/3] dt-bindings: mmc: combine common mmc and
 dw-mshc properties
Date: Wed, 15 Jan 2020 14:02:18 +0100
Message-ID: <12bbbdbc-027e-90de-fd57-291013167b06@gmail.com>
References: <20200114213809.27166-1-jbx6244@gmail.com>
 <CAL_Jsq+8X0oRykiQOKVyaxis4H0yO=nzUtnFF_BXdwBkuigr7g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAL_Jsq+8X0oRykiQOKVyaxis4H0yO=nzUtnFF_BXdwBkuigr7g@mail.gmail.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Mark Rutland <mark.rutland@arm.com>, "heiko@sntech.de" <heiko@sntech.de>, linux-mmc <linux-mmc@vger.kernel.org>, devicetree@vger.kernel.org, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

Thank you for your explanation.
I was not aware that was playing.
So now we go from a 'simple' txt to yaml conversion to a complete
'change your node name first' operation.
Can you indicate if that common yaml file for dw-mshc and Rockchip
is still a good idea?

Thanks


On 1/14/20 11:06 PM, Rob Herring wrote:
> On Tue, Jan 14, 2020 at 3:38 PM Johan Jonker <jbx6244@gmail.com> wrote:
>>
>> Combine the common properties for mmc and dw-mshc in
>> mmc-controller-common.yaml
>
> Commit messages should explain the why, not what.
>
> AFAICT, the only reason is to not have a node name of 'mmc'. That's
> entirely the reason why it is defined. Fix your node names to use the
> standard name.
>
>
>
> Rob
>
