Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C356CAC5B8
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Oct 2025 18:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBEFHksDYVE7AI+w8jarA/V1BC6+alOU/+f7+IyDaxw=; b=PxU1438iq+mUyk
	4PpqC5IaFamJpjC+3uY9HRzSBaiu7Mfuik7Sn28/GCfC26VkTHpP8f9gVf669JGpepcdOjCXe8S/e
	/vAs/8Wu5B1k/FmYBGnGo0rnHS0AqzpA1YYHj0Tukd2MOurxygu5MVGq70NUjflOLIETYLeqw7900
	mHbn1jFebhtI/h2UMNjusZjBnTkyeqJSIfF/MA9Ezfplp1gj+6l8EIvrEcSMjK9s7yoCTX6tB87vn
	hPfEpomE3ilBrQOdYdyi021N9HYZKZcQQT4k7jHpIXFFRgKF4+H8embno0/RP7MsMpxXc03YMc/Dl
	wduXvxYFbk/eacMlXRpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5pXO-00000000YeN-3ng9;
	Mon, 06 Oct 2025 18:02:18 +0000
Received: from 003.mia.mailroute.net ([199.89.3.6])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5pXL-00000000Ycx-3jJe
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Oct 2025 18:02:17 +0000
Received: from localhost (localhost [127.0.0.1])
	by 003.mia.mailroute.net (Postfix) with ESMTP id 4cgRtY0S4Pzlgqy1;
	Mon,  6 Oct 2025 18:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=acm.org; h=
	content-transfer-encoding:content-type:content-type:in-reply-to
	:from:from:content-language:references:subject:subject
	:user-agent:mime-version:date:date:message-id:received:received;
	 s=mr01; t=1759773731; x=1762365732; bh=fvK3RsS4VJinv86tNMu8mj4+
	OOC7NIwmRtKkVfmPlRQ=; b=rlSVdzdsLZw/xGq84IXoP4TZJKt4qVzw3G37TWle
	Wtaef862t18jfY4rPPpInmuHQFg3aob8r+P5X9uw+nXgMN9FJcs/BiJDdJoJYEcn
	siKLFvrFHYqfDpswIpzcn41QCUM78gAADHHS7vZso6oW3pRD1XSiPX6d7F2Dtc5y
	x/TLQoCmopSJvR+wdBr+otfCULog0787Hr0ICYWVLryU0SxRwGlGDZup1G1t4euP
	GtsveaOEIk0pAhy/Yicqt2cJ+4csBqAqLzuJxLVOqdkr8wZ2/yxz9hZkqZBFuD1/
	flnkuaQ1yiDQ+grPk6fAz50I7CZ4+XZMdnib+4XeLY6Y6w==
X-Virus-Scanned: by MailRoute
Received: from 003.mia.mailroute.net ([127.0.0.1])
 by localhost (003.mia [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id zOKoR4wDiUhw; Mon,  6 Oct 2025 18:02:11 +0000 (UTC)
Received: from [100.119.48.131] (unknown [104.135.180.219])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 003.mia.mailroute.net (Postfix) with ESMTPSA id 4cgRtN33T7zlgqxl;
	Mon,  6 Oct 2025 18:02:03 +0000 (UTC)
Message-ID: <4f16e17d-796b-4896-9d4c-6d227514f1ca@acm.org>
Date: Mon, 6 Oct 2025 11:02:02 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 5/5] blk-mq: Replace tags->lock with SRCU for tag
 iterators - Rockchip UFS regression
To: Ming Lei <ming.lei@redhat.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 Hannes Reinecke <hare@suse.de>, Yu Kuai <yukuai3@huawei.com>,
 kernel@collabora.com, linux-rockchip@lists.infradead.org
References: <20250830021825.2859325-1-ming.lei@redhat.com>
 <20250830021825.2859325-6-ming.lei@redhat.com>
 <pnezafputodmqlpumwfbn644ohjybouveehcjhz2hmhtcf2rka@sdhoiivync4y>
 <CAFj5m9Ki1U6N4N6-=HYy49KfvYAbegmwcXLuKCxjX4E+qy7u7Q@mail.gmail.com>
Content-Language: en-US
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <CAFj5m9Ki1U6N4N6-=HYy49KfvYAbegmwcXLuKCxjX4E+qy7u7Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_110216_008868_6F0C87A4 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 10/4/25 7:42 AM, Ming Lei wrote:
>    One possible fix is to check hba->scsi_host_added before calling
> scsi_host_busy():
> 
>    dev_err(hba->dev, "%d outstanding reqs, tasks=0x%lx\n",
>        hba->scsi_host_added ? scsi_host_busy(hba->host) : 0,
>        hba->outstanding_tasks);

My preference is to add a check inside scsi_host_busy(), e.g. as follows
(entirely untested):

diff --git a/drivers/scsi/hosts.c b/drivers/scsi/hosts.c
index cc5d05dc395c..17173239301e 100644
--- a/drivers/scsi/hosts.c
+++ b/drivers/scsi/hosts.c
@@ -611,8 +611,9 @@ int scsi_host_busy(struct Scsi_Host *shost)
  {
  	int cnt = 0;

-	blk_mq_tagset_busy_iter(&shost->tag_set,
-				scsi_host_check_in_flight, &cnt);
+	if (shost->tag_set.ops)
+		blk_mq_tagset_busy_iter(&shost->tag_set,
+					scsi_host_check_in_flight, &cnt);
  	return cnt;
  }
  EXPORT_SYMBOL(scsi_host_busy);

Thanks,

Bart.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
