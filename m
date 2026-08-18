Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A677BC5DF67
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2026 07:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZhkDAd+qs4G9Q4G88uGqovq1PBonS7WsnwAk3rPcVk=; b=dCrb5XWuCRR2+j
	DWxUfek9mLhyYEAoG6fHl8peYOgMo/sBPVovMtqqG6uYn/Ba4vl+JP25RfIi1ReL2xlOV/XWMvkcy
	vt0TdZULOlPph+QhNJ5F8Ignr3EP6ROuFv+7rOqRRGvRcEsS0RFSkCVhRw+9P9U3g49maNbkTVf33
	M0jqzJ5bhRbrj543w/+OMFobIbBSiKBiB/0c5Mg1kzAMGIMjkOgfeLXvvdOVpH867UEArvrTphYmg
	LEzO50PXHzBeYq3LM8t7p4+S1MK7BOk5baLo0GBoFGAbZKzNZva9uq+J4QPAbF6sc8qlzqfhuGy4C
	LMkQWhR9agKnIo8qseFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwENP-00000007Sv3-39uS;
	Tue, 18 Aug 2026 07:36:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwENN-00000007Suc-48wZ;
	Tue, 18 Aug 2026 07:36:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5A1BC41338;
	Tue, 18 Aug 2026 07:36:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 183431F000E9;
	Tue, 18 Aug 2026 07:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787038609;
	bh=rtkd86yXauUYJ1yESUkr9rEpociEDl/J/0AtQD1n78I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=k1P4a9ou7tb8cnDpwVNWLEsgCBoIDWXh62nxOvjt5agsWxXw2VY9LykwQ43Y14OA2
	 mMWZTx8mlBD8sBZFdOx6oigS2bv8lnui8AX78kHz3vzHi14P7/I2XZW2yqqIFVLchg
	 5aHlx7touN00eIywRNx7wv04+yzZ+yV/FR0ecMlrpDM4+00HETwPoLd6zWAAcWtNYi
	 1dGrrCIIqlqj0TqcCOkWRZiYQq9y4JMtRMPGAK6nvpkLSZxrUZSBglboImWqyb5fHf
	 3Ald4L46lSnvTvpS2cvmGXjHipJZKUzWdIlfk2z4SmQKtC5QixdLQnzh8b9+MExgy6
	 ebLpSZUPIdVeA==
Date: Tue, 18 Aug 2026 09:36:44 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dawid Olesinski <dawidro@gmail.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, 
	"David S . Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Diederik de Haas <diederik@cknow-tech.com>, Eric Biggers <ebiggers@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Conor Dooley <conor+dt@kernel.org>, Corentin Labbe <clabbe@baylibre.com>, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/4] crypto: rockchip: Add RK356x/RK3588 cryptographic
 offloader driver
Message-ID: <20260818-enigmatic-friendly-lizard-bc8aaf@quoll>
References: <20260708175837.1718437-1-dawidro@gmail.com>
 <20260816194112.552100-1-dawidro@gmail.com>
 <20260816194112.552100-3-dawidro@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260816194112.552100-3-dawidro@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, Aug 16, 2026 at 08:39:45PM +0100, Dawid Olesinski wrote:
> Add a driver for the second-generation Rockchip cryptographic hardware
> accelerator found on RK3568 and RK3588 SoCs (compatible strings
> "rockchip,rk3568-crypto" and "rockchip,rk3588-crypto").
> 
> The hardware provides:
>   - AES block cipher engine: ECB, CBC, and XTS modes, 128/192/256-bit
>     keys. XTS hardware is limited to single-SG requests.
>   - Hash engine: SHA-1, SHA-256, SHA-384, SHA-512, MD5, SM3.
>     The hardware padding engine (HW_PAD) requires the total message
>     length upfront and cannot maintain state across LLI descriptor
>     boundaries, so multi-SG and unaligned requests are routed to a
>     software fallback.
>   - DMA engine: linked-list descriptor (LLI) based, with a 20-entry
>     coherent descriptor table.

Hardware encryption drivers are being removed or at least tried to be
removed multipled times, so would be nice to see here WHY this one
should be added.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
