Return-Path: <SRS0=whri=EZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E4CC388F9
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2020 22:19:10 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 09A2B2224A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2020 22:19:09 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="v4wrlY2x";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WBXbhlhu"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 09A2B2224A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Wn+NgvYsbn5N6Uip1pw4l4gssMUzLHURTF6ha39yFLQ=; b=v4wrlY2xFU8ScKTTWQbGzrWpa0
	UkhX7Ub3bTGeIPDSSgdba6ebimu68cYnaCcUP73mUvGqVHsvN7J1+Pm4AEL3untKDrxAPGKr+5fVx
	MEcJfM+eohhv3IisalIMlP7shBjM1Icy2Btqzps0DsYv06iMhCtO2+oFXw/UtDRliGQMgYNtvkpte
	J9mmaXYnnhlCoCZ7sk0ZgmWI+tT5CJPQHMl7qmamNXPEB8vySUnET2rBwBI5w6gZ9I84SJAH7WwQY
	yRBLoAIiWJMYBApzQtLEZCJaA03CFwzxOlz7vSUVPIx3g1zIzpMoXTYbs59+JsuGyUeVMNiGTCAes
	H4GPQC2g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kfsGb-0007WX-VS; Thu, 19 Nov 2020 22:19:02 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kfsGZ-0007VS-IR; Thu, 19 Nov 2020 22:19:00 +0000
Received: by mail-lf1-x144.google.com with SMTP id j205so10559343lfj.6;
 Thu, 19 Nov 2020 14:18:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=K5HPknZej83oJvWIt/FZVa+q2hWE2AXL1nYvqO+6Ul8=;
 b=WBXbhlhurUHDejeqYNxafU5YMa5j15UCO6/IwEjMjPtYgtX7wj2Z8ZtJZ9o3z7bazl
 4J62BoMdhx5tsu1P344tCJdTpNCjRUck0Ud/o02o77GnXAc21JfgOX4EHOA0LXHgLTsB
 UacQ5DW4SjYZ6r2a5RQGI1N2/npF2XYML5pH8Vhba9+Tns7/RqF6rGD5gcNFnfY6JC+s
 UM1HP1vDDEEEIghucZiCRNH0ay9qtUJjzLBV22m0U+ddMFASAueZ1tcmL4hasx6Y5VCt
 xoqd2GnaKiRFBRIEtMLv7Qs5MHR191VjIxh34y/yI5w1B1xwVGw9J3tkbPHajMpr6htJ
 RiZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=K5HPknZej83oJvWIt/FZVa+q2hWE2AXL1nYvqO+6Ul8=;
 b=ILO1KnAgpZ5DXOSSXYmcHDuua8ePsqz/ge0v/e4cT++Y1XQJ9K0JIYwhvrocIO3Zv9
 aVR8nGU+bhJtybNVj4Em93RrPtBI3KSpCmI6rBnG0xmj/YDgZc6XCPNjOYRFwxv6sHlk
 SuwpCPrSUyq2ZR5MUpRoDoKuX4Qo5DG5VpPmet+8iN2dTFybTwnZOM+QS0ISi9Lo5Vbd
 GLiA4uaVwZNkS8uTMv5O5eDKRtkzjQ+ArrTnpcq0B4FjsdEcmHLvTTUw16c5X95lzUmv
 eI2BKXONFM9E5kOvVUTFbcdfKh/IgQ4JxzXcZisk826q4+8VRgNG9lTjbOW43yp7X7mE
 qyaA==
X-Gm-Message-State: AOAM5312XX+Uk+Tn8e6Rs8Ap+YpK2eV24b9lEBmk66dShtJkX8KzHNm6
 qMnQHxzkEU32sPXak/kcXy0=
X-Google-Smtp-Source: ABdhPJzRB5StQv+khcLHMwalJko+2W3xdWplQTXFuqHT08QMj58TQTHkujKlHdhJ3De/mEnxyUCIkg==
X-Received: by 2002:a19:6005:: with SMTP id u5mr6222544lfb.367.1605824336806; 
 Thu, 19 Nov 2020 14:18:56 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-6.NA.cust.bahnhof.se.
 [158.174.22.6])
 by smtp.gmail.com with ESMTPSA id o189sm113722lff.149.2020.11.19.14.18.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Nov 2020 14:18:55 -0800 (PST)
From: Rikard Falkeborn <rikard.falkeborn@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH] media: rockchip: rkisp1: Constify static structs
Date: Thu, 19 Nov 2020 23:18:49 +0100
Message-Id: <20201119221849.147984-1-rikard.falkeborn@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201119_171859_647990_EE82E381 
X-CRM114-Status: GOOD (  15.38  )
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
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

These 'ops' structs are never modified, so make them const to allow the
compiler to put them in read-only memory.

Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 6 +++---
 drivers/media/platform/rockchip/rkisp1/rkisp1-common.h  | 2 +-
 drivers/media/platform/rockchip/rkisp1/rkisp1-params.c  | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index b81235afd053..380582f68ace 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -565,7 +565,7 @@ static void rkisp1_sp_set_data_path(struct rkisp1_capture *cap)
 	rkisp1_write(cap->rkisp1, dpcl, RKISP1_CIF_VI_DPCL);
 }
 
-static struct rkisp1_capture_ops rkisp1_capture_ops_mp = {
+static const struct rkisp1_capture_ops rkisp1_capture_ops_mp = {
 	.config = rkisp1_mp_config,
 	.enable = rkisp1_mp_enable,
 	.disable = rkisp1_mp_disable,
@@ -574,7 +574,7 @@ static struct rkisp1_capture_ops rkisp1_capture_ops_mp = {
 	.is_stopped = rkisp1_mp_is_stopped,
 };
 
-static struct rkisp1_capture_ops rkisp1_capture_ops_sp = {
+static const struct rkisp1_capture_ops rkisp1_capture_ops_sp = {
 	.config = rkisp1_sp_config,
 	.enable = rkisp1_sp_enable,
 	.disable = rkisp1_sp_disable,
@@ -1038,7 +1038,7 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 	return ret;
 }
 
-static struct vb2_ops rkisp1_vb2_ops = {
+static const struct vb2_ops rkisp1_vb2_ops = {
 	.queue_setup = rkisp1_vb2_queue_setup,
 	.buf_queue = rkisp1_vb2_buf_queue,
 	.buf_prepare = rkisp1_vb2_buf_prepare,
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 3a134e97161c..038c303a8aed 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -214,7 +214,7 @@ struct rkisp1_capture {
 	struct rkisp1_vdev_node vnode;
 	struct rkisp1_device *rkisp1;
 	enum rkisp1_stream_id id;
-	struct rkisp1_capture_ops *ops;
+	const struct rkisp1_capture_ops *ops;
 	const struct rkisp1_capture_config *config;
 	bool is_streaming;
 	bool is_stopping;
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index 03f9a81df440..6af4d551ffb5 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -1469,7 +1469,7 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
 		vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
 }
 
-static struct vb2_ops rkisp1_params_vb2_ops = {
+static const struct vb2_ops rkisp1_params_vb2_ops = {
 	.queue_setup = rkisp1_params_vb2_queue_setup,
 	.wait_prepare = vb2_ops_wait_prepare,
 	.wait_finish = vb2_ops_wait_finish,
@@ -1479,7 +1479,7 @@ static struct vb2_ops rkisp1_params_vb2_ops = {
 
 };
 
-static struct v4l2_file_operations rkisp1_params_fops = {
+static const struct v4l2_file_operations rkisp1_params_fops = {
 	.mmap = vb2_fop_mmap,
 	.unlocked_ioctl = video_ioctl2,
 	.poll = vb2_fop_poll,
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
