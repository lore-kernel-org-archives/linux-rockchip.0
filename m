Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF466106703B
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Mar 2026 14:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XogjTVVd9IToCoDUpMlv4R2y6Dvzy6wGaaL0/aq5l/s=; b=HnldmQFUZWFuzp
	ydvp+imUP0d17gbIMEKOLufoUyNqfLXisiMMIxMTjZ3KhGeH4rAN+Yr82051iB76Oxp5hPE/BdPUd
	D1vo8zQ2jKtQezw5S8fAugrwvyIPXMjGPAKMNTpHKnJqlB9i8DZ1aWcN+Kfn9YYdnJy1QalL0jRxe
	dLVHlRMnoN3F23tb4M6qIDOPby8kivtXdn/X1h2v4neZ39UW78OQOkftoHbRdnXGZVYcvjggvssmL
	5cY79ZyIX5duyWh0J1dbh7NA0rvpmpMTLHuk03pZKOQ30bwisxmXT29x2KN/N7EppuD6/kS7o90BO
	jYsOp0ThFyXClpAT5TFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0h10-0000000ECzP-0z4o;
	Thu, 12 Mar 2026 14:27:54 +0000
Received: from 011.lax.mailroute.net ([199.89.1.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0h0x-0000000ECxw-3M1M
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Mar 2026 14:27:53 +0000
Received: from localhost (localhost [127.0.0.1])
	by 011.lax.mailroute.net (Postfix) with ESMTP id 4fWqhj1FLFz1XM6JX;
	Thu, 12 Mar 2026 14:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=acm.org; h=
	content-transfer-encoding:content-type:content-type:in-reply-to
	:from:from:content-language:references:subject:subject
	:user-agent:mime-version:date:date:message-id:received:received;
	 s=mr01; t=1773325664; x=1775917665; bh=+tuZgfcLJAnWsfI0aB3bhUnN
	FFvWKB9/WEveovfYRBE=; b=05eBr5S0EjkCJDvNrW2yk+Rr9HQ5N9CiBrfSVSoi
	G9Zm8cdZJtwY5cOdoL1HJuDdiZNJGVhtuAquKGXrJ9CagZZfzKrDCmlapqtY40Pg
	429Gxy5uLUOydBEQUNs7nEStp1Dwq8d4VaTIu+BXh6lzrLuxIGQnN19plOHxu9Vj
	G10MLl9E5hcBm1q4e3y9nc01I61y6/isQGblyCoVGS2o+7naeB0YBL3uMPD/+1B7
	0EGAM4TxC1Gqo6A+T8hi0x0D02fllZrwig8or/zHaRLMqKLYtDJiPG5o8Ia5rBMQ
	GN7lK9ltj7LsZjLdprm3H7IvNQzC2SpSDj0iXYYSk+EAjQ==
X-Virus-Scanned: by MailRoute
Received: from 011.lax.mailroute.net ([127.0.0.1])
 by localhost (011.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id 1CCMRBkKlill; Thu, 12 Mar 2026 14:27:44 +0000 (UTC)
Received: from [192.168.51.14] (c-73-231-117-72.hsd1.ca.comcast.net [73.231.117.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 011.lax.mailroute.net (Postfix) with ESMTPSA id 4fWqhX2qRsz1XM6J6;
	Thu, 12 Mar 2026 14:27:39 +0000 (UTC)
Message-ID: <b9024d90-6df7-4a2c-85fe-7f5178e7d1cf@acm.org>
Date: Thu, 12 Mar 2026 07:27:37 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] scsi: ufs: drockchip,rk3576-ufshc: dt-bindings: Add
 new mphy reset item
To: Shawn Lin <shawn.lin@rock-chips.com>,
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <1773276707-24857-1-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <1773276707-24857-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_072751_886908_C9E9A05A 
X-CRM114-Status: UNSURE (   8.12  )
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


On 3/11/26 5:51 PM, Shawn Lin wrote:
> Add the mphy reset property to the devicetree bindings for the Rockchip
> RK3576 UFS host controller. The mphy reset signal is used to reset the
> physical adapter. Resetting other components while leaving the mphy
> unreset may occasionally prevent the UFS controller from successfully
> linking up with the device.

I see "drockchip" in the patch subject instead of "rockchip". Is that 
perhaps a typo?

Bart.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
