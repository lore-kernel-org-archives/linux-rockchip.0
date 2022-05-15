Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F7C8C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 May 2022 19:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkeKtF1AVRCtCyLdWIZCbFMlEQ/H/h46HVFqFHk8rko=; b=VHhR8yEHNuRyEv
	HidGYFsYwZWGn8mCin8scezquOJukO98mh1n/O8FjLvl/xVjT57zGIc3USKpoWhxT0d9z0r+M6J6f
	FLvhAazVnewcWXJk2QLoxzlQLqaFAn8dBqPlt7oydL+f2wTA/mBQKXV1S2qjZsJCejXjuuc/PBcqh
	1Sp4hlIe/8a7o9tSF2lq0kODc+TaIhzAbPUlriUo1SHZpyYEyHWlPkNZiWyzjE+S8YnqTifBo8Im8
	XYncKnWFwwM9Dvzh1a3EVL+FrK1cd073m8Kk79X7MNQpJdUL5R75OXbYC/zPCqH+bEPpQUnPvw0np
	9J1Q3qq3uwhvfkNrSBow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqJyg-004mTP-H7; Sun, 15 May 2022 19:32:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqJyd-004mSn-BO; Sun, 15 May 2022 19:32:28 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nqJyb-0005zF-2M; Sun, 15 May 2022 21:32:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/3] add Pine64 touch panel support to
 rockpro64
Date: Sun, 15 May 2022 21:32:23 +0200
Message-Id: <165264312976.2522653.14035035334759399126.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220511113517.4172962-1-pgwipeout@gmail.com>
References: <20220511113517.4172962-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_123227_428711_25FC35F0 
X-CRM114-Status: GOOD (  11.65  )
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

On Wed, 11 May 2022 07:35:13 -0400, Peter Geis wrote:
> Good Morning,
> 
> Apologies Heiko on taking so long for this v2.
> 
> This patch series adds support for the Pine64 touch panel to the
> rockpro64 single board computer.
> This panel attaches to the dsi port and includes an i2c touch screen.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: display: panel: feiyang, fy07024di26a30d: make reset gpio optional
      commit: d0956e2c520c9d730979a9669f27a77d40acac13
[2/3] drm/panel: feiyang-fy07024di26a30d: make reset gpio optional
      commit: de5db71e4c8c35ed5e92006e3064ce9230881ece

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
