Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AA9FC28B28
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 07:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11WA12E/BHVbH9ouMjXFOlm/kWjvn/2+pGQ2c2DgPhY=; b=YvTmw853UN+O5H
	1holPHlzG+qoO3bYpfLjZUiYIPR/emBJHk+9ItxduxJlIsfBkfzbrLx8U59MOJ7DBBQ38xn3gxNaU
	gsSM45BKVsD9z7BIvYGMgKv2WhbOUOEi4Ng7MxfaHD8dBJ4i1oVcO14AhOX/Po6mVW+aj8K6gVH89
	bg4engEpu34LZXRwy+XGcCuo7gqyW9RyrCE5sPbftmAc28col3PqaIGLClYEbw2f6P7f2f6TVfqio
	pa46N6GbmszAf1TGADAGmcgGoZ13Ih/ZYToCzba8ESd82F9TNTYXmd2TI1jTS4sXbN8b7JKfE8uD4
	K4snJyX2NdFsBf0XASuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsGvP-00000007lAp-2zTq;
	Wed, 12 Mar 2025 07:54:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsGnR-00000007jok-0HFI;
	Wed, 12 Mar 2025 07:46:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=3122Wo2fSfR2TPlv6KJp3UkaT4U7LmFi/eDScIdI+bw=; b=vcjeeP/RFEc3s/ROSIdpdnOSAi
	woidRou28FgDEniQ7+tfNBWNfFTWEu7vvnJ3sJPsejwTIdyYm6p2nacbWrTWyK/qX4HPL4cJmHAtF
	/JhVuBlQUmlYSZ/ZcwEdDDfKIG5NIVOImnzlnXypkTuQqJ6v3iIBcs7lgNZfCFEekhLSOVMYU6I2v
	QAV62zHyavflDcEmXi35GFB0VJZX2QuIMqRi2OQOVMVxr0Tpl6kIR+WogJr0r1UtbFgauXRt1NNGh
	fJcdNBzhE48/GVnArXBduvYINw0RV6ZQ0D/ZCbU5E2nX8ZnS6GhekHG/4q0c00XhstUbDAa9qt8tS
	HaoaTuBg==;
Received: from ip-185-104-138-79.ptr.icomera.net ([185.104.138.79] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tsGnM-0005zY-5X; Wed, 12 Mar 2025 08:46:29 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add AP6275P wireless support to ArmSoM Sige7
Date: Wed, 12 Mar 2025 08:45:59 +0100
Message-ID: <174176555630.249409.3989831081874397806.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250311142825.2727171-1-liujianfeng1994@gmail.com>
References: <20250311142825.2727171-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_004633_101124_1BFFB096 
X-CRM114-Status: GOOD (  11.58  )
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


On Tue, 11 Mar 2025 22:27:50 +0800, Jianfeng Liu wrote:
> ArmSoM Sige7 uses the PCI-e AP6275P Wi-Fi 6 module. The pcie@0 node can
> be used as Bridge1, so the wifi@0 node is used as a device under the
> Bridege 1 similar with Khadas Edge 2.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Add AP6275P wireless support to ArmSoM Sige7
      commit: d6166ea4cc4943cbabdeeedb13f3545fdba3ebf6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
