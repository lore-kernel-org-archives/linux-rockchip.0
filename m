Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74FDB606A69A
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 22:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=mvBVzNUG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=nF4O2hzO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=iKsoYMWgDiXOHFS+UwhzE8GmRzmHNCBj8lHgJLP+3nc=; b=mvBVzNUGW6/7AjemO+VqtUmBuO
	PQoNm/CTTC/tonIkCOdMzkL4pPHw10NOgMxo33hmA6ZaPmHYSk4sGrYJ2EH5NDWagP5SvHmkVVZok
	2SyyjXbpz500ykVt8jssy20s0Yvjxu9eoihVWTi9PgSa9qnfyhfr5X2ne6NKmc2zmJw+DIcmNr8tu
	AMxti7TdhUALPNR+ZgIyNV3NOUd142Nzt0qVZPsFMHOSJS76Dl8DNETf/iPZA/mHE1oPw4FwODl34
	KmAc8uof32UxH6jFfI0hjOMgf3A3HoDXbk0/FXUHfpyPVVs3r+iroY0ycMWYTTebgWj9cfO7Y1O7N
	uW3DsoOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVGOU-00000001rMO-2adr;
	Sun, 22 Nov 2026 22:50:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVGOR-00000001rK7-2tLa;
	Sun, 22 Nov 2026 22:50:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=sFSwHGwHo32EJJu92ZLY86GI7XA1Y+jfQynqNyB7W8w=; b=nF4O2hzOQvod2nLgjvx+IOZWcE
	OlV7JlTTrHGyWR7KIk1G+zG9Cja6PH40+0p9gENHQywXjSaKapx8LCEfHNF1GuGtUpp/TPdb7Rlcg
	iXVqTkx2jz4D5f1AYo7uCFwBLAV5iZ7f5pK+5ejvCScIY391Xjxf0cdkT2RI5ETH86WkrWnZpoG6K
	R6GIGGfgYO9TQnRKlvjOD4nU1ln547L95CuvRXEapP4Php8c8nqWS1vkHB4OttlJnbZ4m+7V82s2U
	wuA6/4F1E1czPEmUK3VUGfxKmjatvnByXXV40ivJlE6IQ5agnc1pVbKbD/BMSObuzKGWVGxIj780I
	qf6ab3vw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexey Charkov <alchark@flipper.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Describe the Type-C port on RK3576 EVB1
Date: Sun, 22 Nov 2026 23:50:20 +0100
Message-ID: <179538782475.3150822.2947713629701780597.b4-ty@b4>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261106-rk3576-evb1-husb311-v1-1-99c2f57ea2a5@flipper.net>
References: <20261106-rk3576-evb1-husb311-v1-1-99c2f57ea2a5@flipper.net>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_145043_752376_8EB31915 
X-CRM114-Status: GOOD (  12.46  )
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


On Fri, 06 Nov 2026 21:52:35 +0400, Alexey Charkov wrote:
> RK3576 EVB1 has its USBDP PHY routed to a Type-C port with a HUSB311 CC
> controller and a fixed-voltage VBUS supply.
> 
> Describe it in the device tree, including the wiring for both the USB and
> the DP side.
> 
> This makes the data roles follow the Type-C port's negotiation, so the
> port stops being host only. It also leaves the VBUS regulator to be
> managed by TCPM instead of being hardwired via the tangentially related
> phy-supply on a USB controller. DP lanes are also muxed dynamically by
> the USBDP PHY based on the Type-C port's negotiation, so the hacky fixed
> lane muxing also goes away.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Describe the Type-C port on RK3576 EVB1
      commit: 55d1d74d62a7962d16ae1bf63083861761966e6d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
