Return-Path: <SRS0=t/9b=OT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AEDAC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 18:10:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 296A661465
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 18:10:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 296A661465
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KE5yif8G2g0+RxIHi7+RvcKnLM9qdcLtilAYL04umAI=; b=khHUpyRrWdj7h4
	Q/Ekn8AZR0YLom06MahI+u9VA//Y2JyH8kXbjskcix9bbo4hNKl+knitsJq44qZWNZEyXSJsLNYJC
	QoPksdVUeivUFeiwL3dDZr5K9aJ/SsKtM2wrRMDvKcQYP8EE49kCRQgvsmGjrxNYHsT/dpH2mJehs
	u+oObVRlECBIuOBDXqqHOWudscxzxFsL5Ygv/hgg/eG2TCBXMIJ4tzYQgDDsaW/ux7aUTLloMRyef
	m5lEYtGkGwDOBgSBq+E+4ySsWRQz0zBEIIrzp4kURv/EOl+XyeKAxpksNu2Xk3ED/LRNem0jG6EnT
	31hY7MFurw44q2LAQmzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVe2V-00C27k-D1; Wed, 29 Sep 2021 18:10:43 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVe2T-00C27Q-K5
 for linux-rockchip@lists.infradead.org; Wed, 29 Sep 2021 18:10:42 +0000
Received: from notapiano (unknown [IPv6:2804:14c:1a9:2434:b693:c9:5cb6:b688])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: nfraprado)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 672FA1F44852;
 Wed, 29 Sep 2021 19:10:38 +0100 (BST)
Date: Wed, 29 Sep 2021 15:10:33 -0300
From: =?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado <nfraprado@collabora.com>
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org,
 Sandy Huang <hjc@rock-chips.com>, Chen-Yu Tsai <wenst@chromium.org>,
 Thomas Hebb <tommyhebb@gmail.com>
Subject: Re: [PATCH v3 4/4] drm/rockchip: dsi: Disable PLL clock on bind error
Message-ID: <20210929181033.gzxolndj44cyezwz@notapiano>
References: <20210928213552.1001939-1-briannorris@chromium.org>
 <20210928143413.v3.4.I8bb7a91ecc411d56bc155763faa15f289d7fc074@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210928143413.v3.4.I8bb7a91ecc411d56bc155763faa15f289d7fc074@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210929_111041_809869_BE97AB6D 
X-CRM114-Status: UNSURE (   7.60  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Sep 28, 2021 at 02:35:52PM -0700, Brian Norris wrote:
> Fix some error handling here noticed in review of other changes.
> =

> Fixes: 2d4f7bdafd70 ("drm/rockchip: dsi: migrate to use dw-mipi-dsi bridg=
e driver")
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> Reported-by: Chen-Yu Tsai <wenst@chromium.org>
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

Tested-by: N=EDcolas F. R. A. Prado <nfraprado@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
