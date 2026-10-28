Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635C1606A31D
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2026 20:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CBySWdiA;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=acm.org header.i=@acm.org header.a=rsa-sha256 header.s=mr01 header.b=pqojwuKS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=tDAKXmiTBB7gfyIHxjRU8ecBfA5dKc+V+VEVO0TAG0c=; b=CBySWdiAlvZa+FpS+ToWRINMEN
	ger1THhH2GM8+d/gQT3O6MfPQB2GIjzsAzDftnsh6MDSkV+uws+qh/SJlykzyGazP+IsCE67beiRr
	FZN+edWdop7XTMA3zc+mOoqgKNgU2DjcUknz7sqgc8sbVEDh2CPVqKTjUv/GmVFXRZyejUyTgCxqZ
	YrO4LP3F603xiz/ijq4oXg52efQ2BhccAvasCX+AgpSrVWfzScNDG+ysTAfUC4f29b0qn1ypAbbNY
	0sMnWsC/n7n6riRVj0oA93mmWY1vHDkMOHnPFe/BXsscyPNXwi1wEiyAx2lWtabXxCzzeWVDPu91h
	YbGuhprA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMA4F-00000007urJ-109r;
	Wed, 28 Oct 2026 20:16:15 +0000
Received: from 011.lax.mailroute.net ([199.89.1.14])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMA4A-00000007uqS-0NNb
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Oct 2026 20:16:11 +0000
Received: from localhost (localhost [127.0.0.1])
	by 011.lax.mailroute.net (Postfix) with ESMTP id 4jFJXR45Jsz1XM4Tn;
	Wed, 28 Oct 2026 20:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=acm.org; h=
	content-transfer-encoding:content-type:content-type:in-reply-to
	:from:from:content-language:references:subject:subject
	:user-agent:mime-version:date:date:message-id:received:received;
	 s=mr01; t=1793218563; x=1795810564; bh=d1WzNJAb4UJ72QcrWGxBt/3D
	PnxEO2/sr0xCE07N2bg=; b=pqojwuKSQXJu3eqU92Pdtlgg8v+dk/L7G72Qf41U
	CUE0esFn2bKcc+0MFSXtLKz+g/e4obfwQ7VSMAAWuCTOYCLMKKZOIDkKTvBC6yb7
	ip7yIbGNnuV3M6vpZQbfdgvGCda7we/r/pmguyDZklXkuPfl5RWdRHpxyY7ZW1yV
	+gBjcLDvC+ErjZ0C1ttTBdvl7QPZfJK96OX74FVw/vArRYn/jz52TEqw64z2/45c
	vexok5I2EBy94JNesuUk5vCByARMp2TAOWfd2OOIYvqDLjbb3SoPGoWVeT0R1HdV
	Q0yoJdD5hUwRImMQXSAKdIKWKqV785ZlsGOiyOi6fM2NSA==
X-Virus-Scanned: by MailRoute
Received: from 011.lax.mailroute.net ([127.0.0.1])
 by localhost (011.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id HMiw1daGfDo1; Wed, 28 Oct 2026 20:16:03 +0000 (UTC)
Received: from [100.80.231.125] (unknown [104.135.182.41])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 011.lax.mailroute.net (Postfix) with ESMTPSA id 4jFJXM2TCHz1XM4Tl;
	Wed, 28 Oct 2026 20:16:03 +0000 (UTC)
Message-ID: <c494f758-e3ad-4638-a17e-44d5f9234ef2@acm.org>
Date: Wed, 28 Oct 2026 13:16:02 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] scsi: ufs: core: Retry the full device init on fatal link
 loss
To: Shawn Lin <shawn.lin@rock-chips.com>,
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K . Petersen" <mkp@kernel.org>
Cc: Bean Huo <beanhuo@micron.com>, Heiko Stuebner <heiko@sntech.de>,
 Stanley Jhu <stanleyjhu@google.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 linux-rockchip@lists.infradead.org, linux-scsi@vger.kernel.org
References: <20261028073129.1661829-1-shawn.lin@rock-chips.com>
Content-Language: en-US
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20261028073129.1661829-1-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_131610_168147_780F8DF6 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/28/26 12:31 AM, Shawn Lin wrote:
> +retry_init:
>   	hba->ufshcd_state = UFSHCD_STATE_RESET;
>   
>   	err = ufshcd_link_startup(hba);
>   	if (err)
> -		goto out_release;
> +		goto retry_device_init;

Move the code that needs to be repeated into a new function in a first
patch and add a loop around the call site of that new function in a
second patch. Don't change ufshcd_init() into a goto-spaghetti.

Bart.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
