Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D863ACEFCEF
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jan 2026 18:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MUGEibTywpL6CW7ZRhr5vg/3y/g4XbiS3sAhJBqW9Rk=; b=g6fVI6e28XgUgr
	WMUhzBB4xsBt7DkBKJW53CCz12zeS/8PdfbM1LTpCnkY7VswGFdL6Bcg4RSL5zyrq5O1cZsNzi0ah
	sqnxFNHel79ue4hmcSyPuK0OlzIKhLpg2rPu1LLc8tif+Z/2r8Du4uwbb9ptKHcQtFssfYf1mvtDX
	AlKni7bTQXFSJAXp2mHVtKzOcSxsqsdw88JpcyysX2LNCCaJVPqcb35FKEr7hEBvE+Whl8HI4XOSN
	m9VYN4ESWHGkKxw7+k/IWHpI7mITEwpMP39jm2WDLwSDpLwFFTG5ZOJ6ffnvZ+FCVvnOXn3FZmum/
	Psp6SWDgilAJwAR5xWVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdC0m-0000000Dhde-02u4;
	Tue, 06 Jan 2026 18:42:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdC0j-0000000DhYs-21aC
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Jan 2026 18:42:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=dy6XG18uHyaj1R13hOuexatpPOJvnVgc2qbu+yr+w9o=; b=siNHS6uOGCbAG1wXogNhMJuT+2
	ZoaFsT1thIWu3gPZxhQ0JjSMXjssn6nGp+tSYlajffwNg89r55xQK1FctJGfW+aGUgNCku+EY7EPn
	kczZc7wWpD3wSL3K2nOQP7cLZYv290OiIksmeNHEdKxomIDIkiies1LMeafjMrCabJ/8L9FnMbcJN
	d7TJb/a47lVwOILEnolQXcCNHtIfCdrOqStbh02BAalhzQT3gv9fj/3WyIX/xc6VgE8xP70fdBLk+
	cqXUCAf7mBGRVvO0fai6zSocXm6mMxY+iipWcmhW1Llv0em7YxJUZCRzB7+6Q5r5VRYd+PC4nbe9j
	IlFr8s2Q==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdC0O-001Hfs-Da; Tue, 06 Jan 2026 19:42:09 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jonas@kwiboo.se,
	i@next.chainsx.cn,
	kever.yang@rock-chips.com,
	michael.opdenacker@rootcommit.com,
	honyuenkwun@gmail.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: fix description for Radxa CM3I
Date: Tue,  6 Jan 2026 19:42:01 +0100
Message-ID: <176772487186.3029798.11493005388525764062.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251229045838.2917-1-naoki@radxa.com>
References: <20251229045838.2917-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_104229_532413_F5515FEF 
X-CRM114-Status: UNSURE (   8.74  )
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


On Mon, 29 Dec 2025 04:58:37 +0000, FUKAUMI Naoki wrote:
> "Radxa CM3I" is the correct name[1], so fix the description.
> 
> [1] https://dl.radxa.com/cm3i/docs/hw/radxa_cm3i_product_brief.pdf
> 
> 

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: fix description for Radxa CM3I
      commit: a1823b88d35f1bf04ec4e4f86b9206f699b362d0
[2/2] dt-bindings: arm: rockchip: fix description for Radxa CM5
      commit: fc808f80cf298caaa403755ca808cf650844f2f5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
