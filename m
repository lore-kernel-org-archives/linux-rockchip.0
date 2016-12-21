From: Baolin Wang <baolin.wang@linaro.org>
Subject: Re: [PATCH 1/3] extcon: Add documentation for EXTCON_CHG_USB_* and EXTCON_USB_*
Date: Wed, 21 Dec 2016 15:59:07 +0800
Message-ID: <CAMz4ku+5U0cNMdjsJFyDp47rDSKsnpXrKB4N=o24bx9fyK-5KQ@mail.gmail.com>
References: <CGME20161221061321epcas2p196fd90254d59164e1195840bdd546fa7@epcas2p1.samsung.com>
 <7b9836ce2ca34118a2acd1ea113605a5f13b4439.1482300213.git.baolin.wang@linaro.org>
 <585A2D40.9000606@samsung.com> <CAMz4kuKfRKd-0YXekfATT3e_anKewJ5qOHsVbi4hJV10d6Eq0Q@mail.gmail.com>
 <585A3616.4050009@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <585A3616.4050009@samsung.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chanwoo Choi <cw00.choi@samsung.com>
Cc: myungjoo.ham@samsung.com, Chen-Yu Tsai <wens@csie.org>, Kishon <kishon@ti.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Linaro Kernel Mailman List <linaro-kernel@lists.linaro.org>, Mark Brown <broonie@kernel.org>, NeilBrown <neilb@suse.com>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On 21 December 2016 at 15:58, Chanwoo Choi <cw00.choi@samsung.com> wrote:
> Hi,
>
> On 2016=EB=85=84 12=EC=9B=94 21=EC=9D=BC 16:53, Baolin Wang wrote:
>> Hi,
>>
>> On 21 December 2016 at 15:20, Chanwoo Choi <cw00.choi@samsung.com> wrote=
:
>>> Hi,
>>>
>>> On 2016=EB=85=84 12=EC=9B=94 21=EC=9D=BC 15:10, Baolin Wang wrote:
>>>> Current there is both "EXTCON_USB" and "EXTCON_CHG_USB_SDP" which
>>>> both seem to suggest a standard downstream port. But there is no
>>>> documentation describing how these relate.
>>>>
>>>> Thus add documentation to describe EXTCON_CHG_USB_SDP should always
>>>> appear together with EXTCON_USB, and EXTCON_CHG_USB_ACA would normally
>>>> appear with EXTCON_USB_HOST.
>>>>
>>>> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
>>>> ---
>>>>  include/linux/extcon.h |    9 ++++++++-
>>>>  1 file changed, 8 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/include/linux/extcon.h b/include/linux/extcon.h
>>>> index b871c0c..6498b05 100644
>>>> --- a/include/linux/extcon.h
>>>> +++ b/include/linux/extcon.h
>>>> @@ -46,7 +46,14 @@
>>>>  #define EXTCON_USB           1
>>>>  #define EXTCON_USB_HOST              2
>>>>
>>>> -/* Charging external connector */
>>>> +/*
>>>> + * Charging external connector
>>>> + *
>>>> + * When one SDP charger connector was reported, we should also report
>>>> + * the USB connector, which means EXTCON_CHG_USB_SDP should always
>>>> + * appear together with EXTCON_USB. The same as ACA charger connector=
,
>>>> + * EXTCON_CHG_USB_ACA should always appear with EXTCON_USB_HOST.
>>>> + */
>>>
>>> Looks good to me.
>>> But, you use the different word for ACA as following:
>>> I think that 'would normally' is proper in descritpion.
>>
>> Okay, I will change to 'would normally' in next version patch. Thanks.
>
> Don't need to send next patch. I modify it and apply it. Thanks.

Okay, Thanks a lot.

--=20
Baolin.wang
Best Regards
