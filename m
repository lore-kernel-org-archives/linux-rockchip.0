From: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC
 numbering for LED triggers
Date: Mon, 27 Apr 2020 22:45:34 +0800
Message-ID: <CAGb2v65Gtm88MJTTw_MxB0sc8m5=EVzom7zw2Ro_UJgqjOQKkA@mail.gmail.com>
References: <20200427073132.29997-3-wens@kernel.org>
 <684132b8-4a84-8295-474b-38ccb992bba7@gmail.com>
 <CAGb2v66Piu5_2bdqvWV3eEn2Se_y1MNKWvvYBv_J7DA-8jBhbQ@mail.gmail.com>
 <65d15254-08da-895c-1a0c-ef6ce231b620@gmail.com>
 <CAGb2v65fGYguNoksq5Dyx3HTKeYg+U82TiQSL+NO8AUcQJQj5w@mail.gmail.com>
 <74a984fc-ce57-211b-936c-2d77e2e642bb@gmail.com>
 <a81840d3-813b-51b5-767c-e0d9d270200e@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <a81840d3-813b-51b5-767c-e0d9d270200e@gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: devicetree <devicetree@vger.kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Pavel Machek <pavel@ucw.cz>, linux-kernel <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>, jacek.anaszewski@gmail.com, linux-leds@vger.kernel.org, Chen-Yu Tsai <wens@kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, dmurphy@ti.com
List-Id: linux-rockchip.vger.kernel.org

On Mon, Apr 27, 2020 at 10:12 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi,
>
> >> So for fixing up the LED node names, we'd probably want the following:
> >>
> >>     diy_led: led-0
> >>     yellow_led: led-1
> >>     work_led: led-2
>
> Change proposal for led nodes to comply with preexisting dts.
> Does this work?
>
> diy_led: led_0: led-0
> yellow_led: led_1: led-1
> work_led: led_2: led-2
>
>
> blue: led_0: led-0
>
> A check does not give any warnings.
>
> make -k ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/leds-gpio.yaml

IMO the led_N labels are kind of useless... they don't convey the
information needed to identify the device.

A reader seeing

    &led_0 {
        linux,default_triggger = "activity";
    };

in some device tree (overlay) has no idea what this snippet is supposed
to do. The person has to go back to the base dts / dtsi file to figure
that out.

But seriously, you should start a separate thread to discuss this issue.

ChenYu

> >
> > That doesn't look pretty either.
> > Would like to hear the maintainers view on how to handle other cases
> > without 'led' like for example 'blue' for mk808.
> >
