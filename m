Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB815ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 15:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQcDUTswPKTyySuEBfgFu0sMa+27WSP7yM6VCm+As4Y=; b=vmZ3alFf6P2Ql2
	QU8gKVm4y442R5Hu+si/5zpX6wpE++sN47WrkUO9/mGPSH8PsZ2Q6mOkfNdCuwJu8CIVIayhfShp0
	0KubGosla7qq2rYMoUmBR94UyL9xwYuTOVEN0vEql5vAVi6K16gMOuenSJ8AxnN6ZJrx2tUDAI8DK
	ySQ/o9zlZ+xJbgsF32iSvFTmYIOrlAwAGYoQNCn5PUh70myp+WqZ3ZVj2FQLrJfmQoDU+NK4p0flp
	wv8TQsUf2HG2h/c/RKTM/J4s/6LcW0G5+uiurnMaI6S7jxTOR9/fpMbGgpqnQutM3RZ3gdhvI4mqn
	9tkkQi9szJYcnfztwhDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWfxP-00HS6F-Re; Fri, 09 Sep 2022 15:30:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWfxM-00HS37-SQ
	for linux-rockchip@lists.infradead.org; Fri, 09 Sep 2022 15:30:14 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oWfxD-0006GD-HL; Fri, 09 Sep 2022 17:30:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com,
	wangjianli <wangjianli@cdjrlc.com>,
	daniel@ffwll.ch,
	airlied@linux.ie
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] drm/rockchip: fix repeated words in comments
Date: Fri,  9 Sep 2022 17:30:01 +0200
Message-Id: <166273738605.3499664.4120092619093859297.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220908123616.19195-1-wangjianli@cdjrlc.com>
References: <20220908123616.19195-1-wangjianli@cdjrlc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_083012_949740_FB063614 
X-CRM114-Status: UNSURE (   7.09  )
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

On Thu, 8 Sep 2022 20:36:16 +0800, wangjianli wrote:
> Delete the redundant word 'in'.

Applied, thanks!

[1/1] drm/rockchip: fix repeated words in comments
      commit: fe53d167129e19ce01c056d85262427146cacf88

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
