Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1ED19C04FF0
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Apr 2024 18:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emmbbKas9mi19waPLk0D/9v1gKmsnbhgC4cecQiaLxc=; b=oH0mPpC54uznAg
	EErfxkifsiUNfOx6c8/cy0GrWrz5LpPFB9y09d3spLHZk4TCRwwYcbZZX6GMD89WzRMV/1056imGl
	CbNzRSR2yjTtUXfDJieXWHVTwmWSHuJozdpN4nsMiobSPy42rTR3y5ZG1q6EuFEwBFrqMNiTsYYeS
	KeHay20AS6TwzV13oOlDjNXmW8NuPcKI/qMjSK0N4shqIeORwPt33dep339GAI1xxAQ1+7Zi6Ej2S
	2K/HRw6/W4muvQVlA8g82SQqIId6f1XDgfnyzrMPtbqWlinQe1EzMLwV4Xyhbfa6Rr6BtpTdckLUF
	FguP/bQ+rrLeLsbfhfhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruzBv-0000000Dgwp-3xcE;
	Thu, 11 Apr 2024 18:30:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruzBs-0000000Dgtl-3V16;
	Thu, 11 Apr 2024 18:30:30 +0000
Received: from ip-185-104-138-67.ptr.icomera.net ([185.104.138.67] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruzBf-0001so-KS; Thu, 11 Apr 2024 20:30:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: david@ixit.cz,
	angelogioacchino.delregno@collabora.com,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	cristian.ciocaltea@collabora.com,
	linux-rockchip@lists.infradead.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: regulator for sd needs to be always on for BPI-R2Pro
Date: Thu, 11 Apr 2024 20:29:51 +0200
Message-Id: <171286007462.1886699.13358284260488650181.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240305143222.189413-1-jtornosm@redhat.com>
References: <20240305143222.189413-1-jtornosm@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_113028_952629_603E93A7 
X-CRM114-Status: GOOD (  11.79  )
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

On Tue, 5 Mar 2024 15:32:18 +0100, Jose Ignacio Tornos Martinez wrote:
> With default dts configuration for BPI-R2Pro, the regulator for sd card is
> powered off when reboot is commanded, and the only solution to detect the
> sd card again, and therefore, allow rebooting from there, is to do a
> hardware reset.
> 
> Configure the regulator for sd to be always on for BPI-R2Pro in order to
> avoid this issue.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: regulator for sd needs to be always on for BPI-R2Pro
      commit: 433d54818f64a2fe0562f8c04c7a81f562368515

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
