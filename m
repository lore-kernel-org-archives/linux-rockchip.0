From: Robert Foss <robert.foss-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: rk3399: Graphical artifacts when running for-next
Date: Fri, 22 Feb 2019 12:02:29 +0100
Message-ID: <9c26c9bb-19e0-9d91-8466-8a7480f1ea13@collabora.com>
References: <69ddf17a-232d-fc1f-f6a7-59dbde220395@collabora.com>
 <cc5be462-6684-f945-bee9-5b583aee6f37@collabora.com>
 <ea326f10-51ea-f673-b3fc-8dcc403249ba@collabora.com>
 <2639059.tGzugZzMeT@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2639059.tGzugZzMeT@phil>
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
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Tom Cubie <tom-ZvE2cuBqvIQAvxtiuMwx3w@public.gmane.org>, Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org



On 2/22/19 10:38 AM, Heiko Stuebner wrote:
> Am Freitag, 22. Februar 2019, 10:32:53 CET schrieb Robert Foss:
>> Hey again,
>>
>> I found the issue, and it has been solved by Ezequiel
>> before me.
> 
> cool that it's working for you now.
> 
>> A DDC I2C bus specifier is required for DDC EDID probing to work
>> properly.
>>
>> https://www.spinics.net/lists/arm-kernel/msg708359.html
> 
> That patch is still sitting in my to-review queue, I should be
> picking it as fix for 5.1 some time this week.
> 
>> Thanks for participating in this goose-chase with me.
> 
> You could provide a Tested-by tag for it :-D

I would! I don't have that patch in my inbox however :F


Rob.
