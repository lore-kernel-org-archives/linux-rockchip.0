From: Soeren Moch <smoch@web.de>
Subject: Re: [PATCH v2 9/9] arm64: dts: rockchip: RockPro64: hook up bluetooth
 at uart0
Date: Thu, 12 Dec 2019 11:47:06 +0100
Message-ID: <b859b9f1-2d89-ddef-df26-724ac4ffb088@web.de>
References: <20191211235253.2539-1-smoch@web.de>
 <20191211235253.2539-10-smoch@web.de>
 <a0ad4723-db85-0eda-efb5-f0c9a2a6aec3@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <a0ad4723-db85-0eda-efb5-f0c9a2a6aec3@arm.com>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>, Kalle Valo <kvalo@codeaurora.org>, Heiko Stuebner <heiko@sntech.de>
Cc: brcm80211-dev-list.pdl@broadcom.com, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, brcm80211-dev-list@cypress.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org



On 12.12.19 11:22, Robin Murphy wrote:
> Hi Soeren,
>
> On 11/12/2019 11:52 pm, Soeren Moch wrote:
>> With enabled wifi support (required for firmware loading) for the
>> Ampak AP6359SA based wifi/bt combo module we now also can enable
>> the bluetooth part.
>>
>> Suggested-by: Heiko Stuebner <heiko@sntech.de>
>> Signed-off-by: Soeren Moch <smoch@web.de>
>> ---
>> changes in v2:
>> - new patch
>>
>> Cc: Heiko Stuebner <heiko@sntech.de>
>> Cc: Kalle Valo <kvalo@codeaurora.org>
>> Cc: linux-wireless@vger.kernel.org
>> Cc: brcm80211-dev-list.pdl@broadcom.com
>> Cc: brcm80211-dev-list@cypress.com
>> Cc: netdev@vger.kernel.org
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-rockchip@lists.infradead.org
>> Cc: linux-kernel@vger.kernel.org
>> ---
>> =C2=A0 .../boot/dts/rockchip/rk3399-rockpro64.dts=C2=A0=C2=A0=C2=A0 | 2=
9 ++++++++++++++++++-
>> =C2=A0 1 file changed, 28 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> index 9fa92790d6e0..94cc462e234d 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> @@ -561,6 +561,20 @@
>> =C2=A0 };
>>
>> =C2=A0 &pinctrl {
>> +=C2=A0=C2=A0=C2=A0 bt {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bt_enable_h: bt-enable-h {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 roc=
kchip,pins =3D <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 };
>> +
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bt_host_wake_l: bt-host-wak=
e-l {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 roc=
kchip,pins =3D <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_down>;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 };
>> +
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bt_wake_l: bt-wake-l {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 roc=
kchip,pins =3D <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 };
>> +=C2=A0=C2=A0=C2=A0 };
>> +
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 buttons {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pwrbtn: pwrbtn {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 rockchip,pins =3D <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
>> @@ -729,8 +743,21 @@
>>
>> =C2=A0 &uart0 {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pinctrl-names =3D "default";
>> -=C2=A0=C2=A0=C2=A0 pinctrl-0 =3D <&uart0_xfer &uart0_cts>;
>> +=C2=A0=C2=A0=C2=A0 pinctrl-0 =3D <&uart0_xfer &uart0_cts &uart0_rts>;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 status =3D "okay";
>> +
>> +=C2=A0=C2=A0=C2=A0 bluetooth {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible =3D "brcm,bcm434=
38-bt";
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clocks =3D <&rk808 1>;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clock-names =3D "extclk";
>
> Is this right? Comparing the binding and the naming on the schematics,
> it seems more likely that this might be the LPO clock rather than the
> TXCO clock.
>
> Robin.
On second thought I have to agree. So we need another round on this.

Thanks for your review and bug report,
Soeren
>
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 device-wakeup-gpios =3D <&g=
pio2 RK_PD3 GPIO_ACTIVE_HIGH>;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 host-wakeup-gpios =3D <&gpi=
o0 RK_PA4 GPIO_ACTIVE_HIGH>;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 shutdown-gpios =3D <&gpio0 =
RK_PB1 GPIO_ACTIVE_HIGH>;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pinctrl-names =3D "default"=
;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pinctrl-0 =3D <&bt_host_wak=
e_l &bt_wake_l &bt_enable_h>;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 vbat-supply =3D <&vcc3v3_sy=
s>;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 vddio-supply =3D <&vcc_1v8>=
;
>> +=C2=A0=C2=A0=C2=A0 };
>> =C2=A0 };
>>
>> =C2=A0 &uart2 {
>> --
>> 2.17.1
>>
>>
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>>
