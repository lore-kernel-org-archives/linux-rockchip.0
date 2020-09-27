Return-Path: <SRS0=B9YW=DE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 359A1C4346E
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2020 20:29:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 972E1239EB
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2020 20:29:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="taUG0mYK";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GjE1nwg8"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 972E1239EB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:MIME-Version:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SHHDEj2GTJvoqBZmLBwaa8INR3K13aj+JV9aOHLb+L8=; b=taUG0mYK3LL61OPu6N191r+sd+
	4n4R3m6Vj4nSDrid+5DIr/579zktnMmYK41oJwklbnI0eaTskmsUwXTLbIumFswdrcjJqQQ9E+7PE
	+CacQPYyXf/HDrZKl5rtI1c6ZCmA4NeP5kdEUU8SlmzWQEsGauX6k7ImgM4XAAlomnvMFIH7kcxPc
	uwUM8lBCjgMhQcz2DdFAC6YuhrB7WNh3Qs/DTCxPnLQkcEyhB0Ou9VI6MByaTGnTj4n6R77hvLpxc
	Oj+k/TIF0X88tOYDrFMqsFNcypkxQCv7gtE9MPa5qEN+j5mJioiBuyn+C9LUaHgAOTOOvskTQt3gX
	h9AR89yA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kMdIQ-0000JD-Tt; Sun, 27 Sep 2020 20:29:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMdIN-0000Ip-Jh
 for linux-rockchip@lists.infradead.org; Sun, 27 Sep 2020 20:29:20 +0000
Received: by mail-wm1-x344.google.com with SMTP id e11so3095412wme.0
 for <linux-rockchip@lists.infradead.org>; Sun, 27 Sep 2020 13:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:user-agent
 :content-transfer-encoding;
 bh=0QuyEWm6rQMqwW2hce/ANbthK7OQhuiFstxlw742Fu0=;
 b=GjE1nwg86XQKc+qR4ZcqjX72KjglRAD09q2yX1VN9msnrMalR/wid+aBwi+poCCQqr
 ZXizdbW792FxS4QMCuDrC8dCZfTE4al3ZfdMn2O5zONE0OfUNklGRt8o+VXcB3Y8lvDh
 cFcDV2WdT+nQZxTk491D74g5ZcQJ6DIBcfAgdQ6J8nhDVK8ARWofJ9HMDpRm+BZ/Gfe0
 naJPdawKZTs7mvNp5MIB1ofnrKXiLiHLHwDuIU7JhBweYMly1gSVUenZw/vGICsqPr6a
 GXt41d/Zn1Vgpg98t2Q76zP9B8YldUiV8n5gTuuYrs/eRtLpXjy02a/qPuI5ootTh9/h
 6vnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :user-agent:content-transfer-encoding;
 bh=0QuyEWm6rQMqwW2hce/ANbthK7OQhuiFstxlw742Fu0=;
 b=Nkd3p61HX4rVrn8ajgYJDGRvgP1s122qSwK3ziEhddKtEDnbrSoDFV12IUmezm5zBI
 qi69wMiR566I/vD4WDGPvbIlkUnyyK/2+yUpEcm2UtKA/eue3FZIyR8+/O2kwcurGP1y
 4pmybQA1RscfHf1Fjwdb6bZF41MpnDpT7lw8AtqDE44ZdoT3Msz5uwmY6dtq0jK5CgGx
 geOe635rGbZPs2IDvLbTU6FS7vUOz8CzjI1M1r0hzmsvxzg27nJ5b5WhZWIzcVxSsP7o
 p4UZRqcjs43iax4CcZyXpzFUlK+E5lHmpHdEuwz/hEiDo1djw1EOZ6qRxe+fECJh4A2F
 8FUw==
X-Gm-Message-State: AOAM533OFTkkCxfSnitMr5F10UeuVbOnsGExWuiRMpyKQowU3BZ9vahK
 p4NG2xAw2nMAZ0+Qtrh3Mzk=
X-Google-Smtp-Source: ABdhPJx2IGkAo+GY/8jpSp8EfKnyNHZSjz+R9zuY4VWcSnpxEWZzmj9EXAoeHiUEFenw/kOo0uR6TQ==
X-Received: by 2002:a1c:408a:: with SMTP id n132mr7896666wma.45.1601238557360; 
 Sun, 27 Sep 2020 13:29:17 -0700 (PDT)
Received: from localhost ([170.253.46.69])
 by smtp.gmail.com with ESMTPSA id l19sm6363686wmi.8.2020.09.27.13.29.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Sep 2020 13:29:16 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Coly Li <colyli@suse.de>, Ming Lei <ming.lei@redhat.com>,
 Hannes Reinecke <hare@suse.de>, Jack Wang <jinpu.wang@cloud.ionos.com>,
 Jens Axboe <axboe@kernel.dk>
Subject: [BUG] =?iso-8859-1?Q?discard=5Fgranularity_is_0_on_rk3399-gru-kevin?=
Date: Sun, 27 Sep 2020 22:29:14 +0200
MIME-Version: 1.0
Message-ID: <2438c500-eb41-4ae2-b890-83d287ad3bcd@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200927_162919_740031_531843D4 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
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
Cc: Bart Van Assche <bvanassche@acm.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "Darrick J. Wong" <darrick.wong@oracle.com>, Evan Green <evgreen@chromium.org>,
 linux-block@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Xiao Ni <xni@redhat.com>, Enzo Matsumiya <ematsumiya@suse.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,
since recently the rk3399-gru-kevin is reporting the trace below.
The issue has been uncovered by
  b35fd7422c2f8e04496f5a770bd4e1a205414b3f
  block: check queue's limits.discard_granularity in 
__blkdev_issue_discard()

Regards,
 Vicente.

WARNING: CPU: 0 PID: 135 at __blkdev_issue_discard+0x200/0x294
CPU: 0 PID: 135 Comm: f2fs_discard-17 Not tainted 5.9.0-rc6 #1
Hardware name: Google Kevin (DT)
pstate: 00000005 (nzcv daif -PAN -UAO BTYPE=--)
pc : __blkdev_issue_discard+0x200/0x294
lr : __blkdev_issue_discard+0x54/0x294
sp : ffff800011dd3b10
x29: ffff800011dd3b10 x28: 0000000000000000 
x27: ffff800011dd3cc4 x26: ffff800011dd3e18 
x25: 000000000004e69b x24: 0000000000000c40 
x23: ffff0000f1deaaf0 x22: ffff0000f2849200 
x21: 00000000002734d8 x20: 0000000000000008 
x19: 0000000000000000 x18: 0000000000000000 
x17: 0000000000000000 x16: 0000000000000000 
x15: 0000000000000000 x14: 0000000000000394 
x13: 0000000000000000 x12: 0000000000000000 
x11: 0000000000000000 x10: 00000000000008b0 
x9 : ffff800011dd3cb0 x8 : 000000000004e69b 
x7 : 0000000000000000 x6 : ffff0000f1926400 
x5 : ffff0000f1940800 x4 : 0000000000000000 
x3 : 0000000000000c40 x2 : 0000000000000008 
x1 : 00000000002734d8 x0 : 0000000000000000 
Call trace:
 __blkdev_issue_discard+0x200/0x294
 __submit_discard_cmd+0x128/0x374
 __issue_discard_cmd_orderly+0x188/0x244
 __issue_discard_cmd+0x2e8/0x33c
 issue_discard_thread+0xe8/0x2f0
 kthread+0x11c/0x120
 ret_from_fork+0x10/0x1c
---[ end trace e4c8023d33dfe77a ]---
mmcblk1p2: Error: discard_granularity is 0.
mmcblk1p2: Error: discard_granularity is 0.
<last message repeated multiple times>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
