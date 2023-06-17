Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A3B7EB64D9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JOdl6jaywDZmbEkXAnr4xhI0UejZzcuctnoO3L6DmIY=; b=mfiH2vhqN9kp9l
	H1hZ20whLxHO9Cw1G8hPZkd08g9V69oPL4VFtg2IrNysqei2n//OcWi3U0j3tOOsgF5nwHEIpp7h5
	59DZbQzSw1th7vZ4LG2MNBaLEY/5DPuDlTBqqvH7BPqJZIP4w2oQggZUxMHBPRsyBai5DYh1+vnCv
	Wq5ZqyCjc/8SiULpLGtY9h4Ir2qqkjSNG/fV+R+2IimhOf9/LYJFOtcoyvyZFKGCox/GqzYVik5wa
	qHA8NTXbu9bjrGqVwFHw7C5Tz+KG8uEROHNF041JKl/RrOIdw51meABZJs+W59Q8Y7pbW7bJgwuSa
	Tu/HrF/lG/1Wc2EcILGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAQgl-0031WU-2W;
	Sat, 17 Jun 2023 07:49:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAQgi-0031Vb-0e;
	Sat, 17 Jun 2023 07:49:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5F88660A6F;
	Sat, 17 Jun 2023 07:49:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA8C2C433C0;
	Sat, 17 Jun 2023 07:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686988174;
	bh=sx69nXVkP7Dj9VAvQJKOTtowVIQ8swiYxoSf/TByssU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=sU2MaI96y+345GgJKsTwbVZ4KPxqsiKLuuIF/zLIIcwPaemWd3z7fDcXnj8adPlvB
	 tyBVg1hdPvCV2ut0xtiuSresqijudU/lxFj715Xs8sykopVFTm2hJzkCsV2ttbZXPK
	 KxYg2dtK8zXBTiJeR2daiy6Es+3+zxXirklnBKBz1D4HQgEJ25pc3Yc5n5CSNnfYLS
	 LhljzCGc4ZiJgIhoCP2A/PBK4+x6/Mz8oxe9W7So8SuDkgh4XHoNjlFerblKln3aUv
	 FLLthzKVbASFnHe0Evq6E4xRwJd04XBLg0wAkEJMbuv0dGfxM3y1HYfSskeimLttT6
	 AlJV2v2p67/qA==
Message-ID: <50d47f22-a066-b76f-0447-57c938123c53@kernel.org>
Date: Sat, 17 Jun 2023 09:49:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add Firefly Station P2
Content-Language: en-US
To: Furkan Kardame <f.kardame@manjaro.org>, pgwipeout@gmail.com
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20230616211020.55755-1-f.kardame@manjaro.org>
 <20230616211020.55755-2-f.kardame@manjaro.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20230616211020.55755-2-f.kardame@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_004936_281663_761A2A1E 
X-CRM114-Status: GOOD (  10.17  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 16/06/2023 23:10, Furkan Kardame wrote:
> Station P2 is a single board computer by firefly based
> on rk3568 soc
> 
> Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
> ---

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

You missed at least DT list (maybe more), so this won't be tested by our
tools. Performing review on untested code might be a waste of time, thus
I will skip this patch entirely till you follow the process allowing the
patch to be tested.

Please kindly resend and include all necessary To/Cc entries.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
