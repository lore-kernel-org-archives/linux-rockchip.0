Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A4F5D35145
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Apr 2026 13:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wxXgE4WI86bBroQ0sYmS2tExInb2r7E9+JVFAs16Vwo=; b=2cNP+BMw8+BVXA
	uAqcIGHTRWWDplpkwk/Helgc9/MkotuQMNsKl9vp9irHKY9l6EZKL33YJM2NrLbNMB0q/ELr7414R
	lrKLXu3N6v5xpYyF0wJzwvPbn54vHteis/O17Wt1EC7RlqC/6yzuJCwyPzhuKpNFiyTzg90hSBC6P
	1f+xPeIPkUk4WrZItpZlf8PlQOqk0iGShA+aAbh497Y0TM0um6nBcJzY8/d3hIzhQ944WOa9S5uhc
	Z5DS/xkkV2+47jceGzuoSQVuQH2GeSWZt9DTPnCQAeqHuQbSMPAnk6qVqzaQVhkEVTw2eTkbZTgQl
	dnLlBgZWH6rCEFct9KgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7vRD-0000000FHyR-3qte;
	Wed, 01 Apr 2026 13:16:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7vRC-0000000FHxU-1s4T
	for linux-rockchip@bombadil.infradead.org;
	Wed, 01 Apr 2026 13:16:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=hA1ON1KrKFmuynktbmS/7CrrbUp1WQrtm6ccdkoVF2w=; b=b9SaJTizIPY31I8vJIRKOb3D66
	QTWh39Y/Ns65VSMklBQLvcDDuhv8dnlljjR9VONrVO5/73gonqJhyPXIhdL4hTrdQk4KaCnEbVwwS
	NSQ1Ow4fIwHthhzpjLRVcao7CcZ02WETLmBzen5LyvgcQcfF5kNM8tHabGylGI9XWvlAMrb+ZGyMR
	p7ekSF+SH5XjVxpZPSfqKNqHsofFfUaqywhZsrsXsEVGZjFxnqgw4obBF9SgH6sQ8YUg00S1Iewj4
	2DgKxBFl6uqjXS6N/w/iRGgSpnTsguRDgg+sHKqZsrEAR7IAM3WO42nqCSuhZDg1qLwPJ9a3s5i1J
	XnMHEvEQ==;
Received: from out-187.mta1.migadu.com ([95.215.58.187])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7vR9-00000000R9S-1JP1
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Apr 2026 13:16:49 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1775049383;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=hA1ON1KrKFmuynktbmS/7CrrbUp1WQrtm6ccdkoVF2w=;
	b=Q9CwM/oXd6o2d1UrsrE7d/ftoEoJyQ4aMNUcnz7xLhhBfmtcDo2DN/htknOV8YYkKqhPpf
	Q3o4cAzlep6DIyDGiAq/ccNM8wcr75OpxVzsOYNOC4Z3q33eB1nqngcl2rROIJlEkXn1gs
	ZCXBNL5ByXU5FvhbQ8/8iXmiJhSDJxvTFCxTXOgCtSg06Z6t6OGMbPdP8Ovzov4sJLc73b
	82luSB3MmQK5mJQJD0ObpGfWASDAYM3/aHFBg0I09K3tsNMJ0K33Ez8v5Os2RypNDBMj0G
	x0KScUtfaBYy6Liio8bs14Ie5Z9prC7aFxXn7iLXA1NNM5O5Qm51Dbh2i1fQQg==
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Diederik de Haas <diederik@cknow-tech.com>,
	Arnd Bergmann <arnd@arndb.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Improve gmac0 DT config for NanoPi R5S
Date: Wed,  1 Apr 2026 15:11:37 +0200
Message-ID: <20260401131551.734456-1-diederik@cknow-tech.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_141647_797340_79224E45 
X-CRM114-Status: UNSURE (   5.49  )
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

These 2 patches contain a fix for an incorrect pinctlr definition and
replaces several deprecated snps,reset* properties with their
non-deprecated replacements.

Diederik de Haas (2):
  arm64: dts: rockchip: Fix gmac0 reset pin for NanoPi R5S
  arm64: dts: rockchip: Replace deprecated snps,* props for NanoPi R5S

 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
