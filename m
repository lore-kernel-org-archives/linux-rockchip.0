Return-Path: <SRS0=5mPC=KV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E65C2B9F7
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 09:12:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 18CFB61248
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 09:12:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 18CFB61248
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=aosc.io
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YdpB5D3uhCS6RsiLOHGZSEru93YHwRPxEwIlUrvUyT0=; b=VQE6JAscJU4wr4
	I5xDiwDCYGKSHQa2fnGEPg4UU8d7G4HF14Po/CGvjIznVrKHeaz/H77hymCVk2meVfE+CJ85PngTL
	zTptF+ow6Evk+SuHvuqlfgIObfrRF0I/i3T5JarG+MnOpq4y0AfzrSfU14IpfL91Nw7VUWSG4Qs4c
	SJoxUwm7TArASq3UTFmdmT1rMBYXBEaDhXLGOsJul8zIFH95ECVIk27+Jj+w8TC6HyeGVa+izOD6v
	RDoKvxpdL87H48uJgGw1P1PtwmuE3WlfC9mIiIUf+DURcl3KNwdibXdWJ4oA705br9ggIbRY5Q1s4
	2MqKYRSGFdLsbfRxoPbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llpa6-00ClcQ-84; Wed, 26 May 2021 09:12:02 +0000
Received: from relay1.mymailcheap.com ([144.217.248.102])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llpKV-00Cevi-It; Wed, 26 May 2021 08:55:58 +0000
Received: from filter2.mymailcheap.com (filter2.mymailcheap.com
 [91.134.140.82])
 by relay1.mymailcheap.com (Postfix) with ESMTPS id 504BC3F201;
 Wed, 26 May 2021 08:55:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by filter2.mymailcheap.com (Postfix) with ESMTP id 9958E2A4EA;
 Wed, 26 May 2021 10:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mymailcheap.com;
 s=default; t=1622019347;
 bh=HzXnVDL+eq6faYvFYt2GOI6RK0yzFGyo9W7BPLfmG0g=;
 h=From:To:Cc:Subject:Date:From;
 b=fSuwiphzZlhL1cMD5Cj3QYTOu+Yvl5iNwj/bSNc3ThmDxCWLv62bw81XxLhAZNrQK
 s8jMaRuCv6nYAZw4ZyQ0WEUeluvKlgubslfXS918875kZZuOeKQ6TML3EnlZwzr4B/
 FCInPSiGnguE4uF0hmrqqNiLwn6D/3Vpj2969UE0=
X-Virus-Scanned: Debian amavisd-new at filter2.mymailcheap.com
Received: from filter2.mymailcheap.com ([127.0.0.1])
 by localhost (filter2.mymailcheap.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RewCjoZoBAsj; Wed, 26 May 2021 10:55:46 +0200 (CEST)
Received: from mail20.mymailcheap.com (mail20.mymailcheap.com [51.83.111.147])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by filter2.mymailcheap.com (Postfix) with ESMTPS;
 Wed, 26 May 2021 10:55:46 +0200 (CEST)
Received: from [213.133.102.83] (ml.mymailcheap.com [213.133.102.83])
 by mail20.mymailcheap.com (Postfix) with ESMTP id 7DFA440C3F;
 Wed, 26 May 2021 08:55:45 +0000 (UTC)
Authentication-Results: mail20.mymailcheap.com; dkim=pass (1024-bit key;
 unprotected) header.d=aosc.io header.i=@aosc.io header.b="P7m6Mg4D"; 
 dkim-atps=neutral
AI-Spam-Status: Not processed
Received: from ice-e5v2.lan (unknown [59.41.160.199])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by mail20.mymailcheap.com (Postfix) with ESMTPSA id 2A7E040C3F;
 Wed, 26 May 2021 08:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=aosc.io; s=default;
 t=1622019339; bh=HzXnVDL+eq6faYvFYt2GOI6RK0yzFGyo9W7BPLfmG0g=;
 h=From:To:Cc:Subject:Date:From;
 b=P7m6Mg4DoJv6hY9eNTU3V3cdRyogc9THL/qL9khspBOJmjtaUD+evzBn0U1iS0o+Q
 xFb8XN/UFmUH4keCbl5S3afkCOLOjOdtwO1VJHXqrOVrQ1Hzp6mXiZE7Q9CILW0JVr
 uTfMzx7mejTrAACEYw/XP3N2Rvaq6C7zV7tKX5cY=
From: Icenowy Zheng <icenowy@aosc.io>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Icenowy Zheng <icenowy@aosc.io>
Subject: [PATCH] drm/rockchip: kick firmware-based framebuffer when
 initializing
Date: Wed, 26 May 2021 16:55:27 +0800
Message-Id: <20210526085527.155840-1-icenowy@aosc.io>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Spamd-Result: default: False [4.90 / 20.00]; RCVD_VIA_SMTP_AUTH(0.00)[];
 ARC_NA(0.00)[]; R_DKIM_ALLOW(0.00)[aosc.io:s=default];
 RECEIVED_SPAMHAUS_PBL(0.00)[59.41.160.199:received];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 R_MISSING_CHARSET(2.50)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 MIME_GOOD(-0.10)[text/plain]; DMARC_NA(0.00)[aosc.io];
 BROKEN_CONTENT_TYPE(1.50)[]; R_SPF_SOFTFAIL(0.00)[~all];
 ML_SERVERS(-3.10)[213.133.102.83]; DKIM_TRACE(0.00)[aosc.io:+];
 RCPT_COUNT_SEVEN(0.00)[9]; MID_CONTAINS_FROM(1.00)[];
 RCVD_NO_TLS_LAST(0.10)[]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:24940, ipnet:213.133.96.0/19, country:DE];
 RCVD_COUNT_TWO(0.00)[2];
 HFILTER_HELO_BAREIP(3.00)[213.133.102.83,1]
X-Rspamd-Queue-Id: 7DFA440C3F
X-Rspamd-Server: mail20.mymailcheap.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_015556_013767_A6FEC48C 
X-CRM114-Status: GOOD (  12.75  )
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

Since U-Boot now supports EFI and FB passing via EFI GOP, when booting
rockchip SoCs via EFI, a EFI FB is available. However, currently when
re-initializing display pipeline, the EFI FB is not removed, lead to
fbcon not working (because the EFI FB is no longer bound to the display
pipeline although it's still /dev/fb0 and fbcon is bound to it).

Add some code for removing firmware-based FB when initializing KMS of
rockchipdrm.

Tested on Pinebook Pro (RK3399) with U-Boot patchset for initializing
eDP display applied.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index 212bd87c0c4a..3905fce6ce0b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -158,6 +158,9 @@ static int rockchip_drm_bind(struct device *dev)
 	 */
 	drm_dev->irq_enabled = true;
 
+	/* Remove early framebuffers (ie. efifb) */
+	drm_fb_helper_remove_conflicting_framebuffers(NULL, "rockchipdrmfb", false);
+
 	ret = rockchip_drm_fbdev_init(drm_dev);
 	if (ret)
 		goto err_unbind_all;
-- 
2.30.2

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
