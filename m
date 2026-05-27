Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF287CD4F54
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 May 2026 19:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdvlJqtAV8MnSWhpwN8VfPWkk21pXDPymickua2Lr8k=; b=IIyulUU+kDX7g2
	Awjp8TN1lx4XkC3zb2EXx9jAPdPi8i3zCKtY7BYTEJpm8lkwv+xskNdfeBVv2WdzUdoChmHJfKsuM
	Zh6B6g0gflo6f86CfSC1SPBr9AazKuLOurT08kOP+OWw50qji8QmNy7Ij0tNhvI366bGSFjvimanU
	FMYz8NU2UV0q8EHnJC4/sBWYBA9a3X5fKLXXWRiaNdk12nvEh9NzbtCq7WPegYGYmB/7dBrstM4LL
	sd3m8DEnkLe7QVPPrCy1O+hnQLEGDSTkp2SiZHj9BOKpZDT8xYau0ZPjhC+2sKVRwmkXqijdWd8AB
	pCaiKFJSPkmTa8cKhy1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSKEz-00000004gN4-2qfl;
	Wed, 27 May 2026 19:48:33 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSKEn-00000004gHE-1hN6
	for linux-rockchip@lists.infradead.org;
	Wed, 27 May 2026 19:48:22 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-914bfa75911so607302185a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 27 May 2026 12:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779911300; x=1780516100; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DzZhwVxQtOTxpPSV3ALvJKs3yCJTXAKgHjmBscK7oNc=;
        b=gjGs+GiNb1lPVTiIB1P8zgePVayHdFE67v1jlpoPtG7ap1zxhRtpb2MUyBOJed0Yq8
         7gaqVmnX+VpE1adBqg+ThMRzYzTxAU1MuMOK0Kt9Z2fIEdgjRO7iRLmPTLRcwAXtr46/
         qy1BzJMQR6gpLyPQ6hniPyzhaY0kFmWvnHSkquuCWXqYUrWJ5qJbZIMQYkxr1SZ4RPM2
         qxWxArHP2Vm2xiMxS7vcGSMNPkLJNgaeauU+h9z3BdUkx1D11W7xqmh8IbvxAo7uypUk
         Hjqswi1YyTzy+YRQGiGkV1vrjdeXoxP+jF+wBtUjq+YoOiRZsV3OuYh/4lxD5QcYeRg/
         e4bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779911300; x=1780516100;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DzZhwVxQtOTxpPSV3ALvJKs3yCJTXAKgHjmBscK7oNc=;
        b=mBqe2jHzxPI4D1uEKj8JjOJuLDoiYShmcYDmtdmo9D3pUfM0t0Ky1OVkYT2BgJdAda
         UBEi4rdQEcX1zxz4Gn9B9rXubMS/CLDnkvMVFqR2BJm2/l201rxQuIrxiyW6aNd882CE
         qe9Bnima028Yzk9e91pN1iA9g79QoUZXxoWkhi7y6VWNpJEHVQc3L1Z2257cRgsXdOQT
         byb7NV2x2+VYBn2Di/X3XG11BVhyDF05m04PCpikjmI4a4ypCUFHCcGmgy/Z56nWN0Yf
         AES5oBaewAChrDW5VnbFTb/qlOO9Cei/6aTsVUb7Ipt9p6ZQQp2MHGNAn4Tbpb8nTgWN
         qZXA==
X-Forwarded-Encrypted: i=1; AFNElJ939kPqohXn1VTOyd317oWfLNYoO2lGfIEx9eg+S7O4jmxv6bMMHQfZggGR+RFlUfQfUxjpw4Zrjqm/c80dYw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxwKsYpJ6d6z++e7849knrZeaxLxoaJdcy6yF4bqYwx4+WQZVis
	t651dQ/v4rLtE7mHSZMdnBHZxv4b3jc+bNy+7Hwd2ds4yaY6Z5f3B5RD
X-Gm-Gg: Acq92OGMteIowlZLNaS7tBfz2gXDKlaJSPnZHyZlxl8N9dyiNZhmBbIxDfvqQh0P4e8
	MQlhekaiiq1X7MSS4CyeTPoQmOzNGzi9nL4r1v3qPSGD0aqgI4XLRYGk2CRjcrxdmesmW4WMaq7
	X+0DlW7K+ptJMu5sRucgRG7S6yQQY3lGPjFm3hfCLrmJVUrpPu2CCMBaYNql9yKVY+xggXUkDrV
	EQSy39gJvvzygynkd/LtlKSJ3iMifZKWpnV9d3AU08UdaoHe6Hg57OeTP64iKueDFWLF9NwzpeK
	W675zR0kC5q6SORZUSrSQWxHo9tgHJsKaB0yeQbpXpq3LEVIVdnhG05O803FYhc93OBHdqSQ55r
	lKKGmdDErauGITV/xU8SbwAyv7Sue3a+w5JACh6FBg0N6jbKc3Q8Y3mt3kWuvyrlzdaeewFoyyx
	UVZm7lAIy+I3hTbTptyiDfkpE/2oNeO7S8sxolh06xQs/ik/fD5VTRWjVBwWQrstvrIIm+e4ZuR
	0mZtrjpqfd8ZuSAsYEoqU4yw4IIqAA6Gz/ZM2uJyZNp7Yikg4tJTrwpUTwpYPV5
X-Received: by 2002:a05:620a:462c:b0:910:f8b4:8614 with SMTP id af79cd13be357-914b51668bdmr3081086285a.31.1779911300034;
        Wed, 27 May 2026 12:48:20 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-914f87017a0sm564942385a.15.2026.05.27.12.48.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2026 12:48:19 -0700 (PDT)
From: Michael Bommarito <michael.bommarito@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Hans Verkuil <hverkuil@kernel.org>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH v2 3/3] media: rkvdec: hevc: guard INTER_REF_PIC_SET_PRED index underflow
Date: Wed, 27 May 2026 15:47:37 -0400
Message-ID: <20260527194737.1999409-4-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260527194737.1999409-1-michael.bommarito@gmail.com>
References: <20260513181922.2075438-1-michael.bommarito@gmail.com>
 <20260527194737.1999409-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_124821_463742_1ABAA5D6 
X-CRM114-Status: GOOD (  11.96  )
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

st_ref_pic_set_prediction() computes the reference RPS index as
st_rps_idx - (delta_idx_minus1 + 1) per HEVC spec equation 7-59.
Both operands are u8, so when delta_idx_minus1 + 1 exceeds the
current index the subtraction wraps and the subsequent array access
at calculated_rps_st_sets[ref_rps_idx] reads far out of bounds.

A userspace V4L2 client that can open the RKVDEC m2m decoder can
submit an EXT_SPS_ST_RPS control with INTER_REF_PIC_SET_PRED set
and delta_idx_minus1 crafted to trigger the underflow.

Reject the entry early when the reference index would underflow.

Fixes: c9a59dc2acc7 ("media: rkvdec: Add HEVC support for the VDPU381 variant")
Cc: stable@vger.kernel.org
Suggested-by: Detlev Casanova <detlev.casanova@collabora.com>
Assisted-by: Claude:claude-opus-4-7
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
---
 drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
index 3119f3bc9f98b..898d1ce74f38a 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
@@ -268,6 +268,9 @@ static void st_ref_pic_set_prediction(struct rkvdec_hevc_run *run, int idx,
 	int i, j;
 	int dPoc;
 
+	if ((unsigned int)rps_data->delta_idx_minus1 + 1 > idx)
+		return;
+
 	ref_rps_idx = st_rps_idx - (rps_data->delta_idx_minus1 + 1); /* 7-59 */
 	delta_rps = (1 - 2 * rps_data->delta_rps_sign) *
 		   (rps_data->abs_delta_rps_minus1 + 1); /* 7-60 */
-- 
2.53.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
