From: Emmanuel Grumbach <egrumbach-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: iwlwifi firmware loading problems, rk3399
Date: Wed, 20 May 2020 15:27:50 +0300
Message-ID: <CANUX_P1q22J6ONRqTCDwwEMtmbGbCmS=C1WK6Zz0OqG_v2qcSA@mail.gmail.com>
References: <9122588d-683a-936e-1305-c34124e6702c@nextfour.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <9122588d-683a-936e-1305-c34124e6702c-MRsr7dthA9VWk0Htik3J/w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?UTF-8?Q?Mika_Penttil=C3=A4?= <mika.penttila-MRsr7dthA9VWk0Htik3J/w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Emmanuel Grumbach <emmanuel.grumbach-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, linux-wireless <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes.berg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

>
> Hi,
>
> We have custom made, Rockchip rk3399 based board with a standard M.2
> socket for wifi/bt card.
>
> We have tried man different cards, like Intel 9260 and Intel AX200, but
> are experiencing problems while loading the firmware.
>
>    Failed to load firmware chunk!
>
> etc. I have a little debugged and the problem seems that the interrupts
> that acknowledges the load to proceed, is not coming, randomly.
> I have tried many firmwares. Do you have any pointers where to look next?

I guess you need to debug your board :)
The interrupt is not coming, then.. there isn't much the driver can do.

>
> Thanks,
> Mika
>
