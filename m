Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF937C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 18:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbUs5wZk3uN07Nhm7Yg2+aj0JC7mbFkcAQgkog6K7JI=; b=pDw+pVs6CNQnPf
	4wGB1J1SItMkHs+vI/Zjjm49Syyiy6g4jyfzRSvNg7pA8w3HPLcmqJVIW6oQ6/x3nar1vspbzxTpX
	GHyaeM1WZsR80SSNx0xcyYGNuRyC8rB/OtjKof1RfShf6rT0FLem9hrKuSSX4/CjujR3aCQopY1cu
	zQ0a2/opXwt/LBNccVJzuunubUqGQZL9ux01xwg5r/+bw11PPqPlXOEtEnSjCVp7mxnSa0wvdcryO
	oeivGXaSQ9E76MeGjX2R1lbJJhoCgZUKDpzzzZgSAl/aEoD6ucHJKo1TcX9sBDuEnb8k4JZiKZZ4W
	ycxpPEkbWfLCc9MJaQqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scUKx-0000000CCj1-12cQ;
	Fri, 09 Aug 2024 18:27:39 +0000
Received: from 008.lax.mailroute.net ([199.89.1.11])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scUKu-0000000CCfV-0sNm
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Aug 2024 18:27:37 +0000
Received: from localhost (localhost [127.0.0.1])
	by 008.lax.mailroute.net (Postfix) with ESMTP id 4WgXT05LbHz6ClY8r;
	Fri,  9 Aug 2024 18:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=acm.org; h=
	content-transfer-encoding:content-type:content-type:in-reply-to
	:from:from:content-language:references:subject:subject
	:user-agent:mime-version:date:date:message-id:received:received;
	 s=mr01; t=1723228047; x=1725820048; bh=JwLQU18qPLACTYfrm3egbp54
	GenfTciW0oFQ/jU7HCA=; b=bawISMY76lSeg5zyp23V9zy8tLA88ECu/QhvSU+z
	IwOQl/VoxwXHLPQgsR8+x1+LeyBqyCpudAbZjyGym5txc+TaWPTWhwcwsGC/EUZ1
	2lA3F4qJMmHFoabtnwhhn8TvtbgOR/XLyeYojhqTjxPTSV5uLM9PGLeyam5nsQ/y
	Awwf5X4ITdcB9Xh8ub7SdbwYKuLrwcePSBgXqUjBFQyZYPG1HDMnBNaL0m1piPeN
	qWLaQ9lE1v1MfEj8cBQTSFQGPAGRAsHwJqu5XwMr4sJ4fw+HjgYtBF9pi0VxIQUW
	n4qqtTCcXWkGXqJApdI59C6P5H4LEsCBhv546p6U8KPxUA==
X-Virus-Scanned: by MailRoute
Received: from 008.lax.mailroute.net ([127.0.0.1])
 by localhost (008.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id tH2dpFgiuWcp; Fri,  9 Aug 2024 18:27:27 +0000 (UTC)
Received: from [100.66.154.22] (unknown [104.135.204.82])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 008.lax.mailroute.net (Postfix) with ESMTPSA id 4WgXSr0BxHz6ClY8p;
	Fri,  9 Aug 2024 18:27:23 +0000 (UTC)
Message-ID: <4ae81cc8-03ff-4dc0-a912-49f0c139389a@acm.org>
Date: Fri, 9 Aug 2024 11:27:21 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] scsi: ufs: core: Export ufshcd_dme_link_startup()
 helper
To: Shawn Lin <shawn.lin@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Alim Akhtar <alim.akhtar@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, YiFeng Zhao <zyf@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <1723089163-28983-1-git-send-email-shawn.lin@rock-chips.com>
 <1723089163-28983-2-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <1723089163-28983-2-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_112736_287903_524DD8F9 
X-CRM114-Status: UNSURE (   8.19  )
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

On 8/7/24 8:52 PM, Shawn Lin wrote:
> Export it for host drivers.

That's a very short patch description. Please explain in the patch
description why your host driver is the only host driver that needs to
call this function.

Thanks,

Bart.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
