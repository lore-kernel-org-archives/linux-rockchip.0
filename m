Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EDE8C55162
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Jul 2026 01:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aMV4KgeU9H8yWbFFK2mL0/DubMaDJ+pBnP1PYWVJrGM=; b=eq2vTzG4N3UcXp
	KzaqqCJHB7f0jegUVj4DodgVmT/TwsV56JPVFG/cw7csjPHVJSYslN34xOdsjjxJdfRehJCaCcCE4
	ymjWA5McxI/MOILBtlK6hKCIjegNTFD3/v/3gb5MhzPtjgna/Z9Ine94XmHa912aIbHAnjIF7wu3c
	6VjkPe0qQcKWLgoeS0AdH720gdPPPmouKY1xCdUo/FKPYNUmn4E9yl1UgRuGlOYA4QEliMUg4HWTN
	qfs+I4I+E7C44UVqk21Xbecuembwyj24iNZq/VjufuVvBy3xZDltUgypSq8q1LJt2Xo0gpIHqur7M
	wIyc5XBsngf3LvRv0Q7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpcCh-0000000BaqI-1aM2;
	Fri, 31 Jul 2026 01:38:27 +0000
Received: from flow-a2-smtp.messagingengine.com ([103.168.172.137])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpcCd-0000000Bapt-1LdN
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Jul 2026 01:38:25 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailflow.phl.internal (Postfix) with ESMTP id B6E96138031F;
	Thu, 30 Jul 2026 21:38:21 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Thu, 30 Jul 2026 21:38:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm1; t=1785461901; x=1785465501; bh=MnjeNo91OC
	vm0UJq12ftw5fTQhBWfVQJuzvJP6Veb6U=; b=YTPGhjU7CA6YV1wVARHw4TWd5u
	hZhBwBAGiKRrAT5V7u4og0C6RAV3JsXmKCnfo4neVj3CNYS3H8N46G6vIfRlhUgS
	ZqO+RgbXCwgWHw9oLFpCTvieAN0EfHK+/KMhZaqXkEzwkkkf2sfkH/SdzI+4Fp7D
	kGxvMAV+rUoeeeiu+wke2VVa76k13qaHuB2ETyzwu8o259Ijd0S6YJkmjQmIM1PD
	57KukiB8Il6WmZrWl2Fj31cvh+6Jek2aIVLY8sI2rBYI8n59zGuHh8i5kVUNBDYb
	ZWhBP1cfYn7tW6AGOW89aoKM/PKi1Usy+nZ5SU06usPYqQT6y8gaEO+rUvwA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1785461901; x=1785465501; bh=MnjeNo91OCvm0UJq12ftw5fTQhBWfVQJuzv
	JP6Veb6U=; b=IWhXa0wdnDGUSBjQtf+VaOTPl+pq4qiKg9+IaFGZc4nv9TOyhho
	JDd2ahrZezIaltw0Ay+3QXKfQL2AB0yYFeomXeSgsHBWt3somDCP4tHO8G3b9c+u
	10CgrYsyTjQ3cE7zTW8/v0tuSPDygyNLgUpSt3xKR9Haj/9hHW5Siw/AFEZhHhE+
	TajpC4TJQWReeUQeGWCN4wswkSyGetVptUTAcuJH6HrRhnsDasHfZ30Wf9zoTm09
	pjrZwPrCSSWaiXfg8DR+uPvPJwbLLSb4E0Y5tUYs2101aRn5D14dZCoLtxnXhr23
	l1cN9Gm39loZ+tMFHnkfrHKjxnVg5Hyg4Kw==
X-ME-Sender: <xms:i_xrauLlUKYDCk9ZoVA0yfAO1K8Ye4H93-NSSiEhkAjAvyh6K33n-A>
    <xme:i_xrakor2UbCxwcvCiYn2fzev2XJ8fhDcmniRXXnWkjkaq6tyTstsxvNAIpOEjkRL
    3y_PKiCRt1WktMtgpW9Z1ypTpqaXfNH6HViJe2Qem7sy1p6jnUjlOk>
X-ME-Received: <xmr:i_xralgGkNG2WthTC2sPXpqCqguqC9wNrpG8JK_pF5sBw0IJK5kGDch-3FrXq-0KqBtzNE7n3qP0r4KbymYo4RKZTsR51jwMgQTU5N1DzIK1>
X-ME-Proxy-Cause: dmFkZTECo8XnZE4AM1C6TCD3fMUlv9VVwm+1j3Fw0mN6tz9PYAhtnVsMxhzUL3k3YLWRnX
    MczmWAs3+kwTX0vW3auecvvcUor7eT0EtFu4/VSrrIlD3oD4D5XyW7DGuKdBPeTDtfX9gB
    iWZDNEp0nq3WbY14CH2W3aLY7izHGFM1AcmsQn6cyr/ld+OYK+9a1iCRWIoVkHxu527KjQ
    8Ne/MkS7TXenn+EThyxD1Gc5HmQ7xEGmlunJ2QkQQ5Mnan23eUP1eTAxXtV48/DaFmlx5G
    A8ADMFNrFwf0X8jhYMd6SCpMSpPcON1UskJhEdE0S6cnR444MdmV1ZziXqasV34KQkcGPq
    kQ1m3cT45JVDy4GzqwlWjMxxSjh3xYLkmAHAckoaIxXolfVkSAfW5NYNi4/X4rwloW5p86
    SjooGhk3caCuSFFkWPa/GqiAQ1FNo2QIcFcfYhtYpYYRwYf/v/kwIVk9WZlQJPGDMyZDQe
    0EZ0qqCUbFRi/AAJuKWiANtXAupWgcJTHd6EAPjipcKhWH+tWuYEQQy4IsNt/hlMdKjtXD
    dkddqdDEyvaltJk2Jq4RSkA+lsvYDnF43xOWuqdPGJjWZqiLSS8hyNVlK+5OJNryWhn7SH
    LppczYojR1/frMDbMSAq05qG0S+Rd1kY/0ySs9P7RlrCP80G4KDAtIXfCz3Q
X-ME-Proxy: <xmx:i_xrajYPjJqYHBx54KvgwoQU_1fZnQqyyyqHWINqwLM0N8rmA_Xu_Q>
    <xmx:i_xratk7FE2mKmKclL2vJ6EFGYgzHeYBkDsRmFXTDyeZhg2mrqIE4Q>
    <xmx:i_xrapzvppWOGePAkoYygTtfedj8DYm7HYUnEQvtQCdsFLb8hQicaA>
    <xmx:i_xraj8z1722JZIYxUiaYFhX4ehqaybwyYYFvMFDdc1Nv33-3_9V_w>
    <xmx:jfxranZMzO-hQCWcKe3tTr2bUakpfHzgZHvVHXfDyEcEaFQt2Y7WVhx0>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 30 Jul 2026 21:38:12 -0400 (EDT)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: Frank.Sae@motor-comm.com,
	andrew@lunn.ch,
	hkallweit1@gmail.com,
	linux@armlinux.org.uk,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	maxime.chevallier@bootlin.com,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	attinagaoxu@gmail.com,
	alchark@gmail.com
Subject: [PATCH net-next v4] net: phy: motorcomm: enable the reference clock for YT8521
Date: Fri, 31 Jul 2026 13:38:07 +1200
Message-ID: <20260731013807.1488843-1-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_183823_672336_DFC6E527 
X-CRM114-Status: UNSURE (   9.55  )
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

Commit 42310a24389c ("net: phy: motorcomm: Enable optional clock for
YT8531") enables the SoC-provided reference clock for the YT8531 in its
probe. The YT8521 has the same need on crystal-less boards but goes
through yt8521_probe(), so enable it there too. The clock is optional,
so crystal-clocked boards are unaffected.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Tested-by: Gavin Gao <attinagaoxu@gmail.com>
Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
---

Changes in v4:
- Rebased on net-next/main (Jakub Kicinski). The YT8531 clock enable
  landed meanwhile as 42310a24389c, so v4 now only adds the YT8521 path;
  the include and the yt8531 change are already upstream. No helper, per
  Andrew's and Alexey's preference on v3.

v1..v3 history:
- v1 https://lore.kernel.org/all/20260719034555.3623003-1-gahing@gahingwoo.com/ (YT8531; superseded upstream by 42310a24389c)
- v2 https://lore.kernel.org/all/20260727205602.1188008-1-gahing@gahingwoo.com/ (added YT8521 via a helper)
- v3 https://lore.kernel.org/all/20260728055659.1211459-1-gahing@gahingwoo.com/ (open-coded)

Tested by Gavin Gao on a PicoCOM RK3576 board with a YT8521.
 drivers/net/phy/motorcomm.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/phy/motorcomm.c b/drivers/net/phy/motorcomm.c
index 3396a38..c5a2cda 100644
--- a/drivers/net/phy/motorcomm.c
+++ b/drivers/net/phy/motorcomm.c
@@ -1065,6 +1065,7 @@ static int yt8521_probe(struct phy_device *phydev)
 {
 	struct device *dev = &phydev->mdio.dev;
 	struct yt8521_priv *priv;
+	struct clk *clk;
 	int chip_config;
 	u16 mask, val;
 	u32 freq;
@@ -1076,6 +1077,11 @@ static int yt8521_probe(struct phy_device *phydev)
 
 	phydev->priv = priv;
 
+	clk = devm_clk_get_optional_enabled(dev, NULL);
+	if (IS_ERR(clk))
+		return dev_err_probe(dev, PTR_ERR(clk),
+				     "failed to get and enable PHY clock\n");
+
 	chip_config = ytphy_read_ext_with_lock(phydev, YT8521_CHIP_CONFIG_REG);
 	if (chip_config < 0)
 		return chip_config;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
