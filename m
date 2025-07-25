Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEBAEC87FCD
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jul 2025 07:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSEL8BfEaifFyJcN6bV73D15lYoLkOmVbFEEwNDg0TU=; b=34pyL8WNv2TXv7
	ljjWbVF3V1xE3ZsbNRWhXHi1Mx/Fk6qSLNhe7JE7Er0kYNP4WsUNMoxpb7Pb7uAj6OOq5k6zzBiVW
	zEA9vnaLcgLyKfw6/YW5HM3VBLswQfd7vUAbrvk8VR/M2PiqFTRvvQkDzJ4Dppi8i1ld7XMTbTRuN
	ZJJcgqq+br8qggTqTAvCIkwceZrkwJ4VGX/Pz9DEkBubA+BMWn/yROzTnAu/wi5kJoX2vVYNAi3+R
	aoEIcmZ6wo9Yjv4dvCnWXgAGAJnJLw0JJKR5rr2Vad8n9h83jXDVSw80HFSsm1hGvwLah6t4Y4nsG
	dY9CQoy/m5lksvf/Z7sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufD5J-00000009HdR-2ajT;
	Fri, 25 Jul 2025 07:43:17 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufCpU-00000009G37-3DdA;
	Fri, 25 Jul 2025 07:26:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id ABDF4A55FA6;
	Fri, 25 Jul 2025 07:26:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C35B1C4CEE7;
	Fri, 25 Jul 2025 07:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753428415;
	bh=zkwE144btqrOh6f3+S/Z0K7VteOTSRKAEctuSxngV2Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QDwJ1nJtPnvR1hvWu43yd/wUPqTVHDfBo1LeI2QDBk70GyjlUkLSWdacJK9Gxwowa
	 XrrfUCEkchRJs79dxQ0zCilHLZmwn4kAvM9pJ/o0hC5Q9vCg7ZyjtqnMzbQiiQhJc5
	 vuAPveSPLVF2wKrcvoxAu3f5Qk/jRhIv/6952re1iA6xuSTjyhxTbdmEV3fz6Fqcf4
	 KZtwE+lJ2YesfNNR9PZwzAwaYb9Ezk1lCfRVEH8VoIbezIsp80mi7LFqgj7ckHloAI
	 LryzejqzDhqmyVcXA5rb5M7LzRcC2VEW38wvw7yAGV79CgYfL/c8b2M4gZEINpR8v4
	 bnU3Lo517+ipw==
Date: Fri, 25 Jul 2025 09:26:52 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Erik Beck <xunil@tahomasoft.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: add LinkStar-H68k-1432v1
Message-ID: <20250725-muskox-of-authentic-gaiety-b8eda4@kuoka>
References: <20250724-linkstar-h68k-patchv3-v3-0-b9f87b7306e5@tahomasoft.com>
 <20250724-linkstar-h68k-patchv3-v3-2-b9f87b7306e5@tahomasoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250724-linkstar-h68k-patchv3-v3-2-b9f87b7306e5@tahomasoft.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_002656_875551_D2B5584A 
X-CRM114-Status: UNSURE (   8.81  )
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

On Thu, Jul 24, 2025 at 05:37:59PM -0400, Erik Beck wrote:
> Adds dts for LinkStar-H68K-1432v1 board, using rk3568.  Also modifies

Add DTS

> dts/rockchip/Makefile to add a rule to make the dtb from this dts.

This is obvious and redundant. We see it from the diff. Explain the
hardware instead of stating obvious.

> This board is a compact travel router.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
