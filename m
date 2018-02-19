From: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: vdd_log is not an i2c slave
Date: Mon, 19 Feb 2018 18:34:17 +0100
Message-ID: <CAAMcf8A=rYuhk4LoWbTYUb9t7ePfvaWm3nd07uLcODQhvN5P=w@mail.gmail.com>
References: <20180218154359.9362-1-vicencb@gmail.com> <1705208.FSornk7tld@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1705208.FSornk7tld@phil>
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, Feb 19, 2018 at 7:01 AM, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
> Am Sonntag, 18. Februar 2018, 16:43:59 CET schrieb Vicente Bergas:
>> The vdd_log power supply is controlled by a PWM pin, not by i2c register access.
>> There is a boot message that reports an error about not being able to bring that supply up.
>> Also, the eMMC is not detected and /dev/mmcblk2 does not exist.
>>
>> References:
>> [1]
>> Schematic page 16, search for LOG_DVS_PWM
>> https://dl.vamrs.com/products/sapphire_excavator/RK_SAPPHIRE_SOCBOARD_RK3399_LPDDR3D178P232SD8_V12_20161109HXS.pdf
>> (alternate link)
>> http://opensource.rock-chips.com/images/f/f0/RK_Sapphire_RK3399.rar
>>
>> [2]
>> arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
>>
>> Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>
> I've adapted the commit message a bit and applied the patch
> for 4.17
>
> For the emmc, that is a separate issue and you'll need to look at the logs
> to see if there is anything shown. Especially device-numbering
> (your mmcblk2) is not guaranteed, so this could very well also be
> mmcblk0 or mmcblk1
>
>
> Thanks
> Heiko

Sorry, I did not mention it because I thought it was implicit:
 both issues, the one related to the vdd_log and the other related to
eMMC, are fixed with this patch.
Anyways, thanks for applying it!

Regards,
  Vicente.
