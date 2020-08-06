From: David Bauer <mail-YgwEh8z+B+JYon68uE86FQ@public.gmane.org>
Subject: Re: [PATCH v2 2/2] rockchip: rk3328: Add support for FriendlyARM
 NanoPi R2S
Date: Thu, 6 Aug 2020 08:57:03 +0200
Message-ID: <685c3ab2-5f51-1fc2-622d-4d9785d7074b@david-bauer.net>
References: <20200730232054.286381-1-mail@david-bauer.net>
 <20200730232054.286381-2-mail@david-bauer.net>
 <d0053630-1ff3-9771-eb7d-7aaf0a27dca2@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <d0053630-1ff3-9771-eb7d-7aaf0a27dca2-5wv7dgnIgG8@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Robin,

thanks for your review. Only adressing some non-formal comments below.

On 8/3/20 12:01 AM, Robin Murphy wrote:
> 
> This seems to match the schematic, however in practice the GPIO seems to have a mind of its own and not respond to the LED settings - are we missing something with the pinctrl perhaps?

Hmm, this is strange. It works fine on my unit (with the current OpenWrt release). Can you test this and report back?

> 
>> +            label = "nanopi-r2s:green:lan";
>> +        };
>> +
>> +        wan {
>> +            gpios = <&gpio2 RK_PC2 GPIO_ACTIVE_HIGH>;
>> +            label = "nanopi-r2s:green:wan";
>> +        };
>> +    };
>> +
>> +    gpio_keys {
>> +        compatible = "gpio-keys-polled";
> 
> Does this need to be polled? I would have thought regular interrupt-based gpio-keys should work, to avoid the overhead of polling for something (relatively) incredibly rare, but perhaps I'm wrong :/

To be honest, I've missed that this is still polled. I've had this set to polled mode, as I've
had some issues (were to dumb) to get the pinmux going. I'll switch this to interrupt triggered and report back.

> 
>> +        poll-interval = <100>;
>> +
>> +        pinctrl-names = "default";
>> +        pinctrl-0 = <&button_pins>;
>> +
>> +        reset {
>> +            label = "Reset Button";
>> +            gpios = <&gpio0 RK_PA0 GPIO_ACTIVE_LOW>;
>> +            linux,code = <KEY_RESTART>;
>> +            debounce-interval = <50>;
>> +        };
>> +    };
>> +};
>> +
>> +&cpu0 {
>> +    cpu-supply = <&vdd_arm>;
>> +};
>> +
>> +&cpu1 {
>> +    cpu-supply = <&vdd_arm>;
>> +};
>> +
>> +&cpu2 {
>> +    cpu-supply = <&vdd_arm>;
>> +};
>> +
>> +&cpu3 {
>> +    cpu-supply = <&vdd_arm>;
>> +};
>> +
>> +&gmac2io {
>> +    assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
>> +    assigned-clock-parents = <&gmac_clkin>, <&gmac_clkin>;
>> +    clock_in_out = "input";
>> +    phy-supply = <&vcc_io>;
>> +    phy-handle = <&rtl8211e>;
>> +    phy-mode = "rgmii";
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&rgmiim1_pins>;
>> +    snps,aal;
> 
> Is this needed over and above the txpbl fix present in the main DTSI? I forget exactly where all those discussions ended up, but if it matters here then it probably matters for all RK3328 boards.

It seems to matter, as otherwise forwards from LAN to WAN will result in tx_fifo errors.

> 
>> +    snps,reset-gpio = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
>> +    snps,reset-active-low;
>> +    snps,reset-delays-us = <0 10000 50000>;
> 
> Since you're describing the phy already, you can convert these to generic reset specifiers on the phy node itself (shame we don't have an interrupt wired up, oh well...)

Yup, I've forgotten that there's reset-gpio bindings for the PHY itself. 

> 
>> +    tx_delay = <0x24>;
>> +    rx_delay = <0x18>;
>> +    status = "okay";
>> +
>> +    mdio {
>> +        compatible = "snps,dwmac-mdio";
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        rtl8211e: ethernet-phy@0 {
>> +            reg = <0>;
> 
> Is that right? The schematic says the phy is strapped for address 1 (although 0 probably does manage to work since it should be interpreted as a broadcast address).

I'll test this.

> 
>> +        };
>> +    };
>> +};
>> +
>> +&i2c1 {
>> +    status = "okay";
>> +
>> +    rk805: rk805@18 {
>> +        compatible = "rockchip,rk805";
>> +        reg = <0x18>;
>> +        interrupt-parent = <&gpio2>;
>> +        interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
> 
> The schematic says GPIO1_D0 for this.

You are right, I'll fix this.

>> +
> 
> It shouldn't hurt to enable PWM2 from the outset to make mucking about with the fan easier.

I've seen reports of people having Fans on their NanoPi R2S, my unit does not have such 

> 
>> +&sdmmc {
>> +    bus-width = <4>;
>> +    cap-mmc-highspeed;
>> +    cap-sd-highspeed;
> 
> How about UHS modes, since we have the requisite I/O voltage support?

I'll look into this.

> 
>> +    disable-wp;
> 
> I believe this property is only meant for full-size MMC/SD sockets where write-protect functionality is expected but somehow broken. For micro-SD sockets the SoC pin should be hard-wired to write-enable anyway and thus it shouldn't need to be stated.

Thanks for this explanation, I'll remove and re-test.

> 
>> +    max-frequency = <150000000>;
> 
> This is in the DTSI already.
> 
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&sdmmc0_clk &sdmmc0_cmd &sdmmc0_dectn &sdmmc0_bus4>;
>> +    vmmc-supply = <&vcc_sd>;
>> +    vqmmc-supply = <&vcc_sdio>;
>> +    status = "okay";
>> +};
>> +
>> +&tsadc {
>> +    rockchip,hw-tshut-mode = <0>;
>> +    rockchip,hw-tshut-polarity = <0>;
>> +    status = "okay";
>> +};
>> +
>> +&uart2 {
>> +    status = "okay";
>> +};
>> +
>> +&u2phy {
>> +    status = "okay";
>> +
>> +    u2phy_host: host-port {
> 
> Just reference this by label directly, rather than as a child node here (especially since redefining the existing label is a bit confusing).
> 
>> +        status = "okay";
>> +    };
>> +};
> 
> No reason not to enable the OTG port either - I've hacked that in with g_serial for a cheeky console while powering the board from my laptop and it works fine.

Ouch, I've completely missed the micro-USB port is wired up to the OTG port.

I'll follow up with a v3 in the coming days. Thanks for your feedback!

Best wishes
David

> 
> Cheers,
> Robin.
> 
>> +
>> +&usb_host0_ehci {
>> +    status = "okay";
>> +};
>> +
>> +&usb_host0_ohci {
>> +    status = "okay";
>> +};
>>
