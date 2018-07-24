From: Wadim Egorov <w.egorov-guT5V/WYfQezQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v5 1/2] mfd: rk808: Refactor shutdown functions
Date: Tue, 24 Jul 2018 11:39:51 +0200
Message-ID: <ac1420fa-7916-813e-a4ef-b7ea403e275b@phytec.de>
References: <1522335000-23057-1-git-send-email-d.schultz@phytec.de>
 <20180416093821.sqrcc6mmnc23njul@dell>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180416093821.sqrcc6mmnc23njul@dell>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Lee Jones <lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Daniel Schultz <d.schultz-guT5V/WYfQezQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org, xsf-TNX95d0MmH7DzftRWevZcw@public.gmane.org, zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, tony.xie-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

Am 16.04.2018 um 11:38 schrieb Lee Jones:
> On Thu, 29 Mar 2018, Daniel Schultz wrote:
>
>> Since all three shutdown functions have almost the same code, all logic
>> from the shutdown functions can be refactored to a new function
>> "rk808_update_bits", which can update a register by a given address and
>> bitmask.
>>
>> Signed-off-by: Daniel Schultz <d.schultz-guT5V/WYfQezQB+pC5nmwQ@public.gmane.org>
>> ---
>> Changes:
>> 	v2: Re-submit with recipients from Rockchip.
>> 	v3: - Added devicetree property to enable the PMIC reset seperate from 
>> 	      "rockchip,system-power-controller".
>> 	    - Dropped the first patch of this serie.
>> 	v4: Splitted refactoring and the new reset feature.
>> 	v5: Removed null pointer from rk808_update_bits.
>>
>>  drivers/mfd/rk808.c | 46 +++++++++++++---------------------------------
>>  1 file changed, 13 insertions(+), 33 deletions(-)
> I'd still like an Ack/Review from the Rockchip guys please.
>
can someone from Rockchip reply to this?
