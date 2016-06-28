From: Guenter Roeck <groeck@google.com>
Subject: Re: [v3 PATCH 1/5] extcon: Add Type-C and DP support
Date: Tue, 28 Jun 2016 09:33:13 -0700
Message-ID: <CABXOdTdHhWTSF6H2D5ubaZsu65dnGsof9NWAFNeWjCir=H91Ag@mail.gmail.com>
References: <1466686264-6744-1-git-send-email-zyw@rock-chips.com>
 <1466686264-6744-2-git-send-email-zyw@rock-chips.com> <CAGTfZH1aKUQH2VH+biyh9pFfU93pV9HH3h5s9zO0rrvXJYCMdA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAGTfZH1aKUQH2VH+biyh9pFfU93pV9HH3h5s9zO0rrvXJYCMdA@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: cw00.choi@samsung.com
Cc: Chris Zhong <zyw@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, Tomasz Figa <tfiga@chromium.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, =?UTF-8?B?5aea5pm65oOF?= <yzq@rock-chips.com>, Guenter Roeck <groeck@chromium.org>, "myungjoo.ham@samsung.com" <myungjoo.ham@samsung.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Jun 28, 2016 at 5:26 AM, Chanwoo Choi <cwchoi00@gmail.com> wrote:
> Hi Chris,
>
> I agree to add the new EXTCON_DISP_DP connector.
> But, other new definition should be discussed.
> - EXTCON_DISP_DP_ALT
> - EXTCON_TYPEC_POLARITY
> - EXTCON_TYPEC_PIN_ASSIGN
>
> I think that TYPEC_POLARITY and TYPEC_PIN_ASSING are not appropriate
> as the new external connector definition. These are the property or attribute of
> USB connector with C-type.
>
> Also, EXTCON_DISP_DP_ALT is not a new type of connector.
> It is just one of the mode for DP connector.
>
> As I knew, DP alternative mode use the USB connector with C-type.
> So, DP alternative mode can be expressed on following:
>  = EXTCON_DISP_DP + EXTCON_USB + some property of USB c-type
>

Problem is that extcon doesn't support exchanging cable properties
between cable providers (extcon drivers) and consumers, other than
cable states. In order to exchange properties such as polarity and pin
assignments, we would need a separate infrastructure. But then the
question would be why to use extcon in the first place.

If you have a solution for that puzzle, please let us know.

Thanks,
Guenter

> Thanks,
> Chanwoo Choi
>
> 2016-06-23 21:51 GMT+09:00 Chris Zhong <zyw@rock-chips.com>:
>> Add EXTCON_DISP_DP and EXTCON_DISP_DP_ALT for the Display external
>> connector. The EXTCON_DISP_DP is for DisplayPort, and the
>> EXTCON_DISP_DP_ALT is the DisplayPort as an Alternate Mode for
>> the USB Type-C connector (VESA DisplayPort Alt Mode on USB Type-C
>> Standard).
>>
>> And for the Type-C USB, there is some information need to be supplied
>> by PowerDelivery or other mode detecter: port orientation and pin
>> assignments, so add these 2 virtual cable: EXTCON_TYPEC_POLARITY
>> and EXTCON_TYPEC_PIN_ASSIGN. If EXTCON_TYPEC_POLARITY is attached,
>> the Type-C get flip orientation. IF EXTCON_TYPEC_PIN_ASSIGN is
>> attached, Type-C get Pin_Assignment_C(for DP only mode) or
>> Pin_Assignment_D(for DP alt mode), the default Assignment is A or B.
>>
>> Signed-off-by: Chris Zhong <zyw@rock-chips.com>
>> ---
>>
>> Changes in v3: None
>> Changes in v2: None
>> Changes in v1: None
>>
>>  drivers/extcon/extcon.c | 6 ++++++
>>  include/linux/extcon.h  | 6 ++++++
>>  2 files changed, 12 insertions(+)
>>
>> diff --git a/drivers/extcon/extcon.c b/drivers/extcon/extcon.c
>> index 21a123c..0522b4d 100644
>> --- a/drivers/extcon/extcon.c
>> +++ b/drivers/extcon/extcon.c
>> @@ -53,6 +53,10 @@ static const char *extcon_name[] =  {
>>         [EXTCON_CHG_USB_FAST]           = "FAST-CHARGER",
>>         [EXTCON_CHG_USB_SLOW]           = "SLOW-CHARGER",
>>
>> +       /* Type-c connector */
>> +       [EXTCON_TYPEC_POLARITY]         = "TYPE-C-POLARITY",
>> +       [EXTCON_TYPEC_PIN_ASSIGN]       = "TYPE-C-PIN-ASSIGN",
>> +
>>         /* Jack external connector */
>>         [EXTCON_JACK_MICROPHONE]        = "MICROPHONE",
>>         [EXTCON_JACK_HEADPHONE]         = "HEADPHONE",
>> @@ -68,6 +72,8 @@ static const char *extcon_name[] =  {
>>         [EXTCON_DISP_MHL]               = "MHL",
>>         [EXTCON_DISP_DVI]               = "DVI",
>>         [EXTCON_DISP_VGA]               = "VGA",
>> +       [EXTCON_DISP_DP]                = "DP",
>> +       [EXTCON_DISP_DP_ALT]            = "DP-ALT",
>>
>>         /* Miscellaneous external connector */
>>         [EXTCON_DOCK]                   = "DOCK",
>> diff --git a/include/linux/extcon.h b/include/linux/extcon.h
>> index 7abf674..98039ad 100644
>> --- a/include/linux/extcon.h
>> +++ b/include/linux/extcon.h
>> @@ -45,6 +45,10 @@
>>  #define EXTCON_CHG_USB_FAST    9
>>  #define EXTCON_CHG_USB_SLOW    10
>>
>> +/* Type-c connector */
>> +#define EXTCON_TYPEC_POLARITY  11      /* Typec-C plug orientation */
>> +#define EXTCON_TYPEC_PIN_ASSIGN        12      /* Typec-C pin Assignment */
>> +
>>  /* Jack external connector */
>>  #define EXTCON_JACK_MICROPHONE 20
>>  #define EXTCON_JACK_HEADPHONE  21
>> @@ -60,6 +64,8 @@
>>  #define EXTCON_DISP_MHL                41      /* Mobile High-Definition Link */
>>  #define EXTCON_DISP_DVI                42      /* Digital Visual Interface */
>>  #define EXTCON_DISP_VGA                43      /* Video Graphics Array */
>> +#define EXTCON_DISP_DP         44      /* Display Port */
>> +#define EXTCON_DISP_DP_ALT     45      /* Display Port Type-C Alternate Mode */
>>
>>  /* Miscellaneous external connector */
>>  #define EXTCON_DOCK            60
>> --
>> 2.6.3
>>
