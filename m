From: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH] drm/rockchip: Don't use spin_lock_irqsave in interrupt
 context
Date: Mon, 12 Feb 2018 09:28:41 +0000
Message-ID: <806e60b7-1fa1-3055-e66e-84645d20f442@arm.com>
References: <20180210143501.30407-1-marc.zyngier@arm.com>
 <1742402.LPvxsQ5ymm@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1742402.LPvxsQ5ymm@phil>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: David Airlie <airlied@linux.ie>, linux-rockchip@lists.infradead.org, Mark Yao <markyao0591@gmail.com>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 10/02/18 16:23, Heiko Stuebner wrote:
> Hi Marc,
> 
> Am Samstag, 10. Februar 2018, 15:35:01 CET schrieb Marc Zyngier:
>> The rockchip DRM driver is quite careful to disable interrupts
>> when taking a lock that is also taken in interrupt context,
>> which is a good thing.
>>
>> What is a bit over the top is to use spin_lock_irqsave when
>> already in interrupt context, as you cannot take another
>> interrupt again, and disabling interrupt is just pure
>> overhead.
>>
>> Switching to the non _irqsave version in interrupt context is
>> more logical, and less heavy handed.
>>
>> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> 
> please note, that we had a maintainer swap for the Rockchip drm-component,
> where Sandy replaced Mark [0] ... with me acting as sort-of (and not yet
> up to speed) backup.
> 
> So I guess Rockchip drm patches should also include
> 	Sandy Huang <hjc@rock-chips.com>

I guess that update didn't make it into 4.15, which is why I didn't spot
it. I'll repost the patches shortly including Sandy on Cc.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...
