Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65D18C636D4
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Feb 2023 16:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTSTE8DpbZ6ATbwvo02gvumJrpqFRR7SphodKE0Tkjg=; b=JPFFbIY3w61HBa
	WYE1+TeuCb/V/qbqyH6mC1ZP71n8yRKG8OyTEksd8ai/kC+R/QJ8xpbw7JOW5harlMhCbWXsLOgwW
	d9ILO52WsttO529KQ97OD7nXk+5Wff91qlNu0gjsPq5Gm5AS+xsN22sOzNJEguvTqEXpVaEoGdetP
	k/riH/hKSbUWQ3fM8Y8Vav4bL67ePKhxVQuWWRikeJMJOtWUtGkdTr8tMbHWYgc+HgXjtHauUrDml
	tXJMnAfS7XLZB8qGkrwbb0mV5OaeAM+nuVsBVbwJO6J/9audFlAqSOHRzYQA8lkQJN36VEaz4BVz2
	3cijcpaxKflvVWXYprXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRbpO-00FVn8-0S; Mon, 13 Feb 2023 16:37:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRbpC-00FViE-5y; Mon, 13 Feb 2023 16:37:07 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pRbov-0002s2-Tr; Mon, 13 Feb 2023 17:36:49 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lucas Tanure <lucas.tanure@collabora.com>
Cc: linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Lucas Tanure <lucas.tanure@collabora.com>,
 kernel@collabora.com
Subject:  Re: [PATCH 1/2] dt-bindings: mmc: rockchip-dw-mshc: Add RK3588 compatible
 string
Date: Mon, 13 Feb 2023 17:36:47 +0100
Message-ID: <2871496.e9J7NaK4W3@diego>
In-Reply-To: <20230213152740.359055-1-lucas.tanure@collabora.com>
References: <20230213152740.359055-1-lucas.tanure@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_083706_245945_CCBF7F12 
X-CRM114-Status: UNSURE (   9.98  )
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

Am Montag, 13. Februar 2023, 16:27:39 CET schrieb Lucas Tanure:
> Add RK3588 compatible string for SD interface.
> 
> Co-developed-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
