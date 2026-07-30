Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6245FC5516F
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 20:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fypdxAIOhPjmtJD4Ykdohpkkir/BYllVPbZwlqk6vGk=; b=AIg49eHgfbLPzK
	c04K+InwT5/3Rk7H3IFaCAYpUfUn32e5ulQeNU9HlXzVkniPfeA1ILwZK9uBVLc0gGa1fl4iqnzt0
	aD7SisziF+3EBR5W4zimUp9A+chtm8brRqrvP6Yp56nbO8CJmH+Thmxu2eplK0iNaSBwyCbZK5ZcX
	NP4cLyRY9m/1OCg0CyPllbBgFApBn/vZ4sO2duKcJlt1iXwCJvITGxKs0xUfDsGr2I9DP1MjKYrK+
	NTRpkAIvhBrIuK7Il7d5HZ68YRDpM/wijEwBI/HoSbOSIOwwn/dcwyR5vK3TC/5WOkCg5RfF2Tcfq
	NK9wLkj6IvwjmjBuuRAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpWyw-0000000BI9l-1BAx;
	Thu, 30 Jul 2026 20:03:54 +0000
Received: from flow-a6-smtp.messagingengine.com ([103.168.172.141])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpWys-0000000BI8w-3E5i
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 20:03:52 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailflow.phl.internal (Postfix) with ESMTP id F12A813802F9;
	Thu, 30 Jul 2026 16:03:49 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Thu, 30 Jul 2026 16:03:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1785441829; x=
	1785445429; bh=wsRwtYPiWPwOihy5L2wDTh79fTBcr++dNWiRhirplQE=; b=R
	+M3fnWS3HBCMdN8QuwqTw421+M6QHhxWAGgcQPtqnQjXlD8wooNpPQTLMoPxp4iP
	38Qhg0gGZhkjYoc0+uajJ0xHsADLHLF5SjBMf29lUMBr55g4Sqmk0qWTicmUpQjc
	eFOadKJre3oFM3G0oe6xRDgdyTfpfqJ+U2HYnsm01RWaEyEJGbREhmj9z2uNZGJo
	olK4B0QymF5HzQcTm6yfy6mwSYuFpZQ3XSmYm+V7MTKoaexZQsCkBG/uIWQPjXFr
	p+FNwh4/bCKiqRo5RBRtYKk1opcOn+Qm9UNOzCPJA8yjgxqq86FpDsrCjWp4cUd1
	cIwIcZ0C7XIFWoTG0eOug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1785441829; x=1785445429; bh=w
	sRwtYPiWPwOihy5L2wDTh79fTBcr++dNWiRhirplQE=; b=Ef4YK9SSi5/l4mXRs
	YSFiF0fvsb8R4HOLTCFOxB88xB9aPaAscwd4rNgHGyTp2LDrz8T/VDuUl/K/5Wwf
	+UPk/LVDa83pjYK5mzNG8bmbl359kWNMXHeNaY2z2ClTntQ6nHipOY12WyU1vTGe
	C6AbLE1rsNK9lOWVDT2C8d2t66gc02AAEfabPHFpftzdJsEqEu00GEsELn9uzf+Z
	rKg8YDeWv3HUpYP3OgUPgnPKf3dmEQOXTw1Bwaj4IHC2PT1Tn7oBrmalknTDdHR3
	jfZremwzm9f5Qeb2l9YKnHHYO5ofrGGp/6na2uTj+vBjfyNH8SziZnyGwe41944i
	Noi5A==
X-ME-Sender: <xms:Ja5raj9CM_-da7wtwjnsX6gJh5TR_My6xVmHrAVezyjGjaZ81X5zpA>
    <xme:Ja5ranUqRt4PxTc6VesygKz9M6oHwUiWXYG5-9gPQWJYlxCzmBPH7b1wyZABYM_Ad
    fVhRTiVNL_MD49CsUydh7qmCtNtzR3OkoNhEWpuNuU_VeSfoLZLGFY>
X-ME-Received: <xmr:Ja5rauosStbIbjI7iocLpZThCCJw3icrkvi6avnyq9f2nXSVtFjCHPA8QlNxc8mDhrDsKfqxyQ>
X-ME-Proxy-Cause: dmFkZTFWVQWfMS+5tC6bI3m4/UgaypqXoVFSmfpla27ub6OGal4rQL05r3aISmbtOY5LyN
    hiajqQxoHWQTLgBNL61ofo86pws/koO/Q4UQcgFGNTIrXw42p19/PXBiB/HqA+dkTSyuns
    3JuPew0Bn4iFp/kttfBEpawLiwTTjwkV9tlrgcCnZ22YOi6XPUN2lOOlEHvFuhsRSOeIhE
    O5Kdhsj18Qm1sqcCxD2Yrk/hZudFD+E4F9khBNcOMkhQ/HJf+HUZx9MjDFCUCE/oahN7Bo
    ziiAhU5tP/1kOztWIM+hjKF4XKdxL6/nyq6MEpXQNNq3YySBkdfjAX+HiiwLQaQq197qgs
    33KU4RlHtNQJgawU+QL/IroYANHsoN4DSFPGMtfO5TQExhN8DSXIDOF0/ejYZToNI18y76
    xngYN//7n0QZV95kBFueKrCCVehJOoMPN1AAUIMLDhgFlSlBK9DO9D6MrqaZ2Cng1iOurw
    yuZvNV+tiN5bqSgl1J2igE87/gxqkqH2oYrL7zxuC9YWbMbm4RY5s0GzM2MAsuTLJiT01D
    RxZWtx/LfI9hejzxq1mHmtBQ0aCv4sE1kA/Luo+WgtckXSoiDJvTq0Eo6L+i2FFAycNxWy
    CpoDddBfR0pwNYghnFaINctYmDIOEEsW6zmoR6vDB8s/k/LiAZ3bnRWOwQ+A
X-ME-Proxy: <xmx:Ja5rapkZNMmYXD46aEy41Og_k_i0tdKPg12zqSuTdM0TQfCYdfN_hA>
    <xmx:Ja5rau15Izb1qUDbr2Q8u1iZx7NPzeYgCq_gl6F9BSXFl0DB1NZDqA>
    <xmx:Ja5ramRmYAECj6PrTicUP5nr1WVWTCn5ARMO8_YEq5rW25EoUmqFOw>
    <xmx:Ja5ranxu8S5AkmXATI2O9b-DaCVQtFBUn3f-H4T30OwOa6PMdDhIFw>
    <xmx:Ja5ranMxzsk0fhu6IWO2TsWCEZ241A8XVOUzqMfL5vwpUk1aWILRZXpE>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 30 Jul 2026 16:03:46 -0400 (EDT)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: royalnet026@gmail.com
Cc: tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Jiaxing Hu <gahing@gahingwoo.com>
Subject: Re: [PATCH 2/2] accel/rocket: keep core slots stable across unbind and rebind
Date: Thu, 30 Jul 2026 23:32:56 +1200
Message-ID: <20260730113256.1418091-1-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260730080355.177422-3-royalnet026@gmail.com>
References: <20260730080355.177422-1-royalnet026@gmail.com> <20260730080355.177422-3-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_130351_522869_484C0643 
X-CRM114-Status: GOOD (  12.03  )
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

Hi Igor,

I like this one. Making .dev the liveness marker is the right shape, and
the analysis of the three jobs num_cores was doing is exactly right.

But making .dev load-bearing needs one more site than the patch touches:
rocket_probe()'s failure path never clears it.

  rdev->cores[core].dev = &pdev->dev;
  ...
  ret = rocket_core_init(&rdev->cores[core]);
  if (ret) {
          rdev->num_cores--;
          if (rdev->num_cores == 0) {
                  rocket_device_fini(rdev);
                  rdev = NULL;
                  devres_release_group(&drm_dev->dev, rdev_group);
          }
  }

Before this patch that was harmless, because every lookup was bounded by
num_cores and the slot fell outside it. After it, the slot stays marked
live while its rocket_core is half-initialised.

It only bites when the failing core is not the last one bound. If
num_cores drops to zero the whole cores array is freed by the devres
release from patch 1, and the stale .dev goes with it. So the case to
test is core N failing to init while cores 0..N-1 are already up,
easiest with a forced error return in rocket_core_init(), since a real
-EPROBE_DEFER retries rather than failing.

What that leaves behind:

 - find_core_for_dev() finds the slot, so the runtime PM callbacks run
   against a core whose clocks/resets/IRQ were never set up;
 - rocket_first_live_core() can return it, and rocket_open() then builds
   the IOMMU domain against that device;
 - rocket_job_open() adds &cores[core].sched to the scheds array, and
   that scheduler was never drm_sched_init()ed.

That last one also overflows. scheds is sized rdev->num_cores, but the
loop now counts live slots, and after a failed init there is one more
live slot than num_cores, so the last scheds[n++] writes one element
past the allocation.

One line fixes all of it:

  if (ret) {
          rdev->cores[core].dev = NULL;
          rdev->num_cores--;
          ...

Two smaller things, neither blocking:

The slot scan in rocket_probe() is a scan-then-claim with nothing
serialising it against another core's probe. Platform probing is
synchronous today so it cannot bite, and the old code had the same
property via num_cores, so it is no worse. Just worth knowing it is
still there if rocket ever gains async probe.

sched_to_core() scanning max_cores now walks slots whose .sched is not
initialised. Comparing &cores[core].sched against a live scheduler
pointer can never match on those, so it is correct as written; a .dev
check would make it obviously correct to a reader.

I have only RK3576 here, so this is a code review rather than a
Tested-by. I cannot exercise the multi-core unbind matrix.

Thanks,
Jiaxing

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
