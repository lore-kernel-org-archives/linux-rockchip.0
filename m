Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EC63C7EE2E
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jun 2023 20:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/xtjDYSNMVkKlTzvEw7ZW40zTsEcORKiEjVCSoY9WOI=; b=d9p0WsBYwbU6wQ
	L3pG1EAy1NiHfw355ORe+Fnzc4YIukZsq6QyYeN6KoSAqRbt+gC9cDK/OCeW+E6RV9SA74NoH6ZQs
	dQyIyHVQr3LhY295g68aXnZsoZi/JGJ/+/+zLHvsEzB+4/seFr29120ujwb5lY4rm6dC5lHZnr2HY
	560WA85fIoVJ7lC9nz4eaO+ZEaM/s0xFhCViOwpMHwY1AnKGLlftU51jXT6S45jZqUN6EvMdXm6Ye
	Zn47A30QrbVrsivSDAjwxIue1jvru6Y80ik2R0nAu5LUlui44J8+Zm2U/VDE855ad3hADok9qP6uh
	t+6G8aSmTHS77IqIhGvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8RmZ-001ibY-0K;
	Sun, 11 Jun 2023 20:35:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8RmW-001iZy-11;
	Sun, 11 Jun 2023 20:35:25 +0000
Received: from i53875b22.versanet.de ([83.135.91.34] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1q8RmL-0005fi-Em; Sun, 11 Jun 2023 22:35:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: sebastian.reichel@collabora.com,
	conor+dt@kernel.org,
	Shreeya Patel <shreeya.patel@collabora.com>,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	serge.broslavsky@collabora.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	kernel@collabora.com,
	linux-arm-kernel@lists.infradead.org,
	gustavo.padovan@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: rock5b: Add saradc node
Date: Sun, 11 Jun 2023 22:35:11 +0200
Message-Id: <168651570335.1681170.7335757398130366912.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230610134841.172313-1-shreeya.patel@collabora.com>
References: <20230610134841.172313-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230611_133524_357607_2A6371EA 
X-CRM114-Status: UNSURE (   8.23  )
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

On Sat, 10 Jun 2023 19:18:41 +0530, Shreeya Patel wrote:
> Add ADC support for ROCK 5B.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rock5b: Add saradc node
      commit: 2fe1f20144fb68dd31798cc22a67d148f517deef

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
