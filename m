From: Zain Wang <wzz@rock-chips.com>
Subject: Some ideas about tcpm driver
Date: Thu, 3 Aug 2017 15:28:53 +0800
Message-ID: <c01f3195-ed9f-38c8-63e3-e59138fc9f80@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Guenter Roeck <groeck@chromium.org>, Yueyao Zhu <yueyao@google.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi all,

In recent days, I tested the fusb302 driver with tcpm. (RK3399 evb board)
But I found an issues:
     There is not a regulator for type-c vbus power-supply in my board.
     The vbus is just controlled by a gpio-pin, and unable to support 
other voltage except 5V.
     But now, I can't use fusb302 driver without workaround fix.
     Could you fix it in next version? @Yueyao

The altmode looks not complete. I can't enter DP Alt Mode now.
And we'd like to used extcon function (used in Chrome) to link usb, dp 
and type-c together.
How do you think about it? @Guenter

Thanks
Zain
