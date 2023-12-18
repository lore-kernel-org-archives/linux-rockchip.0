Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86B26C35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLUzV0FTXXIuitDz8a9IBsQ1coEGuGU4bB8yRdEVZ50=; b=wQQhCCGMoI2l9x
	Corl7q+uI07EUAUdF05TLSjhxjtUwWxKXgVE56sQfnz2Ud8tBO+hSM7Y+5zSsVlWKmbS97snf5H7+
	ank4MRHXdPTaIIfU6uIzQ0iN7HjdWZx1bi18pdTq4qoiJYFzNMwQRXJhcaz7DMvRszEU97ix1Sszk
	MTsqUqTnzTtZj899Z/a46tjkoa6ymg1ioS8ec7MLD6+DQ3ILwDpMKuMx96SYTiGsbv/UXrlbHiMOo
	FLiAoBYQEcX8drbCd6r0OOa6NtX9AJITEzbl5ZA6FNYfRBA4OoDTg+iQrm3yfJnDMUiynwpJY/IgK
	1GiJBN/xeebw/tTktB0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rF9US-009Z8g-00;
	Mon, 18 Dec 2023 09:00:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rF9UP-009Z5u-1P;
	Mon, 18 Dec 2023 09:00:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F084D60ED8;
	Mon, 18 Dec 2023 09:00:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5016EC433C9;
	Mon, 18 Dec 2023 09:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702890034;
	bh=pN5LILtZ6jkI/p6vbAQqvhmG+HEe59duVyzW2V849YA=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=GWMNYcNboJdrtLSM3AHLe8A3hgBACpV18b2Ta+ziuZ7Bo6uSy50Lt3t6Jeehf3dJz
	 8sOCZd3Btw910W7g7dlSGxhGr+32PGDvqTF0G+TWO7p3sriScUofoxmldAmYzaZDDl
	 fStQuaYAy7kV9stgwTHyiCMuZ3L43vD5bf81gM++tWab2MBk2TDNqH5NzIKmkB4aE8
	 LwK6bvNaPPt6jJ/a4UaP0GgKXJuq1fC+l/L6XQGh6Pg/LazW2SxrWpc7YoggqZkp5D
	 QmP1CtM5qin6pQBQLSWdFYV63lI6W0/8vAx/rgFTsauwBpi3Xz42+00U8PbDwxUkqp
	 mZzscOVoDpr9g==
Message-ID: <3cc54ae7f4c9970090d60fcbeab144c6@kernel.org>
Date: Mon, 18 Dec 2023 09:00:32 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Alex Bee" <knaerzche@gmail.com>
Subject: Re: [PATCH v2 17/27] drm/rockchip: inno_hdmi: Remove useless
 include
In-Reply-To: <20231216162639.125215-18-knaerzche@gmail.com>
References: <20231216162639.125215-18-knaerzche@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, "Andy
 Yan" <andyshrk@163.com>, "Conor Dooley" <conor+dt@kernel.org>, "Daniel
 Vetter" <daniel@ffwll.ch>, "David Airlie" <airlied@gmail.com>,
 =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>, "Rob
 Herring" <robh+dt@kernel.org>, "Sandy Huang" <hjc@rock-chips.com>, "Thomas
 Zimmermann" <tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_010041_513971_7157BC5D 
X-CRM114-Status: UNSURE (   5.01  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, 16 Dec 2023 17:26:28 +0100, Alex Bee wrote:
> The inclusion syscon.h isn't used anywhere. Remove it.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
