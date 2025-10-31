Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64A21CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Oct 2025 10:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9mcZ6cLnk+OQVocM+cGJCExEFb2HJEYiiIM/TjVJZaE=; b=4w3/QvJMlOdoGF
	qjdn4NIQUJNXOlpMwIxbKN1v6MQY1flQAHLLJpHsWFZLo0FST437zEovNmF/+fqhQus3PD91/lp6c
	rabrQzKrWnrzf9hyUam29yLfW5lAyNZh7dCyFUJM8FM4sZAHQNL8BITboNHg0XoRIDl6Qe6Bk9KQ5
	25/WTnbcPLh5JRtXnduLMnOiEUd6h0vT1vPNaRRTXh+bdqYv6fSqh0ai7OlMjRCsQqLU2nfFpYELY
	1L3lgIU78RcV2Fl8mvd/Tfhr/nzpXCqYl6kb98+/3Pa0k8O9BMtCYWTKY2Nx68+7rsrbTcPQvtxt/
	xAg17PeJypHFXVp357gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEmgo-00000005xdf-18Li;
	Fri, 31 Oct 2025 10:49:02 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEmge-00000005xYU-3Zfm
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Oct 2025 10:48:55 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-429bf011e6cso740393f8f.1
        for <linux-rockchip@lists.infradead.org>; Fri, 31 Oct 2025 03:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1761907731; x=1762512531; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OBWYxLlmhmMlhJEcwlD766MutyyLNrX1V09UkWZeUf4=;
        b=KYfUBXCiRAAKkU4pWFR7z6d2AKkDMd3BxrIdOh24gFDlz5E9iTHNyuDE72o4FU2XbU
         evzoX3pp7zQPMDKvQ1mnGPJGFij/grvhziV/eRg1MODGjyLBd2xaqHkuF9ZRUnN+dlKM
         mi9Y46GOgUl3hveLaIqg5qAQcJyBaHxoYwnOqMx9xQOhH7q3sI0SEf4Z0v5Z//Q20hYn
         0xrGuqHD7uFjE5CO4SUmXt7Kv7FyGaOsbImU2I5oPO1d9PVaEyU5Fe1Vf5ewdc3Cz5Yp
         MtqT0QauU9PMOtA44Iq2/jlm19MsKwjVG5+WgvTZw1gvQX50u6c7b4qI3NocovwNqVrm
         w1SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761907731; x=1762512531;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OBWYxLlmhmMlhJEcwlD766MutyyLNrX1V09UkWZeUf4=;
        b=gA2fhMTtLaD/Z1tg8UJMmZWAPy/OwzL+BXnz98EwEak7IZjnXfMYfQz/gXa4SOTpve
         3tOkbz+z2OJexBDBZSsLos8j5w50XWRFG32xV1JlCNhZ1IbydLBiD+33l1BopVNuAUvU
         7WTNqQbopTyVthZKJ104k+221wCFzyh6nqq/YMYwJVK6IX6HLXBHgGisfyRYP5bSlOjy
         e9Ftck6QxQzZ0IYxK5jUTwuKzty34oZdMw2FUBBkttcv19O3V2ILye5CrQCaUVX+nfhk
         m4yoSUF9jI8cF0z9vag+wX+4ffkRUvSHE0VmFMWY0fn9qCSRJsg9t239xtRcrkmd/uzS
         0WWg==
X-Forwarded-Encrypted: i=1; AJvYcCUHNpV5JyFRzmtQybEGtnaulYLCLm4RTfaTwjTJyzvWJmNG0LVJR9eoQf6Wa7B0+7CeWxQDyBHqWgn/nydlPg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyFdYYYzb8BzuN23LUwBZWxonjw96asdmKkxLU7APLx5JtA8ulR
	4X7Iy90oqGtDO/ytv6u71zQVdashQfTXoPO7grFwaKxfhIiFkRRu0NZRs7cEs5eNDCk=
X-Gm-Gg: ASbGncsIK9Uw6M+q5NtkUp7Alk41bcoynxF8V+iPNKciZi2kd83FidNRVq7LTNqO/nc
	kPcnMp2Gg/8/HQk0ne0HPiZuEWkoOEaM10Mofslo/9jStPuWptwSe+NXORcg/FVP2nH98HdzBv2
	U6B7Ox8Yjf/uXjFjOPGfLaH7PLc/NxVWVMAmxBWlQH3Rf+wr5HuPiAQrTdLoogYnmOiQczAHwal
	a353qiFDpcfwGNtmjRtKcmQXE6kdL0ZOFlyfx2EqgIrvBHae9YzuppvVnP5EIaPNBTCEOpVKTdM
	kGon+/yoQLtNYBgxCTxNc6SfGGDIC1gixKMYgEPGysmGPHFR4yP+I4pmANedYrIG+bGg281ufr+
	0HtpU9R3adN4EXtiMGkXhWkfRPRKzIBRmED6fmf3CUMGADkDtkHGAnn7ZhSJjHuB6zl0PNbvGfV
	S7in6XBb787+e7ip0ReeAUyxUrOhnRj3tYzec=
X-Google-Smtp-Source: AGHT+IFXAzHg/iq6w+vdzj/m/7FqAE/8oRdJB9oVXLVeXcIgN+TApftuVAX0hFowdEb6GbjwPbphjQ==
X-Received: by 2002:a05:6000:2407:b0:428:3f7c:bcf3 with SMTP id ffacd0b85a97d-429bd6bf68emr2653726f8f.49.1761907731032;
        Fri, 31 Oct 2025 03:48:51 -0700 (PDT)
Received: from localhost.localdomain ([2a00:6d43:105:c401:e307:1a37:2e76:ce91])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429c102dfd2sm2961635f8f.0.2025.10.31.03.48.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 03:48:50 -0700 (PDT)
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
Subject: [PATCH 1/2] drm/rockchip: replace use of system_unbound_wq with system_dfl_wq
Date: Fri, 31 Oct 2025 11:48:45 +0100
Message-ID: <20251031104846.119503-2-marco.crivellari@suse.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251031104846.119503-1-marco.crivellari@suse.com>
References: <20251031104846.119503-1-marco.crivellari@suse.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251031_034852_909437_540291EF 
X-CRM114-Status: GOOD (  13.86  )
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

system_unbound_wq should be the default workqueue so as not to enforce
locality constraints for random work whenever it's not required.

Adding system_dfl_wq to encourage its use when unbound work should be used.

The old system_unbound_wq will be kept for a few release cycles.

Suggested-by: Tejun Heo <tj@kernel.org>
Signed-off-by: Marco Crivellari <marco.crivellari@suse.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index ba6b0528d1e5..18393c8671eb 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1770,7 +1770,7 @@ static void vop_handle_vblank(struct vop *vop)
 	spin_unlock(&drm->event_lock);
 
 	if (test_and_clear_bit(VOP_PENDING_FB_UNREF, &vop->pending))
-		drm_flip_work_commit(&vop->fb_unref_work, system_unbound_wq);
+		drm_flip_work_commit(&vop->fb_unref_work, system_dfl_wq);
 }
 
 static irqreturn_t vop_isr(int irq, void *data)
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
