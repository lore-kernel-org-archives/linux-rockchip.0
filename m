From: Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [v5 PATCH 1/5] extcon: Add Type-C and DP support
Date: Wed, 13 Jul 2016 11:05:39 +0900
Message-ID: <5785A1F3.1020703@samsung.com>
References: <1468336188-565-1-git-send-email-zyw@rock-chips.com>
 <CGME20160712151003epcas1p3d60b6754866b984f943b7bea4be6d33f@epcas1p3.samsung.com>
 <1468336188-565-2-git-send-email-zyw@rock-chips.com>
 <57859532.1010002@samsung.com> <57859BDA.7080309@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-reply-to: <57859BDA.7080309@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chris Zhong <zyw@rock-chips.com>, dianders@chromium.org, tfiga@chromium.org, heiko@sntech.de, yzq@rock-chips.com, groeck@chromium.org, myungjoo.ham@samsung.com, wulf@rock-chips.com, marcheu@chromium.org
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Chris,

On 2016=EB=85=84 07=EC=9B=94 13=EC=9D=BC 10:39, Chris Zhong wrote:
> Hi Chanwoo Choi
>=20
>=20
> On 07/13/2016 09:11 AM, Chanwoo Choi wrote:
>> Hi Chris,
>>
>> I'm now developing the extcon property on extcon-test branch.
>> But, it has not been completed.
>>
>> On next version, I'll remove the notification about extcon property
>> and only support the following two functions.
>> - extcon_set_cable_property()
>> - extcon_get_cable_property()
>>
>> Because the number of properties would be risen and the all properti=
es
>> depend on the specific external connector(e.g., EXTCON_PROP_USB_VBUS
>> depend on the EXTCON_TYPE_USB type). When the specific external conn=
ector
>> is detached, extcon framework should make the property state as defa=
ult state.
>=20
> Yes, I think getting the notification from cable state is enough, act=
ually I am using it like you said.

OK.=20

>=20
>>
>> It may send the too many notification for extcon property.
>> For example, Assume that EXTCON_TYPE_USB has the over 20 properties,
>> when EXTCON_USB or EXTCON_USB_HOST is detached, extcon should send
>> the notification for the over 20 properties and one more notificaito=
n
>> for state of external connector.
>>
>> So, I'll send the RFC patchset without the notification of proerty.
>>
>> Lastly,
>> I have a comment on below.
>>
>> Thanks,
>> Chanwoo Choi
>>
>> On 2016=EB=85=84 07=EC=9B=94 13=EC=9D=BC 00:09, Chris Zhong wrote:
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
>>> Changes in v5:
>>> - support get property
>>>
>>> Changes in v4: None
>>> Changes in v3: None
>>> Changes in v2: None
>>> Changes in v1: None
>>>
>>>   drivers/extcon/extcon.c | 28 ++++++++++++++++++++++++++++
>>>   include/linux/extcon.h  | 13 +++++++++++++
>>>   2 files changed, 41 insertions(+)
>>>
>>> diff --git a/drivers/extcon/extcon.c b/drivers/extcon/extcon.c
>>> index a1117db..2591b28 100644
>>> --- a/drivers/extcon/extcon.c
>>> +++ b/drivers/extcon/extcon.c
>>> @@ -157,6 +157,11 @@ struct __extcon_info {
>>>           .id =3D EXTCON_DISP_VGA,
>>>           .name =3D "VGA",
>>>       },
>>> +    [EXTCON_DISP_DP] =3D {
>>> +        .type =3D EXTCON_TYPE_DISP,
>>> +        .id =3D EXTCON_DISP_DP,
>>> +        .name =3D "DP",
>>> +    },
>>>         /* Miscellaneous external connector */
>>>       [EXTCON_DOCK] =3D {
>>> @@ -270,6 +275,7 @@ static bool is_extcon_property_supported(unsign=
ed int id,
>>>           switch (prop) {
>>>           case EXTCON_PROP_USB_ID:
>>>           case EXTCON_PROP_USB_VBUS:
>>> +        case EXTCON_PROP_TYPEC_POLARITY:
>>>               return true;
>>>           default:
>>>               break;
>>> @@ -286,6 +292,8 @@ static bool is_extcon_property_supported(unsign=
ed int id,
>>>           }
>>>       case EXTCON_TYPE_DISP:
>>>           switch (prop) {
>>> +        case EXTCON_PROP_TYPEC_POLARITY:
>> Should EXTCON_PROP_TYPEC_POLARITY property add to both EXTCON_TYPE_U=
SB and EXTCON_TYP_DISP?
>> EXTCON_PROP_TYPEC_POLARITY is the property of USB C-type?
>=20
> it is for USB Type-C, But at Display Port alt mode, both EXTCON_USB a=
nd EXTCON_USB_HOST may be detached. Does it support set the property to=
 a detached cable, if so, I think move this case to EXTCON_USB is fine.

One external connector can set the state of one more external connector
if the one connector support the various functions.
=46or example, EXTCON_USB and EXTCON_CHG_USB_SDP
The existing extcon driver[1](e.g., max14577/max77693 etc.) set the sta=
te of both EXTCON_USB and EXTCON_CHG_USB_SDP connector at the same time
when usb cable is attached. Because in this case, the usb connector use=
s as both power supply(EXTCON_CHG_USB_SDP) and data transfer(EXTCON_USB=
).
[1] https://git.kernel.org/cgit/linux/kernel/git/chanwoo/extcon.git/com=
mit/?h=3Dextcon-next&id=3D8b45b6a0741678902810d7be95e635c210fbb198

So, DP Alt mode uses the USB Type-C. So, When USB C-type connector is a=
ttached for DP Alt mode,
Maybe, you can set the following two state of connector and one propert=
y:
- extcon_set_cable_state(edev, [EXTCON_USB or EXTCON_USB_HOST], 1);
- extcon_set_cable_state(edev, EXTCON_DISP_DP, 1);
- extcon_set_cable_state(edev, [EXTCON_USB or EXTCON_USB_HOST], EXTCON_=
PROP_TYPEC_POLARITY, 0 or 1);

Thanks,
Chanwoo Choi
