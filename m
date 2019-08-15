From: Vicente Bergas <vicencb@gmail.com>
Subject: Re: kexec on rk3399
Date: Thu, 15 Aug 2019 03:15:55 +0200
Message-ID: <59055782-7fc2-4b16-af8b-a56fb845a43f@gmail.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
 <c6993a1e-6fc2-44ab-b59e-152142e2ff4d@gmail.com>
 <0408cb6c-1b16-eacb-d47e-17f4ff89e2b8@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <0408cb6c-1b16-eacb-d47e-17f4ff89e2b8@arm.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Robin Murphy <robin.murphy@arm.com>, Felipe Balbi <balbi@kernel.org>
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>, Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Wednesday, August 14, 2019 3:12:26 PM CEST, Robin Murphy wrote:
> On 14/08/2019 13:53, Vicente Bergas wrote:
>> On Monday, July 22, 2019 4:31:27 PM CEST, Vicente Bergas wrote: ...
>
> This particular change looks like it's implicitly specific to 
> RK3399, which wouldn't be ideal. Presumably if the core dwc3 
> driver implemented shutdown correctly (echoing parts of 
> dwc3_remove(), I guess) then the glue layers shouldn't need 
> anything special anyway.
>
> Robin.

I just checked simple->resets from dwc3-of-simple.c and it is an array
with multiple resets whereas dwc->reset from core.c is NULL.
So the reset seems specific to the glue layers.
Is there another way than resetting the thing that is
generic enough to go to core.c and allows kexec?
