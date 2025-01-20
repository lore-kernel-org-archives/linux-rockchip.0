Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7996EC02182
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jan 2025 12:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8IFraZ2H5UVGUaNuCU7C80aTZar3UHMIwxKSfarZUlE=; b=I/MdkJ1h9bgUNAKYrK0cz9MnMd
	5VUXdoBa4ltDxnQMMGv+gIXW6aDzsWirREKK0WeLFM3dS8KZMVjhdvW92Te3xLl1b97I0W22Xfn9a
	8nTMGxSqYFD7PkyiZJHHazYlPF9FVLA6WfkNE6ICFk8Kr4p3aZkD7BCdHva4iwHplqI8685Hrj0J4
	nmjL+G2yniIBBCHq+zjzFzZSxG3wzXSz2QFeT6zkgNARgEjeGpWGOnRAmxKCDbHDvNvCLhHxsHvw1
	EISIL7iXsU+aKCoxdkINnj1jyydIVz3siGbXmj+Rq2xJ6fL5vkZO6zO9XwlXYAqGpfYENlNyOByvZ
	LGAw6z8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZrIc-00000005aBh-1lyn;
	Mon, 20 Jan 2025 12:54:38 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZrHL-00000005a3c-0J5L;
	Mon, 20 Jan 2025 12:53:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1737377596;
	bh=zsHFNCa7MUOIvYY+F/lq4yL2WqY8ZnsvklOBRTPPdCM=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=qx98U3YxpMeplMwSgT+BtySHgoBhVuwjKBsP7C602QSFOMTtIxbti9R5HLnAkU18J
	 jEAKJjAI2C+iuTvwCLOEXAInblTN0o2/f5ILYEoS1TnqIfMi7orrm+zD0WHGAjebON
	 d3n1J0IsGcNj7dCkA5oPdKYOapZRPfh6g5AB/0uVDVyrsiTZA5BsRKNMBe8PfSk52Q
	 3/F7prODWWm3g0vyO6ZQ2sbj4iffSPyJ5CpVGRgmUskLI7cmI8fwlkyGbXlj0MlQ7D
	 JXY/TAS+9EfX/PL69XMtiOPtuRasTbrJWL+3hLeuLMJnkGIo27oNXkNvm3etv0mXaY
	 C8KE+udFcN7cg==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EC6E917E0F66;
	Mon, 20 Jan 2025 13:53:15 +0100 (CET)
Message-ID: <92e327a9-d131-458f-8cf2-109023c5b81e@collabora.com>
Date: Mon, 20 Jan 2025 13:53:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] iommu: Use str_enable_disable-like helpers
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Yong Wu <yong.wu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20250114192642.912331-1-krzysztof.kozlowski@linaro.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250114192642.912331-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_045319_288323_14761782 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Il 14/01/25 20:26, Krzysztof Kozlowski ha scritto:
> Replace ternary (condition ? "enable" : "disable") syntax with helpers
> from string_choices.h because:
> 1. Simple function call with one argument is easier to read.  Ternary
>     operator has three arguments and with wrapping might lead to quite
>     long code.
> 2. Is slightly shorter thus also easier to read.
> 3. It brings uniformity in the text - same string.
> 4. Allows deduping by the linker, which results in a smaller binary
>     file.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

MediaTek IOMMU/IOMMUv1

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
