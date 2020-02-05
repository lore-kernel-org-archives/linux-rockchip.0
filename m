From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
Date: Wed, 5 Feb 2020 17:39:25 +0000
Message-ID: <aa1ecada-687b-dd86-508c-b57a6df6f406@arm.com>
References: <87imkryz5t.fsf@vany.ca>
 <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
 <4a6a9d81-c831-4167-7fbf-64805940fb6f@vany.ca>
 <d8a8b696-268b-1ea8-7b5e-406a651011ff@arm.com>
 <510d310b-30af-7b24-d472-907bc6b2ef46@vany.ca>
 <CAMdYzYo5V2rHE6Axx9p67n3FcCFpQ5TA+m7kqaE3Uqn6d0QUhw@mail.gmail.com>
 <7b36198e-25c0-4f3b-d871-6bd5aaf619d8@vany.ca>
 <CAMdYzYp_dVjn18-6gy5MVpuGcOpf26eaPitfNZhARCixfrtYCA@mail.gmail.com>
 <2f863743-f5fd-7702-ac22-762dbca834cb@vany.ca>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <2f863743-f5fd-7702-ac22-762dbca834cb@vany.ca>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Adam Van Ymeren <adam@vany.ca>, Peter Geis <pgwipeout@gmail.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 05/02/2020 4:14 pm, Adam Van Ymeren wrote:
[...]
>>> Calling regmap_write seems wrong, as we end up setting all bits in the register, so this should probably be regmap_update_bits.  The top 16-bits are write-enable for the lower 16-bits, but I can't find documentation if it works to set both the write enable bit and the target bit at the same time.
>> data = (val ? BIT(bit) : 0) | BIT(bit + 16); handles setting both the
>> bit and the write bit.
> Right I saw that, I was more wondering if it's legal to set both in the
> same operation, or if the chip requires you to set the write bit, and
> then the data bit in a subsequent write.

The point of this particular hardware idiom is that the mask indicates 
which data bits to update, and both mask and data are part of a single 
write, thus there is no need for a non-atomic read-modify-write 
sequence. For example:

- register value is 0x00000000
- write 0xffffffff (mask all set, data all 1s)
- register value is now 0x0000ffff
- write 0x00090000 (mask bits 0 and 3 set, corresponding data bit values 0)
- register value is now 0x0000fff6


FWIW I've confirmed on my box that there doesn't seem to be any problem 
with the grf-gpio driver itself - setting the value to 1 or 0 from 
userspace shows up as the enable pin on the audio line driver (per the 
RK3328 reference design) going high and low respectively.

One thing I did notice, though, is that GPIO_MUTE seems to have some 
inherent coupling to the analog codec, as the value automatically goes 
high when starting to play audio, and low again when stopping (but can 
still be manually toggled in between). Thus unless there's some secret 
to disabling that behaviour then it might not be safe to enable analog 
audio on these ROC-CC boards for fear of messing up peoples' SD cards.

Robin.
