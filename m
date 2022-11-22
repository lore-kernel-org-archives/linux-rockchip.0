Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F383C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Nov 2022 22:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p9dVDK+lPkqZlYETYV0JqVFCpqkL+EyvhJ0D2CKnco8=; b=BhDkA3QVpF07r4
	8i8UoAGPNN8nqjpF0b4lmn8m9Eu4SrdaLfuqYy5sBuQ6pUdyRG8xVFcWI8kWQPaMCYYpYiSslLO+t
	tZtG1n6x8RI4v2IQZdqpzqDlqLOlAP8MctGKrTGtcoOBaZvVyL1EDVeZ3vA9f9I/kkoYs01B18wt6
	NBHfpiTbL04/vtSSBCrkfuVG7hADhPV4PUbSLGlLlo+LGqXprv6YsiGXF3aSIG2awIwyey1PjXcn2
	H4HhkI2YGoL9pdsv3aPT+/9XbgC9k3Vsw8hLYw7apjDjV1bMRKxtnT+er+3B4pUYbgNgX5LJ/Vpok
	BvPwbG8raeHo5uwmA7Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxbqP-00C9So-H5; Tue, 22 Nov 2022 22:34:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxbqM-00C9RW-Bj
	for linux-rockchip@lists.infradead.org; Tue, 22 Nov 2022 22:34:19 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oxbqJ-0004DQ-Qh; Tue, 22 Nov 2022 23:34:15 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macroalpha82@gmail.com>,
	=?UTF-8?q?Jo=C3=A3o=20H=20=2E=20Spies?= <jhlspies@gmail.com>
Subject: Re: [PATCH v4 0/5] Add more RK3326 gaming handhelds
Date: Tue, 22 Nov 2022 23:34:12 +0100
Message-Id: <166915627084.1689466.2745573507429780699.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221117215954.4114202-1-maccraft123mc@gmail.com>
References: <20221117215954.4114202-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_143418_419650_7145FE13 
X-CRM114-Status: GOOD (  10.72  )
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

On Thu, 17 Nov 2022 22:59:49 +0100, Maya Matuszczyk wrote:
> This patch series adds Odroid Go Advance, Odroid Go Super(without
> display) and Anbernic RG351M.
> 
> RG351P uses almost the same motherboard, and I'm not sure how to handle
> it. RG351P DTS file would look exactly the same, aside name change.
> 
> --
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: rockchip: Move most of Odroid Go Advance DTS into a DTSI
      commit: 04ea3e30386e632c028654409e9a86c4c6b7accb
[2/5] dt-bindings: arm: rockchip: Add more RK3326 devices
      commit: 76eeb9b665d72ee53e5e93f154b23536f9d1c9c0
[3/5] arm64: dts: rockchip: Add Odroid Go Advance Black Edition
      commit: abba44b3e7c3f7530b607e8d2e2db96e6460fc73
[4/5] arm64: dts: rockchip: Add Odroid Go Super
      commit: 2f217d71aa89504abc9ab95286b807efaa03e11a
[5/5] arm64: dts: rockchip: Add Anbernic RG351M
      commit: 4e2347dbd618f88865408709cb7c06ab1f5f3f4a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
