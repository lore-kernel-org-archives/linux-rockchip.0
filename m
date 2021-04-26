Return-Path: <SRS0=k14b=JX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 885BCC433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 07:39:07 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C466C6137D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 07:39:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C466C6137D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MBOR1wfHy3qPPmbqq21rmaMLHMBK8h01MEIhhTZd8Do=; b=j6gkefvrF0HSsrtqq8B/iR0Y+
	5Sqanm+YFYM4hi1Fj4mSS1zovKIMZDG8mz7xlFF2qmdSpnyos6fu0+v/Sv45BWtatgDcSiHOEoJiz
	jUiQ+IE+OwXhsY/WKZjx27dY9QCwwwypu6WiDx3ManfCJiLYbNowWTmUy9AlsIvBfxMytKGJHsagZ
	utPYTc/g0JomvQ1w06ptV2+bnrq8vBJ8oqjzcvpLBbQLQ6HjIs7IUN7VBmY96Bgy1je9HbpVbuKK3
	tK6nAnhnKmwC0vj5lgaLbn1j3cvMGamx6xNwuezRx+iMQwBT9nhiwaaKhAl67VLDQ5qNsDUtc7OIl
	Xw996OHrA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lavpc-0079K1-Vj; Mon, 26 Apr 2021 07:39:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lavpZ-0079It-Uv
 for linux-rockchip@desiato.infradead.org; Mon, 26 Apr 2021 07:38:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=elDvNl7MRGhnSaMeTRabVZr6W4+83sF0w7OYgrADlDA=; b=wZKBA03GClXqi5XYvXIJAHoMnF
 W5WD0uqYhocd440+K3mf9SfnDGtUU+c7kqcvzmUkbCrPAIHtm7zDEoSEgCWNBNpS7OIoRU5ZATJ53
 wn+oO2TfdNYTGMmv4P4JeQ7c3bJxuxXezM6nRnf+VSk7s4fviAC9zz9CMUu2FT6OZDSmaPKdUZ8nH
 J1WNQVbN17qm66ykc2mMcC/131SC+hsyzpqmXjmenuKVfBgoIy7cIWWOqO4LtfTXir0faJCIKY5l5
 On8KyKeXALmXzdJKpw4nVtnnZVa2eLpRBACkAYju2OL2XhZ+m+xxMn7A5uDiqZmPY5t98DVwHe4A9
 57KNM5LA==;
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lavpW-00FnIa-MK
 for linux-rockchip@lists.infradead.org; Mon, 26 Apr 2021 07:38:56 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id avpClOeeRvTEDavpGlmTlZ; Mon, 26 Apr 2021 09:38:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1619422722; bh=elDvNl7MRGhnSaMeTRabVZr6W4+83sF0w7OYgrADlDA=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=GciWVuAzaYg3te3C6QKiIYoXXxwdA1u7ZKr3Zc5HRzDPVmRYr9EdhZfkLEgya+whn
 iahJlfuCbYfLpwjnTCqp48xdsqZbxVfONEIVpBDD92l67GIZAmUbyCCFDSK4STvvM8
 5DtBDhxa4ib8KdsNKxOACOWjJz9A5ZW3K9b73Hn1yGQqXjwSQvao6f6BBU9DuG7uGs
 6eWbIRadkdiss7/R3QUDzOQ7YGJbFf3iczkvkiXAR191xvS5LEEYXXMKHg4X/QuhwS
 nuoFOkSailehnjkU54CMTxit5EEycXWk0eVOhAO3PkBeCB6XIT56q5k2XVsg18QjDg
 KPCn6w/cnlk7w==
Subject: Re: [RFC RESEND 0/3] vp9 v4l2 stateless uapi
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@collabora.com
References: <20210421100035.13571-1-andrzej.p@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <23a4ed00-0993-3567-2664-1fcc643915ab@xs4all.nl>
Date: Mon, 26 Apr 2021 09:38:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210421100035.13571-1-andrzej.p@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfP2oPiPAfvVijrBC5AwtSUwdtPowUOisD20CQdXB+cIrY43Cd7ZU9hT18AO5hx/1FZEjGf6cmMkCfL5cjhE95Bo2BhR0Ue3BBHTYJeBTn4f32xfTGxR4
 aOaEdreDM5vDK4AVQmtIsOcpL5N5RYxV11OWSJxmejrz1ixlqJfpjKA/hR02ER8q4pN9R8yoHAOyBXg08tPwyCg/Q9vQZeHCOYplpwvqBUpnIm6xymjOprk7
 OXX/7fIpoCkxa8aZnf7TKL3UKlgK9johnd3zVOoLWBNy1pBjyW2KSL1bufIwsRXFqYK90m6zikWStHfx+ORD5BBSw6GL+4B13JsFNJcLthnzrDLBPMs/kbAj
 +981iciMsaRbpmT/GOP9oqakWWzxioRlCN9qOAvcbLv/SYbDdoQxiTQYWeBiJQpuXNgDHPnjYpirUQRETKACFWFsK/QrdSCt+Tnq2HHnuKdyKYkxHkk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_003854_889135_C666F46B 
X-CRM114-Status: GOOD (  27.00  )
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

Hi Andrzej,

Thank you for working on this!

On 21/04/2021 12:00, Andrzej Pietrasiewicz wrote:
> Dear All,
> 
> This is an RFC on stateless uapi for vp9 decoding with v4l2. This work is based on https://lkml.org/lkml/2020/11/2/1043, but has been substantially reworked. The important change is that the v4l2 control used to pass boolean decoder probabilities has been made unidirectional, and is now called V4L2_CID_STATELESS_VP9_COMPRESSED_HDR_PROBS.
> 
> In the previous proposal, to queue a frame the userspace must fully dequeue the previous one, which effectively results in a forced lockstep behavior and defeats vb2's capability to enqueue multiple buffers. Such a design was a consequence of backward probability updates being performed by the kernel driver (which has direct access to appropriate counter values) but forward probability updates being coupled with compressed header parsing performed by the userspace.
> 
> In vp9 the boolean decoder used to decode the bitstream needs certain parameters to work. Those are probabilities, which change with each frame. After each frame is decoded it is known how many times a given symbol occured in the frame, so the probabilities can be adapted. This process is known as backward probabilities update. A next frame header can also contain information which modifies probabilities resulting from backward update. The said modification is called forward probabilities update. The data for backward update is generated by the decoder hardware, while the data for forward update is prepared by reading the compressed frame header. The natural place to parse something is userspace, while the natural place to access hardware-provided counters is the kernel. Such responsibilties assignment was used in the original work.
> 
> To overcome the lockstep, we moved forward probability updates to the kernel, while leaving parsing them in userspace. This way the v4l2 control which is used to pass the probs becomes unidirectional (user->kernel) and the userspace can keep parsing and enqueueing succeeding frames.
> 
> If a particular driver parses the compressed header and does backward probability updates on its own then V4L2_CID_STATELESS_VP9_COMPRESSED_HDR_PROBS does not need to be used.
> 
> This series adds vp9 uapi in proper locations, which means it is a proper, "official" uapi, as opposed to staging uapi which was proposed in the above mentioned lkml thread.

Why? I rather liked the way that the other codec APIs started life in a private header
(like include/media/vp8-ctrls.h) and were given time to mature before moving them to
the uAPI. Is there a reason why you think that VP9 doesn't need that?

> 
> The series adds vp9 support to rkvdec driver.
> 
> Rebased onto media_tree.
> 
> I kindly ask for your comments.
> 
> TODO:
> 
> - potentially fine-tune the uAPI (add/remove fields, move between structs)
> - write another driver (intended g2 @ iMX8)
> - verify the added documentation
> 
> Regards,
> 
> Andrzej
> 
> Andrzej Pietrasiewicz (1):
>   media: uapi: Add VP9 stateless decoder controls
> 
> Boris Brezillon (1):
>   media: rkvdec: Add the VP9 backend
> 
> Ezequiel Garcia (1):
>   media: rkvdec: Fix .buf_prepare

Isn't this just a bug fix? Should it be part of this series at all?

If it is just a bug fix, then please post it separately and let me know if it is
a fix that should go to 5.13 (i.e. the current mainline) or if 5.14 is fine.

Regards,

	Hans

> 
>  .../userspace-api/media/v4l/biblio.rst        |   10 +
>  .../media/v4l/ext-ctrls-codec-stateless.rst   |  523 +++
>  .../media/v4l/pixfmt-compressed.rst           |   15 +
>  .../media/v4l/vidioc-g-ext-ctrls.rst          |    8 +
>  .../media/v4l/vidioc-queryctrl.rst            |   12 +
>  .../media/videodev2.h.rst.exceptions          |    2 +
>  drivers/media/v4l2-core/v4l2-ctrls.c          |  244 ++
>  drivers/media/v4l2-core/v4l2-ioctl.c          |    1 +
>  drivers/staging/media/rkvdec/Makefile         |    2 +-
>  drivers/staging/media/rkvdec/rkvdec-vp9.c     | 2846 +++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec.c         |   62 +-
>  drivers/staging/media/rkvdec/rkvdec.h         |    6 +
>  include/media/v4l2-ctrls.h                    |    4 +
>  include/uapi/linux/v4l2-controls.h            |  455 +++
>  include/uapi/linux/videodev2.h                |    6 +
>  15 files changed, 4190 insertions(+), 6 deletions(-)
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
