From: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [regression] HDMI breakage just before poweroff
Date: Tue, 12 Jun 2018 00:04:07 +0200
Message-ID: <CAAMcf8BJ1skbmR7AazyTPkkdyMoyuA0ihj=Gbnhb9nKWf3FSGg@mail.gmail.com>
References: <CAAMcf8D86ssM+YeFAXaYDm9QwwAQLdaOgWyC2F8yQ-_-UNyY+A@mail.gmail.com>
 <5AEA873A.7080701@rock-chips.com>
 <0284fa4f-abd6-26f6-31e2-1a6d24777733@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <0284fa4f-abd6-26f6-31e2-1a6d24777733-5wv7dgnIgG8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, JeffyChen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Jakob Unterwurzacher <jakob.unterwurzacher-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, May 3, 2018 at 2:14 PM, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org> wrote:
> On 03/05/18 04:51, JeffyChen wrote:
>> On 05/03/2018 03:36 AM, Vicente Bergas wrote:
[snip]
>>> With 4.17.0-rc3, when reaching the halted state, the HDMI console
>>> shows colorful static noise.
>>>
>> we've added a shutdown() to the iommu driver:
>> https://patchwork.kernel.org/patch/10230817/
>>
>> any chance related?
>
> For sure - the IOMMU shutdown disables paging, so if the VOP is still
> scanning out then that will result in whatever IOVAs it was using now going
> straight out onto the bus as physical addresses. Between the RK3399 memory
> map and the way the IOVA allocator works, that probably means it's reading
> from all over the peripherals region, which, er, isn't ideal.

Hi,
just wondering if there has been any progress on that front?

Regards,
  Vicente.
