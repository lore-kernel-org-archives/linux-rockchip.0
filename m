Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12404606A681
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 00:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EOPJDwFs;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gahingwoo.com header.i=@gahingwoo.com header.a=rsa-sha256 header.s=fm2 header.b=m6djZdrT;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=It3p21u8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=tPa2j6uBZ7vakovA6Lx7n2J/kejUgnOdepvM26ZTJgA=; b=EOPJDwFs2SjnqouQkPt7IckGL4
	UXH6MvojJ+2izH46+R6r3UHdAOpVSkXBZqYBfTcYimv4OxuE0FnF+F8gpIsdQmcTqifJbz2hiLZsP
	vmUB2WbD4Deo3a164oKz5lzNK3nO+xi0uO42qDz+cFymHvbw8srvzRzNfDjrMw1BKkDIR/uIwqGL+
	oB+38r13waeesEab7f9LzVTHUs3CaPy4hzvK9TcB1FYEtgPM1J5diOQlzqDnSgtKYCTo3SY+gvAnW
	bfE6ZKn6/3peJAG71QkWlHsJc2/jCshomz3Ip+MrzrTPs1tJrtLk10VgtjnirJtorL2fZdTG0tgLu
	K2YLa9GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVdz7-00000005DoM-08GT;
	Tue, 24 Nov 2026 00:02:09 +0000
Received: from fout-a3-smtp.messagingengine.com ([103.168.172.146])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVdz4-00000005DmF-0kyP
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 00:02:07 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfout.phl.internal (Postfix) with ESMTP id 528D5EC0B26
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 19:02:05 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-01.internal (MEProxy); Mon, 23 Nov 2026 19:02:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1795478525; x=
	1795564925; bh=QNe/5SDa8yukG2m6jZYddNqm/vu0rbFqMlldL9831AM=; b=m
	6djZdrTepT9GJITQuRunCKIq5nNzaP4DOF6Zqra7HfCnqFoiZOc38jeg84cm9tVu
	XD9YdD3hTG0LFYUW2hTZyMfC2IIBhBZRe9i6NMtdjmvsgg/TUg1+FQySUKKVwSSi
	CL8+unGOQvKoQq9gvRgEIHiiIDKUNXxxRJf74MaaR2KORi/7x9cfQuY7nXXKvefJ
	796WPHZsgGORIfJKOR9Njnneikx/GtntD9XoGoC0NA9Cucv+wLeznoET6WggWWys
	LRJqyGzWUPIUvCt6JgHU7SLaTafCP7xagSyl2e2vX/kkLG6XtgiCERpWSKmPbXXT
	z8UaRfld+eClgUA7vbK7Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1795478525; x=1795564925; bh=Q
	Ne/5SDa8yukG2m6jZYddNqm/vu0rbFqMlldL9831AM=; b=It3p21u8algGgLUSG
	/nhTh0Iz4xEDMQF5YsA94PJeRmEqvtdZ008ZFNW85PhfJgvp7mMYqqz/tdezu7S3
	0ExPcT33Fk9FTNTln+96sAFjSqiN31DT3VkoTpVQOJAU0+rzoUdpz7uIaOFnK5aA
	91KJH9Ev9pb/riPnugLqXwl0ZKDclOW879UUF+gXpk9qRk6s1+Wsy23zo0YFNXPh
	+2KNJ2fwA+xfuUrM3uEXB4RKDzQkE3BQNJnaap0nmhW+LumOP37j3+ALCIfIe5/+
	jURSgE7TE4CqLXf6MVg3tVAoEbhqt76bbR5rCDLy7JyfBEWlLP02TE1hf0WFlNPA
	XJMGQ==
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=sign d=gahingwoo.com a=rsa-sha256;
DKIM2-Signature: i=1; m=1; t=1795478525; d=gahingwoo.com;
	mf=PGdhaGluZ0BnYWhpbmd3b28uY29tPg==;
	rt=PGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc+;
	s=fm2:rsa-sha256:Plx2MRpiXXbkDBvsVQBtRPxRhSP3UleNMbNAlnvVt37ecf/
	6q6b8I2aqsoOW2U7Ex43IaK1KjGBL3+TUZiB30NgRoQAYLKnvlMV/HRU9KiGozhm
	TqxQ4W+NzkH545r7/Tv3egMZjzkB4eqaCp48hvIJwu55M6lzbXDv+/+Mq1C8dbmN
	KMLO8HQp91qKeB2WMDk2sG+0br+O0jRrPUk74OwBuM8gDZlx94IhR0bizB/s6r2Q
	dDe1x+MAxgM6sUh/F/6oHV8gEwO8OI47oNuNZgR1TIsrrRrUi1zWuEiWzMWB8q/5
	Dk1Q1rcTIGKLyTghc8+f4HBEzJpS7dytHifANuQ==;
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=mi-m=1; hc=11;
	hn=cc,content-transfer-encoding,date,feedback-id,from,
	in-reply-to,message-id,mime-version,references,subject,to;
Message-Instance: m=1; h=sha256:eczvzy2GepQsZLKGjcBsypigAvj0E71cSF2UCA4RS8E=:aDiDHKKMkKmBNpyHGPv1ZCxaCtw3j0M20aub5oUwSEc=;
X-ME-Sender: <xms:_NMEa2AK1A5xPt9Is4iA_aSAzKHNApTSAqNRXBydDsKuiyiB3WK5YA>
    <xme:_NMEaxws9D2C6fIbTbyT-5oiccgi9uNs2ThzvqTs-tGEJjJTM__61k35Y0KFNabZW
    GAnMD-bfZgYMuhmgQm-WXeuAjq3K7-_e8w7EoWskfeyZqnz72RWPvEO>
X-ME-Received: <xmr:_NMEa-6qBwDbmYSfxUDLr9ClyiE_ZJ2eEsIltWBA99iQh0548hNSs_jFLa8bKnVQ29s8yQdU>
X-ME-Proxy-Cause: dmFkZTGEhlIT9xPRA8308BbHtqEEwMB/QskSvZlBy2+jFJwvtvfCirBVTmQimOCxW6z0/I
    N3fQ54j2uzkfIPiLqru0ODAgPBYDp/gZpGlhkMMOs9hof9ZG9GEOWdivyiuw2bnIONku0f
    WjmY8ul15onHL4eXgbBkYGjVGEM6SHV1iLYZaKVJkdDH3DHIqCHks7YrVY+mw1lm/Lplg4
    vSpMyj3j9q6sOZaTJVZd7ureJCnCjHJkmaDoA65nKLS/dXaLRNB8dxmmJokxzDm7a1gLZe
    vv+kmS5leROp3LsXetZXye6uoB1rh5Trh3ziYwSHciSyu7VL/LnTqx4QcFZ369FhHiPhjH
    8y/UBjCWaBhTCB5liNdc+q9lXpVPa7W3Nw2UkAMPVFhX4oHM0WaT9jQJ8DPnH2AWTpYDuX
    UnddaUwh3waD/j+/3Xx+KaLDKZSGlcdCW+nByxEeuyTW85qBXS1LwAyfw/Kbocvv1kkEIm
    9x+yqUjwQbZ+xvOrLfhpwke55vn4RPe6ZkI89yKVGsPQsh13+lwAJ0rB5OPgsMwkWpwZ+A
    UoNQazl2Ko3PdLSPPSmsAp7xsYfz19bIggB3ci2Vi5eNhrDkIAccELjTw4MlxQXjuCYxAD
    C2x/QmcM1/eGObCJkKlA+OLipX6+ENAJr3JoX4gXEZsWbGm+nt1pjWvNU3zA
X-ME-Proxy: <xmx:_NMEaystdq32Zn1uykRNMllakxCBz6U8uJWGkoC7HF7e3JFnml7vXg>
    <xmx:_NMEa7upsccnwlgynJoXxRsUIRH7Yz7natU_MnfXD0kdYTR1xBW7gQ>
    <xmx:_NMEa6v-blEBvnXKvbuJhXJVPHp4Y583Xd3LCJxM2sZm5hiO_0BGqg>
    <xmx:_NMEa76RQ1jLFwv-Y9hxcY0m-qJO7BoBgeUxVStl_oi13Q_opNn4eQ>
    <xmx:_dMEaz-oNsUT9yld85TnJqvJBET-hdlph5Ijw2-R6dHJrezSVjQUavFC>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 23 Nov 2026 19:01:56 -0500 (EST)
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
Cc: ddrake@baylibre.com,
	royalnet026@gmail.com,
	sidong.yang@furiosa.ai,
	ulf.hansson@oss.qualcomm.com,
	abel.vesa@oss.qualcomm.com,
	sebastian.reichel@collabora.com,
	chaoyi.chen@rock-chips.com,
	shawn.lin@rock-chips.com,
	finley.xiao@rock-chips.com,
	diederik@cknow-tech.com,
	alchark@flipper.net,
	leonard@lausen.nl,
	vlwwwwww@gmail.com,
	jeff.hugo@oss.qualcomm.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v18 1/8] accel/rocket: factor the completion tail out of the IRQ handler
Date: Tue, 24 Nov 2026 13:01:36 +1300
Message-ID: <ae95aed747f543e38e49c3d07fd7fa50382ae803.1795478392.git.gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1795478392.git.gahing@gahingwoo.com>
References: <cover.1795478392.git.gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_160206_295738_D9E94CE3 
X-CRM114-Status: GOOD (  10.76  )
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

Move the part of the IRQ handler that starts the next task or finishes
the job into rocket_job_next_locked(). No functional change.

Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
Reviewed-by: Igor Paunovic <royalnet026@gmail.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Sidong Yang <sidong.yang@furiosa.ai> # RK3588, ROCK 5B+
---
 drivers/accel/rocket/rocket_job.c | 30 +++++++++++++++++++-----------
 1 file changed, 19 insertions(+), 11 deletions(-)

diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/rocket_job.c
index 4a5c6a425254..eed443c8406d 100644
--- a/drivers/accel/rocket/rocket_job.c
+++ b/drivers/accel/rocket/rocket_job.c
@@ -371,6 +371,24 @@ static struct dma_fence *rocket_job_run(struct drm_sched_job *sched_job)
 	return ERR_PTR(ret);
 }
 
+static void rocket_job_next_locked(struct rocket_core *core)
+{
+	lockdep_assert_held(&core->job_lock);
+
+	if (!core->in_flight_job)
+		return;
+
+	if (core->in_flight_job->next_task_idx < core->in_flight_job->task_count) {
+		rocket_job_hw_submit(core, core->in_flight_job);
+		return;
+	}
+
+	iommu_detach_group(NULL, core->iommu_group);
+	dma_fence_signal(core->in_flight_job->done_fence);
+	pm_runtime_put_autosuspend(core->dev);
+	core->in_flight_job = NULL;
+}
+
 static void rocket_job_handle_irq(struct rocket_core *core)
 {
 	pm_runtime_mark_last_busy(core->dev);
@@ -384,17 +402,7 @@ static void rocket_job_handle_irq(struct rocket_core *core)
 		rocket_pc_writel(core, OPERATION_ENABLE, 0x0);
 		rocket_pc_writel(core, INTERRUPT_CLEAR, 0x1ffff);
 
-		if (core->in_flight_job) {
-			if (core->in_flight_job->next_task_idx < core->in_flight_job->task_count) {
-				rocket_job_hw_submit(core, core->in_flight_job);
-				return;
-			}
-
-			iommu_detach_group(NULL, core->iommu_group);
-			dma_fence_signal(core->in_flight_job->done_fence);
-			pm_runtime_put_autosuspend(core->dev);
-			core->in_flight_job = NULL;
-		}
+		rocket_job_next_locked(core);
 	}
 }
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
