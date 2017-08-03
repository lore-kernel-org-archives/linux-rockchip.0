From: Jagan Teki <jagannadh.teki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: rk3288: mmcblk0: error -110 sending status command, retrying
Date: Thu, 3 Aug 2017 13:40:42 +0530
Message-ID: <CAD6G_RTFZcVdyOjpqfaafQZ6VGV6RuCd7Lk67O7eHHatUmrE0w@mail.gmail.com>
References: <CAD6G_RRgPB_FVTr0OUdtUXeViben6pSakEcskzwQXkqUeaT2kw@mail.gmail.com>
 <20170802203809.6f3a8fd9831d291545ecc74b@tiscali.it>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20170802203809.6f3a8fd9831d291545ecc74b-IWqWACnzNjyonA0d6jMUrA@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Diego Roversi <diegor-IWqWACnzNjyonA0d6jMUrA@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Aug 3, 2017 at 12:08 AM, Diego Roversi <diegor-IWqWACnzNjyonA0d6jMUrA@public.gmane.org> wrote:
> On Wed, 2 Aug 2017 16:39:50 +0530
> Jagan Teki <jagannadh.teki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>
>> Hi,
>>
>> Did anyone observing error -110 and -84 during boot on rk3288 target?
>> full log here[1] and used dts node is[2].
>>
>> Proper card detection is done, once we insert after console came-up
>> # [   39.635614] mmc0: card 59b4 removed
>> [   40.645537] mmc_host mmc0: Bus speed (slot 0) = 400000Hz (slot req
>> 400000Hz, actual 400000HZ div = 0)
>> [   41.004559] mmc_host mmc0: Bus speed (slot 0) = 50000000Hz (slot
>> req 50000000Hz, actual 50000000HZ div = 0)
>> [   41.015553] mmc0: new high speed SDXC card at address 59b4
>> [   41.022015] mmcblk0: mmc0:59b4 MS    59.1 GiB
>> [   41.028458]  mmcblk0: p1 p2
>
> If I remember well I've seen the same error with my firefly rk3288 , with kernel 4.9 and kernel 4.11 from debian. Atm I'm using 4.12.0-12921-g235b84fc86, cloned by mmind's git repository[1], and I don't see this error anymore.

Can you point me the branch or SHA1 tried v4.12 and v4.13-* but result same.

thanks!
-- 
Jagan Teki
Free Software Engineer | www.openedev.com
U-Boot, Linux | Upstream Maintainer
Hyderabad, India.
