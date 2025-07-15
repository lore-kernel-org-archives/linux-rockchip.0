Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B896BC83F17
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 11:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sisEcTl1RQeUa5Rum5c3SQKXHrxU0WCaWiSvwaAOvaw=; b=A1T6A68Gf5YyEN
	cIWFxVyj/qBZjrnNpHOy+1l3YmnNDyisVRxFtHJEh9jAhQjNHC/QaAlyBBmXASt6PckkcBfjo6dd+
	UaBr4/p4L9LtElWOkx5UT2cqGMFsyhfCLWEo9j6K13+JDYKZnv/XFKx7kE6oCTu6KhBep7bgIe02d
	20KthOJrjRHSRMZYFo8pavDoqdgNRPA6yPkyQNJBUUi3gZeEX58VbQx6J2F8a46SaxNbCzIysVkcp
	L1K1idrTVXSUUzkgHQDPzBz9tkZniOuEIPJtYCy/dK5/szEX2B3KlTk9j7Y6vEBpoiUYAaRIArxIL
	6V5yidP7sdQsC0izgVxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubdfl-00000004vBs-0HQA;
	Tue, 15 Jul 2025 11:18:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubdWx-00000004uBa-21Zc;
	Tue, 15 Jul 2025 11:09:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=B21r3yBV8EHsHdXf3f8cxXR6HEpvLw0yL1lX+xHT+kg=; b=m7VPJ1O3O6DUfh6rqmXFORQS7/
	eRWs7mntRWU2v/yjdiS7WDiJmRSzfOus7j8fHrF3KEC/Oxl1QI9oVz7rnEKPOQhdWiqXy/d5OfNmy
	uPoGOQHMvgasS6ZjjzPGOLU1CkdD602FF8k6q8j0kPLOHkklpXY5EFA8ouQz2JxYcDlFkG6LgiWJc
	nl71PjZ751ZXqvAk+wlnJoy6QgtyXgM+feTsjJDoIsRf1sHAnkiYwrUR1Y6HlH8gZz8WieJ7v6Pq4
	DjikX0AMfj2994OoPkCV7RNPIf4EVqJnPxwQFRcrqcBzGiE7oG72Z0OIUasU76lj24D8oxsnK/LwR
	yqtc85jw==;
Received: from [194.95.143.137] (helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ubdWr-0000O7-6T; Tue, 15 Jul 2025 13:08:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v4 00/10] rockchip: Fix several DTB validation issues
Date: Tue, 15 Jul 2025 13:08:46 +0200
Message-ID: <175257771277.2527819.16255685231485653626.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250709132323.128757-1-didi.debian@cknow.org>
References: <20250709132323.128757-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_040903_519789_C036A345 
X-CRM114-Status: GOOD (  10.79  )
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


On Wed, 09 Jul 2025 15:15:13 +0200, Diederik de Haas wrote:
> This patch set fixes several DTB validation issues and consists of 2
> parts:
> 1) dsi refactoring
> 2) various low-hanging fruit
> 
> ad 1) The display/rockchip/rockchip,dw-mipi-dsi.yaml binding had:
> - #address-cells
> - #size-cells
> 
> [...]

Applied, thanks!

[01/10] arm64: dts: rockchip: Move dsi address+size-cells from SoC to px30 boards
        commit: 98921ad2494a85aa7edde33a3a478b9ae3d621ef
[02/10] arm64: dts: rockchip: Move dsi address+size-cells from SoC to rk3399 boards
        commit: d9c9115c6127636efbdc0fad8184bed1cd42fe3c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
