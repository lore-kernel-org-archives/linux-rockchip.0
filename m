Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF2DACDB483
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 10:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CAJMY58+Ln2USwsM3z6hZGr7BsuEHDmY18Bx1MpYOiM=; b=VWnt+Bc5qWUVh/
	cSrjFVemG9saIIA2BP0OJ4ogY2nc2dVMPX7EHW1Gr2QUkQAAvH27+ktO1VZlniMLHaEoyRwxAbWeH
	wSTxnfSttvnhvzkErTsrfxKD+j0bPP2jFkKT3Rke1EUaRqAtCnXTzQ09wdWD6/oOcllq8ASefcKZO
	rmfKNgxCFJGNpAF83pmLoSquZclsnLFu/Vgdnv7rsTdtzizVxyCqetfsYTfabemTUJV+XSRIvefG4
	oeXElE0xK8kdwlafi08kgqrYVriYjElRT6cweEuQe73kYxP0TxXPigdwRoBW7xPyEtgD7oHFmPf7z
	AdjXTwRDh5+OtG4dpPRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFeH-003EGi-1G;
	Fri, 13 Oct 2023 10:44:05 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFe7-003EBw-1E;
	Fri, 13 Oct 2023 10:44:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A62E7CE30B2;
	Fri, 13 Oct 2023 10:43:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2527C433C9;
	Fri, 13 Oct 2023 10:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697193832;
	bh=3lYFs6bchwNMSq1INqyRMVNErXqm99CbpOPb/MT7JX4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=mmiwaVRcMxZX7I6GjOlW+9Bq0wm/YT3US0tBClbf+V4BSkHMxMFUNuufOJRGhm87b
	 oSip0mXlaXuKZVOpfWLKX2ncz5jAp5RQ8mkF2PGBS6t1DGuAGUWh5pxB2y/J6k/CO5
	 BBVaaV8gRSYaWRCnljjnUkS4O1U+B3RFngdPyx6JlTGOupSO+G0VrthtDhmA196uWQ
	 O29gM5qcE8tP7DA43dxt2y/sUb3FEbWM10Zt2gBKRW4aWdvVmnfGeBQewZq6h1Mut6
	 ECoVzXBFpkZSb7nQO0gT2P6dnJgCYzfKY58FjuOwW91+mbRStJ1Zgee0NxDugiHfOR
	 4j9zG1yJ5Yldw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20231009172923.2457844-17-robh@kernel.org>
References: <20231009172923.2457844-17-robh@kernel.org>
Subject: Re: [PATCH] phy: rockchip-inno-usb2: Drop unnecessary DT includes
Message-Id: <169719383030.165658.14179567430035290525.b4-ty@kernel.org>
Date: Fri, 13 Oct 2023 16:13:50 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_034355_608020_EF9E33BC 
X-CRM114-Status: UNSURE (   4.30  )
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


On Mon, 09 Oct 2023 12:29:12 -0500, Rob Herring wrote:
> Neither of_address.h or of_platform.h are used in the driver, so drop them.
> 
> 

Applied, thanks!

[1/1] phy: rockchip-inno-usb2: Drop unnecessary DT includes
      commit: 8b6fba3e79eb67411d2a0a70955e41abc7007210

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
