Return-Path: <SRS0=g3xy=PJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71B7BC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Oct 2021 13:33:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4E6F26112D
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Oct 2021 13:33:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4E6F26112D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j7zbHH6jkhaVPTYtHYKwJLSGEU/OyXFExdXnuxfgIds=; b=ewi93ZcWh+ug60
	DEA2mX1S3Wzvta8CiRO/Vm44Po7+FWH+ETKkT6vv+FI8ASCKsIyRif5G3t9fw/l0SdmAgQs3yaT+q
	IPo0Oml+lja7OmZ89r5pSy65BlwpwT+iS7oD+wj70xMWOpZbatEmGwQz+k7cDI6mTq7xljuZDelad
	CXePAvEzpxyerhF6GXmqfTmwIxz/Evvy36YnkUaKKpjNvItA4bX9PPcZ3T8bL6Z2LeGZWCzvXcN/f
	ml7l/EzHjtrWzauYC93OSxWWegTSvQclnsOwQPkyA6ReS9KeyZFAE3b5kfJ5wMCJ6Z9Z5yVni8tgH
	8JQbwwoYPxrZclcawHLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdYBj-007egg-Cb; Thu, 21 Oct 2021 13:32:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdYBg-007ef2-Uk; Thu, 21 Oct 2021 13:32:54 +0000
Received: from [217.24.245.82] (helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mdYBY-00017F-7z; Thu, 21 Oct 2021 15:32:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: airlied@linux.ie, daniel@ffwll.ch, hjc@rock-chips.com,
 Thomas Zimmermann <tzimmermann@suse.de>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: Implement mmap as GEM object function
Date: Thu, 21 Oct 2021 15:32:35 +0200
Message-Id: <163482299856.848182.3787182193550815425.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210624095502.8945-1-tzimmermann@suse.de>
References: <20210624095502.8945-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_063252_996045_90672BB3 
X-CRM114-Status: UNSURE (   9.66  )
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

On Thu, 24 Jun 2021 11:55:02 +0200, Thomas Zimmermann wrote:
> Moving the driver-specific mmap code into a GEM object function allows
> for using DRM helpers for various mmap callbacks.
> 
> The respective rockchip functions are being removed. The file_operations
> structure fops is now being created by the helper macro
> DEFINE_DRM_GEM_FOPS().

Applied, thanks!

Looks good on a general glance, but of course I don't have a firm
grasp on all drm internals, so hopefully all these tests we
have will suffice :-) .

[1/1] drm/rockchip: Implement mmap as GEM object function
      commit: f8b5307074f8be80a9806d85b01e5ba933dd0360

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
