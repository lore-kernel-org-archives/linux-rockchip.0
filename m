From: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: USB3 regression in RK3399
Date: Mon, 26 Feb 2018 19:38:12 +0100
Message-ID: <CAAMcf8Dk_DPuNfLz-v0LvZ-rRmn6om=7OUkVMYygqU6emnF6HA@mail.gmail.com>
References: <CAAMcf8B5zpgbTsCu9t0rs9+jWkwRdO2C+KbF+NOt3ZTQx36aZA@mail.gmail.com>
 <14336855.DpIqxNeK64@phil>
 <CAAMcf8B5ffH-5Q3+PcjWwu5UeDk4ESZR0BNczaED+vnPLwge0w@mail.gmail.com>
 <c8e1bd5a-19ff-9d1c-7e78-b7e605fd1e6b@collabora.com>
 <CAAMcf8C7Px_mC=dex3TqejBNYYUyJxrZHa1c7CbKXj6g==Cbyg@mail.gmail.com>
 <CAAMcf8DX4Mjuubnvwz9paMJ9oDYaNX-EKwFpsP9a-RfhHgO5Hg@mail.gmail.com>
 <9e64e878-07c8-912c-c597-7da7b3f96dd6@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <9e64e878-07c8-912c-c597-7da7b3f96dd6-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: William wu <wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, Feb 26, 2018 at 5:34 PM, Enric Balletbo i Serra
<enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
> Hi Vicente,
>
> On 25/02/18 11:03, Vicente Bergas wrote:
>> (cut)
>>>>>>> testing on the Sapphire board, which uses the RK3399 SoC, a regression
>>>>>>> has been found in v4.16-rc2 wrt v4.15.4 regarding the USB3 type-A port:
>>>>>>> In v4.15.4 it works in USB2-only mode.
>>>>>>> In v4.16-rc2 it does not work.
>> (cut)
>>>>>> Hmm, I'd guess the main issue would be a missing typec-phy driver
>>>>>> in your kernel (see drivers/phy/rockchip/phy-rockchip-typec.c
>> (cut)
>>>> I suspect that what Heiko says is right and typec-phy fails probing. Could you
>> (cut)
>>
>> Hello,
>> this is the patch to blame for the regression:
>>
>> From c301b327aea898af558b2387252a2f5fc0117dee Mon Sep 17 00:00:00 2001
>> From: Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
>> Date: Fri, 15 Dec 2017 12:00:03 +0100
>> Subject: [PATCH] arm64: dts: rockchip: add usb3-phy otg-port support for rk3399
>>
>> Add the usb3 phyter for the USB3.0 OTG controller.
>>
>> Signed-off-by: Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
>> Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> index b4511503878b..7aa2144e0d47 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> @@ -411,8 +411,8 @@
>>              reg = <0x0 0xfe800000 0x0 0x100000>;
>>              interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH 0>;
>>              dr_mode = "otg";
>> -            phys = <&u2phy0_otg>;
>> -            phy-names = "usb2-phy";
>> +            phys = <&u2phy0_otg>, <&tcphy0_usb3>;
>> +            phy-names = "usb2-phy", "usb3-phy";
>>              phy_type = "utmi_wide";
>>              snps,dis_enblslpm_quirk;
>>              snps,dis-u2-freeclk-exists-quirk;
>> @@ -444,8 +444,8 @@
>>              reg = <0x0 0xfe900000 0x0 0x100000>;
>>              interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>;
>>              dr_mode = "otg";
>> -            phys = <&u2phy1_otg>;
>> -            phy-names = "usb2-phy";
>> +            phys = <&u2phy1_otg>, <&tcphy1_usb3>;
>> +            phy-names = "usb2-phy", "usb3-phy";
>>              phy_type = "utmi_wide";
>>              snps,dis_enblslpm_quirk;
>>              snps,dis-u2-freeclk-exists-quirk;
>>
>
> Can you try if the following patch solves the issue for you?

Hi Enric,
with this patch the usb3 type-A port works fine in both usb2-mode and
usb-3 mode!
Now I am getting 350Mbytes/s read bandwidth to the SSD, that's a big
improvement.

Type-C not tested.

Regards,
  Vicente.

> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> index f7157c1d768b..617d362eb8af 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> @@ -569,6 +569,14 @@
>         status = "okay";
>  };
>
> +&tcphy0 {
> +       status = "okay";
> +};
> +
> +&tcphy1 {
> +       status = "okay";
> +};
> +
>  &u2phy0 {
>         status = "okay";
>
> diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c
> b/drivers/phy/rockchip/phy-rockchip-typec.c
> index 1c79785a5439..6af1ec262fcb 100644
> --- a/drivers/phy/rockchip/phy-rockchip-typec.c
> +++ b/drivers/phy/rockchip/phy-rockchip-typec.c
> @@ -821,6 +821,9 @@ static int tcphy_get_mode(struct rockchip_typec_phy *tcphy)
>         u8 mode;
>         int ret;
>
> +       if (!edev)
> +               return MODE_DFP_USB;
> +
>         ufp = extcon_get_state(edev, EXTCON_USB);
>         dp = extcon_get_state(edev, EXTCON_DISP_DP);
>
> @@ -1159,9 +1162,9 @@ static int rockchip_typec_phy_probe(struct platform_device
> *pdev)
>
>         tcphy->extcon = extcon_get_edev_by_phandle(dev, 0);
>         if (IS_ERR(tcphy->extcon)) {
> -               if (PTR_ERR(tcphy->extcon) != -EPROBE_DEFER)
> -                       dev_err(dev, "Invalid or missing extcon\n");
> -               return PTR_ERR(tcphy->extcon);
> +               if (PTR_ERR(tcphy->extcon) == -EPROBE_DEFER)
> +                       return PTR_ERR(tcphy->extcon);
> +               tcphy->extcon = NULL;
>         }
>
>         pm_runtime_enable(dev);
>
>
> Best regards,
>  Enric
