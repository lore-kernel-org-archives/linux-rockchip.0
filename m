Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FAAFC4167D
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Nov 2023 09:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQEM4KDNu7n3QB7/WMOy+hxWnTusCVfHwmR5caAemqg=; b=zBlcJC0k8MPRb+
	7cz+jlLoj/k4xNI0adtaSAZ9x6w06anrbFRfFvnpLI6g6lGK9gIl+MUXuivAlN8dMEU5du+wWtaWw
	pY6qACrvThKpkaZnLX+TwvOmzSzC7iR4CGOB5vBO2RHH00yL/VZdwZ8xChyxChoOsqXwvrF0Go4oe
	WEfH3U4AUDvi2vmri67k09YMA/VdXXAunorhvBFytpxKjhz4InVXTsdmqoTAJuKb2uvrKr3Idi+E/
	VZMgPaBJ4Mfnqjc7/z4G2djBV+SEEXejFVjxKW3tcGaSFB05UC++3KBLiSnUnTRqwrxKMo4Rg0we+
	G/jYT65ukiGhwOs8w1Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qzw7F-00GBYw-1j;
	Mon, 06 Nov 2023 09:41:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qzw7C-00GBY8-0e
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Nov 2023 09:41:51 +0000
Received: from i5e861912.versanet.de ([94.134.25.18] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qzw71-000719-Sd; Mon, 06 Nov 2023 10:41:39 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Christopher Obbard <chris.obbard@collabora.com>,
	linux-staging@lists.linux.dev,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Alex Bee <knaerzche@gmail.com>,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH 0/9] media: rkvdec: Add HEVC backend
Date: Mon,  6 Nov 2023 10:41:38 +0100
Message-Id: <169926364317.186242.13700711914348898172.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231105233630.3927502-1-jonas@kwiboo.se>
References: <20231105233630.3927502-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_014150_235311_239B1FF3 
X-CRM114-Status: GOOD (  12.92  )
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

On Sun, 5 Nov 2023 23:36:07 +0000, Jonas Karlman wrote:
> This series add a HEVC backend to the Rockchip Video Decoder driver.
> 
> A version of this HEVC backend has been in use by the LibreELEC distro
> for the past 3+ years [1]. It was initially created based on a copy of
> the H264 backend, unstable HEVC uAPI controls and a cabac table + scaling
> matrix functions shamelessly copied 1:1 from the Rockchip mpp library.
> 
> [...]

Applied as fix for 6.7-rc, thanks!

[8/9] arm64: dts: rockchip: Expand reg size of vdec node for RK3328
      commit: 667a89fe8383de1be44a8cdf22716448f84ee510
[9/9] arm64: dts: rockchip: Expand reg size of vdec node for RK3399
      commit: a31d776cccb98e0763dadce023ad5caa1a6dce2c

Expanding the range up to the start of the MMU should always be the
correct way, so this doesn't need the rest of the series :-) .


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
