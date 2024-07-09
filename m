Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA023C2BD09
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 16:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o/9y6vLU6x9pPQkXvQllV25mI0IWi9bgYws3x1QAl9k=; b=qvxp8Jb8qphRTz
	KsEpQpI7tfaYHL3ZtIj2jmTftxroHY0iS6hbudUQ+TMVohGprj0wQNraq6KI0h4GdA3lycdbSnV3i
	V7pYK5RlukRg1AgXOYD4c2QToec6klJk/MkmoJ9+120qfSMVFqA886Q7/MOjNHVmrVrpUx0INHtS1
	2FxA2sfiazYqEyn7cfyCS4BTU1Tm5mlQkUP6VLhIFzcrZIKAxJ2jv9SCi0RMxX9wftQllH5OXVR3a
	tgj/6HQLFUBphFWJBvOPS0r9nHjBlyITKKI3nLeQSW6C7fFuCMawubFTizCKQLw0fHbBSMyzAYyPo
	kxeR5htJKW/9k3pS6LRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRDWt-00000007tpu-0I8t;
	Tue, 09 Jul 2024 16:17:23 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRDWp-00000007toT-3VaH
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Jul 2024 16:17:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1720541836;
	bh=Xb6Ml21wBPBh19gBXrL81tVPdYZEYOFKPPlc+LqY/ME=;
	h=From:To:Cc:Subject:Date:From;
	b=i9EQr3NKcCAUdOzGy9IlJYRTkvLGOK8O+zzrtWLfy7KP9XiMe7Sw7P4fBE5uPhEcl
	 B+YXdAHMPiML/OJVoJSwLReK55MKgDHqUR2poehZyqQl0Fg3tE4pMDnfIjRix+YJdU
	 ntgnpFFoAzI/4W4q8TBbCK+yOfUyL5x29WPZbAgoKcDp2azxIExignFPn0QlAFHB7o
	 WD+t+I4wKxXPsWxMKUE+Tn8G8KutUJbNNymCtxsaSYZSdn+FtjOPsQ9hMz6Gfs5u9+
	 Vg3dQBlSHDoysDOgpx0pjVtM9ivu79zIiheptBFukl3tS2mdDZ4twj66ePhYiGJhkQ
	 oVgKa1qyqn+AA==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 646EC3781185;
	Tue,  9 Jul 2024 16:17:16 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.or,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 0/2] Enumerate all pixels formats
Date: Tue,  9 Jul 2024 18:17:08 +0200
Message-ID: <20240709161710.83109-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_091720_183736_4AE37E38 
X-CRM114-Status: UNSURE (   7.87  )
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

The goal of this series is to let userland applications enumerate
all the supported pixels formats of a stateless decoder without
setting all the possible codec-dependent control.
That offer a simplest solution for applications to discover
supported pixels formats and possibly let them doing smarter
choice between stateless decoders.

An example of how it can be used in GStreamer to discover the
supported pixels formats for stateless decoder is available here:
https://gitlab.freedesktop.org/benjamin.gaignard1/gstreamer/-/commits/v4l2codecs_enum_all_supported_formats?ref_type=heads

changes in version 3:
- Add a flag to inform userspace application that driver
  as take care of the flag.

changes in version 2:
- Clarify documentation.
- Only keep V4L2_FMT_FLAG_ALL_FORMATS flag in ioctl.

Benjamin
 
Benjamin Gaignard (2):
  media: videodev2: Add flags to unconditionnaly enumerate pixels
    formats
  media: verisilicon: Use V4L2_FMT_FLAG_ENUM_ALL_FORMATS flag

 .../media/v4l/dev-stateless-decoder.rst          |  6 ++++++
 .../userspace-api/media/v4l/vidioc-enum-fmt.rst  | 10 ++++++++++
 .../media/videodev2.h.rst.exceptions             |  2 ++
 drivers/media/platform/verisilicon/hantro_v4l2.c | 16 +++++++++++++---
 drivers/media/v4l2-core/v4l2-ioctl.c             |  3 +++
 include/uapi/linux/videodev2.h                   |  2 ++
 6 files changed, 36 insertions(+), 3 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
