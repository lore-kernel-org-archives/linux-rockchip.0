Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C936D3749B
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Dec 2025 20:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s1Bm0p8l8MgvVt69KCvmbUVajOQYYYe2jZE8GyFrTZk=; b=DAXeP/uq1E+tXs
	WDFi3rh7LyA407mY6WclEou6oyBFXUI3CRhjmjzqC4/2x/Z6nPdNqtbqxpXMk1706ryIGNpFwJVvX
	SwwT6rDydscRwJ1MCm5voCKAgGik9q8Irw3bssOroQSk4yWiJPwQ1fm8yJx5PuSU2iKQV21W7u/RT
	NkbwBdahAtSrwhQGsqAfsNEOZ5xGpRMz4GSDC/JMBGbBygXHfSKfMuw+ejLshe+hAK3pFZh02h7E7
	NTyeU+tj5KMiKeSc4dFHtttv2Yv+1vflTuJoX0ZF89NYKWyceN83tf2PXtgesNgYJyciNfaLPhU6U
	JFVX52NymJOqH6djL7KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRcCY-0000000A0R5-3fwE;
	Fri, 05 Dec 2025 20:14:50 +0000
Received: from tika.stderr.nl ([94.142.244.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRcCV-0000000A0Q8-0xN8
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Dec 2025 20:14:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=mail.tikatika.nl; s=201709.tika; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=96tLrf0hdAE4aRsYas0Q2rBM4e2s1cBvFh7Ecq0Y+mI=; b=CygHURBLiO90k2YEkI2s0bwFUU
	tD/llPV5xWBhVl8eCKkhAMFgxnh+eb+qt4/++7yT1tqkgEPBxNsSEDviXQ8LX3lPsSwAtMja/2Q6X
	A4ZUIz6YPq91L83tUNyNXH6QUrtz0G0t4pxq18zjYOCsfW7vhIGIyFxJ9TYtwEeUTwVk=;
X-Preliminary-Spam-Score: -4.3 (----)
Received: from [45.142.19.84] (helo=zozo)
	by tika.stderr.nl with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <matthijs@tika.stderr.nl>)
	id 1vRcCN-00DDbB-1Z;
	Fri, 05 Dec 2025 21:14:41 +0100
Received: (nullmailer pid 2868119 invoked by uid 1000);
	Fri, 05 Dec 2025 20:14:39 -0000
From: Matthijs Kooijman <matthijs@stdin.nl>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-gpio@vger.kernel.org
Subject: rockchip: Make gpiod pin control work and add gpio-ranges
Date: Fri,  5 Dec 2025 21:06:50 +0100
Message-ID: <20251205201254.2865179-2-matthijs@stdin.nl>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_121447_818903_266EA05B 
X-CRM114-Status: UNSURE (   8.05  )
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

The first patch fixes pin config (e.g. bias) done by userspace via the
gpiod interface, which was not implemented for all rockchip boards.

The second patch is just because I was messing with this code already
and had a test setup ready. It makes gpio-ranges explicit for the rk3308
instead of relying on the (possibly fragile) legacy workaround in
gpio-rockchip to add them automatically.

I think the first patch might be a good candidate to backport to the
stable releases, since it makes a userspace interface functional that
currently silently fails. However, it is not a clear bugfix and I am not
super familiar with the rules for -stable, so if you think this is not
appropriate, feel free to drop the stable Cc from the patch when merging.

Both patches were tested on a rock pi s with a rk3308.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
