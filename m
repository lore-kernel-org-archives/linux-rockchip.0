Return-Path: <SRS0=vbLC=C2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 659AAC433E2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2020 10:52:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C766E2074B
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2020 10:52:42 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="WDZLBG1j";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=xs4all.nl header.i=@xs4all.nl header.b="fsmOp7J6"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C766E2074B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PWUnoXe0lH7beILCt1nOa7A6qQVp+1J9qPbIRxErJ6E=; b=WDZLBG1jEJpLpl2J5GuHjxt8+
	L7cU2y80Hnt2l0KjZF8d6JcaGj/n+MZsVy78UVxxnr1iRbdLIzXDUyboyBgIUJSLeXEkwV6ZAQZ3J
	TsSCkUQgC8yybsF0ONGtGCf8tk90OQxKYzxNc0ZcT90BUYHY4kuRBXy73fhcpgu3FYUyLUIR/4/bW
	x8DPNSVDBRrjvHrIIWSB3N88jHmXjfWJOZ2CSUlooItm5y/rzE4++36pFdPSKif9welTWQxmBCdX0
	oMcipvZj570stlgTWmoVwANVgfgkzDKp3hiCQ1Qs4OtQUfx0tFI8NtkugMUcfP8X0s5JycRRLlifo
	kuZtG/gQw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kIrWn-0002Jg-Cm; Thu, 17 Sep 2020 10:52:37 +0000
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIrWk-0002IH-Jy
 for linux-rockchip@lists.infradead.org; Thu, 17 Sep 2020 10:52:35 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud8.xs4all.net with ESMTPA
 id IrWhkLvj9PTBMIrWiklf2v; Thu, 17 Sep 2020 12:52:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1600339953; bh=qw/vl8krotYox32Fj8B8RS0ag7zOqtWX5XzkNcOM5Ts=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=fsmOp7J6jOEoj1Fp3zlv+mGux7q1InNZm8Fsv5DWoQaEG2DsppxlknguCJ5q5g1+D
 7JUwj8vUULsdLic34JqqtzaZukMA+j8jlyB6UMPJfuj/ag6b0+gHS4z24Pg8omZgjH
 MCM4YOAstcDe8DmCSbYRLfPPTc26tEG2Ew6vFgWFrYW/n2hkp+av5mk+QCGEvou0Bw
 fHSc1/NCCAFXgTTR3e2fiSg5YVCp2rbqXnqlUznGfIxbSHYwaeo6cIzB2NeMSAVDp9
 GWF5ti5jrX0I9WWqADLKfjj5lZmr9Mpmah8+w07vxbmDCONEiext4L7h+/pfEQ8eGQ
 ajh7a7Q/1jR/g==
Subject: Re: [PATCH v2 0/2] media: admin-guide: add documentation for rkisp1
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200818102703.30471-1-dafna.hirschfeld@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <f696e967-ce1f-e7c1-a74b-ff944332bd67@xs4all.nl>
Date: Thu, 17 Sep 2020 12:52:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200818102703.30471-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfCD1jy65PS+kTyhgcDApxcAWIaqzTC3CujAyf+wkJsmV1Dkr1xXrWXZlc/hzJ9mJbxT4mmYcy62qWLrozHjply7yAEuyYn9AXHw3+YvuCq0bjFzA8X7C
 kk22Gfdsw/io3AIvKqLEPpr+hfsmERteyi+aSKdlLFi/+3rMGXFv88N0uT/SWvNKQqpE70kI1kiYgpW6VW4cWqxYTLHMxfW3WejcdAEZOiXMRbMGZmGhWQbX
 ckc+mhUeGfYCKFdAWm7/TJ1ZIlMYqlmSFJWl7aLvnOxfOAk//7qHP86JCDooyAZIuVrLDu4OlaiWCDwSpEiGqCC+FGVz76hH5OMg74qS0Kt1UdGdAsHAW0tH
 dzoaqLPgpZcEpI8mjja2hCIOH2Dn9Ad9WPTIffh8mxow17aCFc1/qxqj3TKj8iBKkp113Z3psxaZNx/sWkpOfrTflJpFqFGE1xYYwAKh2T6SkuzitJvduuZ9
 q8d+n4VZBZpZyLv8KxS4kwxrOhrChzu87FpSeaLDVLYVakOLlhpkLvMRbZsBjjPb3Nq/hJmjvGi3Xqa/6BpAykStbJT4OcXKPmqz4GADPfxLRL2ve7iM9XLk
 qhfHN/FhML7NSD25i15tdRlZHVXqU5/DCmoQw/Vy47n02OI8GHoOy7KHuJi2u3YM8cY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200917_065234_744607_7F59AA8D 
X-CRM114-Status: GOOD (  17.58  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 18/08/2020 12:27, Dafna Hirschfeld wrote:
> Two patches that document the rkisp1 driver in the Documentation
> directory.
> 
> patch 1 adds documentation to the specific metadata formats
> used by the driver.
> 
> patch 2 adds a documentation of the driver.
> 
> The documentation assumes that the patchsets:
> 
> "v4l2: add support for colorspace conversion API (CSC) for video capture and subdevices"
> https://patchwork.kernel.org/project/linux-media/list/?series=334393
> 
> "media: staging: rkisp1: add support to V4L2_CAP_IO_MC"
> https://patchwork.kernel.org/cover/11680993/

The MAINTAINERS file needs to be updated for these new doc files. Just post a new patch for
this, no need for a v3.

Regards,

	Hans

> 
> were accepted and it documents the features that those patchsets add.
> 
> changes from v1:
> ----------------
> - limit lines within 80 chars
> - rephrasing and fixing issues due to comments
> 
> Dafna Hirschfeld (2):
>   media: pixfmt-meta-rkisp1.rst: add description of rkisp1 metadata
>     formats in pixfmt-meta-rkisp1.rst
>   media: admin-guide: add documentation file rkisp1.rst
> 
>  Documentation/admin-guide/media/rkisp1.dot    |  18 ++
>  Documentation/admin-guide/media/rkisp1.rst    | 181 ++++++++++++++++++
>  .../admin-guide/media/v4l-drivers.rst         |   1 +
>  .../userspace-api/media/v4l/meta-formats.rst  |   1 +
>  .../media/v4l/pixfmt-meta-rkisp1.rst          |  49 +++++
>  .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    |  23 ---
>  .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      |  22 ---
>  7 files changed, 250 insertions(+), 45 deletions(-)
>  create mode 100644 Documentation/admin-guide/media/rkisp1.dot
>  create mode 100644 Documentation/admin-guide/media/rkisp1.rst
>  create mode 100644 Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst
>  delete mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
>  delete mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
