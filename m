Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57E67D6CFA4
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jan 2026 18:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wCYsLTTQl0KgphJ/Y0DTRicCRbgpbAmo12YgGwBdQB4=; b=Qk2Juj0sav9LIL
	atvwFISFiGax/OEQV3TNoSzgMklpDVe1jfoW9Ez7wXM8/cqAQi3eiUPO5RwHW13ycv9/GJ9L0xgXc
	gDDMgupvut/0/7lNNapBixdBnYIOBiHRKsLraoHQWEybWGZRnO5qrRJs7hKQ9Q+Jl04l/GjVyrRym
	lR8CGm0kZkfammrA6e3UWKzrHefTnxbM8FJutdOAHn5xXb6d2EWOS3LjxI72MfBbw9CPguAJ/8lRO
	CRHjl9c/6U+RDkGgBxfoihFqIFD1M02ox5IsoXSGvSnmC7XfOC72/9B4EtUVxdgEOAyoHxnY2ubM9
	tIX3rvZTJsps46Xv8PvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vizUB-00000007dfA-10pm;
	Thu, 22 Jan 2026 18:32:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vizU8-00000007deZ-1pJQ
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Jan 2026 18:32:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=agslpXLRXlgoIqoXX1b/469dMp/dSJo51gcsUDWxm10=; b=US9+bYtdoESb7Sxo34iTpi/+4d
	jHW0+3yOCh20Q0YUYmGdG2p1EkXJh/705kvbMhICO58eaTB4PPK4ZAuBoN2fK20pVwO4m1CeDEmM4
	7cdQ5LuhhFOsEZGDaXXcwLK/a6kt1HFnnUFgQ9M4WOAVaOj/R49vI5BHCtGCBL8OtxF3zzVmCTKyV
	Uw4+D1c8BputqR33CfqXIdml8wTUqqm4uvocq2U4iXhIHLLSjRLnkPd0rklNBy/T0aw3AGxjZfcEK
	Oxr9I2drNpjGOhMuw8PEI/Af1ArM5TwqP5BnKQotsEVjqBbm831PaM8P0mpHp2wyaQeQBMeHzvssG
	C12Ndzug==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vizU2-003rA9-Fa; Thu, 22 Jan 2026 19:32:43 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	jagan@edgeble.ai,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	aweinzerl13@yahoo.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH 0/6] Add Anbernic RG-DS
Date: Thu, 22 Jan 2026 19:32:39 +0100
Message-ID: <176910675441.726233.3829281115415341998.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260113195721.151205-1-macroalpha82@gmail.com>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_103248_495249_545BBA50 
X-CRM114-Status: UNSURE (   8.86  )
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


On Tue, 13 Jan 2026 13:57:15 -0600, Chris Morgan wrote:
> Add support for the Anbernic RG-DS. The Anbernic RG-DS is a dual-screen
> handheld from Anbernic powered by the Rockchip RK3568 SoC. It has
> dual DSI displays with touchscreens, multiple face buttons, and is in
> a foldable clamshell form-factor.
> 
> https://anbernic.com/products/rgds
> 
> [...]

Applied, thanks!

[4/6] dt-bindings: arm: rockchip: Add Anbernic RG-DS
      commit: 84f42966b80eaec59349c7b474ebd6b0943731e4
[5/6] dt-bindings: input: touchscreen: goodix: Add "panel" property
      commit: 3c8399d31c8eb10aa34bccec1f49b51694e67b00
[6/6] arm64: dts: rockchip: Add Anbernic RG-DS
      commit: 9e3f8ae040009f66367b2ba1081b7e313b39aeff

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
