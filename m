Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43E1BC54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 15:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7UXCBYZldC1X7dKWmn+jWhEuDy4NEHX7D7Ihw5wq88=; b=BPGE2HqaAQI/ZK
	SGJsCs5ndSvBq+VVl4yJJ0U5i3LpDTEKVasmjpUqWLeWte9q7gJNRUVW2RbIIk+3UD2wd8kv4Q20G
	wwN9dE1IAzwzOEN58i1qcLpDVyZ//sqHncustlVW640sJi8hN5bvVxL3cDY3PS6Aa648Ma65ZihbB
	JcCHgwYjXg8tUNZHoIw/lAnlaCKoKTQ6PQHQXYkS7Y8r9eQMb5lKTOpSA6i7udugys17BGpcBDPAR
	G/ZIN6avvaKSDVIqDH+XXzbQbsErHQl4xStTfXKt/VYhEYpCS0VBGOR9SDUXyobtvJjmjga2HPwKm
	/wncyJ1dh9VjKpoS8BHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGcp-007bks-QR; Tue, 10 Jan 2023 15:33:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGcZ-007be4-Kn; Tue, 10 Jan 2023 15:33:04 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFGcY-0005bB-8v; Tue, 10 Jan 2023 16:33:02 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org
Subject: Re: [PATCH v1] ARM: dts: rockchip: rk3128: add space between label and nodename nfc pinctrl node
Date: Tue, 10 Jan 2023 16:33:00 +0100
Message-Id: <167336477675.2640328.10861185055523187407.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <67675d28-87c5-0df1-4b93-2f1233918a1e@gmail.com>
References: <67675d28-87c5-0df1-4b93-2f1233918a1e@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_073303_707967_4B7C1044 
X-CRM114-Status: UNSURE (   7.92  )
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

On Sat, 17 Dec 2022 13:05:32 +0100, Johan Jonker wrote:
> Add space between label and nodename nfc pinctrl node.
> 
> 

Applied, thanks!

[1/1] ARM: dts: rockchip: rk3128: add space between label and nodename nfc pinctrl node
      commit: 4a88d9ebc27e144ad9e1cad6a7832cb65f332673

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
