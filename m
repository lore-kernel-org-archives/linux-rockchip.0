From: Chris Zhong <zyw@rock-chips.com>
Subject: Re: [v3 PATCH 3/5] phy: Add USB Type-C PHY driver for rk3399
Date: Fri, 24 Jun 2016 08:34:21 +0800
Message-ID: <576C800D.2050006@rock-chips.com>
References: <1466686264-6744-1-git-send-email-zyw@rock-chips.com>
 <1466686264-6744-4-git-send-email-zyw@rock-chips.com>
 <CABXOdTcZ2O7tK8yNSJH_Unap8RweUa_iW8aT3Hb_NWCZRoyAzQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CABXOdTcZ2O7tK8yNSJH_Unap8RweUa_iW8aT3Hb_NWCZRoyAzQ@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Guenter Roeck <groeck@google.com>
Cc: Douglas Anderson <dianders@chromium.org>, Tomasz Figa <tfiga@chromium.org>, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, =?UTF-8?B?5aea5pm65oOF?= <yzq@rock-chips.com>, Guenter Roeck <groeck@chromium.org>, myungjoo.ham@samsung.com, cw00.choi@samsung.com, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Kever Yang <kever.yang@rock-chips.com>, Kishon Vijay Abraham I <kishon@ti.com>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Guenter

On 06/24/2016 05:47 AM, Guenter Roeck wrote:
> Hi Chris,
>
> On Thu, Jun 23, 2016 at 5:51 AM, Chris Zhong <zyw@rock-chips.com> wrote:
>> Add a PHY provider driver for the rk3399 SoC Type-c PHY. The USB
>> Type-C PHY is designed to support the USB3 and DP applications. The
>> PHY basically has two main components: USB3 and DisplyPort. USB3
>> operates in SuperSpeed mode and the DP can operate at RBR, HBR and
>> HBR2 data rates.
>>
>> Signed-off-by: Chris Zhong <zyw@rock-chips.com>
>> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
>>
> [ ... ]
>
>> +
>> +static void tcphy_get_state(struct rockchip_typec_phy *tcphy,
>> +                           struct extcon_dev *edev)
>> +{
>> +       int mode;
>> +       bool plugged, flip, pin_assign, dfp, ufp, dp;
>> +
>> +       ufp = extcon_get_cable_state_(edev, EXTCON_USB);
>> +       dfp = extcon_get_cable_state_(edev, EXTCON_USB_HOST);
>> +       dp = extcon_get_cable_state_(edev, EXTCON_DISP_DP);
>> +       flip = extcon_get_cable_state_(edev, EXTCON_TYPEC_POLARITY);
>> +       pin_assign = extcon_get_cable_state_(edev, EXTCON_TYPEC_PIN_ASSIGN);
>> +
>> +       plugged = ufp | dfp | dp;
>> +       tcphy->flip = flip;
>> +
>> +       if (plugged) {
>> +               if (ufp) {
>> +                       mode = MODE_UFP_USB;
>> +               } else if (dfp && !dp) {
>> +                       mode = MODE_DFP_USB;
>> +               } else if (dfp && dp) {
>> +                       mode = MODE_DFP_USB | MODE_DFP_DP;
>> +                       tcphy->pin_assign = pin_assign ? PIN_MAP_D : PIN_MAP_B;
>> +               } else {
>> +                       mode = MODE_DFP_DP;
>> +                       tcphy->pin_assign = pin_assign ? PIN_MAP_C : PIN_MAP_A;
> I am having trouble extracting pin_assign from our code. What
> determines if map A or C should be selected ?
>
> Thanks,
> Guenter
Oh, forgot rename the macro:

PIN_MAP_ should be PIN_ASSIGN_


  IF EXTCON_TYPEC_PIN_ASSIGN is attached, Type-C get
  Pin_Assignment_C(for DP only mode) or Pin_Assignment_D(for DP alt mode),
   if detached, it get the default Assignment: A(for DP only mode) or 
B(for DP alt mode),.

I am going to add a comment for describe which PIN_ASSIGN_ should be 
selected
in next version, if no one disagrees the usage of cable


>
>
