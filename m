From: 4omecha-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Subject: Re: rk3328 USB3 controller
Date: Thu, 17 Oct 2019 18:21:31 +0200
Message-ID: <20191017162131.GH14623@think-future.de>
References: <CAMdYzYp9xdtb6eiUs-Tiq4jJ-jr31LTzng2o-qAbOfu_63zXVg@mail.gmail.com>
 <1b0f65be-51b6-69dd-e204-6d168f17eb7d@think-future.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1b0f65be-51b6-69dd-e204-6d168f17eb7d-ehbYDe70fqD9uQeqpI+JUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 2019-10-17 14:07:43, Katsuhiro Suzuki wrote:
>Hello Peter,
>
>USB3 phy driver "rockchip,rk3328-u3phy" has not been implemented on
>upstream linux kernel.
>
>FireflyTeam use the special version of linux that is modified by Rockchip.
>(It seems based on linux-4.4)
>
>rockchip,rk3328-u3phy is provided by
>  https://github.com/FireflyTeam/kernel/drivers/phy/rockchip/phy-rockchip-inno-usb3.c
That's a 404 over here.


>
>If you want to use USB 3.0 with upstream linux, we need to port this
>USB3 phy driver from rockchip-linux to upstream kernel, I think.
>
>Best Regards,
>Katsuhiro Suzuki
>
>
>On 2019/10/17 3:54, Peter Geis wrote:
>>Good Afternoon,
>>
>>Is there a particular reason why the USB3 controller on the rk3328 has
>>not been enabled?
>>It's enabled on the TeamFirefly source [0].
>>I pulled it in to my device tree and have been using a USB3 SSD as my
>>boot device for over a year now.
>>
>>If I were to submit the patch, would y'all be open to pulling it in?
>>
>>[0] https://github.com/FireflyTeam/kernel/blob/roc-rk3328-cc/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>>
>>_______________________________________________
>>Linux-rockchip mailing list
>>Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
>>http://lists.infradead.org/mailman/listinfo/linux-rockchip
>>
>
>
>_______________________________________________
>Linux-rockchip mailing list
>Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
>http://lists.infradead.org/mailman/listinfo/linux-rockchip
