From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: kexec on rk3399
Date: Tue, 23 Jul 2019 14:32:09 +0100
Message-ID: <c83f2748-52a0-45c8-b906-288d329439c2@arm.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
 <91c53121-9041-e8a2-97a2-5b5626e24c6e@arm.com>
 <d5959b93-40ce-455c-877e-c661a3f22351@gmail.com>
 <8f71e7de-7eaf-58c7-6471-c8eb01e656ce@arm.com>
 <e42e7e24-a616-4a11-8c4d-1f44146e0a19@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <e42e7e24-a616-4a11-8c4d-1f44146e0a19@gmail.com>
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
To: Vicente Bergas <vicencb@gmail.com>
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>, Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 22/07/2019 19:53, Vicente Bergas wrote:
> On Monday, July 22, 2019 7:35:01 PM CEST, Robin Murphy wrote:
>> On 22/07/2019 18:05, Vicente Bergas wrote:
>>> On Monday, July 22, 2019 4:54:41 PM CEST, Marc Zyngier wrote: ...
>>
>> The obvious culprit would be DMA devices left running by the first 
>> kernel scribbling over the second kernel's memory before it's had the 
>> chance to reset them. Since boot-time memory allocation patterns tend 
>> to be relatively repeatable for a given platform and kernel 
>> configuration, "random" may well look a lot less random than you might 
>> expect, and it wouldn't be unheard of for e.g. the second kernel to 
>> mostly allocate its dentry cache from the same area the first kernel 
>> was mostly putting a network Rx descriptor ring.
>>
>> Robin.
> 
> Here is another attempted test: on the first kernel disable:
> # CONFIG_ZONE_DMA32 is not set
> # CONFIG_DMADEVICES is not set
> # CONFIG_PL330_DMA is not set
> that is, all i could disable matching CONFIG_*DMA*=y, which is not much.
> Still enabled are:
> CONFIG_HAVE_DMA_CONTIGUOUS=y
> CONFIG_DMA_SHARED_BUFFER=y
> CONFIG_SCSI_DMA=y
> CONFIG_IOMMU_DMA=y
> CONFIG_HAS_DMA=y
> CONFIG_NEED_SG_DMA_LENGTH=y
> CONFIG_NEED_DMA_MAP_STATE=y
> CONFIG_ARCH_DMA_ADDR_T_64BIT=y
> CONFIG_DMA_DECLARE_COHERENT=y
> CONFIG_ARCH_HAS_SETUP_DMA_OPS=y
> CONFIG_ARCH_HAS_TEARDOWN_DMA_OPS=y
> CONFIG_ARCH_HAS_SYNC_DMA_FOR_DEVICE=y
> CONFIG_ARCH_HAS_SYNC_DMA_FOR_CPU=y
> CONFIG_ARCH_HAS_DMA_PREP_COHERENT=y
> CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN=y
> CONFIG_ARCH_HAS_DMA_MMAP_PGPROT=y
> CONFIG_DMA_REMAP=y
> CONFIG_DMA_DIRECT_REMAP=y
> 
> Then the second kernel still fails with d_lookup errors.

Yeah, none of those configs are particularly relevant - I'm thinking 
more about the drivers for ethernet, wifi, USB, PCI devices, and any 
other peripherals which may be set up to make DMA accesses based on 
external stimuli and don't get shut down cleanly by a kexec.

Robin.
