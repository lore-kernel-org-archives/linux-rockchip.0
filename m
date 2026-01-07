Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D065CF6BF3
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 07:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sEa5d7SvPwHA93yFbn8GqGkFowTVYJv39GADaFbKMgo=; b=QV7drbzsigqpBX
	gPedPXL+2e+kqdOHphIZOQ/966+P8iyE5DVQh8waRRmr/vp2FmIFO6VlRgtCJAKqud/aE8rat4QAd
	rQZQVu7r5Il4+zGKYVWWJdeIYnw054R1ts91dIZQf97zp4SqcUta3aSR2dVzMRi/RIhAPYzQQbVoL
	mRMyG0sjl4CVW9VbzEtAHs4jn2Uonpp7eHRJYaxag8yK2NJuJyrSJTYmHNQm+BNTUMQRLHs34fOsx
	qnEmUQTF/INzXdpHZYxE5cEh8Pg9+Gf+m1nzpXMWwmnMCUIsbnj+p6gvWRdtZVBGJqNpgfVLIG/tA
	JrCdzXC8GJud9gJfs+Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdNad-0000000EG54-1oOV;
	Wed, 07 Jan 2026 07:04:19 +0000
Received: from smtpbgeu1.qq.com ([52.59.177.22])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdNaU-0000000EFx2-2G4w;
	Wed, 07 Jan 2026 07:04:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1767769420;
	bh=dIwuOx0WUbd44zBInbdsOb+naFLrWH7lMlUXQU5tjTM=;
	h=From:To:Subject:Date:Message-Id;
	b=I92q7Axk6W1ex9zhUkGcphcv0+wcUsh+TcKyQH1qvH+bK2CcxXoWqCKjf61E9hgiQ
	 rbO8MQmqHYb3eMVeSPHuQ7b/0sUm2vdMjwn62vyMjzZL7LRwQYcXXd2ySxxugPEwBU
	 LuSBfZ7h6qxYoxTl5nNt5bYOkG0BASCNTFqVHOm0=
X-QQ-mid: zesmtpsz4t1767769414te4793528
X-QQ-Originating-IP: vb+g/KEJ4N9UWS51x3mp9z/cLl0G4zbL7kmdhHdpLZc=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 07 Jan 2026 15:03:31 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8160116837600662199
EX-QQ-RecipientCnt: 22
From: Chaoyi Chen <kernel@airkyi.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	John Clark <inindev@gmail.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@collabora.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andy Yan <andy.yan@rock-chips.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add rk3576 evb2 board
Date: Wed,  7 Jan 2026 15:03:21 +0800
Message-Id: <20260107070322.323-2-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260107070322.323-1-kernel@airkyi.com>
References: <20260107070322.323-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NYSvqfltpRXSm+AWNvPewTmSflghD+Ptd+/+oKDgG4PF3Eb+8/ndxCop
	RxA8ng0z0AX/R2mheVWXh7kU0dvDDVfnUsQPfNEb5dQAu+6ColBIHdCbP4PTYnwYxtpRilk
	SH/dZGL4Cs0N+se86BhkvtbGclArOZIo7Kv88HzeKY1nFMulgPMZV/Z1QcpmltS5blrOI1X
	TmwhyY+QA3wdYnIApII3ZfKagkVUzRJP5yK3FU6hi90o+C6Tt0TwpZD3J4C5iCvYmGUu9sH
	ld/YupRIdwE/iU9K62jMnTs+SU/CCMosdBVl0t600PqNUey5hu/jhJUpoFASlmbZ0XJma51
	qUDAzjRUx2DyOlO5bNNhkNVPkWkcyv2eZXpkHrM5OvthKnL/kld/5j0tBvYnTsjbmwIlwmO
	AWGdY0uNQf5hkwJZDZpfNfopX/YiuT0qF7I5W3YA+45wznonde5oDjAhuftEG7Z/cVcQkhy
	t+mLi4RtIViTwW/UbBjWfz78C5lkHTpGytybgNjH+og/q4QYoZqKIsSQXdmy6EJgGMVfEKk
	bZkhJDUyCLdSdgjmu9wayBbiXkAwQyoEXONdV7PNSb00pXhRbo7wRGmEErdbgsTMFbniG5g
	grorKA0+y+U/XX9/Xlg6vFzVJdPUZpt3eS6H9cv+rdVZORiYrxqgG7KL6ARiZj1/r3830yu
	7d4isMmnVjxiU+Vyi/txiMhXw2arRy4LhHDUojGfZzUl7WNPqHeGPHe5B/2pBPfMSa99xNs
	lDFU7PLs7kU0avjN290u1zl29KYMROahAJqvlBWkipAAcR6+uCjusvbtoQvc6zFi5lWA24v
	gSM3vR+F5p8zVS234ovZ6zmXVJJ+hjYqGfPcZ0/3qTYKzaIAHG7l6k6c0Utgp5kZboT+wX+
	vpLlcOx+fYjXTMfvrnFKMx5aCIEuFp6wfraetrTr+HkM8fzB7pRdS/bDHDkvAlZd0fZapAR
	oGwkonqZZb51GYgOn9DpDOF/Lwy0gLYlbXhKGnTXPxv7/BcCmyYCVME0RY2mZAvuI1uMueV
	JWsrwmMg==
X-QQ-XMRINFO: Mp0Kj//9VHAxzExpfF+O8yhSrljjwrznVg==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_230411_038237_27616A04 
X-CRM114-Status: UNSURE (   9.39  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Add devicetree binding for the rk3576 evb2 board.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8acbb2..59ed57082003 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1136,7 +1136,9 @@ properties:

       - description: Rockchip RK3576 Evaluation board
         items:
-          - const: rockchip,rk3576-evb1-v10
+          - enum:
+              - rockchip,rk3576-evb1-v10
+              - rockchip,rk3576-evb2-v10
           - const: rockchip,rk3576

       - description: Rockchip RK3588 Evaluation board
--
2.51.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
