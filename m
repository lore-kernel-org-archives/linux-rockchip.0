Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C75606A885
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 03:06:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tAbD53IP;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gahingwoo.com header.i=@gahingwoo.com header.a=rsa-sha256 header.s=fm1 header.b=fV03y25S;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=vgFvATsG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=s2D8/gA0kB9fD+U+4aic28ie2Eh2zPtQH6dvkIW5Kh0=; b=tAbD53IP3yuvRMNjYrigq8HeK3
	EHHoYaZawuWb+jhGieZNuXHqCQxQreA3BwML2xbJlZfh59EvVcwHNAlD95MHq1bihnJN0yEVN5iR4
	p1VPADJGdgUv+GbrT6PKl6oTVNxC20Q/GsCkciwsZDNusBuxnuclMHmHQ8H/AYQfx0U5/1OYe2Rqd
	ifn/w4N+aPC5WCdZQe6AiKegPjZnRa1H9p7mBcgLhtImYFNWWQgn9BXgp4eNMvXbbEAtURawZogH8
	bp4o9SkQ9mo25spE+sczMDEA/FOlmv/FUoeGLknNjL3A5ESbpslqOBDyCKbenjB1zk6wjtZoPmwJx
	BECkAZcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS463-0000000FAi8-1dOe;
	Sat, 14 Nov 2026 03:06:31 +0000
Received: from flow-a4-smtp.messagingengine.com ([103.168.172.139])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS45n-0000000FAKm-44I9
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Nov 2026 03:06:21 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailflow.phl.internal (Postfix) with ESMTP id D97DF1381A4E
	for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 22:06:14 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Fri, 13 Nov 2026 22:06:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1794625574; x=
	1794632774; bh=UFC6larpBIr5DXttZeaLEPmVDbveZ5IJHHjBUBp/w2Y=; b=f
	V03y25SckKlkihfV0NOh1tNU/XC+scPH6w/lKhA4vVZDeaiC/3rDLxuj3G0pH/iI
	ZpAX+fl1XW2PAtqqo4srv1Rf3D/4Ab404PGG/J+VjYN/NrcHcG1XA1L1X6e4bl9V
	Xi/xqeAOy45RM4cIKEZHj2nqVamfw8jTn2NrxCSz5NM5moaLQKwBINr15S/VAT0/
	XCZeU8DqFg1IeqUoL+BsUMyvGaeo8blM/OQ6b2JgKicFEiYr2OGGyiZHyGJ21xFt
	CIiFurWw1gaxoYtDj12CDC1qm3cXxVHTb9/wqC2RqxM2R320oZ0A64842p/sWgK9
	AvJATkACz1oqxibZctB9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1794625574; x=1794632774; bh=U
	FC6larpBIr5DXttZeaLEPmVDbveZ5IJHHjBUBp/w2Y=; b=vgFvATsGZQTzqNlkh
	RAQB4ddyT9Gg5aURaVxTcnaXGRvIj6AEZk8Y308mvaRJsJSU6uMpTQc6ud3jwNHR
	xXMzHNv8qagarimn5n1pL+c1LVKiBJ7lJe+lZtS8zoHIscCapt5WHwXOmteeszD8
	Z6Iumdok+iL3qQVpJs+FYCgqO4Q+Pse6NVqA0pAfGIrTS19gjb1Gc3MnPdOa7IsT
	GkUMw75NOn5SJJrB1X9Sl+1UjKPDW0Li6u6J/kIPg6C6i4y0DW1gNL5FCSeDG4rt
	FHTFJjlvdl7kOJ2VNAyy7l1WjTGUPRo6zcxnr4LFz3ue+2AWmLhCh7c9SGwR6tEJ
	oOL4w==
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=sign d=gahingwoo.com a=rsa-sha256;
DKIM2-Signature: i=1; m=1; t=1794625574; d=gahingwoo.com;
	mf=PGdhaGluZ0BnYWhpbmd3b28uY29tPg==;
	rt=PGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc+;
	s=fm1:rsa-sha256:h6UKwngxNDe3Q09FxJKQAUkWZdXl1yXlRxkey/HGMsOYUnC
	YXHYdV3APaRuEcQf1FstYIHWtet8KijTLUuPeZXGuYgSbMjjOc7+PDTErvZlzZkq
	oMdB7xg/3W/mj4BsIwq9lyPAs+FHFC+51t1YdmEAsvtBSSex8uq+l+pDkx9eZHZc
	19s4SVvwJ/laYJo3uNtTbZ/cJFV/cK4ptisaPTVpxQ2nI/Vw3X7kDxgokb6/uw4Y
	P/xcFcj02dNObBAtZv9Zqmbb7RzYTDvHxABbLMIzvyhMA5CYiJ4JNEDI17icUuun
	eBZlrB4azmy5BWr3Z88xQk5X9WQ28wc54Eb+Mgw==;
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=mi-m=1; hc=11;
	hn=cc,content-transfer-encoding,date,feedback-id,from,
	in-reply-to,message-id,mime-version,references,subject,to;
Message-Instance: m=1; h=sha256:VVvNifg8tvk+9kHzZaQKKDrfUxMdtruCY5MGVvO5WYM=:Mc750nI15uCf+55BDoKwtBlY/uIcRLqTL9mT947qcwg=;
X-ME-Sender: <xms:JtD3aiseymqN-F8jpzUkSM47m-3Pla0q-pKTgkX3xGGpBlUaPym9RA>
    <xme:JtD3aj77XAwpZLIvfaUmclVjz0d-WgjtDHKC_LvQ3Zl0xk-BdWLp3-wHXktcpi68Y
    ZjA8fn20p5BfUAszTEEKJ_k2T2pFTRhxO0317GEvP-ll0yYbLecsDAFxQ>
X-ME-Received: <xmr:JtD3alD4VjmnmuHcudkkfTzOGSAWzdZMSHcJenONg1hgdgDzMIUn_loSVqHSfmfox3jNM78U>
X-ME-Proxy-Cause: dmFkZTEGMxOoH3y/fMppx2r36gm4cx9GYI3ohK01ZShvs6zT+8h1mVWufLahBuei4Ed1/3
    xRbUYha+QR045BDD8FCRFVIM91rSGwUQ7zMnQH1Bkat2KqUfUo8S4YHSEorvk8zLj3SaDW
    2cnjQVg1N4cjgYIFaRpoqGeOaFHkoldyad78tsE+DecFb61BS2EtavEyFF5qPgk+LGIze3
    1pj9uE4MqQ3E6Y1sY03sy7yic0nfNy3N91ax17Z8mzLg+z2lmCVcb4QExTOBMVx/MohP3G
    wnkdi+msWCJW4WkcwQvXo9jRKjLop8wk5fKsg/aLeHj4SFgb7u29HtVGx3Iv5RN6/FH7V2
    U8QJp888Vj+hKejjbSBmSr6bPwUqoIXrYowoOM9d8dbgG1Ywcpu1B2BItE0Dm6/G9VjiSt
    d5nCbVxOQ+8Pnxb6kAIvQ7TzhVVdFJ5ZuVm8c+7VjkV4OQgzM/Isc5iRlNNtl2TJdQct8g
    nPw3yt+LSQeYzHYfHKUferR8SRzjm0dBD8aqRG9BIXwv1xwPVg6GKUpTFjt5nDDDOlaJdl
    OXsVdkLauOcmIhmVSbudRfakJIstUYJcGDt797RBw+ARRChplyIZQQsn34Tdc4JK8OSpwj
    ANBphE7bq+/dnRU/VeE6UbZcxFfyXrp6rZfPz0BPwLvQp2H1fMbyyrKenxlQ
X-ME-Proxy: <xmx:JtD3aju2NJTHdcQV6VaxzjmmKLl1FOGSDFaX-GqfefK7IriluOWuZg>
    <xmx:JtD3ajP-cfKeYgTc_8X3sat5qQnqhLCWeyO5FWRg_agHjOuHQu6JSw>
    <xmx:JtD3arUEb4wHRoo-KJxpmKzpWwv1fZgP7Bys3fu9YKxj2exrMnNvog>
    <xmx:JtD3auSTPauWPhhH3sjzyeFJSnw8jU1UWo48AOnekTu6JmDlnfrF2A>
    <xmx:JtD3arSWJrwX_wsoLpwrne2YZJ5cLGMnr-8hthrWixG6GCx6kylkUF6w>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 13 Nov 2026 22:06:05 -0500 (EST)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	p.zabel@pengutronix.de,
	ogabbay@kernel.org,
	zhangqing@rock-chips.com
Cc: royalnet026@gmail.com,
	ulf.hansson@oss.qualcomm.com,
	abel.vesa@oss.qualcomm.com,
	sebastian.reichel@collabora.com,
	sidong.yang@furiosa.ai,
	u.kleine-koenig@baylibre.com,
	chaoyi.chen@rock-chips.com,
	shawn.lin@rock-chips.com,
	finley.xiao@rock-chips.com,
	diederik@cknow-tech.com,
	alchark@flipper.net,
	leonard@lausen.nl,
	vlwwwwww@gmail.com,
	jeff.hugo@oss.qualcomm.com,
	rfoss@kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v17 03/12] accel/rocket: wait for a running IRQ handler before resetting a core
Date: Sat, 14 Nov 2026 16:05:20 +1300
Message-ID: <18667b2afdcaae217fa1038f5348ab23ed756bdc.1794615323.git.gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1794615324.git.gahing@gahingwoo.com>
References: <cover.1794615324.git.gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_190616_145816_A9EEE6E4 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

drm_sched_stop() does not wait for a threaded IRQ handler that is already
running, so call synchronize_irq() after it to make sure the handler has
finished before the reset.

Before synchronize_irq(), mask the interrupt and clear the raw status, so
that the NPU core cannot report a completion afterwards.

Do this under job_lock, because the submit path sets the interrupt mask
under the same lock.

Only touch these registers when the device is powered: check with
pm_runtime_get_if_active(), so that a register access with the power
domain off cannot raise an SError.

Suggested-by: Igor Paunovic <royalnet026@gmail.com>
Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
Tested-by: Igor Paunovic <royalnet026@gmail.com> # RK3588, three cores, induced reset, JOB_TIMEOUT_MS=2
---
 drivers/accel/rocket/rocket_job.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/rocket_job.c
index b61bb4d242ce..8b4ad028bc9b 100644
--- a/drivers/accel/rocket/rocket_job.c
+++ b/drivers/accel/rocket/rocket_job.c
@@ -402,6 +402,16 @@ rocket_reset(struct rocket_core *core, struct drm_sched_job *bad)
 
 	drm_sched_stop(&core->sched, bad);
 
+	scoped_guard(mutex, &core->job_lock) {
+		if (pm_runtime_get_if_active(core->dev) > 0) {
+			rocket_pc_writel(core, INTERRUPT_MASK, 0x0);
+			rocket_pc_writel(core, INTERRUPT_CLEAR, 0x1ffff);
+			pm_runtime_put_autosuspend(core->dev);
+		}
+	}
+
+	synchronize_irq(core->irq);
+
 	/*
 	 * Remaining interrupts have been handled, but we might still have
 	 * stuck jobs. Let's make sure the PM counters stay balanced by
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
