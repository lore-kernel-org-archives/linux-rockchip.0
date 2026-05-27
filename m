Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 877BCCD5BD0
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 May 2026 19:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t22nJPoN91MZVFSWfLqMd7qj5miX+V0sXpfS4LYW99Q=; b=ujR1zhTMT6Gy0r
	3t0/Eb9st6RPpf5BHx7rywR+Q7ylkgxOuA77E17CsmEAR/ConvYaMhZwm4GnSMBTnlhmIBqhi22MX
	MtJjtenjG3n+r5cJLDBfnnWPaPgJT+wjkM5i0LM7kqhQ4Ol5ARwujLKHY/PdmVBeH3KcmVUzCBjk0
	BM83S3xJntFQzo/2peHWYyZ5AAZeyE3Cm24hxiTLR+OJqF+MhGOom/6ckfJ5Y/3L+hWJymH3InMIk
	Wo3UBADeYV2JVwmREDOSgkto4PXMGIUEEwCxRVKsPcQpF27+IZGNcGjYN35uNreh7gXoL3KFC0hYp
	ARdrFk1gtvly3yfbqRWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSKEp-00000004gJF-27gJ;
	Wed, 27 May 2026 19:48:23 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSKEk-00000004gFx-3Xii
	for linux-rockchip@lists.infradead.org;
	Wed, 27 May 2026 19:48:20 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-914c1ced558so275593685a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 27 May 2026 12:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779911297; x=1780516097; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c11hqP4/VNZytv7vm7NkzIMTSch4hrmtgsXa84FfdMs=;
        b=VyVkVey9jc4hEGckQNBVkJVDuRS4dsEZHIzkZ8JR+5LrrOKvQStEQxUodmq3HNNYXq
         2auThQUzvC719h2nkrO6yK/CWutu8WH8UK53i1Q+u3muN6PIYP0JsHJloJGCk3Cyqht9
         ei8LZaXH/mPilP7yeXTZfwFLy+hUzciS9F19vIbfNjlCoAqlqp6nNcjpYy6fmIlaux7w
         GeIL5fq2iKohTVM5/Qb6sugKEigQQL+nPZ1sm9AoyvqaB2pz47D+TkU6wYPyIAFbJzSQ
         BbTbbD+tysY8+eLIa1rxV8etGDHK4JKsMtoIYtqPlBUV/0R9KeKV2sgj5qhKyqYPkd2T
         f9Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779911297; x=1780516097;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=c11hqP4/VNZytv7vm7NkzIMTSch4hrmtgsXa84FfdMs=;
        b=bmNwh/uCWEymLPqdEEigTiHGupOVo3QZNmU23V0z3E0TB2E3oeHrDB949VBWMb8ZY2
         tvOsvq0lf7GOtIJpyJbxpghNDwGFAZFNsTTPaeQbcBPJGp1bIvWCISeo0pd3NwrpXJyT
         20EJ5AXIgBRdMu8w/Br0NTaLjULqE124qUkdbEYO/l98F13wfz9WutZvB1acBl80PB8W
         iWk1w7Wk6Df5Ei7idkhVPeXg79boidvcMzE5IEpUvBVJT7240NIaw36rhL/FQMhwcHyw
         JWgjBdBB4/jTeCcP46Gx++FfFGr+Jh4/vi/cO4EyWDeFQipXlw3XtW9IqSJobvlOKRCG
         PXLQ==
X-Forwarded-Encrypted: i=1; AFNElJ8f37/dTPNMa6j59F+u/bs3nOm//4qNTjL/w8OFk9zoJhhzK7dhWap5Ih1G+Koiy5Qtus5ZfZv3qmMGmsn4Kw==@lists.infradead.org
X-Gm-Message-State: AOJu0YytyB4wtzhAWt2wMRzocw0NcBtb1vl/waRTxUbMYxnbU8f/PdF+
	+wDqzyfa9Lr4mN6/LxboNY8bsZjNCV1D08O79mYV+mNBhGyRzEW3puKi
X-Gm-Gg: Acq92OGLTZV+z3nhw3n523vZmH0PXP+Fc+XsaUSnhStLlGY6x6rGJZsQVeaM7xf81r/
	90/fLfKTXQza89bNrn2r+Pc6mZNEB6BEbnYeu7jJhtkkOVNiNOGTvA0beqPCoMM0nNWN7vjhWs4
	OQdWD9sTKKFesDvzzKyvDVa3/NeZv6ntaAr8KuoK9SUYVux8Q1YIX/aulmljNxNyBx+hFm23owe
	RnLmX+b0Hpg74YXagT8PXEqSv4UBRZywFY09JDjd0DWg2W+pEjxFR9yv9q9WgmI6UaR2HctCNLM
	+odScvkkz7DRVJfO5cvoSuxk2yZhUkyNWJki+ekiZj19BuD6J4/6dG83sxLtR1nrjtTHY+3VjgD
	q6ZHrUzZrjOdi7MDkEqPuWUn2TZ3ouh1ojdJvbIxqpNejwSjoXZ5P4H+uOF4z1xPfZTP7hR/HAG
	/KTAjnCKNVOSsSAHmUCHg4kyAevwlCet625MJe6LnKQORbkN5dzs/r0gnrh7P3So0Y5w+/6zo3U
	fF1uMhDD1BQYoUJkeNllRZdcsyP3bbZWUDE1NBRVcJ+JpXjc8jk9A==
X-Received: by 2002:a05:620a:2a08:b0:90f:624d:70d3 with SMTP id af79cd13be357-914b4928045mr3475904085a.23.1779911297364;
        Wed, 27 May 2026 12:48:17 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-914f87017a0sm564942385a.15.2026.05.27.12.48.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2026 12:48:16 -0700 (PDT)
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
Subject: [PATCH v2 1/3] media: rkvdec: hevc: tighten EXT SPS RPS control dimensions
Date: Wed, 27 May 2026 15:47:35 -0400
Message-ID: <20260527194737.1999409-2-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260527194737.1999409-1-michael.bommarito@gmail.com>
References: <20260513181922.2075438-1-michael.bommarito@gmail.com>
 <20260527194737.1999409-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_124818_900131_B48F5FE8 
X-CRM114-Status: GOOD (  12.44  )
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

The VDPU381 HEVC driver registers V4L2_CID_STATELESS_HEVC_EXT_SPS_ST_RPS
and V4L2_CID_STATELESS_HEVC_EXT_SPS_LT_RPS with .cfg.dims = { 65 }, but
the HEVC spec caps num_short_term_ref_pic_sets at 64 (ITU-T H.265 7.4.8)
and num_long_term_ref_pics_sps at 32 (7.4.3.2.1). The hardware descriptor
table (struct rkvdec_rps) sizes match those spec limits: refs[32] and
short_term_ref_sets[64].

Reduce the dims to { 64 } and { 32 } respectively so the V4L2 control
framework rejects oversized payloads before any driver code runs.

Fixes: c9a59dc2acc7 ("media: rkvdec: Add HEVC support for the VDPU381 variant")
Cc: stable@vger.kernel.org
Suggested-by: Detlev Casanova <detlev.casanova@collabora.com>
Assisted-by: Claude:claude-opus-4-7
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
---
 drivers/media/platform/rockchip/rkvdec/rkvdec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
index 1d1e9bfef8e96..4fd06f4c04db0 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
@@ -278,12 +278,12 @@ static const struct rkvdec_ctrl_desc vdpu38x_hevc_ctrl_descs[] = {
 	{
 		.cfg.id = V4L2_CID_STATELESS_HEVC_EXT_SPS_ST_RPS,
 		.cfg.ops = &rkvdec_ctrl_ops,
-		.cfg.dims = { 65 },
+		.cfg.dims = { 64 },
 	},
 	{
 		.cfg.id = V4L2_CID_STATELESS_HEVC_EXT_SPS_LT_RPS,
 		.cfg.ops = &rkvdec_ctrl_ops,
-		.cfg.dims = { 65 },
+		.cfg.dims = { 32 },
 	},
 };
 
-- 
2.53.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
