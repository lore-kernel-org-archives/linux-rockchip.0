Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04CCACD98E0
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jun 2026 13:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2spUtaW8QkX/Dsm4H1DVVPtpQZhSNDAJg8+5I1LLhFk=; b=H3OPwDME7GKvfv
	Fk55McnsWeUzKR94rf1fdxesrUbK9UDuU5ToZDlyebeX9rSciVd1MeiSFNGNg72cgk9Y+MhYBhVwB
	Ue7mA2h/iBUeqChzdTiNU2WX9uazhTQwkDQZMIPqiiVxnLAagGbD+nPatBuFb9AUkx1IcA80y0YY7
	1XXZcjDisp9pfFgRXOB3AuTsz4jDZ/LzdP1fDqaHiyk3pJjvbmvmgZMpgZHHjns0nqV6ynjQ1brZz
	4NS9Pp+7ifmO2up2KVxjiuPDejZqkLmO3vePUViIG+cc2GpDYS6lTcBCYJxirnpPqck/Bn874Qz4d
	Wy9oDi6v8/LAUoQyyWvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYkbM-0000000D0Bp-1peh;
	Sun, 14 Jun 2026 13:10:12 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYkbJ-0000000D09T-2WSZ
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Jun 2026 13:10:11 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-91574384cc2so282532785a.2
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Jun 2026 06:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781442607; x=1782047407; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=W8QN1oqmeXkeOy6RyRuiD7b4Q+mpnATm3FAvEoUlIOM=;
        b=XGbT1DVdO7Gb+tf/7YPrmOZqOabmjgJ1W3B7FcEfNT+ixril8ZzoM7928GlVWCvebV
         XPOeVJIAw1ACUl16ZRZC6QI5fvpyX6R0vyJ1or9zilX+RKBtel953a5VYLPCy73SSf+s
         t/k+fzw69QPPTg1NsfUPg6TN5ZThPAwEuBfzY7jW57IHU2cCYXHdR03T1noKL1tTJnu3
         TTvV1Tva1uOJWZEICPCi3V04bo+vLAowEDNNLRnVx+JJbZszWO4nLHVoOhJl3qGgRwNx
         Qs4HWJIXjEUxTOdDnQgx9JxwTHmQUXnRKS6lGieCf7YmDqdE14fhiEVVLZh1/pjAZdSw
         /Qug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781442607; x=1782047407;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W8QN1oqmeXkeOy6RyRuiD7b4Q+mpnATm3FAvEoUlIOM=;
        b=HChNyuEm/HEkT0nLLf+wTyW4IilqmvC01wJvcajCGrxrfVXfmUlAvbKQQBax3RVpTz
         p6FzyOTLcSRekwCpuPMS29QqEdSwumfK1o03swyLhDHNlx+q8rurdRojTElZGuiQr6JL
         nDDzalu04hS8Yjlwvuvlt0W2/N9Fd2qO/YTDUGBskmyqkkj+H/17qLshEfMjJImCcbt5
         /wjSs1+pOetqD8hStdBhLZjdNPq02rW1swn4ipLXTcZc/nOJguQECzNgR/0r9/pei+x+
         KmMtSJrVPl2UwkVxT5izyFduITZe3Txx7JGLrPaeTQr+4b6B7TTdrtUETMqjmGlkVW7K
         uSqw==
X-Forwarded-Encrypted: i=1; AFNElJ8Ex0oJoYiltSVHyunyrVDDXSwCvMx3ESF6sE74zOWm0eB+zTZaWTaYfHVj/ZWGBhoFTLlyMzy3cAxIq9J4dA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1jZV4wFEdFdIDrBbdPo1xdVYiUqDW7wEASEVCGm6HE31i3kn1
	jzFGVivhjZkGXd9PP5sDbmbO7s14fres/nWl72+qjnI0pX5Oq9sNZYDS
X-Gm-Gg: Acq92OFdm2RVsGyVCBvhqQ7GjxobG7AK8OyzbBfjVECcnrrdnjErhjPgnTvv+WBt8zX
	+TyHzT0CSujvQVJLfO/iuF0wsPLOfYt6Vm9v0KtX5TLy+cQh1B5dycd/htWTCF286K5zocsSlOn
	IUQzVjGiVo2sg0wrFTRwS1QpCIV2PqGVcPw/+9nvoH+clBiiRuTsN9UYeC58aYuatqOwj5Rf8Au
	uhGHAQFaWxrXp7LE3/CuLAAUomOuu+cw5xH/y2r45v9e2jeX5cEKysoqt3iWKwqCCQrwaWWbcxe
	F8QWnYClj1svQZH+fh7NxZqiTzCBcuZWv4Lpn01h5KahjKlXUjeEUXRuTCGnTHgi80uTj+atsx4
	onNyWVKLVtM2L5LVPzSeyv56kbXiEOiP0tpxvyreeCEEStp2q794elsD+O/xgPQ4/zMWta5rAMB
	BNqbGQwysYJ7hfQoGPmyVBJpn1xswm+zFtgF1MmZ18WQb60i+m6CHW0+qXJGTKGhbJxalfz9UVO
	7R4Z3lLD/ejBpg+DmHwT7MsSEjGLdttdGM9le7VRrs=
X-Received: by 2002:a05:620a:2904:b0:915:9fba:878f with SMTP id af79cd13be357-9161bab4562mr1530615785a.5.1781442607439;
        Sun, 14 Jun 2026 06:10:07 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-91619f1b400sm752878985a.15.2026.06.14.06.10.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 06:10:06 -0700 (PDT)
From: Michael Bommarito <michael.bommarito@gmail.com>
To: Hans Verkuil <hverkuil@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Yunfei Dong <yunfei.dong@mediatek.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Heiko Stuebner <heiko@sntech.de>,
	Kees Cook <kees@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/6] media: v4l2-ctrls: bound stateless HEVC/AV1 tile counts
Date: Sun, 14 Jun 2026 09:09:57 -0400
Message-ID: <20260614131003.2524025-1-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_061009_655052_A908BB68 
X-CRM114-Status: GOOD (  12.24  )
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

The stateless HEVC and AV1 V4L2 controls carry tile counts that several SoC
decoder drivers consume as loop bounds and divisors when laying out
fixed-size hardware descriptor buffers, but std_validate_compound() does not
bound them. A process with access to a /dev/videoN stateless decoder (on a
typical desktop or SBC, the active-seat local user via the logind/udev
uaccess ACL, no extra capability) can set a HEVC PPS or AV1 frame control
with a tile count far beyond the array capacity the drivers assume, making
them loop past their fixed buffers.

Patch 1 caps the HEVC and AV1 tile counts to the uAPI array capacity in the
core. Patches 2-5 add matching bounds in the consuming driver loops (and
bound the driver-interpreted HEVC pic_parameter_set_id / AV1
context_update_tile_id indices the core does not reject). Patch 6 adds
KUnit tests for the core validation.

I did my best to reproduce these with the hardware I have, but apologies
in advance if I missed something because the soft repro.

Test matrix: patch 1 + patch 6 run the real std_validate_compound() under
KASAN on x86_64 (rejects out-of-range counts, in-range pass, stock and
patched); all objects build clean W=1; the ARM SoC decoders are not
reachable on the x86 host, so the per-driver writes are not reproduced here.

Michael Bommarito (6):
  media: v4l2-ctrls: validate HEVC and AV1 tile counts
  media: rkvdec: bound HEVC tile loops and PPS id to the array capacity
  media: verisilicon: hantro: bound G2 HEVC tile loop to the buffer
    capacity
  media: verisilicon: rockchip: bound VPU981 AV1 tile loop and guard
    divisor
  media: mediatek: vcodec: bound AV1 tile-start copy to the array
    capacity
  media: v4l2-ctrls: add KUnit tests for compound control tile
    validation

 .../vcodec/decoder/vdec/vdec_av1_req_lat_if.c |   5 +-
 .../rockchip/rkvdec/rkvdec-hevc-common.c      |  22 +++-
 .../platform/rockchip/rkvdec/rkvdec-hevc.c    |   8 +-
 .../rockchip/rkvdec/rkvdec-vdpu381-hevc.c     |   2 +
 .../platform/verisilicon/hantro_g2_hevc_dec.c |   6 +
 .../verisilicon/rockchip_vpu981_hw_av1_dec.c  |  29 +++--
 drivers/media/v4l2-core/Kconfig               |  12 ++
 .../media/v4l2-core/v4l2-ctrls-core-test.c    | 119 ++++++++++++++++++
 drivers/media/v4l2-core/v4l2-ctrls-core.c     |  27 ++++
 9 files changed, 213 insertions(+), 17 deletions(-)
 create mode 100644 drivers/media/v4l2-core/v4l2-ctrls-core-test.c

base-commit: 5200f5f493f79f14bbdc349e402a40dfb32f23c8
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
