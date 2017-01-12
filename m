From: Baolin Wang <baolin.wang@linaro.org>
Subject: Re: [PATCH v2 3/3] phy: rockchip-inno-usb2: Set EXTCON_USB when
 EXTCON_CHG_USB_SDP was set
Date: Thu, 12 Jan 2017 16:37:13 +0800
Message-ID: <CAMz4ku+2yZUtmd0DVqj-_GUZ77YVpOvOrC-2kedEWSmJA7AdSg@mail.gmail.com>
References: <7b9836ce2ca34118a2acd1ea113605a5f13b4439.1482307697.git.baolin.wang@linaro.org>
 <23666cc1a5ff123ece5bdbb9821d1eab280d0927.1482307697.git.baolin.wang@linaro.org>
 <CAMz4kuJP9Q7Ly4uRBjCFU32YzbVbnsGyk+wHc+M=g8W=uDBsEQ@mail.gmail.com>
 <CAMz4ku+X8v2HH5L_fS60naNTqR1ZFKYeWuXuHqjg0UsHQq1dsQ@mail.gmail.com> <58773BC8.2050808@ti.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <58773BC8.2050808@ti.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: myungjoo.ham@samsung.com, =?UTF-8?B?7LWc7LCs7Jqw?= <cw00.choi@samsung.com>, Chen-Yu Tsai <wens@csie.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Linaro Kernel Mailman List <linaro-kernel@lists.linaro.org>, Mark Brown <broonie@kernel.org>, NeilBrown <neilb@suse.com>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On 12 January 2017 at 16:18, Kishon Vijay Abraham I <kishon@ti.com> wrote:
> Hi,
>
> On Thursday 12 January 2017 12:13 PM, Baolin Wang wrote:
>> On 3 January 2017 at 13:54, Baolin Wang <baolin.wang@linaro.org> wrote:
>>> Hi Kison and Heiko,
>>>
>>> On 21 December 2016 at 16:12, Baolin Wang <baolin.wang@linaro.org> wrote:
>>>> According to the documentation, we should set the EXTCON_USB when
>>>> one SDP charger connector was reported.
>>>>
>>>> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
>>>> Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>
>>>
>>> Could you apply this patch if there are no other comments? Thanks.
>
> Does it fix something? Or else it can go in the next merge window.

Just fix the correct usage of EXTCON_CHG_USB_SDP connector. It's okay
for me that it can go in the next merge window. Thanks.

-- 
Baolin.wang
Best Regards
