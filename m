Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4B17CDB47D
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 03:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ts3uaaP3arQdBoNIxKZysIRyJ3ohI3FixRksY07hpw4=; b=ebatRyKUNnMI5G
	icFiN+qxyBDXfohG3vPufwkE5H3ExiTWCJ1Ee8v5ckrirmkW1kEv5oLHbhnZgWhzDd/jC4yD2RHBC
	poHAPDMW249kpe/zOFancvez6rzCCEyal3hqi5uLY1+J5TKQsjXNCc/uRrrtLDRI4hL3cpQsOHMMb
	CRKPMqFOMo3ygQbPK8K0T0lhSusIMEW9yRKGm+qK/e2XzVBdZpHfIEwodMInQIkl41z9YXiNPg9gv
	atioPk4pEA6KRLSyUdcrtvnwQGTX9QK34aD4ZsZrdHFW4ZfWgMH+8lVUQYkGu48XfGIJJrjnlMcWt
	bwBQhM8bggwmcey6pWkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJk4D-0000000BRcl-2WJu;
	Fri, 14 Nov 2025 03:01:41 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJk45-0000000BRbi-42dR;
	Fri, 14 Nov 2025 03:01:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1763089287;
	bh=ZCItdMAKSBYnoQbmuGe/KriN1j9Lnyjo9QM9qRu8/Tg=;
	h=From:To:Cc:Subject:Date:From;
	b=fO2DfZ3anN63JQRdUKZKbXQvW89bTHJGrjDtoZc0l4DnjlGkv0Wel/oKZnNbkOGEK
	 JsjyJIThA99jtvIioB6Akn9r16cA9NwP3uql0Zzl5YFepprArIuVgyBrPH57/ZzVEZ
	 Xo2KJomytJnq/4crzXj54OJvgRzrFxUIJJifeS5xYi14vZqcQvdYyrYw/roBii9C2Z
	 dOxbRjpXHrj0eEKmp4qxpQdqs8mcpsyOFIrO3JBkArcbxMVJhQrmRzX/iozkr/xfmq
	 GnXqIDj5NmI4i/9geKHZoBulQrJVlTnHVwoOFfbG9iEJzmzmlyPoRPu6WjGq9FoeRK
	 YaAWv52iBCWyA==
Received: from debian (unknown [171.76.81.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4776517E0202;
	Fri, 14 Nov 2025 04:01:21 +0100 (CET)
From: Vignesh Raman <vignesh.raman@collabora.com>
To: dri-devel@lists.freedesktop.org
Cc: daniels@collabora.com,
	helen.fornazier@gmail.com,
	airlied@gmail.com,
	simona.vetter@ffwll.ch,
	dmitry.baryshkov@oss.qualcomm.com,
	lumag@kernel.org,
	robdclark@gmail.com,
	robin.clark@oss.qualcomm.com,
	guilherme.gallo@collabora.com,
	sergi.blanch.torne@collabora.com,
	valentine.burley@collabora.com,
	linux-mediatek@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	amd-gfx@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org,
	virtualization@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] drm/ci: uprev IGT and enable apq8016, apq8096
Date: Fri, 14 Nov 2025 08:30:49 +0530
Message-ID: <20251114030056.1139570-1-vignesh.raman@collabora.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_190134_172647_05C754E5 
X-CRM114-Status: UNSURE (   7.50  )
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

This series includes,
- Adapting to recent changes in Mesa CI, such as:
   - LAVA overlay-based firmware handling
   - Container/job rule separation
   - Removal of the python-artifacts job
   - Use lava-job-submitter for submitting jobs to LAVA
   - Various other CI improvements
- Move bare-metal jobs for apq8016 and apq8096 to LAVA, as these devices
  are migrated to Collabora LAVA farm.

Pipeline: https://gitlab.freedesktop.org/vigneshraman/msm/-/pipelines/1546424
MR: https://gitlab.freedesktop.org/drm/msm/-/merge_requests/200

There will be a follow up series to update expectation files for the
other jobs.

Vignesh Raman (2):
  drm/ci: uprev mesa
  drm/ci: Move qualcomm baremetal jobs to lava

 drivers/gpu/drm/ci/arm64.config               |   1 +
 drivers/gpu/drm/ci/build.yml                  |  22 ++--
 drivers/gpu/drm/ci/container.yml              |  28 +++--
 drivers/gpu/drm/ci/gitlab-ci.yml              |  95 ++++++++++++----
 drivers/gpu/drm/ci/igt_runner.sh              |   4 +-
 drivers/gpu/drm/ci/image-tags.yml             |  22 ++--
 drivers/gpu/drm/ci/lava-submit.sh             | 101 ++++++++----------
 drivers/gpu/drm/ci/static-checks.yml          |   1 +
 drivers/gpu/drm/ci/test.yml                   |  80 ++++++--------
 .../gpu/drm/ci/xfails/msm-apq8016-fails.txt   |   4 +
 .../gpu/drm/ci/xfails/msm-apq8096-fails.txt   |   2 +
 11 files changed, 213 insertions(+), 147 deletions(-)

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
