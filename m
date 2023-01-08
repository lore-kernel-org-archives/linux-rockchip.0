Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30697C54EBC
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Jan 2023 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ldDH4nw3pdqvsGVht5mg2o5V/aDGp6vR+4xfLuMEIHU=; b=zEdS+cIzW21EE6
	t++M89rcFXyf4/gaY5reNHziUuffM9/Y/9teG1EQrcZKpIJLS7L7T+ELZ56/DkPkoxREyJWmUjBeo
	8Io0d7hhhYBTdFm9j95D0IWwKfAlqNLCW8nx9lOyLQPLQcSLcxcpCLjSesokeFVVsADg8K8XTbM2J
	pN9tJbeNnLuPEGNSPM0UfOyRvTOi3ZWDMP/3+r6Hht2f3TEkJ+7Gf4/rdWYicNp4ETVZQhb7HAR5q
	duReSPwxg5l6xafv4AdhmSOnV+t4YAOVHzrhN1h5igUuiqSZndrR5fFu4n7DTHgntCg4vjMe820f8
	+DJ5Y8DF11ktrtClBeBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pETXK-00CkVF-Dc; Sun, 08 Jan 2023 11:08:22 +0000
Received: from m12.mail.163.com ([220.181.12.216])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pETX8-00CkNC-Cn; Sun, 08 Jan 2023 11:08:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=8YW1+
	iZwSJpbGONI9vwYy0SnVshkwM7RWh3KdQZfkio=; b=kTNCafXuFdLmh9JC4nXV5
	e8cLrW9TsQ/qWNoLljhR0ynu/D6l1pnV2d2B03sSavGVOjTzOX8MWUe6hp4CjdMr
	tTXTQikjAJ/2VrnaE9aZMRRMNjDYzuJFHRMnqrbKY0DIjEEjCuI6xYSXDq52uPPQ
	BAUXohwagjkYbdo8tAq438=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-0 (Coremail) with SMTP id _____wA3dw_do7pj+UhYAA--.53284S2;
	Sun, 08 Jan 2023 19:07:14 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: lasstp5011@gmail.com,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 0/2] Add support for EmbedFire LubanCat 2.
Date: Sun,  8 Jan 2023 19:07:08 +0800
Message-Id: <20230108110708.2214718-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wA3dw_do7pj+UhYAA--.53284S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Wr1kGr15uF1kWFy8uFyrtFb_yoW3ZFcEya
	s7uFyrKF48JFsYqas8Ka4xGrZak39xK345Ka4rAF1UA3ZrZr4UJFWrJ34fZ3W8AFWIkr13
	Jry7XF48u3Z09jkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRX18m7UUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiFgnwXl44WfBViQAAsi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_030810_864203_FAF07AF3 
X-CRM114-Status: UNSURE (   9.06  )
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


Lubancat series are rk3566/8 based SBC from EmbedFire.
So these Lubancat 2 patch should apply on top of Wenhao's
series for LBC1 [0].

[0] https://patchwork.kernel.org/project/linux-rockchip/patch/Y6Ud9MhRjCVAYMCj@VM-66-53-centos/

Changes in v2:
- keep only one blank line
- Fix underscores in node pmic-int
- Keep rockcip,pins of pmic-int in one line

Andy Yan (2):
  dt-bindings: arm: rockchip: Add EmbedFire LubanCat 2
  arm64: dts: rockchip: Add dts for EmbedFire rk3568 LubanCat 2

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-lubancat-2.dts   | 733 ++++++++++++++++++
 3 files changed, 739 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
