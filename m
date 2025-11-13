Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7EC7CD8C9D
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 16:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4P9Ajm+YYKyD1IluAY9zbhyQc+ncTi3/JzWHSZ2cVmw=; b=FnwVcfaFogD1ns
	HAr44fHe/gCqUDGrFuIKSbsQMOWJEOFRAhlJ6+Lng3JvsxYF7zAiUTcYa96ku9pNiWcFXj2HKOZxX
	OjJG5enZsUbvNoAh4iZiXgvNgxgc4wauiWEYgtv9K0f6EbPW/uTZlRnLaLGxYHCkx06jMwlpwg93Q
	qkn/1iea2QT29GHe0zcfrnDi4gCW5rCFlukdbDASAMjEbukzKozOxD3m/+bqBYjRbPI2O7tMnC6PN
	BLGKwHvdPCzYDMOOwSa0wc9kveJDHgThb4znyFUaOUGLcfiybRRT7SLoN7DIfOiVIL5YJdcefJfI6
	hdhCBRyAKIG0pKIkpPag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJaC8-0000000Ankc-0EJY;
	Thu, 13 Nov 2025 16:29:12 +0000
Received: from 003.mia.mailroute.net ([199.89.3.6])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJaC3-0000000Anjh-3f7l
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 16:29:10 +0000
Received: from localhost (localhost [127.0.0.1])
	by 003.mia.mailroute.net (Postfix) with ESMTP id 4d6m1W53QszlgqjV;
	Thu, 13 Nov 2025 16:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=acm.org; h=
	content-transfer-encoding:content-type:content-type:in-reply-to
	:from:from:content-language:references:subject:subject
	:user-agent:mime-version:date:date:message-id:received:received;
	 s=mr01; t=1763051342; x=1765643343; bh=c6drLUcx4CVBp8LnzTJ1YF8V
	gc4lVF7U+AKedegwYaA=; b=cYt5SnUJU2ZW4ukdHeqDX2uK6p3PGL/rE2aS4KlW
	KVZaM5G7ydgc7Qr6ykcS2x5pciTwWsRywUo6v5W7fyApZs2LZ2Mq35P2JW85xplf
	jOcpvsFYzlDDD7ouaKHfuJTnrg9OFyQvOGrHdR/U8uNTkrx/uxhz5/7CjuV1syMR
	pW2OY69MYI4kMFLr+HkD6RoGyihw2+r9ibbwBrvlBmoP5gdO2a9Xua8YXEUbz0zn
	3GEhmph2MJYxAV9nshfTXjJVaRfJDIC6ruht4cAEj3IrPBYEn7NIPrShy8rQNj5u
	BxOx9rKEKhhOhYqToGOLha4J5is2FVSrzaIOYBlCDa+ahw==
X-Virus-Scanned: by MailRoute
Received: from 003.mia.mailroute.net ([127.0.0.1])
 by localhost (003.mia [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id 1qpylD2q_bhh; Thu, 13 Nov 2025 16:29:02 +0000 (UTC)
Received: from [100.119.48.131] (unknown [104.135.180.219])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 003.mia.mailroute.net (Postfix) with ESMTPSA id 4d6m1R3gdmzlgqjM;
	Thu, 13 Nov 2025 16:28:58 +0000 (UTC)
Message-ID: <faf2e938-5bb2-448b-8e34-a8422611f54f@acm.org>
Date: Thu, 13 Nov 2025 08:28:57 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] scsi: ufs: rockchip: Fix compile error without
 CONFIG_GPIOLIB
To: Shawn Lin <shawn.lin@rock-chips.com>,
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <1763011091-243727-1-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <1763011091-243727-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_082907_999408_96C1730C 
X-CRM114-Status: UNSURE (   4.59  )
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

On 11/12/25 9:18 PM, Shawn Lin wrote:
> drivers/ufs/host/ufs-rockchip.c:168:19: error: implicit declaration of function
> 'devm_gpiod_get'; did you mean 'em_pd_get'? [-Werror=implicit-function-declaration]
Reviewed-by: Bart Van Assche <bvanassche@acm.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
