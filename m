Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3055C79FB7
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 19:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DBDt1YymevAV3XQX5Nt3wyBF9rSiQZzhFKJ/3xIMZoc=; b=gYEMHKd1n3a/UZ
	nM9VNoltOByVC+gqaDmCAg7+TAAl35FjMAXDb3BFJ1mYRjz3I/oUW5uDSg9ELoX07WPVpPBAGqeqW
	8h86ejOzlPQ0iIqsBweVmfMlSqD2QAies//nEegKAIozOWYtR4PrEcEUlQlw/s54I7zaWLP/3BmiR
	RkRe7GEqlAqj0qarKnaHhAVyzI/cmg7iQ+xf9JaNYcmuF9Th+FxU0cBNNHYG/uyeZS6KtXA/xKs5Z
	t/hwxDg08qkCIOrRCe8+oSK13rMfA7TNpOF/mT0OZ4a5Dg++GDxpc7kNpe7n6WXBLCK7V1MVVpouB
	EDWpFc63sX9f6dHbtiWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4OAy-0000000CkMj-1Yr1;
	Wed, 09 Sep 2026 19:41:44 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4OAv-0000000CkLx-3my0
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Sep 2026 19:41:43 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-48435ae9ca4so693167f8f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Sep 2026 12:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788982900; x=1789587700; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BMV0mMGaUxuAC5co0uH2uhYqExWWNSi7vJ8S06jVFgM=;
        b=rLWA1hkJpoiIP4VQGTLUgICYZZO4VVfpdhnXOouuB4LiJKYxGmRP71ILiuTtRDJp9U
         njT+ptlgPAVJy7CIauaBqPCvfsbFfWbthbKoxKP+ikX6bYp/syRLXlAH2qr8SIVxPpS2
         2R5qLX6P4Elpqng7Ryp2S1hn2ooXzt1gBFcHKuvidPiCKrXURj0JhtfS+RCw7dvtGLvR
         m/BOvVFEZs6tkCeXyLfRLL0pJzhpateE6B0gGV06QMjIHvNSQHKGxK/IAkCr+rU4PSbI
         Mc4b1Dj6BD/ZaA+A2Nz3bCfGK9rHk1XZyfl3LaNkCmlHg0k0Hh8cL4XjeLk0odQBB6mT
         lzaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788982900; x=1789587700;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=BMV0mMGaUxuAC5co0uH2uhYqExWWNSi7vJ8S06jVFgM=;
        b=XpXfNDAlwSb7JIZHdcT6gKeWyb1S87G2IoUaHUIrKIqdFbMT6GEwkv0guFSlaHt0HC
         NELGCmS0cyqDPqy+ft8dLroJpFtqJlN7NtMmo4meFI8tcuSlCJYyi9hzqToKjaF8n90H
         T+5W+FpWveLnTpmaETDZ3/tH7MIerBDkkL2VZA4bJGEPH9rOqRg5F4/u0vVtVYlgOseV
         C/93HFxRFC76LvCTsaZvr/BjQy3EGdLXGnB/BRUAu8N5mYqzA/aj0OuerHUGVVWg+COJ
         KE3GagKa/wj2HJq97D77U1JZbRk6I8es9IfsHwQf831YOoPA8D1ZeVv7+euR5Y/AVvKP
         QQDg==
X-Forwarded-Encrypted: i=1; AKwUvBxEQ7bSLb0kvXPWvXcBRPMu2JqEhe/bPmqjzLl1QKdqhIN8eWWcruPvTwiWhdAY05A+GWN3Xjpdj/vsiy9fBQ==@lists.infradead.org
X-Gm-Message-State: AFuF++mJ7aqDrTivF5b4PYqQMTs7jq7ztUCkD4Nsy+KEaYdGB2TTJlmn
	HNY18BymDKUQlVNXOocgYzLyuUstr11RlxnJ09Hgi8RsHNE7g45zf3OK
X-Gm-Gg: AYBFou3D+yNdqyoQU8dqHQx/8V7r5ve9mQdbT+ttx1oiDh82wBY7deZ+KpmtnFre2iO
	d8pa/KHANTRSoBTX8JxuY0Jopifuy0oQB+ZCMOMvNFaNYGcUs3oxAL4KydWMJXI11lMLHnj5cH2
	7Wxgd2ggk86FEfSqAajzO9AdnDxr8OLXvpp1Rq2n3CJr0O2UE/7o8kDbyjJhasmmuh+YZHvX514
	2+qJU9NClz4aZBAo+ltR6ZY02KoZ4V02YoPVqqJmIW1daH+q/mlWvwwsby9Wg4voQakCUet2osI
	uGCtyOoy2z4ZMsfVb/aq1iHchsoOaYbRM2p+gjzIZPdMHvLmiQCV2iiRMqa+7fKSesx9KGwuN0C
	NplNc24g7tX49Na206UbAJTIuadc+uy11DA//YFA50NdlTcsFjWCuktwCIOcIkxXi94GOnqY+YE
	Hfz00TsSiUUHrYB/svpQOzVgfPGFYymUoHIY60zlCVB04LZ6/mxfH1q5y9044yiZE2F3voyGGFH
	BUOXIGhBloTQIGhJsGbAewMcZQIt/vTE1Y+ujaAoVU0txoVdhipfHIPcargIYp62dUrMFJF3HOS
	siua
X-Received: by 2002:a05:600c:474a:b0:49c:ff81:e062 with SMTP id 5b1f17b1804b1-49d276628c8mr3990025e9.2.1788982899647;
        Wed, 09 Sep 2026 12:41:39 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B836900C06E5685D4591C35.dsl.pool.telekom.hu. [2001:4c4e:1b83:6900:c06e:5685:d459:1c35])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49d20fce7a7sm167161505e9.4.2026.09.09.12.41.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 12:41:38 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 3/3] drm/rockchip: dw_dp: Attach "max bpc" connector property
Date: Wed,  9 Sep 2026 21:40:35 +0200
Message-ID: <20260909194036.8889-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260909173542.14030-4-royalnet026@gmail.com>
References: <20260909173542.14030-4-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_124141_960994_94E5FC94 
X-CRM114-Status: GOOD (  17.74  )
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
Cc: Igor Paunovic <royalnet026@gmail.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Heiko Stuebner <heiko@sntech.de>, intel-gfx@lists.freedesktop.org, Sebastian Reichel <sebastian.reichel@collabora.com>, Maxime Ripard <mripard@kernel.org>, linux-rockchip@lists.infradead.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andy Yan <andy.yan@rock-chips.com>, intel-xe@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The bot is right, and it is worse than it reported. I went and read the
code rather than taking either its word or my own.

drm_bridge_connector_init() has two paths. With an HDMI bridge in the
chain it calls drmm_connector_hdmi_init() (drm_bridge_connector.c:1016);
otherwise drmm_connector_init() (:1027). And drmm_connector_hdmi_init()
already contains, at drm_connector.c:621-631, the exact block this patch
adds - same shape, same comment, because that is where I took it from -
and then calls drm_connector_attach_max_bpc_property() itself at :633.

So on a chain with an HDMI bridge my patch does two wrong things, not
one:

 - it overwrites a connector->state that has just been allocated, which
   is the leak the bot found;

 - it calls drm_connector_attach_max_bpc_property() a second time. That
   one is not a leak: the helper reuses connector->max_bpc_property when
   it already exists, so my 6..10 range is silently discarded and the
   8..max_bpc property created by the HDMI path stays. It does re-attach
   the same property to the object and overwrite state->max_bpc.

On the boards I care about there is no HDMI bridge behind dw-dp, so
neither fires today - but "does not fire on my board" is not a reason to
leave it.

For v3 both blocks get guarded on what is already there:

	if (!connector->state) {
		... create the state ...
	}

	if (!connector->max_bpc_property) {
		ret = drm_connector_attach_max_bpc_property(connector, 6, 10);
		...
	}

That leaves a question I would rather ask than paper over. The state
creation exists only in drmm_connector_hdmi_init(), while
drm_bridge_connector_init() leaves the plain path without a state - so
any bridge driver that wants a connector property at bind time has to
copy that block, as I did. Would it be better to move it into
drm_bridge_connector_init() so both paths get a state, and have drivers
just attach their properties? I am happy to write that instead, but it
touches shared code and I would rather be told than guess.

On the pre-existing [High]: the bot is right that the error path I add
inherits it. dw_dp_bind() takes devm resources on the component device,
including a non-shared devm_request_threaded_irq(), so a failed bind
leaves them held and the retry gets -EBUSY. My dw_dp_unbind() call does
not release devres. With the guards above the new path becomes hard to
reach, but it does not stop being wrong, and I did not introduce it.
I can send a separate patch moving those to the master device if the
maintainers want it - it is a different change from this one.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
