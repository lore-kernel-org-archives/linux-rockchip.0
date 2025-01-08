Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0946DE7719A
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jan 2025 13:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kKzrh0Ncs6uP/KL896/eV6Dbm/ZxHSqYuRahtEl6MqU=; b=vp76s7HrfXfBI0
	NHAYXGTyrsCS0FGfn92iHa32i+xrJNDbHpgDNSmoWxbZHE/2A/CQPeaclRfNv0zFP7Zber9shEN61
	il7s14PoCR00K6H1a019Jc1eNpsyKA02KKSvexQrMHiDmvqRjq2euNBsPMjdJJPBowbd+1DbIH/t6
	d1rN2o+dNCKi6oKszdCcX/n7KpXAMa5xSUyDiv2uUCTXTBD9OSKI3yb2dWc7W82Yib49whNCuVg1c
	YhnhefxrvgUoD8K67psOKW7Q/NeFHD7lfQDV9ZIxlAuVAo8of4zmckK92akiS4OF21IVhwlAv3m8w
	XRa4k/mu9N/U93Q46kiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVVm7-00000008Y4b-2qf9;
	Wed, 08 Jan 2025 13:07:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVV7p-00000008Psd-347V;
	Wed, 08 Jan 2025 12:25:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4/3TQc+wKiZgug/lkUhEpMI/kfdtxils1hrpDtT87kY=; b=p4/WUyoxjvgSKmCxuSXqISiqes
	F267ElDVsro8WL5a73pwD3A6BNosCUPedJmV/lNNrxHzAaGkmTBDJHbM4Q+Kkkm/lMaPzfXIOrO2w
	LsDlWxIy+HOfLdI3JbGbNGcxdF1PiUqcvZajculjaRa+EOHeHRsp7usFi90/HcPb0CEcpqQzr6ik/
	7/FGRBgslIEy7xFf+ld6Kj9ZAkVVc+s0YIfwsxtHE0tUoq6JmwfPHnohDZDDclNx//qRkn8AOMAVm
	hcHR6ScQztAUf5Wrua6Ya/9berBQ51P5V480c1BD0eKm3wNiN5HBh+YG/RyyKpjLWBc9P/JnKfVSo
	VmGfKJOQ==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVV7n-0005gn-No; Wed, 08 Jan 2025 13:25:27 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: anton.kirilov@arm.com
Cc: Heiko Stuebner <heiko@sntech.de>,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	nd@arm.com
Subject: Re: [PATCH] arm64: dts: rockchip: Enable the USB 3.0 port on NanoPi R6C/R6S
Date: Wed,  8 Jan 2025 13:25:13 +0100
Message-ID: <173633908212.2779821.7132962301358694819.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241219112532.482891-1-anton.kirilov@arm.com>
References: <20241219112532.482891-1-anton.kirilov@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_042529_790898_E4354541 
X-CRM114-Status: UNSURE (   9.37  )
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


On Thu, 19 Dec 2024 11:25:32 +0000, anton.kirilov@arm.com wrote:
> Enable the USB 3.0 port on FriendlyElec NanoPi R6C/R6S boards.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable the USB 3.0 port on NanoPi R6C/R6S
      commit: 0cc356ce96d92155d98570f08e1229c509d2263c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
