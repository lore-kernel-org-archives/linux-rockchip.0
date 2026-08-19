Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4B60C5B572
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 08:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1w7AEK1YttkJmXpt2GWaFb5FOIdKLrLE7tHrC2ml85Y=; b=NLRNyKybLoeKAk
	BBkpNjtzdnklPSV4SB+BfUzFANH3Eus5qZ2iKnJqrZZrjSpqGEMx0Ol2mY2oboSGWR6oG2V/k4RaO
	khUBCKH3vIILJbRg3qZhDGHGgxrYcZ7MPDld2co2cb4QbdWKFCJcoOJNGCAMDJTTJzIk5Y4VVojMV
	AaEtQ0KJ0rdZNhyDGVn3giTpD6iQ1aCC0gol8SUgyWLnQylMy7/HaZLNH8ZJj0IJCpI/f+cKry3gM
	Q2fiTjNCNMq76hTvdihHx0B6s/95/3rrvErJd5qIZx5061goLaQtvXPAjK2XQH3kgthB+AkqElJJ6
	oIhJaAAECyhraDNKTSng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwbDL-00000009GrM-1l9A;
	Wed, 19 Aug 2026 07:59:59 +0000
Received: from mail.zlab.su ([109.73.193.145])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwbDH-00000009Gof-2TXY
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Aug 2026 07:59:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 28349BFB3B;
	Wed, 19 Aug 2026 10:59:36 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zlab.su; s=dkim;
	t=1787126383; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=V9qFe+jEsJnb09dRNVDkkZlzIonD8UKNe3Rg9EAkjE0=;
	b=h31gRPB6PJ2B5wvVWz56MsBIuXcx2If/lQlji5TmC7QDi/jicwekZz9J0vlbYb5fEBwzny
	mD1wYPjbu97xYhrBJOvh5f00W4O/7TCUgY0Lh8QRSJz/58Yv3nRHGEq2w6GbHVP0eSF6BH
	G9+uJJ+LkstTdCVqe08RFlfFql18JTmBJO6XggW7vWSGPdEPNcome4BbBU/j8jrKx0zf4E
	sNYX1zkTGaxooteT7CdfMkR5JjDYClLEAJac+WW5tUBDfMODpgbYAnCEecYGJS4/Tbs0MU
	dpYRjeoYkfJxA0NUjPRlKN7QYU5+oRNP/dSiudUIaCNqkxo5XF9ChlKmonfPbQ==
From: Vladislav Leonov <vlad@zlab.su>
To: joshua.crofts1@gmail.com
Cc: andy@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlechner@baylibre.com,
	heiko@sntech.de,
	jic23@kernel.org,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	nuno.sa@analog.com,
	robh@kernel.org,
	sjg@chromium.org,
	vlad@zlab.su
Subject: Re: [PATCH] dt-bindings: iio: adc: rockchip-saradc: Fix RV1106 compatible
Date: Wed, 19 Aug 2026 10:59:21 +0300
Message-ID: <20260819075921.14356-1-vlad@zlab.su>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260819085255.00001e60@gmail.com>
References: <20260819085255.00001e60@gmail.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_005956_230602_1103BCCD 
X-CRM114-Status: UNSURE (   5.47  )
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

Hi Joshua,

Sorry, I forgot the Suggested-by tag. Should I send a v2, or can the tag be added when applying the patch?

Regards,
Vladislav

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
