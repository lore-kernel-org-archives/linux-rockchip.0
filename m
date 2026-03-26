Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1DB310AB814
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Mar 2026 19:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLyNsxe/wuJyk12WoRKbLVneZf9BWPUp3toucKDTdYU=; b=C8aEI9RR/tithM
	XCH9upeebjGKon8YdhFwaeZoSjBTTW3yFDqTcA7dStalF+xy16R0cHAfPT7ogFwdTov53w+LhDvxy
	ekKuO4Dys8uGNes8Up+bhN5WwwYAtORmwIItdbIE9ISpsmYh4BgqDOk89Q0+S1oTpz6VdQnKSqkB3
	2vQ3YFfFalocpMLm/fGeeZw7vSSj9IDiANK4GChW0yESX/v7xCXjxKe6mYqWIc9FdZk0DCc32rrOu
	K0s/v5591gOiiLWaQwFCnhBoMgoGu+DJVayeNL1ecsb4KcPYvEN7pLYOPhY/wXNcgFn/Ee5B5T4Ob
	vRBsUB880kBQ02+NvKDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5qa0-000000067v9-43J7;
	Thu, 26 Mar 2026 19:41:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5qZy-000000067tz-39hX
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Mar 2026 19:41:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=DlmogNfOptQj89GJe9FVyLLtAKx7p79DNZYBO+JYw2Y=; b=RweojlALWVlzYQ6xNRx23B4sjb
	dPZ7vxiUv7SwltE2i+qrjrnh2hjDMUlkQBvx4EuxhvZZnkYr9rw0sHgbm2wMcXR7gTYhN4G9dRPKN
	Fb+w7jfPDXSITkUPkxml4T39yZQsDbPttBaX57TAwUgxUGBJmP/kwAAsv3tUN6ASs+9gaXSJNyJET
	XfrCUwKhH6+V4Rjfw80gLrDdO36kIC6J3Z9VsxmTXMCcTiQq1u1n0yYDtV9e1KBdfQDOkOEtd1arF
	DNncTtXMUc+q2TMQzqE4myDgbMdXRYgJlHZzYxEHKJ7YghMY4aTdDEgQoyLEeKaJu6Ba0KRewOEty
	DOhEwU/Q==;
From: Heiko Stuebner <heiko@sntech.de>
To: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	airlied@gmail.com,
	simona@ffwll.ch,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: Test for imported buffers with drm_gem_is_imported()
Date: Thu, 26 Mar 2026 20:41:04 +0100
Message-ID: <177455405023.1277100.4214243697444815661.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260227133113.235940-11-tzimmermann@suse.de>
References: <20260227133113.235940-11-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_124118_806069_31F38315 
X-CRM114-Status: UNSURE (   7.06  )
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


On Fri, 27 Feb 2026 14:31:10 +0100, Thomas Zimmermann wrote:
> Instead of testing import_attach for imported GEM buffers, invoke
> drm_gem_is_imported() to do the test. The test itself does not change.
> 
> 

Applied, thanks!

[1/1] drm/rockchip: Test for imported buffers with drm_gem_is_imported()
      commit: 9fc0da81916250f343599a4dd259f097196bf0fb

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
