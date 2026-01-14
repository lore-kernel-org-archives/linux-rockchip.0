Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB1BCD37E37
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 14:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22xE4P8yYjk5IlcKDR9PHbWvZGtJ61ruHROdNt92MAM=; b=miOtFirzIF+6+7
	Ei2Qd8Y7J0zNm88PBojo5MSIA+gnmQ3ydemO4rAy3+wWkRQ4Gzb6y0HzTcvn+EDErOnXoec895sfg
	TI589gYxNN7XCUkVcgzq4xv0h294DKdsdLJX6mP+pvkp5AvcGB8GzsWX1s9LuKIYdNKbCUZ0NCfaP
	knCx5Oo4Azmn06oGeGoPs+7AAcxA53jHggVIP7NFCFR510fR5lkfmwibASiS09g2PNbGRaAY82756
	PEzuyk6E8gXXwLmXXBXEo8SciHc1OFsCYCdhwuKts2Xh5qgP7+QZqqNkN+1jBtmJOSrUKtEipM2OT
	rFMbrJqxQFm/VqzJQ3wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1R4-00000009RDw-2Oix;
	Wed, 14 Jan 2026 14:01:22 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1R2-00000009RDG-31j5;
	Wed, 14 Jan 2026 14:01:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C640960053;
	Wed, 14 Jan 2026 14:01:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44EB4C4CEF7;
	Wed, 14 Jan 2026 14:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768399279;
	bh=NS4GOW/krUAkmuANNp5aNWD+Uu/DsbkydKZkOF5PdlE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=psHXlupZoLOYoS0KNWN769c7cdM6cZnylgU3MwlGG+gB5xjJUKWlsfJXUt6whVYC7
	 Y+eCjtsLDEXrfsRM0EybQAVifnNUK1Yy5pxLZ6hTF2twHYM27qY/GfCzbjvwkkczLm
	 3Ce2UDgUjwuLDdMsHuuzof2yQDjZKEROGsNjOzP9vcTwKJQ1s/sHzdg9ZVOoYzFf9m
	 AE5sGACEdh5nMo8qH4yEkHPTfGaDMb3wgw+UafgsnHfZqzQ3RA9MyPCklAik04dTbo
	 KH3nS2taen0nQZUoXwg+XKRkqHlo2Y08JfFTMuWi9Pk0OhoOmS9/Sb8nD7AkDJv4pR
	 ybQBGERh7dGHQ==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, heiko@sntech.de, Wentao Liang <vulab@iscas.ac.cn>
Cc: linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 stable@vger.kernel.org
In-Reply-To: <20260109154626.2452034-1-vulab@iscas.ac.cn>
References: <20260109154626.2452034-1-vulab@iscas.ac.cn>
Subject: Re: [PATCH v2] phy: rockchip: inno-usb2: Fix a double free bug in
 rockchip_usb2phy_probe()
Message-Id: <176839927689.937835.2359558250567308193.b4-ty@kernel.org>
Date: Wed, 14 Jan 2026 19:31:16 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Fri, 09 Jan 2026 15:46:26 +0000, Wentao Liang wrote:
> The for_each_available_child_of_node() calls of_node_put() to
> release child_np in each success loop. After breaking from the
> loop with the child_np has been released, the code will jump to
> the put_child label and will call the of_node_put() again if the
> devm_request_threaded_irq() fails. These cause a double free bug.
> 
> Fix by returning directly to avoid the duplicate of_node_put().
> 
> [...]

Applied, thanks!

[1/1] phy: rockchip: inno-usb2: Fix a double free bug in rockchip_usb2phy_probe()
      commit: e07dea3de508cd6950c937cec42de7603190e1ca

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
