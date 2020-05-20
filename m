From: =?UTF-8?Q?Mika_Penttil=c3=a4?= <mika.penttila-MRsr7dthA9VWk0Htik3J/w@public.gmane.org>
Subject: iwlwifi firmware loading problems, rk3399
Date: Wed, 20 May 2020 12:44:18 +0300
Message-ID: <9122588d-683a-936e-1305-c34124e6702c@nextfour.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Language: en-US
Sender: linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johannes Berg <johannes.berg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Emmanuel Grumbach <emmanuel.grumbach-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

We have custom made, Rockchip rk3399 based board with a standard M.2 
socket for wifi/bt card.

We have tried man different cards, like Intel 9260 and Intel AX200, but 
are experiencing problems while loading the firmware.

   Failed to load firmware chunk!

etc. I have a little debugged and the problem seems that the interrupts 
that acknowledges the load to proceed, is not coming, randomly.
I have tried many firmwares. Do you have any pointers where to look next?

Thanks,
Mika
