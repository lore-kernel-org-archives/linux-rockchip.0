From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC
 numbering for LED triggers
Date: Mon, 27 Apr 2020 16:12:51 +0200
Message-ID: <a81840d3-813b-51b5-767c-e0d9d270200e@gmail.com>
References: <20200427073132.29997-3-wens@kernel.org>
 <684132b8-4a84-8295-474b-38ccb992bba7@gmail.com>
 <CAGb2v66Piu5_2bdqvWV3eEn2Se_y1MNKWvvYBv_J7DA-8jBhbQ@mail.gmail.com>
 <65d15254-08da-895c-1a0c-ef6ce231b620@gmail.com>
 <CAGb2v65fGYguNoksq5Dyx3HTKeYg+U82TiQSL+NO8AUcQJQj5w@mail.gmail.com>
 <74a984fc-ce57-211b-936c-2d77e2e642bb@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-leds-owner@vger.kernel.org>
In-Reply-To: <74a984fc-ce57-211b-936c-2d77e2e642bb@gmail.com>
Content-Language: en-US
Sender: linux-leds-owner@vger.kernel.org
To: Chen-Yu Tsai <wens@kernel.org>
Cc: devicetree <devicetree@vger.kernel.org>, dmurphy@ti.com, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, jacek.anaszewski@gmail.com, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>, linux-leds@vger.kernel.org, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

>> So for fixing up the LED node names, we'd probably want the following:
>>
>>     diy_led: led-0
>>     yellow_led: led-1
>>     work_led: led-2

Change proposal for led nodes to comply with preexisting dts.
Does this work?

diy_led: led_0: led-0
yellow_led: led_1: led-1
work_led: led_2: led-2


blue: led_0: led-0

A check does not give any warnings.

make -k ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/leds-gpio.yaml

> 
> That doesn't look pretty either.
> Would like to hear the maintainers view on how to handle other cases
> without 'led' like for example 'blue' for mk808.
> 
