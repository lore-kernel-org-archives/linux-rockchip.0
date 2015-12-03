From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [RFC] rk3368 idle states
Date: Thu, 03 Dec 2015 02:05:01 +0100
Message-ID: <2472961.2QZIyIIJQ0@diego>
References: <20151202111858.GB18981@red-moon>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20151202111858.GB18981@red-moon>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Lorenzo,

Am Mittwoch, 2. Dezember 2015, 11:18:58 schrieb Lorenzo Pieralisi:
> while reviewing other dts idle states bindings I spotted the following
> snippet in arch/arm64/boot/dts/rockchip/rk3368.dtsi:
> 
> cpu_sleep: cpu-sleep-0 {
>        compatible = "arm,idle-state";
>        arm,psci-suspend-param = <0x1010000>;
>        entry-latency-us = <0x3fffffff>;
>        exit-latency-us = <0x40000000>;
>        min-residency-us = <0xffffffff>;
> };
> 
> Could you please explain to me how you obtained these residency/latency
> values ? They make NO sense whatsoever and I am quite tempted to
> ask you to remove this data from the dts file, it is just wrong.

I took these values verbatim from the vendor kernel when adding the core 
rk3368 support.

I guess I was overly enthusiastic, that psci worked out of the box for smp, 
that I didn't check the latency/residency values enough at that time. As time-
values they are really overly long :-) .


Nevertheless I have inquired now, what the background of those values is.


Heiko
