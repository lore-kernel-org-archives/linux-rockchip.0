Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AE14C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 May 2022 20:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30KS275pLj7TZMOyqVr2BTcHkJ3Fdgqi0oVGmPiYd04=; b=QHjIBFRx8VYw0l
	3AVBqHzLf9krohO4+vijGDGGkCxw5OYLSLAU3vVGYQaZUfBgehUfcR/9Yq+Wy1M0ok8Vz+h2syBgw
	xEFrdTyIUhmmcexmtQedK8MGkdu+a7QRDX79JNw3JO2lxRR5sXvJo4Aw0SJmE0huODGYXUMmkxk7Z
	y+a4DxdYEAaYSiAIrQuU3zDcb7E3g1pICeqtUZGDZEnC8KEiBeinAEGeewR8Kuaj95yF7k9IZ4ijI
	OcEQTI+6yJpFoduI3CuoTtdAypbh2k6qyMon6OT2IbK8uBf8+STXdPzNVaHEpoFj+Ztg8Sv7z65pw
	83RUJqBzsdBpGVjp7Zsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqL2N-0050AF-AO; Sun, 15 May 2022 20:40:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqL2C-005086-Qz; Sun, 15 May 2022 20:40:14 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nqL26-0006KS-GD; Sun, 15 May 2022 22:40:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: zhangqing@rock-chips.com,
	Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org,
 sboyd@kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, krzk+dt@kernel.org, robh+dt@kernel.org,
 mturquette@baylibre.com, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/3] dt-bindings: clock: convert rockchip,
 rv1108-cru.txt to YAML
Date: Sun, 15 May 2022 22:40:04 +0200
Message-Id: <165264719504.2587306.15719505641957259296.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220330131608.30040-1-jbx6244@gmail.com>
References: <20220330131608.30040-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_134012_912362_BE50AA68 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Wed, 30 Mar 2022 15:16:06 +0200, Johan Jonker wrote:
> Convert rockchip,rv1108-cru.txt to YAML.
> 
> Changes against original bindings:
>   Add clocks and clock-names because the device has to have
>   at least one input clock.

Applied, thanks!

[1/3] dt-bindings: clock: convert rockchip,rv1108-cru.txt to YAML
      commit: 5eb60b7bff3233d07e6a9e3328d2ba415209691e
[2/3] ARM: dts: rockchip: add clocks property to cru node rv1108
      commit: f36fed209444efe8ac6621900f407c6569c92dc9
[3/3] ARM: dts: rockchip: Remove bogus "amba" bus nodes part 2
      commit: 191800d40222ee920dab2e7a774ea2ae4f28c1c9

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
