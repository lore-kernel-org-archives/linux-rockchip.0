Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF646C77B61
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Apr 2023 09:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKt1keLAiXZzunBPyxzjgTxQ2Wi7Kv7AAZsAzIPWQ0I=; b=eDeglgY2PakOop
	qoI2qtFQ1IymMHINDfxIgJ7OH67w9x+A1EO9KUdAjIlLLqZ93lba3HpQHoH/WKCFmsA9Ra30p3D/w
	VxO7LbtD4WTDtC7kOJspuEpO4ZHBVmQHm1MHH26AWURYIBSfQXV+ZQ3Y+NcwsNj5GvKPH6t6owBc2
	jI7OGCEb1zr+I7UkYUoouXc14+oEmzcPcvLPLnvU8Knc9UcCdaDGkV1Djut5waXc1JhWPaEkWGFhc
	6N+z4IQme8HFMgwDbVikhOfQmtEaTHkPSQpcFX++pTqwtSgsaxvj+xYnrxYagX+4nsQAz6JN5xF1s
	pxAb5NhMqhAnVa4zCpIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pryJu-00643J-2w;
	Thu, 27 Apr 2023 09:53:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pryJs-00642Z-0M;
	Thu, 27 Apr 2023 09:53:45 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pryJo-0003ex-CQ; Thu, 27 Apr 2023 11:53:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: add missing cache properties
Date: Thu, 27 Apr 2023 11:53:38 +0200
Message-Id: <168258919354.412054.18378123144772952977.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230421223149.115185-1-krzysztof.kozlowski@linaro.org>
References: <20230421223149.115185-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_025344_145459_F318FB53 
X-CRM114-Status: UNSURE (   8.16  )
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

On Sat, 22 Apr 2023 00:31:48 +0200, Krzysztof Kozlowski wrote:
> As all level 2 and level 3 caches are unified, add required
> cache-unified properties to fix warnings like:
> 
>   rk3588s-khadas-edge2.dtb: l3-cache: 'cache-unified' is a dependency of 'cache-size'
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: add missing cache properties
      commit: a706fb23c07aa89d37d127fd82d438968648f0c4

As fix for 6.4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
