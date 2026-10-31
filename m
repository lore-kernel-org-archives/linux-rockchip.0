Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84813606A31A
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Oct 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QXkDc8kg;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=rojer.me header.i=@rojer.me header.a=rsa-sha256 header.s=main header.b=GueXttvU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=YXtG9uubSVdK/ARwuRob+hYG2cDmrXcG3PJ/9dERV68=; b=QXkDc8kgaolu8s2ZL4NVOh3/yw
	jyCZi4cPHDoKvJhi3halSsPVe7kLIUH3BXRYzS0pxRponiMviRUBIiSDnhPrs0opYTTPe+9et3iXk
	GfjPj/Q2VzArIOPEuNgzr8arsZ+sB4flfoK9C0oox+MKljlxlGu73zpRkZ46J9KFXNkN4aY1w9Mvj
	qqM8mmymySOaSKT55ekdZuM2OD58C5FpzgAO72NtNaIbjTFdly1zyuOXO5aLqw4B38vmvnEFeTq1j
	Rp6T21k07VQVc0pJ/N1asVDcGrlCjqqD6I6xWlcn3qrSGaY+eeLfoy+9MLNksBJ68B0HrLoeyY4F/
	ix+2aA7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN6cQ-0000000DE7b-0qiZ;
	Sat, 31 Oct 2026 10:47:26 +0000
Received: from mail1.rojer.cloud ([88.99.92.76])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN6cN-0000000DE6Y-3bwm;
	Sat, 31 Oct 2026 10:47:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rojer.me; s=main;
	t=1793443641; bh=7NkSKI/Rjulpx5rqWQnpm7x33f+kOaCiSsh8St9yfw4=;
	h=From:To:Cc:Subject:Date:From;
	b=GueXttvUeTVBqJ6wOeNsJMxLNct64xjTTEFtUbqrjsJXWi7hFb0BePcWNbzy3NfR6
	 5kdmQDSL1qGp7aCsUPsyOc0H2/aPE9wsXIBIWVGoaKuPr4OM6ik5yRFc5tu+cVu3WL
	 0czxJVo9xjlpSqwFkCcKQua/0bUQLbGDDKxHQcAG9DQ5sx50CJJBlYpu6Ld1WHZeEV
	 e0Rpx9EIqaS8rUEMa43sALWmt09tCLqmd8ukEhZv3f9I27ycpTfSw6+roxZjkDN+MB
	 SxVgSnDZEv46tfluY1Zm87tjPmLAMI9RBaJ4HiVpFnlVxZdxZR41+4wqiswsY/xNIB
	 CciKZdSlttgTg==
Received: from nbf.rojer.cloud (unknown [85.98.52.16])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mail1.rojer.cloud (Postfix) with ESMTPSA id 3FC1521635;
	Sat, 31 Oct 2026 10:47:20 +0000 (UTC)
From: Deomid rojer Ryabkov <rojer@rojer.me>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	jin@mediatomb.cc,
	shawn.lin@rock-chips.com,
	jensenhuang@friendlyarm.com,
	Deomid rojer Ryabkov <rojer@rojer.me>
Subject: [PATCH v2 0/2] arm64: dts: rockchip: NanoPi R2S Plus: fix io-domains, enable SDIO Wi-Fi
Date: Sat, 31 Oct 2026 13:47:12 +0300
Message-ID: <20261031104714.3271017-1-rojer@rojer.me>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_034724_059303_EA956FD0 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Patch 1 fixes the VCCIO4/VCCIO6 supplies of the NanoPi R2S Plus, which
were inherited from the NanoPi R2S but are wired differently (see the
schematics referenced in the patch).

Patch 2 enables the M.2 E-key SDIO slot, which FriendlyElec populates
with an optional RTL8822CS (Fn-Link 6222B-SRC) Wi-Fi module.

With these the module works at 50 MHz high-speed. Reaching SDR104 needs
an mmc core fix for the module's CMD11 handling, posted to linux-mmc:
https://lore.kernel.org/linux-mmc/20261030142224.3183407-1-rojer@rojer.me/

Tested on a NanoPi R2S Plus; dtbs_check reports no new warnings.

Changes in v2:
- 2/2: dropped disable-wp from the SDIO node (Shawn).
- 2/2: link to v3 of the mmc series.
- Collected Reviewed-by (Shawn, 2/2).

v1: https://lore.kernel.org/linux-rockchip/20261023235959.2988087-1-rojer@rojer.me/

Deomid rojer Ryabkov (2):
  arm64: dts: rockchip: Fix VCCIO4/VCCIO6 supplies on NanoPi R2S Plus
  arm64: dts: rockchip: Enable SDIO Wi-Fi on NanoPi R2S Plus

 .../dts/rockchip/rk3328-nanopi-r2s-plus.dts   | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)


base-commit: 734bef548a96e8774d6eef5dfa2026c6edc4e80b
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
