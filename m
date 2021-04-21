Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE70C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 10:00:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F3F3461447
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 10:00:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F3F3461447
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=l8wUgb+D3s5qdwndqPrsQtdUhp76RmOUj9hTYsDd0ZA=; b=Sqh+o2rSUrOx4z0F3wGaIhthpc
	j8hK/csHbVpKIbz8zs2WI737fBmmod+XCBmy0K/dkenOhbzahYgCEbntAf3mwakirfFYgkfo/uhnG
	8dUY/rz6e3vDw06x1Eu6pUqeboIaCiRL0ymTg5HWbshy4inRn71q28tELjaTMGcD7adm5e0LCPnqu
	SU5mZBKHHh99uY4mU4ySg04Him0LSNnrffGnj4uhJkOKZAGtksZGp2gCzMJv+FyMHVyIqppP8uuEB
	h0yb9J4J801erwHw6C6IZyDTg1wvfuGvH24e+AFxlqArUtOGRw1n5mkDXb4kUqWb6dlQPJlVz+xQN
	Gp+oIHjg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZ9f9-00EBu2-68; Wed, 21 Apr 2021 10:00:52 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ9f6-00EBss-O6
 for linux-rockchip@desiato.infradead.org; Wed, 21 Apr 2021 10:00:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=JS6/Ugb0YNHx2y+uGlQ90VtLacnx5Qc0tvB7Jb+Ec6Y=; b=AUv0FlqZ5tndqoO92T2XISnQu/
 zEpH3gp8xlCpVBAhHsh22giQbVaMfdpZfi/WY8TqaNUr1Ya2UZO1+KLzK9pFPjty/EdawGAs6JNQh
 /s2YDwpfUjmDX6VdeAVpi29+rDL9w4vseyn0V88FmYW0obK7G73wb/hcesoUy8QY68kV0AXIR2+bc
 J0ZHg/0YDbbOSLZRYKNscZaF6z4xD8E7wbYzsaLuIqRxFzF3ZuQ9CJFxVj+1FvW2Gu0VScP4hTLqo
 dZIOdG90QpbHIx6GqNOBcJ6mYPacBPJ8pxZZdkcJZbFEUzEqQwrmSR7yKkAqhLEAeDkxi4Ll6bhY9
 TUXxtYyQ==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ9f1-00CmjP-He
 for linux-rockchip@lists.infradead.org; Wed, 21 Apr 2021 10:00:47 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id B6AD01F42D49
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, kernel@collabora.com
Subject: [RFC RESEND 0/3] vp9 v4l2 stateless uapi
Date: Wed, 21 Apr 2021 12:00:32 +0200
Message-Id: <20210421100035.13571-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_030043_734480_2BDEADF2 
X-CRM114-Status: GOOD (  17.04  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Dear All,

This is an RFC on stateless uapi for vp9 decoding with v4l2. This work is based on https://lkml.org/lkml/2020/11/2/1043, but has been substantially reworked. The important change is that the v4l2 control used to pass boolean decoder probabilities has been made unidirectional, and is now called V4L2_CID_STATELESS_VP9_COMPRESSED_HDR_PROBS.

In the previous proposal, to queue a frame the userspace must fully dequeue the previous one, which effectively results in a forced lockstep behavior and defeats vb2's capability to enqueue multiple buffers. Such a design was a consequence of backward probability updates being performed by the kernel driver (which has direct access to appropriate counter values) but forward probability updates being coupled with compressed header parsing performed by the userspace.

In vp9 the boolean decoder used to decode the bitstream needs certain parameters to work. Those are probabilities, which change with each frame. After each frame is decoded it is known how many times a given symbol occured in the frame, so the probabilities can be adapted. This process is known as backward probabilities update. A next frame header can also contain information which modifies probabilities resulting from backward update. The said modification is called forward probabilities update. The data for backward update is generated by the decoder hardware, while the data for forward update is prepared by reading the compressed frame header. The natural place to parse something is userspace, while the natural place to access hardware-provided counters is the kernel. Such responsibilties assignment was used in the original work.

To overcome the lockstep, we moved forward probability updates to the kernel, while leaving parsing them in userspace. This way the v4l2 control which is used to pass the probs becomes unidirectional (user->kernel) and the userspace can keep parsing and enqueueing succeeding frames.

If a particular driver parses the compressed header and does backward probability updates on its own then V4L2_CID_STATELESS_VP9_COMPRESSED_HDR_PROBS does not need to be used.

This series adds vp9 uapi in proper locations, which means it is a proper, "official" uapi, as opposed to staging uapi which was proposed in the above mentioned lkml thread.

The series adds vp9 support to rkvdec driver.

Rebased onto media_tree.

I kindly ask for your comments.

TODO:

- potentially fine-tune the uAPI (add/remove fields, move between structs)
- write another driver (intended g2 @ iMX8)
- verify the added documentation

Regards,

Andrzej

Andrzej Pietrasiewicz (1):
  media: uapi: Add VP9 stateless decoder controls

Boris Brezillon (1):
  media: rkvdec: Add the VP9 backend

Ezequiel Garcia (1):
  media: rkvdec: Fix .buf_prepare

 .../userspace-api/media/v4l/biblio.rst        |   10 +
 .../media/v4l/ext-ctrls-codec-stateless.rst   |  523 +++
 .../media/v4l/pixfmt-compressed.rst           |   15 +
 .../media/v4l/vidioc-g-ext-ctrls.rst          |    8 +
 .../media/v4l/vidioc-queryctrl.rst            |   12 +
 .../media/videodev2.h.rst.exceptions          |    2 +
 drivers/media/v4l2-core/v4l2-ctrls.c          |  244 ++
 drivers/media/v4l2-core/v4l2-ioctl.c          |    1 +
 drivers/staging/media/rkvdec/Makefile         |    2 +-
 drivers/staging/media/rkvdec/rkvdec-vp9.c     | 2846 +++++++++++++++++
 drivers/staging/media/rkvdec/rkvdec.c         |   62 +-
 drivers/staging/media/rkvdec/rkvdec.h         |    6 +
 include/media/v4l2-ctrls.h                    |    4 +
 include/uapi/linux/v4l2-controls.h            |  455 +++
 include/uapi/linux/videodev2.h                |    6 +
 15 files changed, 4190 insertions(+), 6 deletions(-)
 create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
