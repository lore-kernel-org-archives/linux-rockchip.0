Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EC6FCCF9E9
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 09:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KgVSg19zSxwtMNFPIG51ZWiCd7R1uH3gJCp2ICxI0TI=; b=0zTs8Pu4/pcM5vWxoUtQQXkiUS
	yDy/4Lb5hpIGH2DYLZrV3zMVLDUxEk4W3Rwy4iJJaFJYDg8xQpWuLmhlAD7lRBpNvt0+L7DDlkU/A
	2g6Ymmj3USjIY9NTcXTCCjvZBfjDkNuP4lfCA48NFeqXxfcA6ea11aVnSiQiFjQAPL8uGHcH0kCPL
	rg+VL09XRYl4Y+bcPc7WedPAoss+RneZplgZsiokkxHnlB0uXAGcT/WIgj4oy0iFEybalag8tfF/b
	d0HVH5vQYDs6tFiKsql0VJDLVx3ls7KHNgqSGcn0o4j24TuPI/3g1pYOFLrtG0t1d+aXiMz+Xz2eM
	eAb6JmQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stkjY-00000007ryO-2Ufy;
	Thu, 26 Sep 2024 09:24:24 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stkWB-00000007p4E-0fU7;
	Thu, 26 Sep 2024 09:10:36 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727341833;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=z1Bh419iJCJq7aTv/7zXzylF213yjL52FzGyJSDz29k=;
	b=wjKdfKtS4LgS/AB7jEZzttdioBm+TNozwK6xUrPsPMjrpu7K08vLnV4KP/9a+Ok9FqZ5w3
	KAuG1ZLAtgy/sRZj+jN9KMx8IYebOvWuLuioyXQbphOZXnwAqX9SX1kw/B6eD/0Xd5Byrs
	q26Rv+GGkYEj+UElREMIfzXOLhVdRfOHjK6X8STNJhFlMoGwTyy0lhQlwXV+fWxw0+3Lba
	iDMZHQK9QIfvaSb7748sWC/cu8FI8riQT4HG+QBHdUTasSsLGODN4HS1vJs8qckluzAqyH
	48kBtv+esaC93Bpwn5ZJL7fN4pUU5VIEe42ys3OXeBYmYMl45E19PECPtmTFLw==
Date: Thu, 26 Sep 2024 11:10:32 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 broonie@kernel.org, oss@helene.moe, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/5] spi: rockchip: Don't check for failed get_fifo_len()
In-Reply-To: <2382990.BjyWNHgNrj@phil>
References: <cover.1727337732.git.dsimic@manjaro.org>
 <ce2e7f90e62b15adc2bed1f53122ad39c3a9b5ac.1727337732.git.dsimic@manjaro.org>
 <2382990.BjyWNHgNrj@phil>
Message-ID: <feb172d99662a72494863a5227e72855@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_021035_378605_14EA4543 
X-CRM114-Status: UNSURE (   7.75  )
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

Hello Heiko,

On 2024-09-26 10:55, Heiko Stuebner wrote:
> Am Donnerstag, 26. September 2024, 10:38:14 CEST schrieb Dragan Simic:
>> Since commit 13a96935e6f6 ("spi: rockchip: Support 64-location deep 
>> FIFOs"),
>> function get_fifo_len() can no longer return zero, so delete the 
>> redundant
>> check for zero in function rockchip_spi_probe().
>> 
>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> 
> Didn't this topic come up in another recent patch too?

Hmm, perhaps, but I'm unaware of that patch?  Maybe I missed it.

> Anyway, having looked up the what the current get_fifo_len does,
> the 0 case should never happen, as you describe, so
> 
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
