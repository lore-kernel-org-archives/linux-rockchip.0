Return-Path: <SRS0=uCGj=F2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C9DFC433E6
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Dec 2020 17:44:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A7D322D73
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Dec 2020 17:44:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2A7D322D73
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=simonsouth.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:Date:References:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WdaAYM+1Get0dg+YOOxzlVOGccCX1D3gfY73oupiGCQ=; b=2XqUdyPji16PXjkVjyIE35i41
	G+rCZnfMaA2+OU0mDVsjwuv7WjAUmnvqdbe0Cf7Fjx4TFQlwWW4mpykPZLd7xG1d0xeZjp8cai6zU
	zJ6x1fvLu41o1T/VO/UIU12n3ssct+4AUGos8cHBGdTCRVJXtp3SLp7O1vHV89LlM45WSUBKWlGFK
	MlQJUGUWmjyBfnscHMByK1Ir6DspVSJkNRyfxFIUQwRM3g7wGjkz47J8WS1XpnHZ3yUuM8Ydc8Ip5
	VvQDnA9dOriwmI2hMmgBRHPfOGvZs5gwmWydwqBuFTHdQ18skX60ekkgmZ9U7SiQeDyuJt7BZGtgA
	mNto0MFzQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1krlhi-0008PK-If; Tue, 22 Dec 2020 17:44:10 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1krlhd-0008Nb-JF; Tue, 22 Dec 2020 17:44:06 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id DBD902418B;
 Tue, 22 Dec 2020 17:44:04 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo06-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo06-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OMTNA_qN7MQl; Tue, 22 Dec 2020 17:44:04 +0000 (UTC)
Received: from jupiter (unknown [108.162.141.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id 2348624169;
 Tue, 22 Dec 2020 17:43:49 +0000 (UTC)
From: Simon South <simon@simonsouth.net>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 3/3] pwm: rockchip: Do not start PWMs not already
 running
References: <cover.1608407584.git.simon@simonsouth.net>
 <0acdf3a78f670a2678e03b0bbbb01aa58a11ce9a.1608407584.git.simon@simonsouth.net>
 <ff2bf1bb-e95f-138c-df5a-12ed73568572@arm.com>
Date: Tue, 22 Dec 2020 12:43:49 -0500
In-Reply-To: <ff2bf1bb-e95f-138c-df5a-12ed73568572@arm.com> (Robin Murphy's
 message of "Tue, 22 Dec 2020 17:23:12 +0000")
Message-ID: <87pn31hh2i.fsf@simonsouth.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201222_124405_700813_4C99DF67 
X-CRM114-Status: GOOD (  11.17  )
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
Cc: linux-pwm@vger.kernel.org, heiko@sntech.de, bbrezillon@kernel.org,
 linux-rockchip@lists.infradead.org, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, tpiepho@gmail.com, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Robin Murphy <robin.murphy@arm.com> writes:
> Since you're touching it, I guess it might be a good idea to update
> this message to say "PWM clk" for clarity.

Sure, I'll be happy to remove another source of confusion.

-- 
Simon South
simon@simonsouth.net

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
