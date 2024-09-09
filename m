Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 939C0ECE577
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 16:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sjkL0YsD3SfPI0Xdz9mBJ6gWGtyGlBHbcgG4H/G2Itc=; b=Y8jKzKsPKDdH8o
	ROOQ389f9TXuAG/BceSLvHfX1VzLjoGsxlgYZKWCxyriJ7fwvQJRts0MOYzf7l6vVMCBhTcQt4QLz
	WfHoYfUuNk7nw1QknbogWbdE2Nv8Yt2Jt1FMZga1D8UcFUOjux8QehRb7//3tk9JizQtvHj//5iQO
	btlDi/vzxfmTo0kOmzqliDCWbCYHCZDUuzjNOwehZCrOjTcrDI0De43fG6N2xjymNy0AJ4QFa5q+P
	eJDhgDVY3eQCZsl2JR1/dHc+b8tGcfZG9mr7OttrkXwpNqq/pD1UzglnBu2DtdoUhjkV7gOROpEy5
	eEVCyWKBlJh3KDNEk2Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snhDf-00000002eoY-24Jf;
	Mon, 09 Sep 2024 16:26:27 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snhBm-00000002eEg-42UT;
	Mon, 09 Sep 2024 16:24:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 8D6DAA416AA;
	Mon,  9 Sep 2024 16:24:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1663C4CEC5;
	Mon,  9 Sep 2024 16:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725899069;
	bh=Z9KQaBMYa5sFKDVDG6vipFDugxmhAcXo+x7jIXMTm4k=;
	h=From:Date:Subject:To:Cc:From;
	b=nUFhMo1aVL0SZ26zu0BGprNSrg8esC9sKfr9Uhd9jg/awvZA907m1qU8mpnp64FFm
	 ouQ7SY4t02QysCMRIwsc3Cvli6U6OYOyLAxkZWPaNs6rR6BSzK+EFOgjzsCuNcb1mk
	 iLa0Q24Qk0dtrmGSlpQ0ezEsY9QySiqVvrvKN0H6QZhsqbgYns7JovokeAGHke5K+x
	 Zav3hP4vtBFKiBC/8WC14H+TB4So04Mywvw8c42k4LRs2OOdkaFK/V7rBu8Y6Wxg8K
	 unbMZg831bE/l0fBQX+VI6xlGGfX60RaxpFqjXeQdtQ1HKkLeBAbCNVvp5TygqfUhY
	 Tp3ICMpAeku0Q==
From: Nathan Chancellor <nathan@kernel.org>
Date: Mon, 09 Sep 2024 09:24:25 -0700
Subject: [PATCH net-next] can: rockchip_canfd: Use div_s64() in
 rkcanfd_timestamp_init()
MIME-Version: 1.0
Message-Id: <20240909-rockchip-canfd-clang-div-libcall-v1-1-c6037ea0bb2b@kernel.org>
X-B4-Tracking: v=1; b=H4sIADgh32YC/x2NQQqDMBAAvyJ7diFqKKRfKR6SzaYuDaskIoL4d
 0OPA8PMBZWLcIV3d0HhQ6qs2mDoO6DF65dRYmMYzWiNMw7LSj9aZEPymiJSbhJGOTBLIJ8zBu/
 Sa3B2siFBy2yFk5z/xQeUd1Q+d5jv+wFsvFrEfAAAAA==
X-Change-ID: 20240909-rockchip-canfd-clang-div-libcall-ba9f619434bf
To: Marc Kleine-Budde <mkl@pengutronix.de>, kernel@pengutronix.de, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-can@vger.kernel.org, netdev@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 llvm@lists.linux.dev, patches@lists.linux.dev, 
 Nathan Chancellor <nathan@kernel.org>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1692; i=nathan@kernel.org;
 h=from:subject:message-id; bh=Z9KQaBMYa5sFKDVDG6vipFDugxmhAcXo+x7jIXMTm4k=;
 b=owGbwMvMwCUmm602sfCA1DTG02pJDGn3FW0upoUKl7aqfFFYZn1Cp+1punwQ75573+3fRvc8n
 lCamsbRUcrCIMbFICumyFL9WPW4oeGcs4w3Tk2CmcPKBDKEgYtTACYS4cHwP/MzDy/DIpdboSzX
 v/7dbybqzzFHbs7kO2aK7/8Ia4btb2X4n/BILDIvXeTg6i9OOXuMgt9enXpGUawva6FZ2/kE4QJ
 dZgA=
X-Developer-Key: i=nathan@kernel.org; a=openpgp;
 fpr=2437CB76E544CB6AB3D9DFD399739260CB6CB716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_092431_193068_B56E42E4 
X-CRM114-Status: GOOD (  10.35  )
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

When building with clang for a 32-bit target, such as arm, a libcall is
generated when dividing the result of clocksource_cyc2ns(), which
returns a signed 64-bit integer:

  ERROR: modpost: "__aeabi_ldivmod" [drivers/net/can/rockchip/rockchip_canfd.ko] undefined!

Use div_s64() to avoid generating the libcall.

Fixes: 4e1a18bab124 ("can: rockchip_canfd: add hardware timestamping support")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
This does not happen with GCC, likely because it implements
optimizations for division by a constant that clang does not implement.
---
 drivers/net/can/rockchip/rockchip_canfd-timestamp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-timestamp.c b/drivers/net/can/rockchip/rockchip_canfd-timestamp.c
index 81cccc5fd8384ee1fec919077db48632f0fe7cc2..4ca01d385ffffdeec964b7fd954d8ba3ba3a1381 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-timestamp.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-timestamp.c
@@ -71,7 +71,7 @@ void rkcanfd_timestamp_init(struct rkcanfd_priv *priv)
 
 	max_cycles = div_u64(ULLONG_MAX, cc->mult);
 	max_cycles = min(max_cycles, cc->mask);
-	work_delay_ns = clocksource_cyc2ns(max_cycles, cc->mult, cc->shift) / 3;
+	work_delay_ns = div_s64(clocksource_cyc2ns(max_cycles, cc->mult, cc->shift), 3);
 	priv->work_delay_jiffies = nsecs_to_jiffies(work_delay_ns);
 	INIT_DELAYED_WORK(&priv->timestamp, rkcanfd_timestamp_work);
 

---
base-commit: bfba7bc8b7c2c100b76edb3a646fdce256392129
change-id: 20240909-rockchip-canfd-clang-div-libcall-ba9f619434bf

Best regards,
-- 
Nathan Chancellor <nathan@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
