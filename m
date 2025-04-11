Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 390D0C36010
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Apr 2025 12:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpzvRnZWb3gIRyOgjqg1Elp+A1ltD+xP9HnpCOdUVCM=; b=F68SsN/W8Invex
	9nrVSTu0P8wohFPrgLQ4N03GffVVSlMeIhzFxUuU7Dik0ls+FtSK44WVQa1WRSxzZZYsq86uxfUIM
	aZJgHcMDbnz65kj4ROX3la2CTTVnZ+JE3NqtUBFikl7lnFOOAsA/i5caR8A3mdRn0kVY/OpgVnh4n
	uEevMNXdN6bL40wFL1j3aqmDngvT+Prvra5RAJo5kJnIQsjm6Q8/Znmoa9yYGfYPT2lNCis2gANII
	RoIG0dDhmFJ9CuJuDkO8zg3AEjTLw+5y5Pt/K9+XW3xNdryGvukNZW4Ddud6glyhNmqt36JA/anEq
	gMWOCoKc1h+8Gq+TbaLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DGw-0000000DhJq-25qz;
	Fri, 11 Apr 2025 12:14:14 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DDZ-0000000DgYS-3nle;
	Fri, 11 Apr 2025 12:10:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 9D26BA4AAE4;
	Fri, 11 Apr 2025 12:05:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6EEFC4CEE2;
	Fri, 11 Apr 2025 12:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744373444;
	bh=bef+HJXcEo2hORvZPJWuTpm+dOfyv21lTNoivV+wiLQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=EUQNS3TgW4ma5b+9diC1JS/QSa3on9tCBUIieI+S3+FKCYTQCBxu0Q5Lm7WxP0C9G
	 jmTtYq1R2foBthUicTIZLURqxEUVKiAm1xi3yS1nmBl0giAgsKYf3D+23ztucU5UWe
	 LfZex2TS41FS6nMNCTgL5MU45QNz2DbQ6cQ1luO3Ng7CtltHZcrSrYAGUHI2yWmXBL
	 5tn53k04JKavpMLGyI5DHaV8ENyl3w83Emww0DZUmSdtOjLYYwrDXnVQMdh3uqo+6/
	 z+frZgXCsR87+JR+3s8a3vlNgC8B+o0I6DBOjudAKXwhO0G+taW5VybSWG3oJV5sdq
	 JhBLze5q0F96Q==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Frank Wang <frank.wang@rock-chips.com>, 
 Zhang Yubing <yubing.zhang@rock-chips.com>, 
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250407165607.2937088-1-robh@kernel.org>
References: <20250407165607.2937088-1-robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: phy: rockchip: Add missing
 "phy-supply" property
Message-Id: <174437344138.673939.9714886269957011717.b4-ty@kernel.org>
Date: Fri, 11 Apr 2025 17:40:41 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_051046_016906_A7020C27 
X-CRM114-Status: UNSURE (   4.97  )
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


On Mon, 07 Apr 2025 11:56:06 -0500, Rob Herring (Arm) wrote:
> Several Rockchip PHYs use the "phy-supply" property, but don't
> document it. Add it to the current known users.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: rockchip: Add missing "phy-supply" property
      commit: 070d546258257c75c65a2f15da558eb96bce550c

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
