Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 051F8E77188
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jan 2025 12:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0a4wVQ/x0ZmBVpq4Ie2u00D3e5P8a7p+l6WAEeAU8AA=; b=P+h0xk4UFkuapc
	t9at03xeeco19WEvEQeeT3ah0pqllm7B34n+Sp5g7rAUdWVXMs+N4ZoXrPyjxhcvGiCCK8V2NqgYu
	gz5bQDkxkdZToprd4W4j+V/Gwzpk6n5jpO3FArCCTQzy32HxjPi5Gqkv7CxLQh8y3rQEee+m5FItd
	K0pGbsXxbb99iTFhRVfWI1WC0ngpUHrn5rI80ljkq/GChsehLA/UYB/CJgH0te0rKwTbcgK8Yyr+n
	c1AlknEVQD5tjcqjLR8Z3D/2lpv7wj2aidiL1LFDtZq9XJdV+95QI+0znroeipgAFaSuWHyCi3zn3
	G7SHj5hwfPFr5f4x1wUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVVZB-00000008VfT-2nY5;
	Wed, 08 Jan 2025 12:53:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVUle-00000008LMa-4BnG;
	Wed, 08 Jan 2025 12:02:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=nnUtdVeAl9f5S/7YxL/35itKcHxkPimGo8xC8m16xO8=; b=e1ulK9F+oYU38t+ceqPDEteyQS
	O4RfnLWkFEQPJrrdOl/cZ1y/eZY6TXBnMa7CqTciyZLEtGrnfdB9B2J7kU62blj+uayhjf/dORrnw
	w8T1Q5ARPOXIPD376RFmj7SPwFDWg2vSZ4aGCXydrCKy5Utv30gK7HokHnzyRGCIRHXqfp4YvIZQK
	OqIC5gtjUSzqOiggIAGziDnmppIrqb4iOuAo51MFfiJ/wyyktrqgBxonNleiEVuTXf8YjsDQ77sr6
	i4+cMz1oi1JWJtNrsBzMP0N9hitiDVg4fFnotXgahhMHtY8RMijvkuN51cKO4DOsfgTDN6jSGScWw
	A/EJh2Xw==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVUlc-0005Xv-QP; Wed, 08 Jan 2025 13:02:32 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ivan Sergeev <ivan8215145640@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v7 0/2] arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2
Date: Wed,  8 Jan 2025 13:02:21 +0100
Message-ID: <173633768684.2772122.3565189934463718842.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250106-bigtreetech-cb2-v7-0-565567e2c0a4@gmail.com>
References: <20250106-bigtreetech-cb2-v7-0-565567e2c0a4@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_040235_031527_8FFA4020 
X-CRM114-Status: GOOD (  12.14  )
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


On Mon, 06 Jan 2025 23:50:53 +0300, Ivan Sergeev wrote:
> BigTreeTech CB2 and Pi2 are Rockchip RK3566 SoM and SBC boards made by
> BigTreeTech for the intent of using as a 3d printer control board.
> It is a successor to the Allwinner H616-based BigTreeTech CB1 and Pi, so
> the device trees for CB2 and Pi2 are also done in the same manner: the
> common nodes and properties are put into a dtsi file that the
> board-specific device trees include.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add BigTreeTech CB2 and Pi2
      commit: 1a623c642b4066a5cea751ef52ab109b65e8afb5
[2/2] arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2
      commit: bfbc663d2733a42d93143a91659e82c8a13f5a36

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
