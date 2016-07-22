From: Guenter Roeck <groeck@google.com>
Subject: Re: [v6 PATCH 1/6] extcon: Add Type-C and DP support
Date: Fri, 22 Jul 2016 10:23:32 -0700
Message-ID: <CABXOdTe5QgpVgUCHgGKGgX-XqhhXR_hrKk3rsPZAp+8urdnxzQ@mail.gmail.com>
References: <1469106808-28297-1-git-send-email-zyw@rock-chips.com>
 <CGME20160721131520epcas1p402684ff2569a23d7e5e011da9fb07667@epcas1p4.samsung.com>
 <1469106808-28297-2-git-send-email-zyw@rock-chips.com> <5791E769.9060403@samsung.com>
 <5791E9FD.10407@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <5791E9FD.10407@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chris Zhong <zyw@rock-chips.com>
Cc: Chanwoo Choi <cw00.choi@samsung.com>, Douglas Anderson <dianders@chromium.org>, Tomasz Figa <tfiga@chromium.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, =?UTF-8?B?5aea5pm65oOF?= <yzq@rock-chips.com>, Guenter Roeck <groeck@chromium.org>, myungjoo.ham@samsung.com, wulf <wulf@rock-chips.com>, =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

To create a baseline, I'll pick up the changes from the extcon
repository and make them available in chromeos-4.4.

Guenter

On Fri, Jul 22, 2016 at 2:40 AM, Chris Zhong <zyw@rock-chips.com> wrote=
:
> Hi Chanwoo Choi
>
> Thanks for your help, I am going to post V7 next week base on these l=
atest
> extcon patch.
>
> Regards
> Chris Zhong
>
>
> On 07/22/2016 05:29 PM, Chanwoo Choi wrote:
>>
>> Hi Chris,
>>
>> I'm sorry for late reply. I finished the first draft to support the =
extcon
>> property.
>> You can check the patches[1]. But, I need more time to test it. Afte=
r
>> tested it,
>> I'll send the patches.
>>
>> [1]
>> https://git.kernel.org/cgit/linux/kernel/git/chanwoo/extcon.git/log/=
?h=3Dextcon-test
>>
>> Chanwoo Choi (4):
>>    extcon: Add the extcon_type to group each connector into five cat=
egory
>>    extcon: Add the support for extcon property according to type of
>> connector
>>    extcon: Rename the extcon_set/get_state() to maintain the functio=
n
>> naming pattern
>>    extcon: Add the sync APIs to support the  notification for extcon
>> property
>>
>> Chris Zhong (1):
>>    extcon: Add EXTCON_DISP_DP and the property for USB Type-C
>>
>> Regards,
>> Chanwoo Choi
>>
>> On 2016=EB=85=84 07=EC=9B=94 21=EC=9D=BC 22:13, Chris Zhong wrote:
>>>
>>> Add EXTCON_DISP_DP for the Display external connector. For Type-C
>>> connector the DisplayPort can work as an Alternate Mode(VESA Displa=
yPort
>>> Alt Mode on USB Type-C Standard). The Type-C support both normal an=
d
>>> flipped orientation, so add a property to extcon.
>>>
>>> Signe-off-by: Chris Zhong <zyw@rock-chips.com>
>>>
>>> Signed-off-by: Chris Zhong <zyw@rock-chips.com>
>>> ---
>>>
>>> Changes in v6:
>>> - move the EXTCON_PROP_TYPEC_POLARITY to EXTCON_TYPE_USB in _suppor=
ted
>>> Series-changes: 5
>>> - support get property
>>>
>>> Changes in v5: None
>>> Changes in v4: None
>>> Changes in v3: None
>>> Changes in v2: None
>>> Changes in v1: None
>>>
>>>   drivers/extcon/extcon.c | 26 ++++++++++++++++++++++++++
>>>   include/linux/extcon.h  | 13 +++++++++++++
>>>   2 files changed, 39 insertions(+)
>>>
>>> diff --git a/drivers/extcon/extcon.c b/drivers/extcon/extcon.c
>>> index a1117db..f79b510 100644
>>> --- a/drivers/extcon/extcon.c
>>> +++ b/drivers/extcon/extcon.c
>>> @@ -157,6 +157,11 @@ struct __extcon_info {
>>>                 .id =3D EXTCON_DISP_VGA,
>>>                 .name =3D "VGA",
>>>         },
>>> +       [EXTCON_DISP_DP] =3D {
>>> +               .type =3D EXTCON_TYPE_DISP | EXTCON_TYPE_USB,
>>> +               .id =3D EXTCON_DISP_DP,
>>> +               .name =3D "DP",
>>> +       },
>>>         /* Miscellaneous external connector */
>>>         [EXTCON_DOCK] =3D {
>>> @@ -270,6 +275,7 @@ static bool is_extcon_property_supported(unsign=
ed int
>>> id,
>>>                 switch (prop) {
>>>                 case EXTCON_PROP_USB_ID:
>>>                 case EXTCON_PROP_USB_VBUS:
>>> +               case EXTCON_PROP_TYPEC_POLARITY:
>>>                         return true;
>>>                 default:
>>>                         break;
>>> @@ -547,6 +553,26 @@ int extcon_get_cable_property(struct extcon_de=
v
>>> *edev, unsigned int id,
>>>                                 enum extcon_property prop,
>>>                                 union extcon_property_value *val)
>>>   {
>>> +       struct extcon_cable *cable;
>>> +       int index;
>>> +
>>> +       if (!edev)
>>> +               return -EINVAL;
>>> +
>>> +       /* Check the property whether is supported or not */
>>> +       if (!is_extcon_property_supported(id, prop))
>>> +               return -EINVAL;
>>> +
>>> +       /* Find the cable index of external connector by using id *=
/
>>> +       index =3D find_cable_index_by_id(edev, id);
>>> +       if (index < 0)
>>> +               return index;
>>> +
>>> +       /* Store the property value */
>>> +       cable =3D &edev->cables[index];
>>> +
>>> +       val->intval =3D cable->propval[prop].intval;
>>> +
>>>         return 0;
>>>   }
>>>   diff --git a/include/linux/extcon.h b/include/linux/extcon.h
>>> index f6f0a8d..50ef87f 100644
>>> --- a/include/linux/extcon.h
>>> +++ b/include/linux/extcon.h
>>> @@ -77,6 +77,7 @@ enum extcon_type {
>>>   #define EXTCON_DISP_MHL               41      /* Mobile High-Defi=
nition
>>> Link */
>>>   #define EXTCON_DISP_DVI               42      /* Digital Visual
>>> Interface */
>>>   #define EXTCON_DISP_VGA               43      /* Video Graphics A=
rray
>>> */
>>> +#define EXTCON_DISP_DP         44      /* DisplayPort */
>>>     /* Miscellaneous external connector */
>>>   #define EXTCON_DOCK           60
>>> @@ -108,9 +109,13 @@ enum extcon_property {
>>>          * - EXTCON_PROP_USB_USB
>>>          * @type:       integer (int value)
>>>          * @value:      0 (low) or 1 (high)
>>> +        * - EXTCON_PROP_TYPEC_POLARITY,
>>> +        * @type:       integer (int value)
>>> +        * @value:      0 (normal) or 1 (flip)
>>>          */
>>>         EXTCON_PROP_USB_ID =3D 0,
>>>         EXTCON_PROP_USB_VBUS,
>>> +       EXTCON_PROP_TYPEC_POLARITY,
>>>         /* Properties of EXTCON_TYPE_CHG. */
>>>         /* Properties of EXTCON_TYPE_JACK. */
>>> @@ -225,6 +230,14 @@ extern int extcon_get_cable_state_(struct extc=
on_dev
>>> *edev, unsigned int id);
>>>   extern int extcon_set_cable_state_(struct extcon_dev *edev, unsig=
ned
>>> int id,
>>>                                    bool cable_state);
>>>   +extern int extcon_get_cable_property(struct extcon_dev *edev, un=
signed
>>> int id,
>>> +                                    enum extcon_property prop,
>>> +                                    union extcon_property_value *v=
al);
>>> +
>>> +extern int extcon_set_cable_property(struct extcon_dev *edev, unsi=
gned
>>> int id,
>>> +                                    enum extcon_property prop,
>>> +                                    union extcon_property_value va=
l);
>>> +
>>>   /*
>>>    * Following APIs are to monitor every action of a notifier.
>>>    * Registrar gets notified for every external port of a connectio=
n
>>> device.
>>>
>>
>>
>>
>
>
