From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: leds: common: Drop enumeration for
 linux,default-triggers
Date: Mon, 27 Apr 2020 10:33:27 +0200
Message-ID: <4044214d-5385-94b6-d985-e1f824a60c5e@gmail.com>
References: <20200427073132.29997-2-wens@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200427073132.29997-2-wens@kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: wens@kernel.org
Cc: devicetree@vger.kernel.org, dmurphy@ti.com, heiko@sntech.de, jacek.anaszewski@gmail.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org, linux-rockchip@lists.infradead.org, pavel@ucw.cz, robh+dt@kernel.org, wens@csie.org
List-Id: linux-rockchip.vger.kernel.org

Hi Chen-Yu,

> From: Chen-Yu Tsai <wens@csie.org>
> 
> The bindings currently list a very small subset of valid triggers for
> LEDs. Since many drivers or subsystems in Linux register custom
> triggers, the list would become very hard to maintain.
> 
> Instead, just drop the list and allow free form strings.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  .../devicetree/bindings/leds/common.yaml      | 21 +------------------
>  1 file changed, 1 insertion(+), 20 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
> index 4c270fde4567..3b3cdab3fc15 100644
> --- a/Documentation/devicetree/bindings/leds/common.yaml
> +++ b/Documentation/devicetree/bindings/leds/common.yaml
> @@ -79,26 +79,7 @@ properties:
>      description:
>        This parameter, if present, is a string defining the trigger assigned to
>        the LED.
> -    allOf:
> -      - $ref: /schemas/types.yaml#definitions/string
> -    enum:
> -        # LED will act as a back-light, controlled by the framebuffer system
> -      - backlight
> -        # LED will turn on (but for leds-gpio see "default-state" property in
> -        # Documentation/devicetree/bindings/leds/leds-gpio.yaml)
> -      - default-on
> -        # LED "double" flashes at a load average based rate
> -      - heartbeat
> -        # LED indicates disk activity
> -      - disk-activity
> -        # LED indicates IDE disk activity (deprecated), in new implementations
> -        # use "disk-activity"
> -      - ide-disk
> -        # LED flashes at a fixed, configurable rate
> -      - timer
> -        # LED alters the brightness for the specified duration with one software
> -        # timer (requires "led-pattern" property)
> -      - pattern
> +    $ref: /schemas/types.yaml#definitions/string

This makes it free form, but deletes the documentation of options that
are standard available for people without custom driver.
Where should that info go?

>  
>    led-pattern:
>      description: |
> -- 
> 2.26.0
