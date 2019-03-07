From: Tomohiro Mayama <parly-gh-HEvi76orzLt5vQOrPBq+1Q@public.gmane.org>
Subject: Re: rk3328-rock64: USB ports are broken since commit ef05bcb6
Date: Thu, 7 Mar 2019 23:51:19 +0900
Message-ID: <2f9c467b-cec4-9d30-9fab-bf3c0165720d@iris.mystia.org>
References: <f1894045-573b-dd6e-4453-fbec702aa9ad@iris.mystia.org>
 <4543627b-e68d-2cd6-ebaa-b53d4e81a35d@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <4543627b-e68d-2cd6-ebaa-b53d4e81a35d-5wv7dgnIgG8@public.gmane.org>
Content-Language: en-US-large
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: robin.murphy-5wv7dgnIgG8@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 2019/03/07 23:19, Robin Murphy wrote:
> Judging by that schematic, I suspect that the GPIO should probably be ACTIVE_LOW.

I tried patching according to your suggestion, and now it works fine.
I'm going to make a patch after this.

Thank you for your advice!

Regards,
Tomohiro Mayama
