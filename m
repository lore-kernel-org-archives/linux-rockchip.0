From: arvind Yadav <arvind.yadav.cs-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [v.1] clk:clk-rockchip:-of_iomap failed to remap then abort clock
 initialization.
Date: Wed, 24 Aug 2016 19:52:45 +0530
Message-ID: <fa254e23-818c-0698-cbbc-68c983e83203@gmail.com>
References: <1471101978-1881-1-git-send-email-arvind.yadav.cs@gmail.com>
 <1528160.BtdbmuP27T@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1528160.BtdbmuP27T@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

yes, I am referring this code for clock control.

--Arvind


On Tuesday 23 August 2016 09:45 PM, Heiko St=FCbner wrote:
> Hi Arvind,
>
> Am Samstag, 13. August 2016, 20:56:18 schrieb Arvind Yadav:
>> -check return of 'of_iomap'.if It's falied to remap then abort.
>>
>> -Unmap a region obtained by remap. iounmap frees the mapping when failed
>> to allocate the memory.
>>
>> Signed-off-by: Arvind Yadav <arvind.yadav.cs-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> ---
>>   drivers/clk/rockchip/clk-rockchip.c | 7 ++++++-
> I've applied the patch, after rewording both patch subject and message [0=
].
>
> That driver is deprecated for quite some time, see
> Documenation/devicetree/bindings/clock/rockchip.txt - so I'm hoping this =
is
> more of a random find and you're not actually using it?
>
>
> Thanks
> Heiko
>
> [0] https://git.kernel.org/cgit/linux/kernel/git/mmind/linux-rockchip.git=
/commit/?id=3D023a8280b8355a0aebe094299afec8d8b7b264cd
>
