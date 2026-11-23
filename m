Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E9D606A31E
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 20:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JUtEKSYe;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Cv8J0mQG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=7t2DFQP5f9Exg587wDnVQ+oWHRmvZXhjvr9RdWkmOqw=; b=JUtEKSYeywLGouYmvlR63NNxIC
	aos69Eh1XKRlCeqJiEZ6Qr4B7BkuEy0WIIyVWi6VKZDqmzLCkyE+eeS/DJBwHk2ov2qqJMA0A5PSk
	p9CDi1NTSbI58Vl16X0G2b0r8QP41WVWerz94MSc8LkimB/0OoMx+NghSD8wDOdclflg72GUSMGHE
	t3BazhFhFEVLgW4KKMssKHJ5arTBPETI+6hS8ct/tfcaRTOQVGmpmSR5dbdfzv04OkdEe+5Wo/dlM
	qMN5nNHH8BWvMYgN4aQzp2mXppoR6jcYtwENJprG9KuirfMgtoN08lr8yyEyoyM4RnxOZ5QInSQka
	YbZoWXSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVaKG-00000004n8d-0uz3;
	Mon, 23 Nov 2026 20:07:44 +0000
Received: from mail-ua1-x92a.google.com ([2607:f8b0:4864:20::92a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVaKD-00000004n88-0vOD
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 20:07:43 +0000
Received: by mail-ua1-x92a.google.com with SMTP id a1e0cc1a2514c-99e0082c434so862021241.3
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 12:07:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795464459; cv=none;
        d=google.com; s=arc-20260327;
        b=YS8VtVPeXNfJi3eWQyL1wu8bN5mXmG8yTvuuYptghr0iSmL1CjdCcd0w3pYzeUvbYP
         +Nil44yfNuXxebgYemNFy0FNwrbilJJqyrCw1OfLUoQl6tl/AFnq3ytks8YbeAmnSMOz
         l8+BtCU+PvVeUzyanSBkroANVEwRVKFlU9ZQ9VTQZs8VBSmt+ECP4b8vB2YJ6ufUDa76
         Wduz500R7372HxtdEHiHHBswhRxxE3Lun7+voOko0vja66em6nHmY7Ji2Xqbx3LrOofG
         XKfChYt/C3z+gz8AMBY8MU78yBe4ZFTamJOqDyvIohwjpOb7iKcXMCeQPYTuLkIlaPrh
         AKfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=NQwD0p6pD20fIKDUmVHWYfX8KC4EnMm+ad/mGxChYFw=;
        fh=7pZrpbZJxK06xvgRcvLipn0UIPQRwcfZvGvC1mQ9rJo=;
        b=r1rwDI/rwJAoRI/mKknAk2dfB0nOQgKII+TvGBYdtaSy4o4vNBtS7Z6zLOCYqnWh/v
         0+6xt1N7gRBDQC6RI0/VIrTM2/fcZ7v7YZ7ltWq7mVAWFSUpnEDjQjQzZIplICmK6+cS
         JseyuxJ8D/j0Q8vMSqX5UswE0GcfHTI9XeLsbENdeHnLnM5pui0BEQkxO8r0YwFmqQiy
         o8IOjrR+Yk8FuygrXvK7cbGiCKBPit6f5zNEvSZoy51T//ly5CDa1bRqvIIKO+eg2Lcu
         60qRQK1RAYxi7wyBSvSoX91orMLFYuoIDBVCBh9pgwIEb/My7is6gw9K9ibh97bu5p0U
         zBdA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795464459; x=1796069259; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=NQwD0p6pD20fIKDUmVHWYfX8KC4EnMm+ad/mGxChYFw=;
        b=Cv8J0mQGpRiwWmSb0v/quwpjSlTm94r27Na6sBkNqpMHsWgjeB/yKTZE6ddFNIkBWq
         mtqcZmTgHTlYdbcMDiqR+TL8+kdZZVmF7iTJbgDjCqzHVmMqFLHRtTENFmiVYeUdb6Iw
         /lRJOzuLrgxN/Ay6tfxJ/M4ppaRHhRpSN135vTeQSrY+o5UwsCiPx+TahScN3LTEB6mL
         1aQswENly7kKCa1qd3HStJ5kL7mjG4K0yLGtxEcJkLqCB0XLqFU1U9OZAD5yWbg/t+Gb
         ZmEwc745eu29Gl97vuZfVwR4BU+BBTCe6cnEG5g9jjFacnPRYjS58plAyqgYlXczn4XU
         BGZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795464459; x=1796069259;
        h=content-type:cc:to:subject:message-id:date:from:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=NQwD0p6pD20fIKDUmVHWYfX8KC4EnMm+ad/mGxChYFw=;
        b=wQKG1SZ/Ivmbmgh0N95iwDAb+DpvwM5WSc6jI5pKLW0mN1b99VHe4NlWsqNxn1V2mY
         VL80qUln2nkputYPySu1TjOQsbWbtRppJbRUHxCnl6Bu3PkZVmQf3fqQWTtk5A8hHlN8
         +uk3fqc3DZTllW5C2tyD3W6EyL+hxSx91mKDtzJ4lznvTqfLIBATutgtSkn4HfRWJDTf
         rDc9Wcv1eierWSest1cqCmePdl00uP02re0g9/oZXYV3hnIQQS7EJogJhD7viWpWvf24
         ml0OuQTgapk95iYM0b+A0OdTfOfR35j9G1TRLJx7VecFycyfGjbujX0AtvQ7oYu9F+W9
         h47w==
X-Forwarded-Encrypted: i=1; AL+hErGVWXkR1LtujpbeWhaKPocrS+Y9l6lWsa1JVlgLuW84k8vwO6v+JPYXke8tu8BdtGEVSU3y7XimUPTM6xGkNQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z9exIOzXDogNMdVxyKyAKeozYfqIQZkN+LqgxQ4HTGY2cJPsH39
	M67uoxCGy63MyU6yHyqM6wqC8T1BxgfR+nELCECCmwpoBUAJ9K00Sq4CBJnjrRBjkuj/idNQvpw
	vH+VfKM5pexOht8B0F3GgImFgPVbQXAI=
X-Gm-Gg: AZFdTZfOyqvxGBWFwuIPshfjC1TDQdtdBIv2W6qnk0JoqZRmkt3PtYgVjvQf3X0TUNA
	LihIT7Q9hYtvG+MbtOgAqHJKwQy/3HT7sw37+Xo5LOj63brtHDluI0BFZtDGjfH9qX+aWn248H3
	+czYr60JbElmA56rZMpZkySRhLV/SrUl0bX9LkbWYPCRA4M51jBhtyTaqrR+NLmbwv1RZ/3Hg0H
	ZX2TueIh3fyI09MJXXbIodi9vsdoMmn/NnyFVtpJ+IBKXaDJH3pg5iPBlLgAFdbq3Go0pI3utYs
	xVk+odevPbBGRQaBZQF1Xyf7qfcu7NvIdZXwkSRarfIvbUepo40P896L2dPU0JEhA/yJDKPdN6D
	3MzJeCjSlusiPpqXX8FOSXd4UrQpLNpVc5wUhniKUCutvn3EunQRp7I1KV/nPDlasWj5cQjjRPP
	vbxUZ2qTk3U7Zx/Q==
X-Received: by 2002:a05:6122:328c:b0:5ce:76cf:fb2e with SMTP id
 71dfb90a1353d-5ee8af35d70mr6725035e0c.16.1795464459085; Mon, 23 Nov 2026
 12:07:39 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
From: Anton Sovetov <anton.sovetov@gmail.com>
Date: Mon, 23 Nov 2026 23:07:27 +0300
X-Gm-Features: Aa3M54qXyrancEDMfHrjvmksuaFlp-i4gq05CZB9uxUZiFlTE0nVvvSWnyg9r4o
Message-ID: <CANLiQWrVGN00Hn8s3X7nyDZxh3x0wJ1YqTVzYsLUPM3s-Pkp1A@mail.gmail.com>
Subject: [RFC PATCH] iommu/rockchip: program the MMU even when the device is
 not in use
To: iommu@lists.linux.dev
Cc: heiko@sntech.de, joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_120741_288278_48E00839 
X-CRM114-Status: GOOD (  32.07  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

I hit three related problems in drivers/iommu/rockchip-iommu.c on an RK3566
(Radxa Zero 3W) with the out-of-tree NPU driver. All three have the same shape:
the driver gates work on pm_runtime_get_if_in_use(), which is 0 unless somebody
already holds a reference, and for a device that keeps its DMA domain for its
whole lifetime that is the normal state.

1. rk_iommu_irq(), line 583, gate at 592.

   A page fault raised while the device is running, outside a map or unmap
   call, finds usage_count 0, so the handler returns IRQ_NONE without touching
   the registers. The fault stays latched: INT_RAWSTAT bit 0 and INT_STATUS bit
   0 remain set, PAGE_FAULT_ACTIVE stays set in STATUS, REPLAY_BUFFER_EMPTY
   clears, and nothing is printed. The device then sits on a stalled
   transaction and dmesg says nothing at all, which is the worst part for
   anyone trying to debug it.

   Observed on the NPU: after a job that never completed, the MMU read back
   dte 0x480000 status 0x2b rawstat 0x1 intstatus 0x1 fault 0xdc80, and the
   handler had never run. A normal fault report would have printed "Page fault
   at 0x0000dc80 of type read" plus the page table walk.

2. rk_iommu_zap_iova(), line 680, gate at 694.

   The comment says "Only zap TLBs of IOMMUs that are powered on", but the test
   is the usage count, not the power state. An unmap that happens while nothing
   else is using the IOMMU skips the shootdown. A device that keeps its domain
   but is idle at that moment, which is the usual case when the process that
   owned the buffers has exited, keeps stale entries, and the next owner of the
   same iova can still be translated to the previous physical page.

   I could not prove this one with a bus trace, so I am reporting it as a code
   observation and not as a measured failure.

3. rk_iommu_attach_device(), line 1008, gate at 1040.

   Detach plus attach is how a driver resets its IOMMU domain. On attach, when
   the usage count is 0, the function returns 0 without calling
   rk_iommu_enable(), so paging stays off, DTE_ADDR stays 0 and INT_MASK stays
   0. The caller is told the attach succeeded.

   Observed on the NPU: its soft reset does iommu_detach_device() and then
   iommu_attach_device() on the same domain. After the first reset the MMU read
   dte 0x0 status 0x18 intmask 0x0, no translation at all, and every later DMA
   ran on raw iovas. Before the reset it was dte 0x480000 status 0x19
   intmask 0x3. Holding the MMU device with pm_runtime_resume_and_get() around
   the detach/attach makes the same sequence end with dte 0x480000 status 0x19,
   which is how I convinced myself the gate, and not the reset itself, was
   responsible.

The patch below resumes the device around the attach and the zap. Both run in
process context, so pm_runtime_get_sync() is fine there. For the interrupt
handler I only added a log line on the drop path, because I do not want to
touch registers from hard irq context while the device may be suspended.

What it fixes: the MMU now stays programmed across a detach/attach cycle, and a
fault that arrives while nothing is mapping gets reported instead of vanishing.

What it does not fix: the reason I went looking. Our NPU still stops executing
jobs in IOMMU mode after a few separate processes, with a healthy MMU and no
page fault at all. That is a different problem and I am not claiming this patch
touches it. I am sending these three because each one is a real failure mode on
its own.

Tested only on rk3566 with the v1 block. I have no rk3588 hardware and would
rather not guess about the v2 path.

Questions:

- Is the usage count gate deliberate, in the sense that register access is
  unsafe unless someone holds a reference? If so, is the right fix to keep the
  MMU programmed for as long as the device is attached to a domain, instead of
  tying it to the map/unmap window?
- For the interrupt path, what is the intended behaviour when a fault arrives
  while the IOMMU device is runtime suspended? Ignoring it leaves the device
  stalled and the status latched, which is what we see today.

Signed-off-by: Anton Sovetov <anton.sovetov@gmail.com>

---
 drivers/iommu/rockchip-iommu.c | 42 ++++++++++++++++++++++------------
 1 file changed, 28 insertions(+), 14 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 07e3517..a3da612 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -590,8 +590,11 @@ static irqreturn_t rk_iommu_irq(int irq, void *dev_id)
  int i, err;

  err = pm_runtime_get_if_in_use(iommu->dev);
- if (!err || WARN_ON_ONCE(err < 0))
+ if (!err || WARN_ON_ONCE(err < 0)) {
+ dev_err(iommu->dev,
+ "interrupt while the mmu is not in use, ignored\n");
  return ret;
+ }

  if (WARN_ON(clk_bulk_enable(iommu->num_clocks, iommu->clocks)))
  goto out;
@@ -691,17 +694,19 @@ static void rk_iommu_zap_iova(struct
rk_iommu_domain *rk_domain,

  iommu = list_entry(pos, struct rk_iommu, node);

- /* Only zap TLBs of IOMMUs that are powered on. */
- ret = pm_runtime_get_if_in_use(iommu->dev);
+ /*
+ * The usage count says nothing about the power state, so an
+ * unmap that runs while the IOMMU is idle skipped the
+ * shootdown and left stale translations for the next owner of
+ * the same iova.
+ */
+ ret = pm_runtime_get_sync(iommu->dev);
  if (WARN_ON_ONCE(ret < 0))
  continue;
- if (ret) {
- WARN_ON(clk_bulk_enable(iommu->num_clocks,
- iommu->clocks));
- rk_iommu_zap_lines(iommu, iova, size);
- clk_bulk_disable(iommu->num_clocks, iommu->clocks);
- pm_runtime_put(iommu->dev);
- }
+ WARN_ON(clk_bulk_enable(iommu->num_clocks, iommu->clocks));
+ rk_iommu_zap_lines(iommu, iova, size);
+ clk_bulk_disable(iommu->num_clocks, iommu->clocks);
+ pm_runtime_put(iommu->dev);
  }
  spin_unlock_irqrestore(&rk_domain->iommus_lock, flags);
 }
@@ -1037,13 +1042,22 @@ static int rk_iommu_attach_device(struct
iommu_domain *domain,
  list_add_tail(&iommu->node, &rk_domain->iommus);
  spin_unlock_irqrestore(&rk_domain->iommus_lock, flags);

- ret = pm_runtime_get_if_in_use(iommu->dev);
- if (!ret || WARN_ON_ONCE(ret < 0))
- return 0;
+ /*
+ * Detach plus attach is how drivers reset their domain, and the caller
+ * has no way to notice that the MMU was left unprogrammed. Resume the
+ * device and program it.
+ */
+ ret = pm_runtime_get_sync(iommu->dev);
+ if (ret < 0) {
+ dev_err(dev, "cannot resume the mmu, ret: %d\n", ret);
+ return ret;
+ }

  ret = rk_iommu_enable(iommu);
- if (ret)
+ if (ret) {
+ dev_err(dev, "mmu enable failed, ret: %d\n", ret);
  WARN_ON(rk_iommu_identity_attach(&rk_identity_domain, dev));
+ }

  pm_runtime_put(iommu->dev);


-- 
With respect,
Anton Sovetov (co-Founder and CEO of 3d-club LLC")
https://3d-club.ru                        tel:+7 (999) 246-78-36

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
