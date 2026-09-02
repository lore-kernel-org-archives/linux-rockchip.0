Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 583CEC624D4
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2026 16:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsVLXwpF7Hf/aY2u7OQdjdKKzzyDlf19lN8Qt+PsRH8=; b=rxED/o1zfXcMVU
	peIw9uxUSBom1FZEiMQ+u3EqCYZ4lCM6OvaCPsRYJ0vVRRDN8VI0SWjkSFdrHBRgnwGbxV/9r818i
	gGFdMbeCGEttfSSaV54tTANAEHJ7Se0gDCJ6w6dHocsqaaLRJkqSNezqPAAtN3hHotlr+uYRVbvx5
	oEBn24/TE/3FOhB9tw0ecHHjbi5/kUQPXz+qX2mM5p4S3FeUYRfhzS9k7kwL0AzAP7S7dwfcHwsP8
	PHJOg4C6EtTQJZxpeQ89g/xyGYB2f/b/vyp6McidxKE8cAyBugdsYeedBQGHO2/La9Dk4OP8z6kxk
	k8SJrQkZUGQL6W6zoUOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1nc7-0000000FB0K-22Vy;
	Wed, 02 Sep 2026 16:15:03 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1nc5-0000000FAzT-3VcP
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Sep 2026 16:15:02 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4994d41ceb9so967895e9.2
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Sep 2026 09:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788365700; x=1788970500; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nVJl7440PF78QFaSaeh/sCgR4xwST1VQbAj1ICZardU=;
        b=TmNzORpftSAIpdHMv1ZHN8xj9PBxrAj72gt+rQUyugsieMD1lgEBrQiBs/pxbODp7A
         F5K/Y8rkZPakZ+5+q3Y2UMQhqx65g3wQ5ldcVyP3NddY/1fSy8wUBUPvTUyzje4wmJZn
         p1UiJ9pMP8tXLS7Lx+vMIO1ft3ohnQRHD0M9cAm9EqKAqIeRGK/TuAkUkOE3Is1i0vGu
         vH1JR1S2esaRWCSMd/w2epKSMokdLYGgWJl0n2l0mNDGkC9kJaEmg3ZUdz5VVR1Pr5Ya
         PXucobkzzy5F6q78IEMfKCFsZq/Z8hANkvIAFNY9JNS8xelTQF3pl/qfBGGjKhmsR254
         TF8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788365700; x=1788970500;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=nVJl7440PF78QFaSaeh/sCgR4xwST1VQbAj1ICZardU=;
        b=QYS3T6LUObo4qqIfbK3xQVC4LfaHC/YJNxvgEFmQuLMZ0SpDUYpYHTIzI9Za4xXQAJ
         mVh/xCxqUHAcpYFMvo0/Ygli2EERYK/SafF+b/gLfDgRxlBDgm5PwXqRSDTZfEXAAhk/
         XXfWOZq09TVOEHzjuhSLUZRsxXW0blOMYUZcamIaHCLs/4sxVnqncA7g/64N3rvnaVbY
         1U8MZwdocQdKwUzHJM6AI+C7mSfS9DoXWvlgNzzlUvh7WBEfVw/qDDcOp3ABJ8MBxIJi
         KPl8I24WepzGFx7IX/9fo9R4Bw9cZKrc46pLU81RtiHRX/F1nCRw29hDZC7voKSSCxhx
         QVKA==
X-Forwarded-Encrypted: i=1; AHgh+RpMmoVhb+DDETZTIfuj82Y5TQOE769b2QKskhLWL4Les2D5YEAs9swY5bubQVhaJe277W1zTrCG15gXXWsULQ==@lists.infradead.org
X-Gm-Message-State: AFuF++lGZbq4wEf3oRyhK2pteGL3tZuek9OIKVeh9pyQw3pJT6zlbNip
	GxHvngsCnp8mFvePIOgiLc/z0q2A7mhFhYs/1whWyIwsfpnxz5kjKq8u
X-Gm-Gg: AR+sD13AnnCrOy7hzfiP3WOG8cx8/kpOcsTc/iZx9G/ED7qp5DYKB8l4o5xRbTjneke
	IK6p3wGIVrCSrvWqiPDMU/eEXVMgQNRv+cnGKIiIDB+sVTdN0Vhq/hns8RsQ7Qgjp5SCkjt1UFA
	pmRMh7hRbOoUYD2KApCFTyQdoNKWIPzMSXjgfQtUB3CbgimZZv7B8d5J8g9rq5cLg4H3HDbdMyg
	R790fUH0BqsZ4MtkF1zI8KUqo0UmaCA+c0AsV29PI2C7skDcXkhdr0fN0D97JuVIqwur/lfo4uI
	5Hw1WIkKbhJ9gBZmPiBT4qyDM/jN7cxIuBK6cSgP1AX57UiFRlndspApLP88DpEq7sJsIYcIfwS
	seeY02sSj3txeRuYkOLOdXzlIiUENGtzCj/hMAjOjZFjeRQXukIE+6T/UFu+k+YD4IQOHoyikIg
	U8Ba4WR2kc9pDdjiG8SN7nbJS+8LFUYlqKnhxCnoMH3hhz0sJZl1ijp+C2ZbrQByIWa1/iSRtvN
	Mih7cJyQPyWwjiESCaiUj5bXJ8/S2OUosHeGNyqTtIYsH3VLUH/hDUaWfSnuuluibTKEfoqwQRv
	cn+d
X-Received: by 2002:a05:600c:83c4:b0:49c:e363:c66e with SMTP id 5b1f17b1804b1-49ce580365emr50281685e9.1.1788365699791;
        Wed, 02 Sep 2026 09:14:59 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B923800D872728A926FD7C1.dsl.pool.telekom.hu. [2001:4c4e:1b92:3800:d872:728a:926f:d7c1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cee6024a8sm1878395e9.6.2026.09.02.09.14.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2026 09:14:59 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Simon Wright <simon@symple.nz>
Subject: Re: [PATCH v3] drm/bridge: dw-hdmi-qp: use drm_hdmi_acr_get_n_cts() helper for audio N/CTS
Date: Wed,  2 Sep 2026 18:14:35 +0200
Message-ID: <20260902161439.5276-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <86fcf349-0a7a-4618-9001-612371b0f71b@symple.nz>
References: <86fcf349-0a7a-4618-9001-612371b0f71b@symple.nz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_091501_894360_9B1944FB 
X-CRM114-Status: GOOD (  11.06  )
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
Cc: Algea Cao <algea.cao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Robert Foss <rfoss@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Igor Paunovic <royalnet026@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, Christian Hewitt <christianshewitt@gmail.com>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Simon,

First RK3588 report for this patch, with register-level before and
after, both HDMI controllers driven at once:

Tested-by: Igor Paunovic <royalnet026@gmail.com> # RK3588 Orange Pi 5 Plus, both HDMI controllers

Base: drm-misc-next 47b823940e38 with the HDMI 2.0 scrambling
series v11 on top. The patch needs one trivial context resolution
there (v11 still carries the open-coded tables next to its new
scrambling defines); the result is your intent verbatim, -206/+3.

Before (table code): at TMDS 297 MHz / 48 kHz the controller ran
with AUDPKT_ACR_CONTROL1 = 0, CTS_OVR_EN clear - the auto-CTS
fallback your commit message describes. Audio still played here
because both my sinks are permissive.

After (this patch), read back from AUDPKT_ACR_CONTROL0/1 while
audio was playing:

  TMDS      sink                     N     CTS      spec CTS
  297 MHz   Sony (300 MHz max)     5120   247500    247500
  594 MHz   Samsung (HF-VSDB 2.0)  6144   594000    594000

Both values land exactly on the HDMI spec numbers, CTS_OVR_EN set,
and audio is audible on both sinks simultaneously. The 594 MHz row
runs on a scrambled HDMI 2.0 link (4K60 RGB), which I believe no
one had exercised with this patch yet. Note N at 594 MHz changes
from the old table's 10240 to the helper's spec value 6144 - no
audible difference on my sinks.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
