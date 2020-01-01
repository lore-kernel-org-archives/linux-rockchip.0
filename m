From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix IR on Beelink A1
Date: Wed, 1 Jan 2020 13:01:32 +0000
Message-ID: <3d0f69d5-739a-0566-b1d7-bc3c2f0c8045@arm.com>
References: <44269c08e2a5d75b03ded87d2eb11621762d8249.1577636223.git.robin.murphy@arm.com>
 <30349756.SWxbmzi8ve@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <30349756.SWxbmzi8ve@phil>
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 2019-12-31 11:50 am, Heiko Stuebner wrote:
> Am Sonntag, 29. Dezember 2019, 18:48:05 CET schrieb Robin Murphy:
>> Apparently I wasn't paying enough attention... And nor is the lazy
>> test of `cat /dev/lirc0` sufficiently blunder-proof. Oh well, with
>> the correct polarity, let's also hook up a keymap now that one for
>> the standard Beelink remote has handily appeared.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
> 
> applied for 5.6

Thanks Heiko - although if you have any other fixes to send for 5.5 do 
you think this might be able to sneak in too? Someone mentioned on IRC 
that unlike mine, their box wouldn't even generate interrupts with the 
polarity backwards.

Cheers,
Robin.
