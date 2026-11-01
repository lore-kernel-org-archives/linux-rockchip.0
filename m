Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2233606A32C
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vqTnpFR/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=bZfTDG1T
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Y1UVPpjmVQX4yitFtzdHwE5NEI5qYE8cORO4xinKr2o=; b=vqTnpFR/na8S0l+KRH8L5FYttO
	ocZ1ndQBgPqR4JWfxYy/OoEWxHfok1ifVU8ECTB5ugily+8QYK5zjU2tuewey900YjMkneqJVNwiB
	NZAFj6SpS2zKOj186v7EwTRUKoyExi/cBMDJ5+KgOrnBxx85zj03K3yh26I0xuY8JRMMkuCJ1P9HR
	qutcyOy863qWKbrTl8vka9zfvPXrgAhy/XH0EyzEcrD+pkOBahv0MFUMAYYHL/DiT2EnlaKH81eLS
	LEZ8Weq80naV+AU0nQHj5KreC3mdHtGXJuRu4PlETRvPdIcqg3+ZH+0bbjaBSyFvgcSueTPEuJYyT
	McX9U+7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdsT-0000000F5xC-2GW3;
	Sun, 01 Nov 2026 22:18:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdsF-0000000F0Xu-2f2Z;
	Sun, 01 Nov 2026 22:18:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=4Y2ehFsf8JtC09DAQpeBxOgfpmb9qhwVfrzl5WBa4dQ=; b=bZfTDG1TIuH4RtSeNhHbvI+f2q
	bWfpC0UGXpnu61J5kXm/zJzoq6nOwcILzFBTeeOhtm+DKRTn3/i573jMJyi36j9PVaDDTBykiaDR1
	r5AzCTorKsE4NvQrQo/S1jiyHxG+4rHQCHPCIvhtVJnvH1Zc8VvrD9Q99OYN8RVlWHM868Jjqk1m+
	iLFZjS74H4W0ZFGKy1MnJyvHBUpDrBJaWtEC5LgjeH5gQ8EON8h2H0Bupwdsah59TXS+pV2JWdwaz
	tmzAPpH6pCfeDyOa8xo2I45LXYk4jLBugE+C3DA76kI3r6l5gnGoVOjkkPA87+XXMNaMf8aiffAtF
	0QQIzTrw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ryan Leung <untilscour@protonmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: add maskrom ADC button to NanoPi R76S
Date: Sun,  1 Nov 2026 23:16:37 +0100
Message-ID: <179357139348.4108484.16587959620452778547.b4-ty@b4>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261011-nanopi-r76s-adc-v1-1-392993e7a36e@protonmail.com>
References: <20261011-nanopi-r76s-adc-v1-1-392993e7a36e@protonmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_141759_822570_4662D40E 
X-CRM114-Status: UNSURE (   9.80  )
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
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Sun, 11 Oct 2026 06:54:47 +0000, Ryan Leung wrote:
> The FriendlyELEC Nanopi R76S has a MASKROM button connected via SARADC
> (sheets 5, 19 of the schematic [1]). Add the button to the device tree.
> 
> [1]: https://wiki.friendlyelec.com/wiki/images/6/60/NanoPi_R76S_LP4X_2411_SCH.pdf

Applied, thanks!

[1/1] arm64: dts: rockchip: add maskrom ADC button to NanoPi R76S
      commit: 1f624b3b44ec1b0bba0bf219c1d63e127cfa8591

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
