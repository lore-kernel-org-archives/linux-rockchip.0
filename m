From: Philippe CORNU <philippe.cornu@st.com>
Subject: Re: [PATCH] drm/bridge/synopsys: dsi: Adopt SPDX identifiers
Date: Tue, 23 Jan 2018 10:25:51 +0000
Message-ID: <2bf185e2-9b02-3632-dc9a-baf8f4109b44@st.com>
References: <20180122102608.12565-1-philippe.cornu@st.com>
 <3169703.7pajs7FEnH@avalon>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <3169703.7pajs7FEnH@avalon>
Content-Language: en-US
Content-ID: <F120B524ABBF8349A443838BD2CF882F@st.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Archit Taneja <architt@codeaurora.org>, Heiko Stubner <heiko@sntech.de>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, David Airlie <airlied@linux.ie>, Brian Norris <briannorris@chromium.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Sandy Huang <hjc@rock-chips.com>, Yannick FERTRE <yannick.fertre@st.com>, Andrzej Hajda <a.hajda@samsung.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Ludovic BARRE <ludovic.barre@st.com>, Mickael REULIER <mickael.reulier@st.com>, Vincent ABRIOU <vincent.abriou@st.com>, Bhumika Goyal <bhumirks@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Laurent,

A big *thank* for your review

On 01/23/2018 12:30 AM, Laurent Pinchart wrote:
> Hi Philippe,
> 
> Thank you for the patch.
> 
> On Monday, 22 January 2018 12:26:08 EET Philippe Cornu wrote:
>> Add SPDX identifiers to the Synopsys DesignWare MIPI DSI
>> host controller driver.
>>
>> Signed-off-by: Philippe Cornu <philippe.cornu@st.com>
>> ---
>>   drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 6 +-----
>>   1 file changed, 1 insertion(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
>> b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c index
>> 46b0e73404d1..e06836dec77c 100644
>> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
>> @@ -1,12 +1,8 @@
>> +// SPDX-License-Identifier: GPL-2.0
> 
> According to Documentation/process/license-rules.txt this would change the
> existing license. The correct identifier is GPL-2.0+.
> 

You are right, I did not put the correct identifier :(

After reading more spdx.org, I wonder if the correct value should be 
GPL-2.0-or-later instead of GPL-2.0+

https://spdx.org/licenses/GPL-2.0-or-later.html
https://spdx.org/licenses/GPL-2.0+.html

What is your opinion?

Many thanks,
Philippe :-)

>>   /*
>>    * Copyright (c) 2016, Fuzhou Rockchip Electronics Co., Ltd
>>    * Copyright (C) STMicroelectronics SA 2017
>>    *
>> - * This program is free software; you can redistribute it and/or modify
>> - * it under the terms of the GNU General Public License as published by
>> - * the Free Software Foundation; either version 2 of the License, or
>> - * (at your option) any later version.
>> - *
>>    * Modified by Philippe Cornu <philippe.cornu@st.com>
>>    * This generic Synopsys DesignWare MIPI DSI host driver is based on the
>>    * Rockchip version from rockchip/dw-mipi-dsi.c with phy & bridge APIs.
> 
> 
