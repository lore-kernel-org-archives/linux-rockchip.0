From: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: kexec on rk3399
Date: Mon, 22 Jul 2019 15:54:41 +0100
Message-ID: <91c53121-9041-e8a2-97a2-5b5626e24c6e@arm.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Vicente Bergas <vicencb@gmail.com>, linux-arm-kernel@lists.infradead.org
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 22/07/2019 15:31, Vicente Bergas wrote:
> Hi, i have been running linux on rk3399 booted with kexec fine until 5.2
> From 5.2 onwards, there are memory corruption issues as reported here:
> http://lkml.iu.edu/hypermail/linux/kernel/1906.2/07211.html
> kexec has been identified as the principal reason for the issues.
> 
> It turns out that kexec has never worked reliably on this platform,
> i was just lucky until recently.
> 
> Please, can you provide some directions on how to debug the issue?
> 
> The latest test performed is:
>  1.- Boot v5.3-rc1

Not the most trusted version, but hey, why not...

>  2.- Kexec into v5.2.2
>  3.- The kernel reports nothing (earlycon not enabled) and does not boot.
> The same kernel v5.2.2 works fine when booted without kexec.

Can you please enable earlycon and let us know how far it goes? Your
previous reports hinting at runtime memory corruption, but this seems to
be much more radical...

FWIW, I was able to kexec using 5.2-rcx (for values of x around 6) on a
NanoPC-T4, using a mainline u-boot and firmware.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...
