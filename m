Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBE1FEB64D9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 12:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-Id:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LBw42o+YEgNgUtg/XxDVcKuns63obQYzO8V1H7iWjjI=; b=tq5OI287s11i5JAmr7Eh4Jfoo5
	CJqbAA9RajjJZonElzcbIF3hbvWBOx07s6iekoZWh75KF3+gpGicm7Yk1eLiOoyDXu9K+QuQ/RZYH
	HQGosFMNH7Ic1UJcoWAgHPel2MnteuiXJNZzUHYibcd5GXS9vEyhZqBdg4/kFIYXrOOnNtTXGbO3P
	2G3PthX/86PYBHvlDxNaaVqXLcpNgDcQPuSW/5ow2+5FgkNCt2m/GhXV5Rv6AxSc4ZFvC2yNx2wBI
	rDyyZo08Hil4V/jzQQ+e8Rkqnvi9VVSF7I7IJvs+5OsdUPNJIVWyCgnfjDfgosMTHWq9KiY0XsLXB
	VyxnQtKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAVHz-003bc4-17;
	Sat, 17 Jun 2023 12:44:23 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAVHv-003bax-2I;
	Sat, 17 Jun 2023 12:44:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1687005852;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YQmrDVsltZnBWIIcjoll7SNdqYy8uBj7ZiAAewWsYcI=;
	b=nqwTmo3JD1K/oR7ZRzJvhZdMO1x/jq4oIyyxiCK7zFlOE5UYDrvGihacO9Tp0DdIya50hG
	yV+aP/C4jkhgcAlcNhJUfCRfDk15DT37hffSrRIlxw+22bJu0fPhTYwV4wPmuP9e8Vq13Z
	2Br1yvY5DoxCDpTYLyysk2glhxKnPlbJnwzvPUyplociI1oM/LP2LV6Qf25TZ4TqW3r2i+
	1ZW/XsTiZLzV5/2kgEaccp14m8IeNXgNc9ZSuLmnkpMqQMhitv8p9CFEl/6ku6t8ZCY/g5
	IVVsFvruE8qLOG76v2n/obFHwi3F/Ss/5jK3M01wr2MkzQDAo3toDAGfL45oQg==
Message-Id: <1687005793229.187531698.2216870223@manjaro.org>
From: Furkan Kardame <f.kardame@manjaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, pgwipeout@gmail.com
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add dts for Firefly Station
 P2 aka rk3568-roc-pc
Date: Sat, 17 Jun 2023 12:44:10 +0000
In-Reply-To: <a837f089-afaa-0ff8-73d6-6f370ba63f52@kernel.org>
References: <a837f089-afaa-0ff8-73d6-6f370ba63f52@kernel.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_054420_212214_B4527785 
X-CRM114-Status: GOOD (  17.65  )
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




On Saturday 17 June 2023 14:28:29 (+03:00), Krzysztof Kozlowski wrote:

 > On 17/06/2023 13:26, Furkan Kardame wrote:
 > > 
 > > Hello  Krzysztof,
 > > Thank you for spending your precious time on reviewing this patch. 
 > > 
 > > My apologies for the silly mistakes, Thank you for the detailed 
review. 
 > > I will fix the patch and send as version-2 to all the latest 
maintainer.
 > > It have been used in manjaro kernel since long time and some of the 
users 
 > > are already using the device with this patch.
 > > 
 > Please don't top-post.
Ok.

 > 
 > 
 > > It will be better if it can be tested by more developers and reviewed 
 > > before it gets merged.
 > > 
 > > Recently I fixed the warning before sending the patches, Build log can 
be 
 > > found here:
 > > 
https://gitlab.manjaro.org/manjaro-arm/packages/core/linux-rc/-/jobs/12638/raw
 
> 
 > I don't see there dtbs_check, only dtbs W=1.
I did a dtb check now locally, logs here https://paste.kodi.tv/uloduzawav

 > 
 > Best regards,
 > Krzysztof
 > 
 > 

-- 
-- 
Thank you,
Furkan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
