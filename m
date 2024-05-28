Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B7B0C25B7C
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 15:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4hJZatwEZSssbZNzRI/Qfnj/modjoocyVxEvzfofM8=; b=20q6/q0J1X38KB
	GpE/dIoBfYiO1Salw8EGodiiNLHPMqAmLzDzyiYhzVloS9eFdP4ih7Tr5rJBdMMBXwgUCKX0fEndT
	74gYwBMuy2U7WRfDyvx7wxprDqACevzpAGRCP3INShjvt9Zj8+JgJLd3jhosj5TdldmQR68I8ECK4
	C0peZN2nxT8RIoqfaO8ikLuFnsRvpig30awLk2qG6Z5LQcHgiwbZ/3rSLtWtwzbcgzKD+CItCubHu
	GYtzAp3OoCWIOllAUx2KLoZ+s6A82Qnv/dnSqjzUiy2udieNowmXhywf3Onh0yROLOf0PS6pZsYnX
	SYFRaSBUT2Hc9C9TSCoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBySO-000000019KM-27RJ;
	Tue, 28 May 2024 15:09:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBySM-000000019Ij-29Bm;
	Tue, 28 May 2024 15:09:43 +0000
Received: from [213.70.33.226] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sBySH-0004pm-Nf; Tue, 28 May 2024 17:09:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexey Charkov <alchark@gmail.com>,
	Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: add rfkill node for M.2 Key E Bluetooth on Rock 5B
Date: Tue, 28 May 2024 17:09:21 +0200
Message-Id: <171690893337.1899981.1719888862569543396.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517122509.4626-1-alchark@gmail.com>
References: <20240517122509.4626-1-alchark@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_080942_567993_C6A974B5 
X-CRM114-Status: GOOD (  12.35  )
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

On Fri, 17 May 2024 16:25:08 +0400, Alexey Charkov wrote:
> By default the BT WAKE signal inside the M.2 key E connector on Radxa
> Rock 5B is driven low, which results in the Bluetooth function being
> disabled even if the inserted M.2 card supports it. Expose this signal
> as an RFKILL device so that it can be enabled by the userspace.
> 
> Tested with an Intel AX210 card, which connects a Bluetooth device over
> the USB 2.0 bus.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add rfkill node for M.2 Key E Bluetooth on Rock 5B
      commit: 1d3ac84d6a960baa50da4163160ae82f8dc74af6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
