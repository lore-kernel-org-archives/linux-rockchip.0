Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 423AFC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Apr 2022 14:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jb1kNmq5ykqe9B6WMW6ZTUnwYgeZLtNWRL7aW2rV3lI=; b=rIDFX98Lj+mRbD
	R0qJLtUy0+Yw7T7VzyWsF4i2TUoIawmiCjlm66yM3X2XbhXBgiAgrPRPX0mj2iDWtYU2BN4X2MGLp
	7MHqzGaQZnYpM/364jbSqAQeG9KccYF8W4LUTN9yEF7PrDn+SpL45tR9wSAVwpdtPlHvSOjqMdvLc
	fTycvkStIycgOWxroOPvgsR+CTMXr+RsUgOeV2fcSt+EZ0ex5pFRGS1ibsWkzxBDmUmJz+nfg5RWu
	/lixT4drL2L5rd9TvS13puuVGk3Asxvx9VHFtuKLx7TIhop5IK9IHdT2+H2P8IgFfHnVVYS1TELng
	hk03H4a6aQhNPrk6AxIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nknkJ-00ER2A-IV; Sat, 30 Apr 2022 14:06:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nknjX-00EQY8-Qa; Sat, 30 Apr 2022 14:06:08 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nknjS-0001Wl-7m; Sat, 30 Apr 2022 16:05:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Elaine Zhang <zhangqing@rock-chips.com>,
 Christopher Obbard <chris.obbard@collabora.com>,
 Johan Jonker <jbx6244@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v3 0/3] Rockchip RK3328 VDEC support
Date: Sat, 30 Apr 2022 16:05:51 +0200
Message-Id: <165132754298.647302.5036814718557764083.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220425184510.1138446-1-chris.obbard@collabora.com>
References: <20220425184510.1138446-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220430_070603_944391_33065975 
X-CRM114-Status: GOOD (  11.90  )
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

On Mon, 25 Apr 2022 19:45:07 +0100, Christopher Obbard wrote:
> This series adds VDEC support for the Rockchip RK3328 SoC which
> uses the staging rkvdec driver.
> 
> Testing was performed using both v4l-compliance and (mainline) gstreamer
> using the fluster framework:
> 
>     $ v4l2-compliance -m0
>     v4l2-compliance 1.22.1, 64 bits, 64-bit time_t
>     ...
>     Grand Total for rkvdec device /dev/media0: 54, Succeeded: 54, Failed: 0, Warnings: 0
> 
> [...]

Applied, thanks!

[2/3] arm64: dts: rockchip: Rename vdec_mmu node for RK3328
      commit: a2fe0f97fd4a5e482123fc207a48bde844b161a1
[3/3] arm64: dts: rockchip: Add vdec support for RK3328
      commit: 17408c9b119de4edef9ea57ade7e97d4a1b8b632

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
