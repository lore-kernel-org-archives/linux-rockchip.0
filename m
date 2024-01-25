Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4150C4828A
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 21:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NYdLnsZ43941WEnBSuQcCDtG/jARwm6q9IZ7w/+F20=; b=V2ZBcQ1f0F/MwO
	T7bhVRzRwKi6n0LgBcAhFaq4J+Wz2s1cRK6U28Hae6fHMjwBuJM5osLgK5N7NQeJJpjE9ydI47L0I
	nJQ9qIQ3G7dL+C168xX27wooO85vncLJf+P74N4c1J1WtauqxzrDoe0lvY3SFl56xzTqfO3B7PlU9
	5WDyUEhuqbLqzcQNzBln629qJzeQ2Ei+7FEnVAEh97wnAfoTQo94yIaRXQKOvJ8s03Zbij3f+Popw
	67IR8ddqxjvYcr8MCdYV4EfZ22qib8etdFbSQ4TteAJ0dNAD4X9bMhlgBqp1Z1qSgpjMxYTR+juY0
	M+WPfHhMEM7lCpDvWGog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT71S-00000001vGJ-01fP;
	Thu, 25 Jan 2024 21:12:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT71N-00000001vCs-02he;
	Thu, 25 Jan 2024 21:12:26 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rT71J-0002EX-Sr; Thu, 25 Jan 2024 22:12:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: conor+dt@kernel.org,
	robh+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	Iskander Amara <iskander.amara@theobroma-systems.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	quentin.schulz@theobroma-systems.com
Subject: Re: [PATCH v2] arm64: dts: rockchip: add missing definition of pmu io domains 1 and 2 on ringneck
Date: Thu, 25 Jan 2024 22:12:10 +0100
Message-Id: <170621707722.1872080.5468349555925757842.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103164734.1151290-1-iskander.amara@theobroma-systems.com>
References: <20240103164734.1151290-1-iskander.amara@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_131225_088892_EE971CCE 
X-CRM114-Status: GOOD (  10.76  )
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

On Wed, 3 Jan 2024 17:47:34 +0100, Iskander Amara wrote:
> Two pmuio domains on ringneck are not defined:
> 	1- PMUIO1: supplied by vcc_3v3 regulator(PMIC RK809)
> 	2- PMUIO2: supplied by vcc_3v3 regulator(PMIC RK809)
> 
> The reason why no functional effect was observed is because of that
> the above mentionned PMUIO domains were supplied by a regulator
> which is always on.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add missing definition of pmu io domains 1 and 2 on ringneck
      commit: 16a9c74012c4e4bff6d493832cd648b486046ce1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
