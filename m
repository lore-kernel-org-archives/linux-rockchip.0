Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3965AC369D8
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Apr 2025 08:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aegsvHd1AMrZg4I7SmL1VaoTiuwN0y6jyWYLb+aANOs=; b=2gABanV8mqAKUN
	W26G21UHlR2dCJtiPcBIFnxvxqQzdsU5fwBOjyqsQMkYRhe2DjDHT+6IOaDliqHTaetaFUr1FVLkD
	bK5m3MKIKf4XynI4dNVrIEQfWEFGY5GDU4d+vWtPVnzGkYpQcSINIspT3hW7HvmyMK4KShlJcynzr
	RExeEvnkjH6NR/i48cxt0OQJ2GKUlN+y0Mzh6hvLM7mvHEhzv2YzvOOA18uEfBYWnFXf3hgmJGpPg
	OxMEsRs58c4WXct2Vy7lCdvgnzTME4MGYzldBlTCqOK/I4tqzp//cyZsTRcYlCQ9FwPMaGwv7daLz
	D6GbqjgREgTvMnDO5DHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8xB1-000000039g0-3MZm;
	Sun, 27 Apr 2025 08:15:51 +0000
Received: from out28-133.mail.aliyun.com ([115.124.28.133])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8vqg-000000032qj-21SD;
	Sun, 27 Apr 2025 06:50:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=coolkit.cn; s=default;
	t=1745736639; h=From:To:Subject:Date:Message-Id:MIME-Version;
	bh=U1GZt0j74cjZz+4xaSGSJUjZ7iEQo5EUR7q2Tuw3IYI=;
	b=eysZYEVzR6qWOKfI8KgDvn7i5TI+OenSBv8RY/z5uHmKtYarBL4JxYbXyXAon6aZYIaJzbn1LTU4S4CgGMcFx8feJn2LyFZfIH3B05KLfWHwj1Fl0C/HctTRIeEFQvUrew8HdflxuVcAnxTsdcGKzpvXS825aRM72Rra0dqbJq8=
Received: from ubuntu-z.lan(mailfrom:hao.zhang@coolkit.cn fp:SMTPD_---.cY70L4K_1745736637 cluster:ay29)
          by smtp.aliyun-inc.com;
          Sun, 27 Apr 2025 14:50:38 +0800
From: Hao Zhang <hao.zhang@coolkit.cn>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	linux-kernel@vger.kernel.org
Subject: ARM: dts: rockchip: Wifi improvements for Sonoff iHost
Date: Sun, 27 Apr 2025 14:50:12 +0800
Message-Id: <20250427065013.99871-1-hao.zhang@coolkit.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250426_235047_035878_4C2F36AA 
X-CRM114-Status: UNSURE (   3.28  )
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

Hello maintainers,

This is my first patch submission for the Rockchip DTS files.
The patch improves WiFi stability for Sonoff iHost.

Please let me know if any modifications are needed.

Best regards,
Hao Zhang


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
