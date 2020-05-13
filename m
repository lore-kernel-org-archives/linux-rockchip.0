From: Frank Wang <frank.wang@rock-chips.com>
Subject: Re: [PATCH v4 12/16] usb: dwc3: add make compatible for rockchip
 platform
Date: Wed, 13 May 2020 08:47:32 +0800
Message-ID: <9d80fda2-9760-0aec-6bb7-5680279b3a0f@rock-chips.com>
References: <20200511075330.26462-1-frank.wang@rock-chips.com>
 <20200511075725.26665-1-frank.wang@rock-chips.com>
 <20200511075725.26665-3-frank.wang@rock-chips.com>
 <502d8fff-5ae2-b47f-f483-62cd24177ed1@denx.de>
 <618d46f5-7970-9b27-e912-36f21b24a957@rock-chips.com>
 <6f0482e0-eedc-b7e4-f6ab-cf82b26c22ec@denx.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <6f0482e0-eedc-b7e4-f6ab-cf82b26c22ec@denx.de>
Content-Language: en-US
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Marek Vasut <marex@denx.de>, heiko@sntech.de, bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com, klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com, sjg@chromium.org, kever.yang@rock-chips.com
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com, marek.belisko@gmail.com, william.wu@rock-chips.com, jianing.ren@rock-chips.com, chenjh@rock-chips.com, wmc@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Marek,

On 2020/5/12 15:26, Marek Vasut wrote:
> On 5/12/20 3:08 AM, Frank Wang wrote:
>> Hi Marek,
>>
>> On 2020/5/11 17:48, Marek Vasut wrote:
>>> On 5/11/20 9:57 AM, Frank Wang wrote:
>>> [...]
>>>
>>>> @@ -394,6 +407,12 @@ static int dwc3_glue_probe(struct udevice *dev)
>>>>        if (ret)
>>>>            return ret;
>>>>    +    if (glue->resets.count < 1) {
>>> This condition is only true if count == 0 ?
>>> What's the purpose of this test ?
>> For previous dts of the Linux kernel, the reset phandles were in
>> dwc3-glue nodes, however, they are moved recently into dwc3 that is a
>> child node of dwc3-glue.
>>
>> So the above codes is to make compatible.
> Why doesn't it check for count == 0 then ?
>
Will fix.


BR,
Frank
