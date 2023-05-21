Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAE60C7EE23
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 May 2023 10:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVes0G7vaVjMyQFWCZ/cWoTzfZs1YVgJQpYC0YCg3PI=; b=GqQaLH7pYGT3fh
	eui5I+VFfnyuNhgpL5QCf+fREGs9Fn8qDEbTYpgp544llR5tngQlr6LxIjhkof9kXs7TlmWfGiMaE
	zf+4JFBqyEPA9MmQVcLcMlJmVf+v++7TePFFz1qJZxmijArsSmtnCG8V+BhGiJd26QABybuhLSwZe
	g+KOWFOYW7ZwqYLPM7p46vfc5PZdOTywc2OA/5ixwYiWOP+LDEKGqCmle59T5GxqCDVXZXQFBUlQt
	UQGuLiwZQsJ0fHWr816RZNrpfVx21WGlnQf3xgQ5j+OOEWCfcz+Nq+tEhPMkonCm+oMdVH1QAagn6
	kx7nxJJ69QvE8TfyvnGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0gYs-003c0n-0c;
	Sun, 21 May 2023 10:45:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0gYq-003byS-0S;
	Sun, 21 May 2023 10:45:13 +0000
Received: from [91.65.34.120] (helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1q0gYe-0008By-Qn; Sun, 21 May 2023 12:45:00 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Rob Herring <robh+dt@kernel.org>,
	Michael Tretter <m.tretter@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH RESEND 0/2] media: rockchip: rga: Add rk3568 support
Date: Sun, 21 May 2023 12:44:58 +0200
Message-Id: <168466589373.900480.8086350880534437090.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230119-rk3568-rga-v1-0-43d4d14365e6@pengutronix.de>
References: <20230119-rk3568-rga-v1-0-43d4d14365e6@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_034512_203249_83C992EF 
X-CRM114-Status: GOOD (  12.04  )
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

On Fri, 20 Jan 2023 10:14:21 +0100, Michael Tretter wrote:
> The RGA2 on the Rockchip rk3568 is the same core as the RGA2 on the Rockchip
> rk3288.
> 
> This series adds the necessary device tree binding and node in the device tree
> to enable the RGA2 on the Rockchip rk3568.
> 
> I tested the driver with the GStreamer v4l2convert element on a Rock3 Model A
> board.
> 
> [...]

Applied, thanks!

[1/2] media: dt-bindings: media: rockchip-rga: add rockchip,rk3568-rga
      commit: 9b12ceb5a80d1fb45d293265de100e33b5843943
[2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
      commit: 0c3391f8bb06b744df521651534cd99e3d77e0a8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
