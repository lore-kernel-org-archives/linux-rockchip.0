Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABAA3C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 17:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ScpSnApqkNmbbch6ebIsTkFasXSVguYlgMUSOryXBAI=; b=d/Zf9/CdeN0a2/
	zlFn8Y90GStc4PLcgMR7EOs0QiiZJPG8WGCjP7PnsqZLgkcgKwcvptdss4P7nuaL3X0jAvM8LQyi2
	V99nJYGW3Qj5TOBpVVGZygZI8W/dkBznrTcpW1HgykiBOl9HsS7lbjb6AZE/+08iObl7tuFu3hT/K
	0DN5ngAYunwkiNZ964PdqWRHnxr39igzoNkOiSVF7AYNszuiCFBUREV6JTUXNRewoivHJ0iQdZ3pe
	x6BNXBcNqQkahXFw1Y9p4Zyi75qh4yXfYPs25sUPFnJL7UBgCWc632H47r7XTkZVCCu2mHf2ZcMTd
	lV/UPlmLHhAhgEd+0GuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seHOJ-00000007lLC-22Ah;
	Wed, 14 Aug 2024 17:02:31 +0000
Received: from xn--80adja5bqm.su ([198.44.140.76])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seHNe-00000007lBX-3fDQ;
	Wed, 14 Aug 2024 17:01:52 +0000
Received: by xn--80adja5bqm.su (Postfix, from userid 1000)
	id E351940460CE; Wed, 14 Aug 2024 17:01:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 xn--80adja5bqm.su E351940460CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mediatomb.cc;
	s=default; t=1723654871;
	bh=ud14CC+RqBs4Zw8LHMIZYXCYRKqTwhKHH/MGPrLQyV4=;
	h=From:To:Cc:Subject:Date:From;
	b=OaIJ1igW9am9rTC5WUY7n8vcX5GGNl8lS0kNLCJGvL3lo0RFogqSFbhfigv5fSS+V
	 QUb/tOcehpKvu9yCJMITog6G7/a4diEkrhP4wTvcG1Uqh1fRwOtHsx5griDOzLo0bC
	 ekENEXgbHnNEFuWbmbV9DIZJPzAZx6yugDODxzagzrEOQ9JspVltuOORZXXI9vgG5M
	 Ik+mM813TGc0b2hIA60vwCnTon8kbEOmO4TXCJw4q0iHI2wFxrLeM49PZ9r9sYvj+5
	 ytM/uIcGTEh8fqZqeGyTh8KoBluYDetinghgU13zB4od1eVGhgXbV5PlAJs/m+CP1S
	 sI5RaDsy2mlmQ==
From: Sergey Bostandzhyan <jin@mediatomb.cc>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sergey Bostandzhyan <jin@mediatomb.cc>
Subject: [PATCH v3 0/3] Add DTS for NanoPi R2S Plus
Date: Wed, 14 Aug 2024 17:00:45 +0000
Message-Id: <20240814170048.23816-1-jin@mediatomb.cc>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_100150_974225_B74D887C 
X-CRM114-Status: GOOD (  10.01  )
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

Hi,                                                                              
                                                                                 
here is version 3 of the NanoPi R2S Plus patchset.

* a commit which adds mmc-hs200-1_8v in order to improve eMMC performance has
  been included
* the licence header has been updated to the newer version, anw now includes
  optional MIT licensing


Sergey Bostandzhyan (3):
  arm64: dts: rockchip: Add DTS for FriendlyARM NanoPi R2S Plus
  dt-bindings: arm: rockchip: Add NanoPi R2S Plus
  arm64: dts: rockchip: improve eMMC speed on NanoPi R2S Plus

 .../devicetree/bindings/arm/rockchip.yaml     |  1 +
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3328-nanopi-r2s-plus.dts   | 32 +++++++++++++++++++
 3 files changed, 34 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
