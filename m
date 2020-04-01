From: Markus Reichl <m.reichl-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org>
Subject: Re: Power Key/button on rk3399-roc-pc
Date: Wed, 1 Apr 2020 12:09:58 +0200
Message-ID: <c3f77864-ab66-e31c-e9a6-5a3c8e10b6ea@fivetechno.de>
References: <CAM+7aWuR-2EYSDQLj+Sep9cu_cAsL5QD=wRrar-9vLSd_7KPyg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAM+7aWuR-2EYSDQLj+Sep9cu_cAsL5QD=wRrar-9vLSd_7KPyg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Language: de-DE
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org
Cc: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Suniel,

Am 01.04.20 um 06:53 schrieb Suniel Mahesh:
> Hi Markus, Levin and all,
> 
> Can you guys please suggest me on my requirement.
> 
> rk3399-roc-pc board has a Power Key/button. As per the schematics this
> Power Key/button
> is connected to GPIO0_A5.

And to PWRON of RK808.

> 
> My requirement is can I use this button for board powerup (especially
> in linux when we issue
> "poweroff" command, the board shuts down and it should power back on
> after I press the Power Key/button).
> 
> For the above to happen, I think this Power Key/button be connected to
> PMIC RK808-D IC, am i correct ?

Yes, see P.16 of ROC-3399-PC-V10-A-20180804 schematic.
> 
> In the schematics, it is not very clear as if such arrangement is
> there (though it says it can be an option in
> RK3399_BOX_REF_V13_20180821.pdf). I am attaching the document.
> 
> Please suggest/comment on my requirement.

Should work, everything is in place, just press long enough ;-).

Btw. could you just revert your recent U-Boot commit
checking GPIO0_A5 that prevents unattended booting?

Thanks,
--
Markus

> 
> Thanks and regards
> Suniel
> 
