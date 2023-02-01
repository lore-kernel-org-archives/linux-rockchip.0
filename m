Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59280C38142
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Feb 2023 17:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ri7vcL2c7bHfD94RMmZRr5o/7jgXY7KRQ5xxQTlePqQ=; b=mOmV4lJw3ju8nk
	DDexoLk8Gkrh5LWxvGaTaNhLbsg+v9U4VCqdeMmBSxwvEiFdSRULfscGvNpsay+K5phhkl47xoS3Q
	sDwJJLE3eYfVoqhyNkT+wGipBMiY9Xns5MZ230LCIaLcPYNPHPS54B5vzyZUDathuNKLk3/raTMF3
	fMVPnfSLWycBk+ad3VENI8Md+R1nlk53wns5i3g/VfYnhRGGQ+8bae44U/aIwUSY3aDLFQvd0Mdyi
	jE2ZAaE73Vr39bg6v6gfC8GRJEAdwtB7BeE+I2+UxEFOBzSJ67/2+6EzZKJCzelng2z/5Jns07C7Q
	DsZ+A0Tmbj13LfMZ7CsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNH8r-00D3L0-9b; Wed, 01 Feb 2023 17:43:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNH8h-00D3JE-E0; Wed, 01 Feb 2023 17:43:20 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pNH8c-0005A3-4d; Wed, 01 Feb 2023 18:43:14 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kishon@kernel.org,
	robh+dt@kernel.org
Subject: Re: [PATCH v1] dt-bindings: phy: rename phy-rockchip-inno-usb2.yaml
Date: Wed,  1 Feb 2023 18:43:12 +0100
Message-Id: <167527337748.374583.11647809096785895837.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <99794484-d67e-ee1f-4e76-200de20a879c@gmail.com>
References: <99794484-d67e-ee1f-4e76-200de20a879c@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_094319_485656_0BCB0C18 
X-CRM114-Status: UNSURE (   8.51  )
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

On Thu, 29 Dec 2022 12:39:17 +0100, Johan Jonker wrote:
> Rename phy-rockchip-inno-usb2.yaml to a more common format of
> rockchip,inno-usb2phy.yaml
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: rename phy-rockchip-inno-usb2.yaml
      commit: 0f48b0ed356d8868f62f7c6814fc2edcd70d1816

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
