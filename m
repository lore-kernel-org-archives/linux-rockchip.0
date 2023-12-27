Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23911C46CD4
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Dec 2023 17:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zZGVG0IvRmJTPnZKFk/mcpgfz+lvy6qq4Vj0l1oeM48=; b=XsBg66DkVRwLYd
	58gx8S1kWwb2qfkhiceSNWyLHF8CZP1VcCiOKHJGeQ7IHh+sR/7ZFnTv+GitBCFfL0mjtuyPe3nai
	b9vfvaGHJ9hR/7X5CSZzn9JH8M2bVqfS8UfheuBm0t717BqukDFaUglmSvMgOOZH6sq4sAxSl47dO
	Q4wEKtbhwvNVOrFhPO9mIihGhp12KMeK4YsY57uB2Ugvzpw9qch8RdIOvooKH4NI+HpiSqlSt2Mnh
	dfGtwRoaPlhgqwIF5gsFZ2OjTQXJ4763l/a3WzOVdX1zwInTI18QswwN8VS4yB6o6RQYk5663Vy+Q
	gJFlKGYOvUqryACvJuaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIXtL-00FEDX-27;
	Wed, 27 Dec 2023 17:40:27 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIXtI-00FEBn-1U
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Dec 2023 17:40:25 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-5bdbe2de25fso4175108a12.3
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Dec 2023 09:40:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703698821; x=1704303621; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aICOkkCHGNPQkQGVFyZfBHeeGOMAQbdF3pXGNaUoSUU=;
        b=Q/eXIli5omRnzcss0f6iilJRy8aWWXgWOE0b5DcTPYFE5W7xRsfJuwnMaX3SJkcy+r
         +2H8sBxrbMWtfu5beI+6vWc42I1FIdHx7iS5Hrs9wFiwDWsV0CAVs/jLsKSbVscmE8nu
         gNAU8OHBz/7CltgVkwlIcJdeT/plk0gY7uy3m/MoA+LvdTtvZEBxKZeMerIFdgc0TBAk
         IYVQUhAE7EfyMmaVQVQsijnQZkyMvNPcDX4QcKwPoOVot4IdkO+AEOmY/17NDq2MRW1y
         IWHPgXEtub0k+uJ6nBxpDRn1OkBUfEwcx373dZtZSaV/XOQ2JLP1OQxa+ExWUu8TwBCt
         lF/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703698821; x=1704303621;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aICOkkCHGNPQkQGVFyZfBHeeGOMAQbdF3pXGNaUoSUU=;
        b=iTrjG9fKC1wu0kBi8Yi27u0QaDt5Sta3ofiL+CcZh2w2TIimeiVApAEzF8wuKgAtnW
         LzEQoJvFGubfV0FmqX0pRSplpvG0Pg+9wZU0hwrKkt6nq3GHz/qQmXpdvGpmXEyMxQMX
         ARtwV3ZI1Qm3jf9vcoWDlEe449CrAYuTa84hC0oBhKve2s04mLS+6Wvmj+vmpIebN6Uu
         oZXl7NGXSiLxDuDirqD+wKW+TDRR2CQ/yIklFkyM/5OvyOrZwUOVMrAbV5zZ3MlZeseg
         L0nODkgV41B75kkYgw4Ru4FlUQbrF3OcX/7NyY87v1F+dam+9a5bLARln28dUakTAQVZ
         m3zQ==
X-Gm-Message-State: AOJu0YyeULLLIDLwiBOJ47KlBDC89djbWsBrT2V7eByIAsWtc3eFbWkM
	o/cmf5PkAAZ223a1Vy+BJzY=
X-Google-Smtp-Source: AGHT+IE6iIJQBzPABV2cyYEQs/jOBGsJ39Ar/sHlptyKt2nwnr2ZHJkRH9I7kuSy3D3KFB7d9LpuUw==
X-Received: by 2002:a17:90a:8911:b0:28c:8dc0:7eda with SMTP id u17-20020a17090a891100b0028c8dc07edamr1072224pjn.91.1703698821022;
        Wed, 27 Dec 2023 09:40:21 -0800 (PST)
Received: from localhost.localdomain ([2408:8207:2540:8c00:3708:559:ea20:9883])
        by smtp.gmail.com with ESMTPSA id qb4-20020a17090b280400b0028aecd6b29fsm17240262pjb.3.2023.12.27.09.40.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Dec 2023 09:40:20 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: liujianfeng1994@gmail.com
Subject: [PATCH 0/3] Add hantro g1 video decoder support for RK3588
Date: Thu, 28 Dec 2023 01:39:08 +0800
Message-Id: <20231227173911.3295410-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231227_094024_519771_C2F384A4 
X-CRM114-Status: UNSURE (   6.28  )
X-CRM114-Notice: Please train this message.
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

RK3588 has Hantro G1 video decoder capable to decode MPEG2/H.264/VP8
video formats just like rockchip's former socs like rk3399 and rk356x.

Tested with FFmpeg v4l2_request code taken from [1]
with MPEG2, H.264 and VP8 samples.

[1] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch

Jianfeng Liu (3):
  media: verisilicon: Add support for Hantro G1 on RK3588
  arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588
  dt-bindings: media: rockchip-vpu: Add RK3588 compatible

 .../bindings/media/rockchip-vpu.yaml          |  1 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 20 +++++++++++++++++++
 .../media/platform/verisilicon/hantro_drv.c   |  1 +
 .../media/platform/verisilicon/hantro_hw.h    |  1 +
 .../platform/verisilicon/rockchip_vpu_hw.c    | 14 +++++++++++++
 5 files changed, 37 insertions(+)

--
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
