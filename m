Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75509C678D5
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Mar 2023 23:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bj+wSr+d9i/bHJuZ+txg62mA4tyR2bG0sOEs7RDo4Q8=; b=gH3cGgrwVzU9ih
	8ba8n4hNKGtPZ799M8eYK2+kt5tuTuBrV58lLb+/FtYqLAmylMOU33CidbTk7oq8ap+xxDOS/TarP
	E2w1RgowwPFg6t2nIYsc/hSOYauaTsWFisBPUC5pJd/2MBLkj7+1uimN2ziVthKo50BSNkIGOLdW5
	KncngI1p5THvsZOrvrMmlGwIkSnSli4VA5et0sk1dUK5zO8SqXPa1ry/HRvtWCGCuxVuip3fqg/Kl
	oqbKoyQVLr5whThp1it4ytqwL0uL7IriIwvkvTIzZOmNwI4a8/hNpM8ovmun2YIlAGZzmUT+FmvN/
	EjOp0umZuisIZ0fgTTtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZgqV-002tBX-HC; Tue, 07 Mar 2023 23:35:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZgqT-002t9f-KH
	for linux-rockchip@lists.infradead.org; Tue, 07 Mar 2023 23:35:50 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pZgqP-00025h-Jz; Wed, 08 Mar 2023 00:35:45 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/4] Add internal display support to Odroid Go Super
Date: Wed,  8 Mar 2023 00:35:36 +0100
Message-Id: <167823207790.205469.9629635802550886611.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230213153816.213526-1-maccraft123mc@gmail.com>
References: <20230213153816.213526-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_153549_708134_A024AA5F 
X-CRM114-Status: UNSURE (   9.42  )
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

On Mon, 13 Feb 2023 16:38:12 +0100, Maya Matuszczyk wrote:
> This patch series introduces internal display to Odroid Go Super, which
> shares panel with Odroid Go Ultra and several clone devices.
> 

Applied, thanks!

[4/4] arm64: dts: rockchip: Add display support to Odroid Go Super
      commit: f94c11ade1461b9cbae1e8d2e03efa7d4dc178f0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
