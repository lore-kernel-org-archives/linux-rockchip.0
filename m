Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE022C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Dec 2021 08:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UBCSL4g1jjukz/GD+YaHwdlhVcYIuJFyakNBjh1y8Pg=; b=QgsqJWUvrHDdi0
	mykepGkGVnnio5TVw5jQ/HuYnlTYX7108mM2few202CZWD7J+gvU+hyvXA/XbiyPtHWTtp6FGuBjX
	Cte5twTwdMMTWtJ+Atcu4bEcyhpMbvDRhltyAqucmYpanv+MY0fG/IOdjO8knbE9wFNcq40N67sSD
	s2mBR5VOn3AHFMbrGddNb0z6Qr7uyl+ZUEEqTaf+HrHvLQhmpkMPuzM2+sWON42SmYhtQ2YX8lpUs
	ukJjEkQODQ2qWpZjTpCrv8BcDL47zTi7iNX6KhNS7iL1UvWHmWAwF6vuvqWbYHVhk6pLkX67a+NkQ
	wUTHFRxnHkChPd+oV4cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0gAe-00DwYo-0a; Fri, 24 Dec 2021 08:43:24 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0gAa-00DwWW-8w
 for linux-rockchip@lists.infradead.org; Fri, 24 Dec 2021 08:43:22 +0000
Received: by mail-pj1-x102b.google.com with SMTP id
 y16-20020a17090a6c9000b001b13ffaa625so11044344pjj.2
 for <linux-rockchip@lists.infradead.org>; Fri, 24 Dec 2021 00:43:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5DsPt2zNbbtIU1NI6wS2ot/7njOz7ta1uGVnZDlkFWM=;
 b=odTBL+Ss8EO5+U+uct7LVs0Pve7LC5QfIaNtLt32WSB6piHr9KdMp+/19pIllXd9zp
 qqullEMewlissvvB5beEXjBRmG2GkmKb3xVskbcX0xeGcFDFxH/jBcSZjCxpNSoOWql/
 Fi8hQhJE9K1K3FUT6DUkN00QUE0FjpE0lFVRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5DsPt2zNbbtIU1NI6wS2ot/7njOz7ta1uGVnZDlkFWM=;
 b=NhtO4vppXZBo0596NYIZIQpO8mXPoTEoOuhN2PLH4LYYomy4j9ik1b40csVTg6wAEr
 Yk2D4CaulbXykT3O46Wf5DXVtpUeUdsbzl0ifov1sENiGgYb/gwWHRfSdPM63AxIDwYa
 sE4g0IFniFbT+1s1VZpJtZ7/3pw7m81yZ997Z9+kyhgfAasgPgCRKMZqXfLeGfKwsIho
 OnDqbynBYDGJjEczJ6CArGNL/xz7oxL+di9eAWue2FhXkJXb5khFTpIcxx2iTqzY3e8V
 IVmArInyCnL/9gTN3NBHnMhl/1/tFcmSDg3yKCijvVgzQ4y1J8ADXMqtCk6CsJ9S0LVt
 Qx9Q==
X-Gm-Message-State: AOAM533LlRTTaJzYPxOkkoQytbpRucSSSAGNTQCy5twYZYEO1g3kjdPu
 gBTtaapw50OGMhkivqvd8dvkcw==
X-Google-Smtp-Source: ABdhPJyPRMLCBGrr/ppBW8e99WjUWf52RcTgYPg35ndZ15IoYOS+iG4iZ/CRCFWBrFVNLgJvmIUWlg==
X-Received: by 2002:a17:902:bd44:b0:148:a2f7:9d85 with SMTP id
 b4-20020a170902bd4400b00148a2f79d85mr5795145plx.164.1640335397029; 
 Fri, 24 Dec 2021 00:43:17 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:fd40:cbd0:c42a:3c26])
 by smtp.gmail.com with ESMTPSA id p13sm436369pgl.23.2021.12.24.00.43.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Dec 2021 00:43:16 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Tomasz Figa <tfiga@chromium.org>, Chen-Yu Tsai <wenst@chromium.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH RFT 0/7] media: hantro: jpeg: Various improvements
Date: Fri, 24 Dec 2021 16:42:41 +0800
Message-Id: <20211224084248.3070568-1-wenst@chromium.org>
X-Mailer: git-send-email 2.34.1.448.ga2b2bfdf31-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211224_004320_822915_AFA788FA 
X-CRM114-Status: GOOD (  12.80  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi everyone,

Here are some improvements to the Hantro JPEG encoder driver. This
finishes two of the TODO items.

Patch 1 cleans up the final register write sequence in the JPEG encoder
driver. This particular bit was a bit confusing and hard to understand
given the lack of context around the original wmb(). Was it used to
force all the register writes to finish or to make sure memory writes
were completed? In the end I stuck with what the other hantro decoders
were doing.

Patch 2 fixes a misleading register name.

Patch 3 implements cropping on the output queue with the selection API
for the JPEG encoder. This allows specifying the visible area slightly
smaller than the macroblock-aligned coded size. This bit can be reused
by other stateless encoders once they are implemented.

Patch 4 adds a JFIF APP0 segment to the JPEG encoder output.

Patch 5 adds a COM segment to the JPEG encoder output. This is used to
align the SOS segment payload area.

Patch 6 implements the V4L2_CID_JPEG_ACTIVE_MARKER control. This is only
used to signal the segments added to userspace. The driver ignores any
changes requested.

Patch 7 lets the encoder output directly into the capture buffer,
getting rid of the DMA bounce buffer.


Please have a look and test. I only tested this on the RK3399 with
gstreamer. The H1 variant is untested by me.

To test the selection API bits with gstreamer, the v4l2videoenc plugin
needs to be patched. A gst_v4l2_object_set_crop() call should be
inserted after gst_v4l2_object_set_format() in
gst_v4l2_video_enc_set_format().


Regards
ChenYu


Chen-Yu Tsai (7):
  media: hantro: jpeg: Relax register writes before write starting
    hardware
  media: hantro: Fix overfill bottom register field name
  media: hantro: Support cropping visible area for encoders
  media: hantro: jpeg: Add JFIF APP0 segment to JPEG encoder output
  media: hantro: jpeg: Add COM segment to JPEG header to align image
    scan
  media: hantro: Implement V4L2_CID_JPEG_ACTIVE_MARKER control
  media: hantro: output encoded JPEG content directly to capture buffers

 drivers/staging/media/hantro/TODO             |  7 --
 drivers/staging/media/hantro/hantro.h         |  1 -
 drivers/staging/media/hantro/hantro_drv.c     | 51 ++++++++----
 .../staging/media/hantro/hantro_h1_jpeg_enc.c | 44 ++++++-----
 drivers/staging/media/hantro/hantro_h1_regs.h |  2 +-
 drivers/staging/media/hantro/hantro_hw.h      | 11 ---
 drivers/staging/media/hantro/hantro_jpeg.c    | 51 ++++--------
 drivers/staging/media/hantro/hantro_jpeg.h    |  2 +-
 drivers/staging/media/hantro/hantro_v4l2.c    | 77 +++++++++++++++++++
 .../media/hantro/rockchip_vpu2_hw_jpeg_enc.c  | 47 ++++++-----
 .../staging/media/hantro/rockchip_vpu_hw.c    |  6 --
 11 files changed, 186 insertions(+), 113 deletions(-)

-- 
2.34.1.448.ga2b2bfdf31-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
