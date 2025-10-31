Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03B0FCCF9FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Oct 2025 10:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iCrF8NzTHQ9dgs9feIdILRphCktudFBHARfwwPcEzos=; b=1dBGgwlqrA7Aqu
	uy0qIOnRyPjNjTaN6Il7uuyjlbB7br0xWQO4VR7uZiD14nTFsAeaHfUHhTCcJw4v1CDTtXGjxmdzh
	+tgipxLTUd4s+iIZWbvgkkV5ptiJqVR4IJkuipqtTfQfO7qXT3O7H/0GGR6LfRmS7d4Ba8k/UhDXh
	EpMz/Gbjp2rqvKQwTP5Ixim+UstN0Wx/IUWGP2qeS1xA14aV4mSNYYUqVmUY1catErc2ZXLn//s61
	YIuK2Y3MvxtippUxRO8YMgLGkXsXo8fkvaqUqGhcuWeLFxebl6PVl5/BLy/iuV5gUEBlE2NODtePU
	N6JTtIOvXpEL5PPsntEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEmgo-00000005xdR-00bL;
	Fri, 31 Oct 2025 10:49:02 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEmgf-00000005xZ6-3duL
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Oct 2025 10:48:55 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3f0ae439b56so1270807f8f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 31 Oct 2025 03:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1761907732; x=1762512532; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Zo2jj2MOuswONrFhs1A8zruhpNCnAbrPgnW3srwcDM=;
        b=f9Q1cKc4OBClZaROD4VkQ3wFjW3MNcKJ5h4Q5q4K4KkjoWkk9ZeeGSqdH1qQFB206G
         9DJxQAlQSyov2E+dlxRUBG8cSlEe436t9UWB91lp+aMELfTBAsz5vxhzBS7DgNK2jqqc
         nhP0NN+/JGmeL/3bhlePwC7+ktOuC3QBmGYW5zJlWB8ZeYFiU5AHmRyrOjuKdxID9epd
         n8b29gAQfGEAGfR7wbC91Rmd5mFrz+N9FrHBMgKr1e9kUMGINE0nymttcv/XN72tLJ0V
         AfPMGiti2CmnWG209vN+2SZDcKCrsge7njiG/rFRfNtTmQN3s27iiKXK8yLemtRAttFB
         4zAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761907732; x=1762512532;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Zo2jj2MOuswONrFhs1A8zruhpNCnAbrPgnW3srwcDM=;
        b=nrk73xrj8fGUOdPwIslnb8M5gpds0oT3chCKTjN7lWNgnxEDDZl6tUfa8pHefzNM3v
         gK5DXp5qWAcYkOlNUAqEWk44JxbrbmM1MyaFYadklrdbkEgGTaExL9+KW8opCvYcbfEb
         gAxtDXsXM+dwUBcJP2Ze0PlOSNycqjuu3jn+WlD4yMKS0kZ/sVTlYVu2hzhOgOu2hW8K
         /JiTtkSx2/F9f38ILBl94tQZBD7DKwPKvnwMmYU3TA5c9RDrrG5/B+Eh6jRu0XGjvSnT
         nEPfrmmPTm5l2OVBxI0Om5jUd4vvtX8bLCe6h4VIv5T+4O5Um6x7mIpuHU8p08RV+YjQ
         86cg==
X-Forwarded-Encrypted: i=1; AJvYcCXZPaqZAxSNH/ZQQONt52Efkg9JKPXQO2ah8aRLwA3eCh1r/cjYP64fFQMd4UTnV83pzbpmkwswckoLlVldWQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxBWZTw66PzOhGs2zAsOIxSgDUP8+WVvPPNegmGxwkkRgFXNpn6
	1P5KLm40cl5XC3Dik6jyP9LRU91ksf1h2sVHqev4dwnZn45wG/nfG08bikbDA//FTT0=
X-Gm-Gg: ASbGnctyaxGdS9EJBpMnKKlVaAzzSA/GkpvzYWk8rgH6+Obpa7+oqEX6HbaFlJSJ0Zk
	FgMsYDQQJe2wKVqtyw0WzaBcoNz1rNl6XaehRdhG/mFb0yH0L0CnrTkV4MZ8PC9Cw/mbpcWEJA0
	BJ0QOBdasYQ2e0njFTGTmHpp5A0wr+oO10TBJqBnfwX0ARChQpdRrGSjpUJKUbaLXT1Xuei0Ko4
	MPKUbbxhWpiQpy2sDB9uRWtHrMHOqVyrLrvQXNtI1Jmh7o9HgH9nc3cvUvXkoyCmPzc+JUSER7b
	dYDMGJTrbpjlv84p/wD1tbcVoFqpgLMoywoTRZB7PWhlSVSuvYc3fbaq4ZKyhKL0gtwz+RtfIdv
	6RgqqNmA9EQWMXGCAKVraDldB3Z+aBEFgjFAHo4A6nQJfJkV3x3qU5/s3L7SIP45mllu8cdtO0n
	ApScF+6NELB1yuya9g3+d38WAy2HNbj95DBE4=
X-Google-Smtp-Source: AGHT+IGobibt4LNxx3fw5hmxTlHoYafBePMtzQoeq6djNMJvhNOcnjqVzzpJ8k598YLOu8WNRveGDw==
X-Received: by 2002:a5d:5d02:0:b0:427:9d7:86f9 with SMTP id ffacd0b85a97d-429bd6a8f88mr2587154f8f.47.1761907732011;
        Fri, 31 Oct 2025 03:48:52 -0700 (PDT)
Received: from localhost.localdomain ([2a00:6d43:105:c401:e307:1a37:2e76:ce91])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429c102dfd2sm2961635f8f.0.2025.10.31.03.48.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 03:48:51 -0700 (PDT)
From: Marco Crivellari <marco.crivellari@suse.com>
To: linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Tejun Heo <tj@kernel.org>,
	Lai Jiangshan <jiangshanlai@gmail.com>,
	Frederic Weisbecker <frederic@kernel.org>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	Marco Crivellari <marco.crivellari@suse.com>,
	Michal Hocko <mhocko@suse.com>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Subject: [PATCH 2/2] drm/rockchip: replace use of system_wq with system_percpu_wq
Date: Fri, 31 Oct 2025 11:48:46 +0100
Message-ID: <20251031104846.119503-3-marco.crivellari@suse.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251031104846.119503-1-marco.crivellari@suse.com>
References: <20251031104846.119503-1-marco.crivellari@suse.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251031_034853_919177_4F5B9EBE 
X-CRM114-Status: GOOD (  13.36  )
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

Currently if a user enqueue a work item using schedule_delayed_work() the
used wq is "system_wq" (per-cpu wq) while queue_delayed_work() use
WORK_CPU_UNBOUND (used when a cpu is not specified). The same applies to
schedule_work() that is using system_wq and queue_work(), that makes use
again of WORK_CPU_UNBOUND.

This lack of consistency cannot be addressed without refactoring the API.

system_wq should be the per-cpu workqueue, yet in this name nothing makes
that clear, so replace system_wq with system_percpu_wq.

The old wq (system_wq) will be kept for a few release cycles.

Suggested-by: Tejun Heo <tj@kernel.org>
Signed-off-by: Marco Crivellari <marco.crivellari@suse.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
index ed6e8f036f4b..deeeface0b63 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
@@ -276,7 +276,7 @@ static irqreturn_t dw_hdmi_qp_rk3576_irq(int irq, void *dev_id)
 
 	val = FIELD_PREP_WM16(RK3576_HDMI_HPD_INT_CLR, 1);
 	regmap_write(hdmi->regmap, RK3576_IOC_MISC_CON0, val);
-	mod_delayed_work(system_wq, &hdmi->hpd_work,
+	mod_delayed_work(system_percpu_wq, &hdmi->hpd_work,
 			 msecs_to_jiffies(HOTPLUG_DEBOUNCE_MS));
 
 	val = FIELD_PREP_WM16(RK3576_HDMI_HPD_INT_MSK, 0);
@@ -319,7 +319,7 @@ static irqreturn_t dw_hdmi_qp_rk3588_irq(int irq, void *dev_id)
 		val = FIELD_PREP_WM16(RK3588_HDMI0_HPD_INT_CLR, 1);
 	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
 
-	mod_delayed_work(system_wq, &hdmi->hpd_work,
+	mod_delayed_work(system_percpu_wq, &hdmi->hpd_work,
 			 msecs_to_jiffies(HOTPLUG_DEBOUNCE_MS));
 
 	if (hdmi->port_id)
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
