Return-Path: <SRS0=QbJo=OL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8074CC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 09:12:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0C62B61131
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 09:12:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0C62B61131
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d8VDFFCg9lzQFDQX0mS3duOFwQuDWfvS0awzE51NnCA=; b=P8FnG6pf9LZXCJ
	ZRbm2KZX2eSJnCx6rhht1bDaKD58WM01h3n0/lqoi99V8vU9Z5fDHIUFIrJunAhDqtPNnX9o+qMl2
	ozpojNOJABJo3t+a5IJpVAj3SUn9U/oIovjLmniE/faZSMX4Da9tqjF44Sol73OHdq6iPbW4FR5dp
	HtgiQU2wW6S2USFsBvWuX2rFiEK1UubeIPZPX0ExhSZmjYCCAVrY2mWzsupd9JYmkYZIzb3Xh8IcD
	fFyQzcptZH09RudSNOxew8VT4FLmmzmhHginKC1HfvQZa6AJamjCXiCTbapVcfSC3R4cTRk0Bwjay
	b77moETW5ZPMWIR7uhAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSbpO-0040tG-Lv; Tue, 21 Sep 2021 09:12:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSbpD-0040ra-26; Tue, 21 Sep 2021 09:12:28 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mSbp5-0001bM-FU; Tue, 21 Sep 2021 11:12:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Arnd Bergmann <arnd@arndb.de>, hjc@rock-chips.com,
 Palmer Dabbelt <palmer@dabbelt.com>
Cc: Heiko Stuebner <heiko@sntech.de>, kernel-team@android.com,
 dri-devel@lists.freedesktop.org,
 Geert Uytterhoeven <geert+renesas@glider.be>, airlied@linux.ie,
 linux-arm-kernel@lists.infradead.org,
 Palmer Dabbelt <palmerdabbelt@google.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, daniel@ffwll.ch
Subject: Re: [PATCH v2] drm/rockchip: cdn-dp-core: Fix cdn_dp_resume unused
 warning
Date: Tue, 21 Sep 2021 11:12:17 +0200
Message-Id: <163221552907.1876143.10392170678364292267.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210911034317.1719619-1-palmer@dabbelt.com>
References: <20210911034317.1719619-1-palmer@dabbelt.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_021227_147407_FD090FFC 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
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

On Fri, 10 Sep 2021 20:43:18 -0700, Palmer Dabbelt wrote:
> cdn_dp_resume is only used under PM_SLEEP, and now that it's static an
> unused function warning is triggered undner !PM_SLEEP.  This marks the
> function as possibly unused, to avoid triggering compiler warnings.

Applied, thanks!

[1/1] drm/rockchip: cdn-dp-core: Fix cdn_dp_resume unused warning
      commit: f7c57a4566115657c16fd6603b6ef8a21bae5194

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
