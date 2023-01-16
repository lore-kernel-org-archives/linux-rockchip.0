Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A53BAC54EBE
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 13:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7jL4933edgkuwRorv6jGUfEM/emVN5G5qY8/2l20AAQ=; b=lOyTsK5oiKwa4S
	rkLswCztpsBNbW2LlP9XXob0QRPgI/BJ1uK+zS+GcRAd5aBodTJJ+DWqLMKAE/kmxFVjf7fNIG9XM
	w0KTXfJNYBsVZmmETvOhWcahhIvpnzdBINGGgVbEz/EdRikh1oPvBaMDpfGrdJHafPTbjpHhft+vX
	XmqAcaiY8NGv8KDms43zdvSx7mbVD93y9wbMLcI/U6rRDeMbvCK+caRa4FwKe9DPgr8I3vDV5QyWz
	r2KTgn1Zd8mci4mEJ4vPMI5zzlMCJDbC5tb4dyZeZcBUQPAtYX9Li0mCNYGnlE7F4APZwXO6XAG9y
	oa/K8EWdAoGdxf7O/paw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPdQ-00ATDx-0B; Mon, 16 Jan 2023 13:34:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPIH-00AK2U-I1; Mon, 16 Jan 2023 13:12:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=iMWrrVURFOdZlPDrSQjPvTy4WvSl6jIkUYePEf/jIB0=; b=iGsYM+Vjz86bALXWdRZ5QWK35X
	jYndSZCkbS+nufb+/9MFGWO0gKhgCJMg2ph3qFMuzShsKb4l1P03DpQXxzlT3rTzIBpcL9fB0ithf
	1sDQ6NgwIGJcmbqGSTUcB2jjbvwyrBJF33H5H7Z137CZhd+6vAy7LNmNS+W0hb9T/XtVbciqkFkZC
	P73d2UicB1fFbasepPWgQ+bNO2bKsWsCcDoJeZYD7yzflI+cxRVAid1OQKjnCF9RINpviI9Cf88Ma
	KSL78JOowP4GoAqN0072MHIUvje3cMW3AZKeSMrmL8jnlsWPXKLpe0EpZ3p0oamoytKNT/9jAi1yA
	s3bSp9xw==;
Received: from smtp-out2.suse.de ([195.135.220.29])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pHPI2-005bUU-2S;
	Mon, 16 Jan 2023 13:12:45 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id BCF8A67842;
	Mon, 16 Jan 2023 13:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1673874762; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iMWrrVURFOdZlPDrSQjPvTy4WvSl6jIkUYePEf/jIB0=;
	b=UxVaOrSFyjouFhmAZS5h/SHqg6/IBoomW+s8b5fEhWFAWA1efS1iNCNo9MTfiOdWSRlfH4
	IuwBsCDFgJiJ3QDWRnvZ4uqKadiBVb9NSDFX89/jMiBC7vXyL0fVdOsB1TOWOp7He7ew7Z
	o243vwFfHr16dc7/p++LjWOTeZ/30Mg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1673874762;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iMWrrVURFOdZlPDrSQjPvTy4WvSl6jIkUYePEf/jIB0=;
	b=Vv7gBxVnrO8Kq1tEjCJb2E8h180KuG7452sbf68LEcxGEP4e0TzBeSUTEQiPViQc+qF6gF
	CIhea/utyyyqTxBw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 7F227138FA;
	Mon, 16 Jan 2023 13:12:42 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id aNMZHkpNxWNrNQAAMHmgww
	(envelope-from <tzimmermann@suse.de>); Mon, 16 Jan 2023 13:12:42 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: sam@ravnborg.org,
	daniel@ffwll.ch,
	airlied@gmail.com
Cc: dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org,
	linux-aspeed@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mips@vger.kernel.org,
	nouveau@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH 18/22] drm/sun4i: Remove unnecessary include statements for drm_crtc_helper.h
Date: Mon, 16 Jan 2023 14:12:31 +0100
Message-Id: <20230116131235.18917-19-tzimmermann@suse.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230116131235.18917-1-tzimmermann@suse.de>
References: <20230116131235.18917-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_131243_141607_AD5432AA 
X-CRM114-Status: GOOD (  10.98  )
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

Several source files include drm_crtc_helper.h without needing it or
only to get its transitive include statements; leading to unnecessary
compile-time dependencies.

Directly include required headers and drop drm_crtc_helper.h where
possible.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c b/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c
index 477cb6985b4d..37dc66332bbd 100644
--- a/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c
+++ b/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c
@@ -8,8 +8,8 @@
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_of.h>
+#include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_simple_kms_helper.h>
 
 #include "sun8i_dw_hdmi.h"
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
