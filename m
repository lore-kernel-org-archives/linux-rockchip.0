Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D6F4C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Feb 2022 23:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bdlkra0w/rv113V83fJUokU8tBDHS1MGRE1hszHtlQk=; b=D7uMEPTFtSYPwU
	XuPbArQ0CN4bk7kcnskqhGuOkS3Eqhmx/LrvpKMkc6oZhz8PGY4x8jMxyMUgO054hVw5xoo3PKXb4
	Zzc8nz/RoocP44KtyNLa1Q1HW+6yDlk42THQ4+cbkqtJdVpSw1c9qbuTae5IRtQDkYdN7T7LAdoIT
	jlMz1HyRT9id+36TE5/eDVVMPhRGnozIMvMZuk23qe/jeb5VhmH5Wpf3lGh/NmK3ljn0a9Wi/NdG1
	UryrcV8c2Lo8nOatWgKGyoOcVlaZBoc8+XZrlMYl79rSuR8WPti3h4wVlK+Ec068oOQA0D3og0x/M
	cz5g4c3VJlVvfMFVabzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNNPU-002gO1-7i; Thu, 24 Feb 2022 23:20:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNNPQ-002gMU-VF; Thu, 24 Feb 2022 23:20:30 +0000
Received: from [185.156.123.69] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nNNPP-0004GA-UW; Fri, 25 Feb 2022 00:20:27 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip driver changes for 5.18 #1
Date: Fri, 25 Feb 2022 00:20:26 +0100
Message-ID: <9977257.a15B8eIVjX@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_152029_038008_2F5747E0 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The following changes since commit e783362eb54cd99b2cac8b3a9aeac942e6f6ac07:

  Linux 5.17-rc1 (2022-01-23 10:12:53 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.18-rockchip-drivers-1

for you to fetch changes up to 7dbb47d64acf4aac131a2aaade726913aa62abe7:

  dt-bindings: soc: rockchip: add rk3568-usb2phy-grf (2022-01-23 13:35:06 +0100)

----------------------------------------------------------------
Compatible for the rk3568-usb2phy-grf.

----------------------------------------------------------------
Peter Geis (1):
      dt-bindings: soc: rockchip: add rk3568-usb2phy-grf

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
