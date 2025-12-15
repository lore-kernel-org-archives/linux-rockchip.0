Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72F51D41D74
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Dec 2025 11:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lgkSMTwQrBDbw5I26o0V3E1ii/BOe/7z+hpEAmzF1hE=; b=DbF/N3xutkrXV3
	CEQZ3yCLiZACHnEQFEftT5Cut28ckn7ci8UM1q2UsBY4eYDYE6fEwteOTeJ22ikjpbTjF8cyAu/zG
	gyMUYVofY6RncxStmMEwf+5mezdU/CQJGgx2HLXxoeewaFDH+NyEgoXcwT3UQ50uKJGpETh1IXhl5
	gSMlT0E9M7Il5osys/F7gJyooKOxWhYCOj64EZ4PicLIN8DsJqqholWDqOT3nc3mjjS0u7/cFc5lN
	fyfBcWqWoGEHgoMMSg1REttkkiYFP3iszKoktrMkej6Kh/kqIaZEYAv/vZyecTNV49oyn+HqIFo3T
	3tU6KpZGkq6YAD87L8Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV73L-00000003Ybr-0NJ3;
	Mon, 15 Dec 2025 11:47:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV73G-00000003YYs-3rfk;
	Mon, 15 Dec 2025 11:47:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=cDCAdTgs2P3VG3lCGDQQe/McF+oPTUo+A/A40/PgerU=; b=2Dzjn248o/8afFCxkZtum0p2YK
	UeeI0k6+K3TX+bhvV4nXMAl0Tdupum+oSRjVFAuyILhnSbylG2RUPmjGTz1JRGzgkaLAyZ8nlHNLr
	E74vxWg27sFGhmXD/VpHmzqNH/yZ8uBUu+mZQLihafhQANSQUkJZo6x14UOUrXXd6XspUqwOganxy
	ITCUq33LKI2lNOrCCGmUb8UCYqpLMPCjkh9Rln6ogMG5UpRE1k4xalNHY58Og9p5LCM1aOyaHBdVT
	Dv2Dvd69Cs/qhMiGIN0xfFRR6SDPzAh09oS7S9Ybbem3rPaKdGJw4mUis4QjL/clKv9spKBeEa598
	dMRqw7JA==;
Received: from [192.76.154.237] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vV73A-0000On-Pb; Mon, 15 Dec 2025 12:47:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Alex Bee <knaerzche@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v3 0/7] media: rkvdec: Add HEVC backend
Date: Mon, 15 Dec 2025 12:47:33 +0100
Message-ID: <176579924020.1404176.16613704782665436214.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250905161942.3759717-1-jonas@kwiboo.se>
References: <20250905161942.3759717-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_034744_374410_DF7853FD 
X-CRM114-Status: GOOD (  12.56  )
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


On Fri, 05 Sep 2025 16:19:18 +0000, Jonas Karlman wrote:
> This series add a HEVC backend to the Rockchip Video Decoder driver.
> 
> With the dependent H.264 High 10 and 4:2:2 profile support series
> finally merged there is finally time to send a v2 with minor changes and
> a suggested code style fix of this series. v1 of this series has been
> fully functional up until recent unstaging of the rkvdec driver.
> 
> [...]

Applied, thanks!

[7/7] ARM: dts: rockchip: Add vdec node for RK3288
      commit: e74470cf3101da79666f20186c9406192223e9a8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
