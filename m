Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3C51C79FB6
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 16:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S4VlQkW62MQEnmprGryEy3IkdLto9RdgdYzrnCbN4JY=; b=kfCPF3EL/HwOmp
	PCo+Eny1frBonht2+y+dJBs94v9r7hqIds15rPxy9xKPIVoNVgSOBPNLMdiFHGFaQOgDoGmkwS8Jy
	FaeEbEVIhahM9k7FbXH9nOb1Z5pWduhJC6QrpwdgBYO8jp2ZV+qQbJgOZ03J2cR5KHw+dS2wS/EX3
	n9q4dM35R0coY+/+9vI81RglJ9r7hX0e1/Tqa6JG2a8r35V6PR+wXQqWZqdnT2mORlnoLBnc9hU3c
	wMpTuaBGa/5E05kczBOnEhm9PQOJRJf2AC8NgmAtUXzMKa+unPolHgiiXEHWfXcGgmpQ7t3Ujg/jX
	CAbeSwemxFuQye3MdlYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4LDu-0000000CKP2-0VEC;
	Wed, 09 Sep 2026 16:32:34 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4LDr-0000000CKMv-1Huy
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Sep 2026 16:32:32 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-4843af75de5so612503f8f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Sep 2026 09:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788971549; x=1789576349; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=yG+S01jgDNF6gG2aUjEkOKkHDiymuefIawG26yDnYyI=;
        b=J0EAgTxeJUVolvsmjPKDrkCjqokcn63gyT/i2NJrofeMUDsneT4rsEqONhYRuMQYwE
         VxmKx6URM13XOInMWUBVqDlMyHrfZte+6zwqzRk/IvzQPCFYDFDz6M3dpvN8S9ZAa9jz
         cJbSb8+cpXrcJ/MbsNknbDYwqE+JLs6MmfwVEO1FBTSLt0sfxO4UIBWYBFoxuGHAdJGr
         a94oflf8a4BoDAUMpDeY2AWoZ/AlruTVUlsR6iZXKhPvENk2pPPXRmsklV2opdREULIB
         QGsg/++rpu12K5t7fl1Uzj8ddaQS7U0DpAdLpTENwHEWSlZ5cHEjc5wIcUVDCa0eyfF+
         fO7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788971549; x=1789576349;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yG+S01jgDNF6gG2aUjEkOKkHDiymuefIawG26yDnYyI=;
        b=pz4YI5c6Vb4uqYi5ZF++cMuWvKmsEgMguxChnxH0WH/yL40dURwRrvju/aFplOnQyG
         TVzyGL//lTi4ewO2eraZEwIqdkpXaYTpAAq0Dt7F7OlQUQgL0Z6oCTKrThzGJjtn58pK
         CskvSACyZD3F9hhP6MxLJk3ji3HfypA1MpOsrlNTxsh0wCIo3EbgGd822gIFFRYnC8LC
         1opjGuB+BDg/2N6Kx9scmn2+li0CZ0y6rFb7rckebAIlukun43PJ6YGwuoCYX3jLa8tc
         IsPIFxT6FfPvY8tynY//9TXpRzlZFYsKLCn3JFZ2xVCNJZhgQf+15I6fuFiyH1ZqQLyl
         rEeQ==
X-Forwarded-Encrypted: i=1; AKwUvBxuaNEHy/9XZ/BAHl9qGileUMLujkEN7U6bZs8MzTJBZAP405i2tf169o6XsiPmRACVTSvWK19mSagiA+xzzA==@lists.infradead.org
X-Gm-Message-State: AFuF++m+T/P1H1vAaiqcPZFwyNm1FwVqEb62Wuwye9Cs3pI1sDhrJIKo
	lABfwoL/2Jmff2GFrb0UgUTcwyZJ36xw0GUk5wn31h1xcWIAzh3N5Gf4
X-Gm-Gg: AYBFou0XujYH7luO4PmMfdxjrFRU+Yok1l27dCt7LQX53xqqbPlRRK1A5nthvA/+L/M
	QFu0iq9EBqX3UzcxCgB7Z4NLbY1dwp07YpIVSts7tQFpMBw5YykkflxjWLipL99qxkgZgCCIr5D
	L2acLbps73vG1iYQLaBsFR9ZhlPGHaLjWEYgYuBumUkRxskNN1GV7+jePYb7yW6Dre3jbx/EO/Q
	6WhOAfFxy97/uz9I0Dtg04648M+Rs3Y5rkvBiilAzdGR191aV3EBu7FlKhVsxxLxWEkkz31Vo3S
	W27Ku76HWB8F1mxI8WUulQXS+ik+MMJerri5xtcX6Hokgg/UeVQQgT7hU3tGPzdFHIlVqoRj2ct
	+g6MjUC+YvegaBp+mWfCGQw5iUgitUeNoyB2OsiV+nD9u0vmS+rH7PXKaIdAZovEewwS1UaxfMB
	4fiB8uIkM34I2Dhfi9l3rTmi5VrAhUfBZXBdEj7x/v4TrY3AOzHekn7RJSUxqdBA4m3/MPlMt8p
	SeAghQIMVixqGSIBQIPsCF5r+byEXoHYIYIzfycHciclHEnzigU1yKNZSjIm28f6/uAvlNWP89T
	E2/c
X-Received: by 2002:a05:600c:620f:b0:49c:eac2:ddad with SMTP id 5b1f17b1804b1-49d2570acaemr21422495e9.1.1788971549021;
        Wed, 09 Sep 2026 09:32:29 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B836900E58FC5516AABB3E4.dsl.pool.telekom.hu. [2001:4c4e:1b83:6900:e58f:c551:6aab:b3e4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49d26bf332esm2604635e9.8.2026.09.09.09.32.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 09:32:28 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v2 0/3] drm/dp: shared HDR metadata SDP helper, and max bpc for dw-dp
Date: Wed,  9 Sep 2026 18:31:58 +0200
Message-ID: <20260909163206.36409-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_093231_384342_F851269A 
X-CRM114-Status: GOOD (  20.41  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Imre Deak <imre.deak@intel.com>, Sandy Huang <hjc@rock-chips.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@gmail.com>, Ville Syrjala <ville.syrjala@linux.intel.com>, Simona Vetter <simona@ffwll.ch>, Robert Foss <rfoss@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Jonas Karlman <jonas@kwiboo.se>, intel-gfx@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-xe@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, Igor Paunovic <royalnet026@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is v2 of "drm/bridge: synopsys: dw-dp: Add HDR support" [1], resent
as three patches instead of five.

The two patches that actually enabled HDR output on dw-dp are not here.
They were written on top of Sebastian's "Synopsys DisplayPort Controller
improvements for RK3588" series, and that series has not landed. I
checked rather than assumed: against drm-misc-next they no longer apply,
and every failing hunk sits on context that only exists in that series -
vsc_sdp_nr, audio_sdp_nr, dw_dp_clear_sdp(), the runtime PM conversion
and dw_dp_rockchip_hpd_sw_cfg(). None of those symbols are in mainline.
Holding the rest hostage to that seemed wrong when the first three
patches stand on their own, so they go alone and I will resend the other
two once the dw-dp work is in.

What is left is useful without them:

 1/3 moves i915's private HDR metadata SDP packing into a shared DP
     helper and converts i915 to use it. No functional change; the
     second user follows later. Jani's Ack from v1 is carried over.

 2/3 fixes a real bug: the bridge connector loses its max bpc value on
     connector reset, so a driver that attaches the property gets it
     reset behind userspace's back.

 3/3 attaches the "max bpc" property on dw-dp. To be precise about what
     that does: the property is a limit, not an enabler.
     drm_atomic_connector_check() derives max_bpc from the sink's EDID
     and only clamps it against max_requested_bpc when the property
     exists, so the min() can never raise it. dw-dp's format filter
     therefore already lets its 10 bpc entries through on a sink that
     reports 10 bpc, with no property attached. What the property adds
     is userspace control - the ability to ask for less - and a defined
     upper bound of 10, the deepest entry in dw_dp_output_formats[]. It
     is also the case that motivated 2/3, and a prerequisite for the
     HDR patches that follow later.

Changes in v2:
 - Dropped 4/5 and 5/5; they depend on the dw-dp improvements series
   and no longer apply to drm-misc-next.
 - Retitled the series, since it no longer adds HDR support by itself.
 - Rebased onto drm-misc-next bf63a72ea005. No changes to the code.

One thing worth flagging for 2/3 and 3/3: Cristian's HDMI 2.0 series
removes connector->max_bpc in its patch 71. That series is not in
drm-misc-next either, so these two are correct as they stand today, but
if it lands first I will respin them against whatever replaces that
field. Say the word if you would rather I wait for it.

A note on how this was made, since the patches carry Assisted-by tags.
I work in a pair: I run the board, take the measurements and decide what
goes in; an LLM assistant (Claude, by Anthropic) helps me read the
source, draft the changelogs and re-check my claims against the tree
before I send anything.

What I have not done here is boot-test this exact three-patch series on
hardware. The code is unchanged from v1, whose runtime testing was done
on an Orange Pi 5 Plus running a rockchip-devel kernel that carried the
v9 generation of the dw-dp series, with the patches on top; those runtime
tests were never repeated on plain drm-misc-next. That caveat bites
hardest on 3/3: mainline's dw_dp-rockchip.c is not the file I tested
against. For v2 I have only checked that the patches apply and build-
tested nothing. Say so and I will do a full build and boot test before
you take it.

[1] https://lore.kernel.org/all/20260808095749.9428-1-royalnet026@gmail.com/

Igor Paunovic (3):
  drm/dp: Add drm_dp_hdr_metadata_infoframe_sdp_pack()
  drm/display: bridge-connector: Preserve max bpc across connector reset
  drm/rockchip: dw_dp: Attach "max bpc" connector property

 drivers/gpu/drm/display/drm_bridge_connector.c |  6 +-
 drivers/gpu/drm/display/drm_dp_helper.c        | 88 ++++++++++++++++++++++++++
 drivers/gpu/drm/drm_connector.c                |  5 ++
 drivers/gpu/drm/i915/display/intel_dp.c        | 84 +-----------------------
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c      | 26 ++++++++
 include/drm/display/drm_dp_helper.h            |  4 ++
 6 files changed, 131 insertions(+), 82 deletions(-)

base-commit: bf63a72ea005d5e1cc12a9ad5e228c4b44246b0f

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
