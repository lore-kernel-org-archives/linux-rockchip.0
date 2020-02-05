From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
Date: Wed, 5 Feb 2020 19:02:59 +0000
Message-ID: <382b4bd5-279d-b227-5d0c-774d9c164168@arm.com>
References: <87imkryz5t.fsf@vany.ca>
 <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
 <4a6a9d81-c831-4167-7fbf-64805940fb6f@vany.ca>
 <d8a8b696-268b-1ea8-7b5e-406a651011ff@arm.com>
 <510d310b-30af-7b24-d472-907bc6b2ef46@vany.ca>
 <CAMdYzYo5V2rHE6Axx9p67n3FcCFpQ5TA+m7kqaE3Uqn6d0QUhw@mail.gmail.com>
 <7b36198e-25c0-4f3b-d871-6bd5aaf619d8@vany.ca>
 <CAMdYzYp_dVjn18-6gy5MVpuGcOpf26eaPitfNZhARCixfrtYCA@mail.gmail.com>
 <2f863743-f5fd-7702-ac22-762dbca834cb@vany.ca>
 <CAMdYzYopKjRpVnyq2k84XZK0kmR_ZBH8KNjVyPz3upQjx0rLJQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <CAMdYzYopKjRpVnyq2k84XZK0kmR_ZBH8KNjVyPz3upQjx0rLJQ@mail.gmail.com>
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
To: Peter Geis <pgwipeout@gmail.com>, Adam Van Ymeren <adam@vany.ca>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 05/02/2020 6:43 pm, Peter Geis wrote:
[...]
>> One thing I did notice, though, is that GPIO_MUTE seems to have some
>> inherent coupling to the analog codec, as the value automatically goes
>> high when starting to play audio, and low again when stopping (but can
>> still be manually toggled in between). Thus unless there's some secret
>> to disabling that behaviour then it might not be safe to enable analog
>> audio on these ROC-CC boards for fear of messing up peoples' SD cards.
> 
> Robin,
> Do you know if that is the SOC doing that or the drivers?

Ha, once again I hastily jump to a conclusion without fully 
investigating... I'm really not doing too well in this thread :)

You're absolutely right; on closer inspection rk3328_analog_output() in 
the codec driver is poking GRF_SOC_CON10 directly. That should be 
straightforward enough to sort out, phew!

Cheers,
Robin.
