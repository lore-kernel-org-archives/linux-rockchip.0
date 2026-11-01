Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D56606A324
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 05:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bxlk+xgd;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gahingwoo.com header.i=@gahingwoo.com header.a=rsa-sha256 header.s=fm1 header.b=MQ2aHMfC;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=TLUGFNwF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=UfyidOvVvXWgzE9Jg9Q7h3ga0cjPfCQ9okqDpm8z65g=; b=bxlk+xgds72x/00z7tI+64p1ze
	LW2lZugwLcs4k9+4w7ny0tFAeIOVV0dbnj5q5W+l68Lfed+5juiD0OVoX5qV6DLqwtvofzWrE3kOf
	o72lshh7RfrAcQe+YckPkm1zt080M4kbG4S+aV3HXKqf6M0GJiKeNziJOX5MdZRZl0UZ85XjA46iL
	GvZywzuobYbSpjIlDNPRaDkxZcu1ExLGI57qbmVTyuSR4lH1eIqHj9ambQ14HQTDGl2TV1PJTJtJb
	xuu+J+pCrDqz0ZcVRM3clowgaJTlCpRX6eFvGTuB1t2ahi9Rvxzl5DESzZCfYiDEd59GaH9cevkYE
	yip/hbjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNOYi-0000000DuUX-0LXX;
	Sun, 01 Nov 2026 05:56:48 +0000
Received: from fout-b5-smtp.messagingengine.com ([202.12.124.148])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNOYf-0000000DuTq-1m0t
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Nov 2026 05:56:47 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfout.stl.internal (Postfix) with ESMTP id ACD6F1D00133
	for <linux-rockchip@lists.infradead.org>; Sun,  1 Nov 2026 01:56:41 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Sun, 01 Nov 2026 01:56:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm1; t=1793512600; x=1793599000; bh=b/wjclTecc
	aXTJ9heCui57ECu6xJrxVYVlW2sWmjb3c=; b=MQ2aHMfCEwxas7k3JCLXvYw0yH
	xJ2TmIH8veRukwpYn+wJ1Jc2YZGiKmV/xD4FshhssVS3E5HPesLjQ0laUsE2+OUf
	RwPhtm1bz20rKs7KgxdBVapZ4cSsOmmv4X9S10x0Qs0ud/lsVyshMxXUJmNTZiKz
	RrXo7Nhew3n7Ct6wR9iH+Xt/HYm5yFIAEOu5G4L0OhyHusRdFShGGg4id3nmcBY0
	0U1fsbCH23tavv6E8Hd7wEqHSENKZTNgf0M9tbE5GkAwHlPH9Sx3dQqBN2IeKqOq
	aeJk7CTEk1K1TtAjFFUBHYtsIcETNaRXLdsEXa1KCc8+NfpisaojZGXeJwuQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1793512600; x=1793599000; bh=b/wjclTeccaXTJ9heCui57ECu6xJrxVYVlW
	2sWmjb3c=; b=TLUGFNwFEIwcZNefC4YTawNs/qmNEV9OhMtomdL18tTkBsO1gEz
	ZgIdU5ZYdbVjqTYZS9cbyyvkVz7ScdOsuQOjb8hDWrKYRY7gp6c0NvkMaOZAbVcF
	w7FH+A8Ue2r3Cur2jpmg0bP2xQVGI7CJQp2QKi/QYjKn3vg4ORSlryN2n8exKbCM
	3T9ryn2VwLIGIQFiEKH8tsaGXJO1DxMjkAiOLBmEE0wsqk53dqIT/QK464uSA2gJ
	+Fj6LwY+AHUYCZZg8JyY++60guXMGebMBKeNEMnc2QU7te1lGuAdM/7ryEBR3aX/
	Oljxlu0TLqVKkp2eWHXmiFG6KoG5blpVXlw==
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-08;
	repo=github.com/dkim2wg/interop; date=2026-10-28; sw=lmtpprox;
	action=sign d=gahingwoo.com a=rsa-sha256;
DKIM2-Signature: i=1; m=1; t=1793512600; d=gahingwoo.com;
	mf=PGdhaGluZ0BnYWhpbmd3b28uY29tPg==;
	rt=PGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc+;
	s=fm1:rsa-sha256:egiLSgMZlBRa7hul/vbMTXE4zHaI4DA9vaMoQvr+ZKsCC14
	SiNUJeVIGI2qWYlh+jtlKjKEDZ46yefHg+pIwHi88kNQ1/uvMNm32mSxjr+U0TG3
	Xq1bwcCdoo+UDyGtKKpFoZXvmszwSYzX9Iu2ZQkHpjrBhZ7KF2WpEj49vVf5ZBPN
	1gve15xVJxkCLgCXEmYlcN5AyqW7oJLmXTUY2D9mFCv5Tov1X8ugwiRIoseUkdWm
	7plC+/LNcN8QYcj05uXg5KGnTVEcqTOQMcIs9XowNF3r+xWaPgAw+G9YmXMJfQhC
	USvioE0oUnMfWjxa0INRQvDLxWEBY0T5ufEsWFw==;
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-08;
	repo=github.com/dkim2wg/interop; date=2026-10-28; sw=lmtpprox;
	action=mi-m=1; hc=9;
	hn=cc,content-transfer-encoding,date,feedback-id,from,
	message-id,mime-version,subject,to;
Message-Instance: m=1; h=sha256:RHkRorNz+a6AbjqnZ1BP49dnoJJCQvGyDUHV2H6LKMY=:F8p+aC33XU5PH3FjvO5qqx6/EycA5JwfiutE8tsgw+M=;
X-ME-Sender: <xms:l9TmagZUGOzFH_ZQxixo0Asoq_hVwQrk7s0TbA9IldCx1ufuM-qiNA>
    <xme:l9TmanOVksgsfHmwrbEcfEzNmY9w-2JpXo6cvshMNVQbK3kwwoui6TmTJfYSfd6nN
    HcbJ2CAa8ieT-0XB5fyNKzcucKG7xe5RchCvu1qLrUK1V5fXSXUGBHA>
X-ME-Received: <xmr:l9TmamUtBGEkZ_WqutseppmSEvENbHtq9M90mjwfZ6lm08mBB8mEJDE3HzEC0eUIXzeNwxkj>
X-ME-Proxy-Cause: dmFkZTFEd/d+c0+FBHyE9uEcy8IJSWfq69VkA1tRQSsKL6w0ZoA4mx6vMr4loSCw0Z38m2
    L2uMzipuy89SDtFSXpTnH63dgpY2bq4Z6PKE38wz6SYFmHhAIzTFA6XEIFLhJzZUmtr0X2
    ovaQ+hwNpMcVt+n/qrdlbCpWwp5cltashXQbVP3JBV/2Pbyh6kNiudG8dvGlQ224rthbbr
    cU7rSmHkaAzZ2y5tRoBgilrVkJAEqt30KarEY7WUSSsJc9sRnlBhzcO/ZLkwHpZtPSuAaK
    6VChvQEJaeAgvZpolKqV9L1etPoW9O79d0ZqsAScBkE+pjfhJkfwx6Dlh5HscL91Pmp7Pk
    sq2zbN/JRf8ZzURBBT3KsFMYFHeGsCLglYn+nQnBDi03HsxySzYWVvj+xphAJscmcR3oMp
    XJmYE7uMPrnf9Y9RGsUAJciPqlOrh9n4mTFtb4Nvszb+4Tb8MaBeqJzCtndXoqhyYgquxp
    ROKpmIjPTRmx6Jnh/6RvwHuejtPL5OWfD6eG0deq/AWMXXtzYvjJi+Mdm3udGq73d96Yk/
    kEu2gGiFU9XoqMtzkY5OJuY10SyjXsLFdbhroWfu/+HyqHdO/nB7NMrptJsV58+RyXjlQm
    BIZJvgTG/O+TPdJANEtqIEA7wipzIX8/Ly5LORdv7761HTzISmV2lnOC+F2A
X-ME-Proxy: <xmx:l9TmakJPWrHaiHPcOmiqDMp0yoU402NHRvSaB7_NDL7aQKwSHE6V3A>
    <xmx:l9TmapqhCzo6jS1cAO4Z0dfS9t17IPSbtXwycBjAuDxkGBUCW9UltQ>
    <xmx:l9Tmajz8GtsueCo6CjaDuWN6dS5w36R4chVZz-awB5OCFgFaLdttMQ>
    <xmx:l9TmaltbBOIk6Vmf8FEJ48Bqpr58UNEWX3rYy_BOztbQ8q_CwjxJ_Q>
    <xmx:mNTmapIDcqwIpRDCMAY2GXNtKfcSn-YMtonnqndfAg9EOnFD5rapTGf1>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 1 Nov 2026 01:56:36 -0400 (EDT)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: ulfh@kernel.org,
	heiko@sntech.de
Cc: sebastian.reichel@collabora.com,
	shawn.lin@rock-chips.com,
	finley.xiao@rock-chips.com,
	zhangqing@rock-chips.com,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jiaxing Hu <gahing@gahingwoo.com>
Subject: [PATCH] pmdomain: rockchip: do not restore QoS that was never saved
Date: Sun,  1 Nov 2026 18:56:33 +1300
Message-ID: <20261101055633.101309-1-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_225645_496083_B00D4FE3 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

rockchip_pmu_restore_qos() writes back what rockchip_pmu_save_qos() read
on the last power-off. A domain that was off when it was registered has
not been powered off by the driver yet, so on its first power-on the
restore writes the zeroed save array over the QoS reset values.

On RK3576 this is the GPU on every boot. Read back after the restore, its
QoS is all zeros; with this patch it keeps the values it powers up with,
priority 0x101, mode 3, bandwidth 0x80 and saturation 8.

Only restore after a save. Rockchip's own driver does the same with an
is_qos_saved flag.

Fixes: 074c6a422d86 ("soc: rockchip: power-domain: support qos save and restore")
Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
---
 drivers/pmdomain/rockchip/pm-domains.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index db3879846db6..d1c025bdaa08 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -97,6 +97,7 @@ struct rockchip_pm_domain {
 	int num_qos;
 	struct regmap **qos_regmap;
 	u32 *qos_save_regs[MAX_QOS_REGS_NUM];
+	bool qos_saved;
 	int num_clks;
 	struct clk_bulk_data *clks;
 	struct device_node *node;
@@ -474,6 +475,7 @@ static int rockchip_pmu_save_qos(struct rockchip_pm_domain *pd)
 			    QOS_EXTCONTROL,
 			    &pd->qos_save_regs[4][i]);
 	}
+	pd->qos_saved = true;
 	return 0;
 }
 
@@ -481,6 +483,14 @@ static int rockchip_pmu_restore_qos(struct rockchip_pm_domain *pd)
 {
 	int i;
 
+	/*
+	 * A domain that was off when it was registered has nothing saved yet,
+	 * and writing the zeroed array would replace the reset values the QoS
+	 * registers came up with.
+	 */
+	if (!pd->qos_saved)
+		return 0;
+
 	for (i = 0; i < pd->num_qos; i++) {
 		regmap_write(pd->qos_regmap[i],
 			     QOS_PRIORITY,

base-commit: 7649ba73f9e7e1e04d0b46213e39c79ae09dd55c
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
