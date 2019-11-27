From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v3 1/7] linux/log2.h: Add roundup/rounddown_pow_two64()
 family of functions
Date: Wed, 27 Nov 2019 18:06:18 +0000
Message-ID: <6e0b9079-9efd-2884-26d1-3db2d622079d@arm.com>
References: <20191126091946.7970-1-nsaenzjulienne@suse.de>
 <20191126091946.7970-2-nsaenzjulienne@suse.de>
 <20191126125137.GA10331@unreal>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191126125137.GA10331@unreal>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Leon Romanovsky <leon@kernel.org>, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc: andrew.murray@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Hanjun Guo <guohanjun@huawei.com>, Sudeep Holla <sudeep.holla@arm.com>, Tariq Toukan <tariqt@mellanox.com>, Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>, james.quinlan@broadcom.com, mbrugger@suse.com, f.fainelli@gmail.com, phil@raspberrypi.org, wahrenst@gmx.net, jeremy.linton@arm.com, linux-pci@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>, "David S. Miller" <davem@davemloft.net>
List-Id: linux-rockchip.vger.kernel.org

On 26/11/2019 12:51 pm, Leon Romanovsky wrote:
> On Tue, Nov 26, 2019 at 10:19:39AM +0100, Nicolas Saenz Julienne wrote:
>> Some users need to make sure their rounding function accepts and returns
>> 64bit long variables regardless of the architecture. Sadly
>> roundup/rounddown_pow_two() takes and returns unsigned longs. Create a
>> new generic 64bit variant of the function and cleanup rougue custom
>> implementations.
> 
> Is it possible to create general roundup/rounddown_pow_two() which will
> work correctly for any type of variables, instead of creating special
> variant for every type?

In fact, that is sort of the case already - roundup_pow_of_two() itself 
wraps ilog2() such that the constant case *is* type-independent. And 
since ilog2() handles non-constant values anyway, might it be reasonable 
to just take the strongly-typed __roundup_pow_of_two() helper out of the 
loop as below?

Robin

----->8-----
diff --git a/include/linux/log2.h b/include/linux/log2.h
index 83a4a3ca3e8a..e825f8a6e8b5 100644
--- a/include/linux/log2.h
+++ b/include/linux/log2.h
@@ -172,11 +172,8 @@ unsigned long __rounddown_pow_of_two(unsigned long n)
   */
  #define roundup_pow_of_two(n)			\
  (						\
-	__builtin_constant_p(n) ? (		\
-		(n == 1) ? 1 :			\
-		(1UL << (ilog2((n) - 1) + 1))	\
-				   ) :		\
-	__roundup_pow_of_two(n)			\
+	(__builtin_constant_p(n) && (n == 1)) ?	\
+	1 : (1UL << (ilog2((n) - 1) + 1))	\
   )

  /**
