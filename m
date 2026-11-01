Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EFFE606F2D3
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 22:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IVCLg2bn;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=P2n/NivL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=40XRuqGTzqgA1KICsfNJ2Ayu/of/JiHUGp10cvcFWag=; b=IVCLg2bnu3xIfzQl4VhJDRWPEw
	jOEgV06o2vqhmeKCGp1ImZgoTs6fZcud/RxkQJbhuNWnWRBXuqzyoCgya/wkTpGyjteayMYqc09Nz
	IRHjiNTlNNFtXoyAUGqXJpyr3cuXAMB9pIOqjLwP3v9wBxUrE3QmsdVpZjC22x3B85pS7YxnbPXOC
	LU57i+RLJqy97feYyIo4p54XxU4TUq6iMAvExXr5uTVEnO19exVUq9msy8541Lfke9gXb8ZmGGPnA
	Ykm8jWTckWznY1GnyeFs1FTZPuPhdAKYZrpSNCDrMHOQyPnXcY/utNCI8a78X3mBPfEO0xsnkkey1
	tXVDEoLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdqX-0000000Ezcb-17Jf;
	Sun, 01 Nov 2026 22:16:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdq8-0000000EyoQ-2sC5;
	Sun, 01 Nov 2026 22:15:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=0Ksm3b1KyTjB0vWXpeTrEa3XgjkfnjwTkmMUnW6CK3U=; b=P2n/NivLQ4gQLjSQ+ENADKpxfy
	+ahd6N903OIwRWIkgrCcqE3QtjnYl+1mJBGeYGLYPo0thnvWijddU/jivqzPd+4nbByjqeaDWra7m
	2bTtnKasxF/PaNCgrZTEyNWVOLpcAOG1j5quo2dIL99u2BseviunqoU/xhd6dxdNTMt/XUI/YsPdA
	xw4BvcezZCeorxYO0F0/3287SbTFT6vPAHn7vxF0BfyGutAlHstq3DLtlYwOLTwVfG0Fi4oEmStHy
	MfY4puZzqDfm9cEqEO/OgLuiddmSDlMPF9KicZm/4R2eyM189VhShib31Go7pTlNpGynJ1DKYXrF5
	q0iJ+dgg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH RESEND] arm64: dts: rockchip: let TCPM own the USB-C VBUS on CM5-IO
Date: Sun,  1 Nov 2026 23:15:22 +0100
Message-ID: <179357131399.4107717.10715553647759854309.b4-ty@b4>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261024083942.148860-1-gahing@gahingwoo.com>
References: <20261024083942.148860-1-gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_141548_855123_8B72A0D2 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Sat, 24 Oct 2026 21:39:42 +1300, Jiaxing Hu wrote:
> vcc_5v0_typec0 is the switched VBUS of the USB-C port. It is the
> vbus-supply of the FUSB302, but also the phy-supply of u2phy0_otg.
> The PHY enables it at boot and keeps it on, so TCPM never sees
> vSafe0V and a sink partner stays in SRC_ATTACH_WAIT. A USB-C dock is
> not detected.
> 
> Drop the phy-supply and leave VBUS to TCPM.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: let TCPM own the USB-C VBUS on CM5-IO
      commit: 1b0bcdaa4de9725870c9b0216acbd373b5faebb7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
