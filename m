Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61448C35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 10:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OHVJzDT1spNxxuRgBEfTnXi6cesL8FbadnETHN0fDxA=; b=34Q9CV1RZwI9rd
	Hk2V0+VTD+6UaiSh9D6MsCV1mcACnlN6FBZbqnimtQYn+bktFUUyA4TAdtpLFj6vzwBAD45MzdW2O
	tXBaL/4EhGseOPIaOWLT+W5dFmVo+ndF3Ih59wadAtDStsba16iUBBPb44Yzp+C5T3JGQ/XtPUcMj
	GBeYVRp8AwJMu3v1C/72ZZevdNcFRiaaNbFC7t5XEAZouKXnxkXZTJEjgetG/IlQpUtChr9uNEbMC
	x6KxvmaGoC4LetDKUsyqW/moYVDvKaps4VQ8yiMBuMMop4bpk++owd1BKm1cQA374BtSn2eSUc35F
	Q/Zj5qOBcUfTmTuG9sJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFBII-009wA2-1Y;
	Mon, 18 Dec 2023 10:56:18 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFBID-009w6f-24;
	Mon, 18 Dec 2023 10:56:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=3zMsq
	zxERBHEQfxFqCRnEbkWCpgZ7dTA4M/X9Ze6/Rk=; b=YTVZXeFC5IzpriFx2JpK1
	fd9Bnf03DJplQQwExm868/qNYuzgCxPCxX6ISiLHfK2xnXeHZfq5jl21giEtaYSB
	j+UAzcw4lbTnHN2bKW4w80v7sMlFPmxHoRJ17P5mIBmsJ/3LijB5y7A1gfDB888x
	clKlxKeN1dnBXu9/Gz/CnQ=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-2 (Coremail) with SMTP id _____wDn72EdJYBln1v+Bg--.7214S2;
	Mon, 18 Dec 2023 18:55:29 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	zhengxing@rock-chips.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 0/3] Fix mainline support for rk3036 kylin board
Date: Mon, 18 Dec 2023 18:55:20 +0800
Message-Id: <20231218105523.2478315-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wDn72EdJYBln1v+Bg--.7214S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrtFWrtF1ruF18GF43Ww1UGFg_yoW3ZFb_ta
	4fWw1kJa1rGr15t3W5tw4fW398A348KFs3GayDtFnrJF90qF17ZasayasFqF1SyFyS93Z7
	CrWYgF1j9wsxCjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU0KQ6JUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqBtKXmVOBAraoQABs4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_025614_035962_EA223E86 
X-CRM114-Status: UNSURE (   8.35  )
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

From: Andy Yan <andy.yan@rock-chips.com>


When I want to test some patch of inno hdmi driver on
mainline, I found the support of rk3036 kylin board
was broken by somehow:

PATCH 1 is add psci dt node, as we switch to psci for
cpu on/off for many yeas.
PATCH 2 add stdou-path for uart boot console.
PATCH 3 fix the emmc per board rockchip,default-sample-phase property
issue.

Changes in v2:
- Fix typo s/patch/path/
- Change subjet s/arm/ARM/

Andy Yan (3):
  ARM: dts: rockchip: Add psci for rk3036
  ARM: dts: rockchip: Add stdout-path for rk3036 kylin
  ARM: dts: rockchip: Remove rockchip,default-sample-phase from
    rk3036.dtsi

 arch/arm/boot/dts/rockchip/rk3036-kylin.dts | 4 ++++
 arch/arm/boot/dts/rockchip/rk3036.dtsi      | 6 +++++-
 2 files changed, 9 insertions(+), 1 deletion(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
