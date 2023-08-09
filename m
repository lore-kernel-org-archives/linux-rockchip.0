Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FCA1C001B0
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Aug 2023 13:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zDz6ukabOFlqGqR+5JfqvTHjJH/lFj3k2VQ0IOICr3g=; b=Cbeu1cFLiTj8Oc
	JbQB1ubIG61wSn1i3kJCdffFgjuxsR77/ZN/Hkz5S0cf8VRQSY0d+l1ABOb01Ph9HeRnb6mRsGgx1
	QVbh5Ka0voe/SF38nQB3i9L3CaW6gGSClzJ6S+KQSxIrQA08hjI4lJNXxcc/BWZwf9iyYwBmFbiMZ
	RnDb39QTqMeVkOiy/cMBibuVMpOANWWedrmSBCbq2FKPBwZKZsqZJZ07PQDFo7u3DvnGkE6bM5GYK
	CZQPtZaAXGZ4k2MDF2zOhK4aBxlRjzVGI73C+tLF2KmmQ7ZELehrSU+GS8MMXWyKGblSwC17cPzX+
	0XKk1r3Aj/54Kyr1pnEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTjhA-0056IK-1l;
	Wed, 09 Aug 2023 13:57:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTjh7-0056H5-1x;
	Wed, 09 Aug 2023 13:57:50 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qTjgv-0007Qm-02; Wed, 09 Aug 2023 15:57:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Thomas McKahan <tmckahan@singleboardsolutions.com>,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [RESEND PATCH v2 0/2] Add Support for the FriendlyElec NanoPC T6
Date: Wed,  9 Aug 2023 15:57:34 +0200
Message-Id: <169158939223.3288791.10539753296615964681.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230809112120.99-1-tmckahan@singleboardsolutions.com>
References: <20230809112120.99-1-tmckahan@singleboardsolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230809_065749_639198_1B5067BF 
X-CRM114-Status: GOOD (  13.41  )
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

On Wed, 9 Aug 2023 07:21:15 -0400, Thomas McKahan wrote:
> This adds support for the RK3588-based NanoPC T6 single board computer.
> Note this series is dependent on the PCIe 3 support [0] being
> upstreamed. The NanoPC T6 uses PCIe3x4 like the Rock 5B and EVB1.
> 
> [0] https://lore.kernel.org/all/20230717173512.65169-1-sebastian.reichel@collabora.com/
> 
> v2:
>  - remove unnecessary "okay" status from sound
>  - add '-regulator' suffix on 2 regulators that were missing them
>  - use generic node name for rtc
>  - remove extra lines
>  - fix alignment in I2S entry
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add NanoPC T6
      commit: 99c81c127408e6b2e4725303fc2e0a09616877ce
[2/2] arm64: dts: rockchip: Add NanoPC T6
      commit: 893c17716d0cf68f5ff4dc71c90e0c2bd1f7da46

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
