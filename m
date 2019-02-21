From: =?UTF-8?Q?Michael_R=c3=b6ding?= <michael.roeding-Dmr80ijK6QUttERQvd4Cp4QuADTiUCJX@public.gmane.org>
Subject: Re: rk3399: Graphical artifacts when running for-next
Date: Thu, 21 Feb 2019 16:30:02 +0100
Message-ID: <6f235348-ffa8-6caa-21ab-bfe28be6ddff@ruhr-uni-bochum.de>
References: <69ddf17a-232d-fc1f-f6a7-59dbde220395@collabora.com>
 <2996476.nJxoliyDTa@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2996476.nJxoliyDTa@phil>
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
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Robert Foss <robert.foss-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Tom Cubie <tom-ZvE2cuBqvIQAvxtiuMwx3w@public.gmane.org>, Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Robert and Heiko,

On 21.02.19 14:26, Heiko Stuebner wrote:
> Hi Robert,
> 
> Am Donnerstag, 21. Februar 2019, 11:27:15 CET schrieb Robert Foss:
>> Hey Heiko,
>>
>> I've just started booting the RK3399 based Radxa Rock Pi 4 on the mainline 
>> kernel. Specifically on linux-rockchip/for-next, with an additional patch
>> adding the GPU DT node[1].
>>
>> Unfortunately I'm seeing an artifact on all display output[2].
>> It, from the VT to 3D content.
>>
>> Is this an issue that has been encountered before?
> 
> I haven't seen something like this before. I do test graphics
> on most Rockchip socs regularly (right now dw-hdmi only
> on non-rk3399 socs though).

for the record: I've seen exactly the same as Heiko on my Rock Pi 4 A
(2GB) using stock Arch Linux ARM Kernel (4.20.11) using dts from "arm64:
dts: rockchip: add ROCK Pi 4 DTS support" (v1 though).

As the dts is for 5.1, i was expecting some minor problems. But since
Heiko had the exact same artifacts i though i let you know that not him
alone.

Michael

> 
> Did you try full linux-next as well? My for-next branch obviously
> only carries dt/soc-driver stuff but not things like drm-misc.
> 
> One possible issue might be the generated clocks. You could check
> $debug/clk/clk_summary for the dclk_vopX to see if that matches
> the suggested clock for the mode. (For example check the requested
> rate in rockchip_vop.c against what it actually gets).
> 
> Heiko
> 
> 
>> [1] https://patchwork.kernel.org/patch/10817637/mbox/
>> [2] https://photos.app.goo.gl/ArffJ3785JSeQatW7
>>
>>
>> Rob.
>>
> 
> 
> 
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
