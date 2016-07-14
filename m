From: Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [v5 PATCH 1/5] extcon: Add Type-C and DP support
Date: Thu, 14 Jul 2016 11:10:35 +0900
Message-ID: <5786F49B.20107@samsung.com>
References: <1468336188-565-1-git-send-email-zyw@rock-chips.com>
 <CGME20160712151003epcas1p3d60b6754866b984f943b7bea4be6d33f@epcas1p3.samsung.com>
 <1468336188-565-2-git-send-email-zyw@rock-chips.com>
 <57859532.1010002@samsung.com> <57859BDA.7080309@rock-chips.com>
 <5785A1F3.1020703@samsung.com> <5785AD61.3070307@rock-chips.com>
 <5786E1B6.2000805@samsung.com> <5786E4E7.30505@rock-chips.com>
 <5786E795.6040504@samsung.com> <5786F3FB.5010608@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-reply-to: <5786F3FB.5010608@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chris Zhong <zyw@rock-chips.com>, dianders@chromium.org, tfiga@chromium.org, heiko@sntech.de, yzq@rock-chips.com, groeck@chromium.org, myungjoo.ham@samsung.com, wulf@rock-chips.com, marcheu@chromium.org
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Chris,

On 2016=EB=85=84 07=EC=9B=94 14=EC=9D=BC 11:07, Chris Zhong wrote:
> Hi Chanwoo Choi
>=20
> On 07/14/2016 09:15 AM, Chanwoo Choi wrote:
>> Hi Chris,
>>
>> [snip]
>>
>>>>>> Thanks,
>>>>>> Chanwoo Choi
>>>>> There are 4 modes for Type-C DP alt mode:
>>>>> 1) USB host only  :
>>>>>
>>>>> extcon_set_cable_state(edev, EXTCON_USB_HOST, 1);
>>>>> extcon_set_cable_state(edev, EXTCON_USB, 0);
>>>>> extcon_set_cable_state(edev, EXTCON_DISP_DP, 0);
>>>>>
>>>>> 2) USB device only
>>>>>
>>>>> extcon_set_cable_state(edev, EXTCON_USB_HOST, 0);
>>>>> extcon_set_cable_state(edev, EXTCON_USB, 1);
>>>>> extcon_set_cable_state(edev, EXTCON_DISP_DP, 0);
>>>>>
>>>>> 3) DP only
>>>>>
>>>>> extcon_set_cable_state(edev, EXTCON_USB_HOST, 0);
>>>>> extcon_set_cable_state(edev, EXTCON_USB, 0);
>>>>> extcon_set_cable_state(edev, EXTCON_DISP_DP, 1);
>>>>>
>>>>> 4) USB + DP
>>>>>
>>>>> extcon_set_cable_state(edev, EXTCON_USB_HOST, 1);
>>>>> extcon_set_cable_state(edev, EXTCON_USB, 0);
>>>>> extcon_set_cable_state(edev, EXTCON_DISP_DP, 1);
>>>>>
>>>>>
>>>>> for 3rd mode: DP only, there is only EXTCON_DISP_DP is attached, =
the EXTCON_USB_HOST
>>>>> and EXTCON_USB are detached, Can I set the property into these 2 =
detached cable?
>>>>> or just call extcon_set_cable_state(edev, EXTCON_DISP_DP, EXTCON_=
PROP_TYPEC_POLARITY, 0 or 1);
>>>> I'm thinking to solve this issue. In result, we can add one more t=
ype to specific connector.
>>>> For EXTCON_DISP_DP, we can add the two type as following. And EXTC=
ON_PROP_TYPEC_POLARITY property
>>>> should be added to EXTCON_TYPE_USB.
>>>>
>>>> +    [EXTCON_DISP_DP] =3D {
>>>> +        .type =3D EXTCON_TYPE_DISP | EXTCON_TYPE_USB,
>>>> +        .id =3D EXTCON_DISP_DP,
>>>> +        .name =3D "DP",
>>>> +    },
>>>>
>>>> So, as you mentioned, EXTCON_DISP_DP can set the EXTCON_PROP_TYPEC=
_POLARITY property as following:
>>>> - extcon_set_cable_state(edev, EXTCON_DISP_DP, EXTCON_PROP_TYPEC_P=
OLARITY, 0 or 1);
>>>>
>>>> I'll again developing the extcon property.
>>>>
>>>> Thanks,
>>>> Chanwoo Choi
>>>>
>>> Nice idea, But I am thinking about is it compatible with real Displ=
ayPort without Type-C.
>>> Maybe we should add a new cable: EXTCON_DISP_DP_ALT
>>>
>>> +    [EXTCON_DISP_DP] =3D {
>>> +        .type =3D EXTCON_TYPE_DISP,
>>> +        .id =3D EXTCON_DISP_DP,
>>> +        .name =3D "DP",
>>> +    },
>>>
>>> +    [EXTCON_DISP_DP_ALT] =3D {
>>> +        .type =3D EXTCON_TYPE_DISP | EXTCON_TYPE_USB,
>>> +        .id =3D EXTCON_DISP_DP,
>>> +        .name =3D "DP ALT",
>>> +    },
>> EXTCON_DISP_DP_ALT means EXTCON_DISP_DP connector with EXTCON_PROP_T=
YPEC_POLARITY property.
>> So, we can explain the DP alternative mode without EXTCON_DISP_DP_AL=
T.
>>
>> I'm wondering to add the new EXTCON_DISP_DP_ALT connector
>> because alternative mode was defined as mode instead of new h/w conn=
ector type.
>>
>> Thanks,
>> Chanwoo Choi
>>
>>
> Okay, so I think some comment for EXTCON_DISP_DP is necessary and eno=
ugh.

Okay. I'll do that

Thanks,
Chanwoo Choi
