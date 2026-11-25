Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A663606A684
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 13:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=fQe/RiPz;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.a=rsa-sha256 header.s=protonmail3 header.b=VG4FDJAN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=XwlMw8pXifHPOQe1uVGIkuXy8+zlNUFkQ1NGteUBP4E=; b=fQe/RiPzBEo0xhXzPztw6hNcKT
	O3ZgFldRGuM4IKpaWKZ1pkPX65E+2YUUw3hZlkhp93zfQDUOKbcu8KVMdOf5ndDlyy3XB/r8rwDwM
	st5ZFYRK9YrzusKqWJfYICbVjVnh3mcba1Mw2zQmvBInqjXrkb/SBODhyHd8Yio64y5oc+KBfDNmC
	qyFjqkT9knNS1xriWSg6TbpC8i5SIDNkauQg7nN/UiY0m6IVmqRri1Cib9mt8IxmcICWhUHW3GZlR
	j6LnlDD2pKl9YwxFtQPaCooQnEsVhEv6kwwQDZk1soyv4SZLTGg6KZRYxCwnXItG83aYeR39tQHRB
	7Shh3fLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWDNi-0000000A2uI-34ad;
	Wed, 25 Nov 2026 13:49:54 +0000
Received: from mail-106104.protonmail.ch ([79.135.106.104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWDNe-0000000A2rW-1oZH
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 13:49:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1795614584; x=1795873784;
	bh=BuPepjdXAchlZ0/rdmklLt9a4OqDms3VeAyOyVVTjdU=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=VG4FDJANG6JEbv/1Mwb2lTT0CY6hhvcXxLMEZV0//O4YGYscqkRzEVesPF03ipVGU
	 ECWyheGAc7f32lOi9FLmumMc5d5/tm/AxV4gllixFPjGC/BtEqh896ltoIzLBsTlpq
	 672pBW2z6Tz4EJ49qCWEUee4dU/V1BYGkOgWnYgfzS70Oy1dUz5z+Tqp27c+1NSvVK
	 n+iKMNmpI7kBQyXcpZsW2vc7xrzCSz7Af4e6sHwLAfptzPPQnriLnH1YNBFJsgXXs2
	 1A/fO5Pa5RUWqZ+TUndzTLEioSB//GmSIXsPU09AbUKez8lJY5iH6U5zZcCorPB5Tg
	 Hepbut9OX0Xjg==
Date: Wed, 25 Nov 2026 13:49:26 +0000
To: Alexey Charkov <alchark@flipper.net>
From: Ryan Leung <untilscour@protonmail.com>
Cc: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, =?utf-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Willem de Bruijn <willemb@google.com>, Simon Horman <horms@kernel.org>, Ricardo Pardini <ricardo@pardini.net>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/5] nvmem: rockchip-otp: Derive MAC addresses from the CPU ID
Message-ID: <0aH4P5VH9HNiTXpCUTaTlvGaoUDQBnvv-0cSXtipSDkLOGjzGy96jDqsVtU0DJTWrocgoMcGFEgd0JUlF5mljVvCzGKVz4yUgDQ0s6HaDLg=@protonmail.com>
In-Reply-To: <20261124-rk3576-otp-cpuid-mac-v4-3-d403b8a25113@flipper.net>
References: <20261124-rk3576-otp-cpuid-mac-v4-0-d403b8a25113@flipper.net> <20261124-rk3576-otp-cpuid-mac-v4-3-d403b8a25113@flipper.net>
Feedback-ID: 184418679:user:proton
X-Pm-Message-ID: 9e804900875c1d7029fee4789a2fc3b0fde23519
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_054950_642700_392F3057 
X-CRM114-Status: GOOD (  32.19  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Alexey,

On Tuesday, November 24th, 2026 at 8:04 PM, Alexey Charkov <alchark@flipper.net> wrote:

> Rockchip bootloaders derive stable Ethernet MAC addresses from the CPU
> ID in the OTP memory and patch them into the device tree they pass on.
> Kernels started any other way, e.g. straight from the SPL in Falcon
> mode, end up with random addresses which change on every boot, even
> though the CPU ID is just as readable from Linux.
> 
> Implement the derivation for cells marked as "rockchip,cpuid", handing
> the result to consumers which ask for the cell as "mac-address", such as
> of_get_mac_address(). Leave the CPU ID unchanged for any other reader,
> so that the same cell keeps serving the ID itself.
> 
> Follow U-Boot's rockchip_setup_macaddr() exactly, so that both yield the
> same addresses: hash the CPU ID's lowercase hex string with SHA-256,
> take the first six octets as a unicast, locally administered address,
> and XOR the cell argument into the last octet, which is how U-Boot gets
> eth1addr from ethaddr.
> 
> Put the address in the first six octets and keep the cell at the size
> of the CPU ID, as NVMEM cells have a fixed size and MAC address
> consumers accept a longer cell.
> 
> Hooking the derivation into the OTP provider rather than a separate
> layout means it works with any fixed layout of the OTP cells, and needs
> no per-SoC knowledge, as the cell already gives the CPU ID's location.
> 
> Signed-off-by: Alexey Charkov <alchark@flipper.net>
> ---
>  drivers/nvmem/Kconfig        |  4 +++-
>  drivers/nvmem/rockchip-otp.c | 48 ++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 51 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
> index d2f5bb236663..5776d4e4b391 100644
> --- a/drivers/nvmem/Kconfig
> +++ b/drivers/nvmem/Kconfig
> @@ -448,9 +448,11 @@ config NVMEM_ROCKCHIP_OTP
>  	tristate "Rockchip OTP controller support"
>  	depends on ARCH_ROCKCHIP || COMPILE_TEST
>  	depends on HAS_IOMEM
> +	select CRYPTO_LIB_SHA256
>  	help
>  	  This is a simple driver to dump specified values of Rockchip SoC
> -	  from OTP, such as cpu-leakage.
> +	  from OTP, such as cpu-leakage. It also derives stable Ethernet MAC
> +	  addresses from the CPU ID, as Rockchip bootloaders do.
> 
>  	  This driver can also be built as a module. If so, the module
>  	  will be called nvmem_rockchip_otp.
> diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
> index 7eb834516ab4..eb91e7a34051 100644
> --- a/drivers/nvmem/rockchip-otp.c
> +++ b/drivers/nvmem/rockchip-otp.c
> @@ -6,9 +6,12 @@
>   * Author: Finley Xiao <finley.xiao@rock-chips.com>
>   */
> 
> +#include <crypto/sha2.h>
>  #include <linux/clk.h>
>  #include <linux/delay.h>
>  #include <linux/device.h>
> +#include <linux/etherdevice.h>
> +#include <linux/hex.h>
>  #include <linux/io.h>
>  #include <linux/iopoll.h>
>  #include <linux/module.h>
> @@ -67,6 +70,8 @@
>  #define RK3588_AUTO_EN			BIT(0)
>  #define RK3588_RD_DONE			BIT(1)
> 
> +#define ROCKCHIP_CPUID_LEN		16
> +
>  struct rockchip_data {
>  	int size;
>  	int read_offset;
> @@ -319,6 +324,48 @@ static int rockchip_otp_read(void *context, unsigned int offset,
>  	return ret;
>  }
> 
> +/*
> + * Derive a MAC address from the CPU ID the same way Rockchip bootloaders do
> + * (see rockchip_setup_macaddr() in U-Boot's arch/arm/mach-rockchip/board.c),
> + * for consumers asking for one. Everyone else gets the CPU ID unchanged.
> + *
> + * The address takes the first six octets of the cell, which keeps the size of
> + * the CPU ID. Consumers only look at those, so the rest is left as it is.
> + *
> + * The cell argument is XORed into the last octet rather than added to the
> + * address, matching how U-Boot derives eth1addr from ethaddr.
> + */
> +static int rockchip_otp_cpuid_pp(void *priv, const char *id, int index,
> +				 unsigned int offset, void *buf, size_t bytes)
> +{
> +	char cpuid[ROCKCHIP_CPUID_LEN * 2];
> +	u8 digest[SHA256_DIGEST_SIZE];
> +	u8 *mac = buf;
> +
> +	if (!id || strcmp(id, "mac-address"))
> +		return 0;
> +
> +	if (bytes != ROCKCHIP_CPUID_LEN || index < 0 || index > U8_MAX)
> +		return -EINVAL;
> +
> +	bin2hex(cpuid, buf, ROCKCHIP_CPUID_LEN);
> +	sha256(cpuid, sizeof(cpuid), digest);
> +
> +	memcpy(mac, digest, ETH_ALEN);
> +	mac[0] &= 0xfe;		/* clear the multicast bit */
> +	mac[0] |= 0x02;		/* set the locally administered bit */
> +	mac[5] ^= index;
> +
> +	return 0;
> +}
> +
> +static void rockchip_otp_fixup_dt_cell_info(struct nvmem_device *nvmem,
> +					    struct nvmem_cell_info *cell)
> +{
> +	if (of_device_is_compatible(cell->np, "rockchip,cpuid"))
> +		cell->read_post_process = rockchip_otp_cpuid_pp;
> +}
> +
>  static struct nvmem_config otp_config = {
>  	.name = "rockchip-otp",
>  	.owner = THIS_MODULE,
> @@ -328,6 +375,7 @@ static struct nvmem_config otp_config = {
>  	.stride = 1,
>  	.word_size = sizeof(u8),
>  	.reg_read = rockchip_otp_read,
> +	.fixup_dt_cell_info = rockchip_otp_fixup_dt_cell_info,
>  };
> 
>  static const char * const px30_otp_clocks[] = {
> 
> --
> 2.56.0
> 
> 

Perhaps "rockchip,cpuid" could include a mention of "mac" somewhere?

Tested-by: Ryan Leung <untilscour@protonmail.com> # RK3528 NanoPi R28S

I tested on FriendlyELEC NanoPi R28S (RK3528) with index of 100 and the MAC address was exactly as expected.

Looking forward to using this.

Best regards,
Ryan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
