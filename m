Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD4C0C54EBE
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Jan 2023 11:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K3uhMWIOFV0nu+dknpXvt3oy2W8F7ZjF7VmP0izFBcA=; b=m4tUoKY7tOW6O0
	wLBgSH9OfOD1YaO8PVv4WvorCCe5HB5KvpE6cJVdM6H85k+0XLqGKA4iZhA/aE8DM/SAg9YiKkH9m
	57iB9eshF6jjApWpcvmvG26nAuhvEyMy58F7BbSP+7rdJk5htGnvHh+jIDdDxKGVCpafdvNcF3BQ1
	t0EglFUxPSW8BrdUP9IGKk0L6dL34IgvsshWKHTsTLjiQDNhGvB+Jml35nsJcpn3NCh9ww/nm6T7N
	FGc1/r8OVvicpcoosHRgov0zPHXQ73KPMAQ7FcMRMH+NwNffXkICr6PD2i7r9JewSe/trZYDlAeDy
	qqIROhxiNIhsXjrEFMTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pE7l2-004bEv-EX; Sat, 07 Jan 2023 11:53:04 +0000
Received: from m12.mail.163.com ([220.181.12.198])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pE7kr-004b6P-Ar; Sat, 07 Jan 2023 11:52:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=La+U8
	67INzBu0h4o8wQUOvS3yylJf8wtl9YAUS0U0sc=; b=lOmiThg5NppnhcdFqX6US
	no75XPmmnxoUYQgOZsk3IQYAsK5JkLScnIChG0iB/Jz30YTWn//nsJfG8WOkmxO/
	MIYeiifFVusYSE4ny4zl7wJiAy01h5Eu6oJc6PIUj5GmYXl+UXscj6b+PbPm3T8O
	vt9c80w6+21TrJjfBAGXx0=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-4 (Coremail) with SMTP id _____wD3_9PgXLljMbheAA--.47451S2;
	Sat, 07 Jan 2023 19:52:04 +0800 (CST)
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
Subject: [PATCH 0/2] Add support for EmbedFire LubanCat 2.
Date: Sat,  7 Jan 2023 19:51:59 +0800
Message-Id: <20230107115159.2125308-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wD3_9PgXLljMbheAA--.47451S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Wr1kGr15uF1kWFy8Zw18Krg_yoWxZFXEya
	s7uFy0gF48JFn0qasxK34xGrZrK39xK345Ka45AF1DCFnrXr4UJFWrJ34SkFW8AFW2yr1f
	Ja4aqF18uFn09jkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRJKsj7UUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMwXvXlXmDdX4bwAAs7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230107_035253_782466_01A271EA 
X-CRM114-Status: UNSURE (   7.78  )
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


Andy Yan (2):
  dt-bindings: arm: rockchip: Add EmbedFire LubanCat 2
  arm64: dts: rockchip: Add dts for EmbedFire rk3568 lubancat 2

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-lubancat-2.dts   | 734 ++++++++++++++++++
 3 files changed, 741 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
