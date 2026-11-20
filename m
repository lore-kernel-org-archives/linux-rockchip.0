Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42B4606A6FC
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 19:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jcTyiTvM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=google.com header.i=@google.com header.a=rsa-sha256 header.s=20260707 header.b=bucLORRw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:From:Subject:Message-ID:
	Mime-Version:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Unsubscribe-Post:List-Owner;
	bh=NANw2SXLcDspGn+au84y6FTUINLQtEiCO0+kbLcHCE4=; b=jcTyiTvMy7O+3DOTjS6wVHjt6M
	iFZEgMGt5JpmjYMq78mQnvgfRziLz4myulSMMA2zphb4Ohte6NM09XAjfOROL97v/ioD0g7/SB3lj
	/FbNkbTWFzvGQTmVd6V9A86ZM7NB9HkdqLK1kiZV7SE1K68skXmeGywT+xFSAMSKwRHWF4YYU/+Kq
	qsLv5H/7lYNU8iD2+1QOOjhFpzacoPR6TgMcthHSD7Udu8x9ui3SfvpwHZ63sMAYxTukV0KrP/WuD
	iCB4KwssIpjd+McT67sKZdNsGbw0AknnTsLHyEj+gs8W+1pa9FVLdkkE+9rr2Yo+DnaGSqclGt+aP
	/d+PWu5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUUA2-0000000G3gl-0WPX;
	Fri, 20 Nov 2026 19:20:38 +0000
Received: from mail-dl1-x1245.google.com ([2607:f8b0:4864:20::1245])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUU9w-0000000G3fz-3WF7
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 19:20:36 +0000
Received: by mail-dl1-x1245.google.com with SMTP id a92af1059eb24-154e9d2d94fso2819059c88.0
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 11:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20260707; t=1795202431; x=1795807231; darn=lists.infradead.org;
        h=content-type:cc:to:from:subject:message-id:mime-version:date:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=KO/bgS9573WdL9OckehiaeYLsdBAM3AUhNlncBXYYkQ=;
        b=bucLORRwVngoiWSmXwz2R//KF3Vi//78K3GUD+TAvjDPg5ojU1JaEWF3JT+kWBxSbu
         jWhjG3hktgk4b6r9tbXS1F0IrTxZnv97a0VybqjWvN2c9w4xItNJ1kUAHkSnEIMNbh3k
         SvXg4XPfctLYLQuY93hF1tWFiM+Dd6mShe+3lsJkNlW9mlfku/mZZaxkrLeJr6O1voh1
         aia8iR9RW6pBJJdTaC6GLUGmvIoirsfCQAdQu99FS9DIHY7ScWMiB0fa/i8PPt4D3cxd
         urJMpqb/qX9heq7N/2sFVdsCGrhjWHoTJv+JsmT2acouDWPKvOqZKmxGdIYX3mbpGcoY
         tTAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795202431; x=1795807231;
        h=content-type:cc:to:from:subject:message-id:mime-version:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KO/bgS9573WdL9OckehiaeYLsdBAM3AUhNlncBXYYkQ=;
        b=LBnznI1qc1W1e3t6zwjhzRhy6yq91p22NqLHwe8Hv3a8Dhtz/+womHNO4bPw/kNdXG
         Cs3PyjOknVYapQzHgine+pzB6gpMpT8VWT0vFa0KVko7kV17BAZenZ8/CNzbGGcaqr85
         4szelPubYBY9c+tCojf6v7qxs6vW5CE1rG9HDPYU+lf5AMISo4ppA2vlmFTiobWZhIF7
         roSAR7tMqZhB8Phfi3Z/M7qnD6+wR6i9QmdLOQA9FaY49HQyJL43iCuECJHjAaCXPDFr
         tegdmWD2uznCpHpl4/pycviz0Db7u/wfD5acULPtglZpoCNWo3c7KCOkbzOFjXkgo9Em
         vJ/Q==
X-Forwarded-Encrypted: i=1; AL+hErG61RAQfY4uN99YvxDmHdnd7Qie5kQOEs/AYdvNiA+aSpqZ/Km4Y4xOtdDfUIg1SfPI50NrNlDJn0gYOH9bsw==@lists.infradead.org
X-Gm-Message-State: APuU4Z/r+ohXAPP94SrgXUr0cLGEToKh6GGGOO4E6btTLczjp5zlpG25
	VhUo92+mMg5kCLChIezN3e5nAuN3NbNwehRJ8FTetqf/GM5L0KJoV3joVImE0mfgelFERg7oJiJ
	tjA==
X-Received: from dlbvv25.prod.google.com ([2002:a05:7022:5f19:b0:1a4:c892:b166])
 (user=elkin job=prod-delivery.src-stubby-dispatcher) by 2002:a05:7023:907:b0:193:9aa3:474c
 with SMTP id a92af1059eb24-1b5568a9271mr3806499c88.21.1795202429856; Fri, 20
 Nov 2026 11:20:29 -0800 (PST)
Date: Fri, 20 Nov 2026 19:18:31 +0000
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.56.1.750.gf70dc682cf-goog
Message-ID: <20261120191831.2865901-1-elkin@google.com>
Subject: [PATCH] drm/rockchip: dw_hdmi: check IS_ERR() on drm_atomic_get_bridge_state()
From: Elkin Cruz <elkin@google.com>
To: Sandy Huang <hjc@rock-chips.com>, "=?UTF-8?q?Heiko=20St=C3=BCbner?=" <heiko@sntech.de>, Andy Yan <andyshrk@163.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: Chaoyi Chen <chaoyi.chen@rock-chips.com>, Damon Ding <damon.ding@rock-chips.com>, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	llvm@lists.linux.dev, irogers@google.com, Elkin Cruz <elkin@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_112032_878029_07ABA328 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -9.5 (---------)
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
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

drm_atomic_get_bridge_state() returns an ERR_PTR() on failure rather
than NULL. dw_hdmi_rockchip_get_bus_format() checks !bridge_state and
then dereferences bridge_state->input_bus_cfg.format, which faults if an
error pointer is returned.

Use IS_ERR(bridge_state) instead of !bridge_state.

Fixes: dc70272cc184 ("drm/rockchip: dw_hdmi: Propagate bus format to display driver")
Signed-off-by: Elkin Cruz <elkin@google.com>
---
I am trying out a new Clang static analysis linter for ERR_PTR/NULL
handling, and it flagged this code as possibly buggy. The findings were triaged
and fixed with an AI coding assistant, then checked against linux-next (not
runtime-tested on hardware).

Thanks,
Elkin

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index b6e154c35e7c..30191927593b 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -286,7 +286,7 @@ static u32 dw_hdmi_rockchip_get_bus_format(struct drm_encoder *encoder,
 		return 0;
 
 	bridge_state = drm_atomic_get_bridge_state(conn_state->state, bridge);
-	if (!bridge_state)
+	if (IS_ERR(bridge_state))
 		return 0;
 
 	if (bridge_state->input_bus_cfg.format != MEDIA_BUS_FMT_FIXED)
-- 
2.56.1.750.gf70dc682cf-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
