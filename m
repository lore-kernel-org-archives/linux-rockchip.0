Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44E6E106289E
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 13:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cz/HJrljrGJVrxO2Zhfr7MCzOnl4BhAytltzwiqxaAE=; b=y07qeBSirrhj63
	WWs/022kqYrBxtRpnBToAw4mfLYaUgYqeol6eAL88PwFgUclMXZVeoSY5wr5mMx6IrCd5KYKLu/pp
	4lmjgI3DG5bS83VXytu4JOCppOsv20HuLLdycixO2ZRRyVCowrJRoPVF20oMoBHN3tp35XLGE3rP9
	RTNA5b3D50ARK/wLLf472x7pzSWJhoh2Y2S5n9XjhrbqkPCwviwHDidpes7bibxA3Xp3sAV9Va/wY
	EKOqxWg5hDkYJDu1uA93vMBvaz45d3iIhaYEB84n3kOA5YgTB0FCOspC+WkhJuGA42Gd3cahb4GwX
	fLh6dCdtw+iWftxM9I5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0JLt-0000000BcWQ-10Xm;
	Wed, 11 Mar 2026 13:11:53 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0JLq-0000000BcVY-2ogx
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 13:11:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id ADA9C41690;
	Wed, 11 Mar 2026 13:11:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00DCFC4CEF7;
	Wed, 11 Mar 2026 13:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773234709;
	bh=qPtMt/NDDpi3DbxzDPM6BCFcXuiXe2i5KCuPaNa5B+I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ttt/97pIEHQaV+021Sj8MuKvLia3b+6j+4auauCOYe8HSyBPTANWY33nHQgKMrGNJ
	 5dYc/d2nLfWHl5KNNYHUZu/WrO4MkwjLxdF/WyUzscd8+CIvl7OpkHPjuKbZqLEEIB
	 kSy/MBMn1XguE5oeSxYuQp23H6ER7Iwo4P/ltjDV3qo6HDUGAuLOnEkGLDZygFqB+r
	 wLgj0akn7WwzZ+q6mjKxU8U3epB9+K4T3pxU1Yn/PUSS323hjRR3zSbmZl88S3zqHK
	 oCC3cThbkYGdCpZHgADo9k2y2nBoZNrbREynxN7ASO7rhG0SK75ZMqi+q1GGEnBDR0
	 Jmig8zVnL5BxA==
Date: Wed, 11 Mar 2026 14:11:46 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: "James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add mphy reset to ufshc node
Message-ID: <20260311-rich-colorful-vicugna-abb4f7@quoll>
References: <1773193218-215988-1-git-send-email-shawn.lin@rock-chips.com>
 <1773193218-215988-3-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1773193218-215988-3-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_061150_729166_9673E097 
X-CRM114-Status: UNSURE (   9.26  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Mar 11, 2026 at 09:40:18AM +0800, Shawn Lin wrote:
> Add mphy reset to ufshc node to fully reset the whole UFS blocks
> if needed. Otherwise, it may occasionally prevent the UFS controller
> from successfully linking up with the device.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 

You must not combine DTS changes with patchset targetting SCSI/UFS,
because they apply entire set and this DTS CANNOT go there.

NAK

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
