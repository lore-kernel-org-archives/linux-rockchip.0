Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 194BEC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 09:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bqgZs9KYdsD6wcSbHDm5vEnxiXscmywWwqFlkCZWp/g=; b=SZS2HBunflg9le
	p2fermTI5vUQPjRYe2q/XBYDd7o9b/CPiR22ECvbMQVGh3f8eN3z0kL+DX6cWaRf+cgsQn0vkVb8e
	EVTDmBFlW9HQkfFINjqaGBZI/8y3ZVfArrRKyfTEKgtpR9mP/aoT0iOUBa+b9aWojD6HCpAR0x+9/
	m27wXDRBhRrxCr7441so+SG2u7p/bJ/hB6sthL6A6zG07zqw78znDk9HNxriO1lsuVIdYvfqH1Lsm
	r4MzJziMyN6u9HcUXFR6AEMlkeFViTHuhVvm3ScsoDgoxetY9fc+KSBAOBn4MLA1QXXUFXcMR8FCG
	GzeE2VNznnNpjrJ2KrQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neZhG-000ReR-93; Wed, 13 Apr 2022 09:53:58 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neZh5-000Rbc-CB; Wed, 13 Apr 2022 09:53:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id BA3CAB8216F;
 Wed, 13 Apr 2022 09:53:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB5E9C385A3;
 Wed, 13 Apr 2022 09:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649843624;
 bh=6r3fkXMzd8g99ogF3ht/l19Cw3uTqx/4BgPVQdUQkk0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iafrXM5mzK/c592vRQLkWV3sKdyBpujiiNfjdHBT10mt/cEaDhRzj9MDoAyCO4C0I
 pQjQb6AcaZkPqW/KmaQ70t322bvLg6Th4GjOHC9UxfJdRBs3EharNlcvTKHXZFmKsL
 B+4cTdmdl+Vd8w6UCl+YzMNP2HyyDBXYAA2d0KQXmJq+DK+lyF7sJn6NO+aSHfBRi6
 NJGVGqtBR4MdY4i39vO2p7z/R9njWlcteYPsYgWZ4eEyM1PbjNtLDczJTpcUAeGghm
 XSeYEo6DmBJCq4EZAQzYU8ifup5Zy7ucUHsYF52+sBoAaoqukX+MNxby6j1WgTeB5y
 sUWUPTXZt6vYA==
Date: Wed, 13 Apr 2022 15:23:40 +0530
From: Vinod Koul <vkoul@kernel.org>
To: cgel.zte@gmail.com
Cc: kishon@ti.com, heiko@sntech.de, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Minghao Chi <chi.minghao@zte.com.cn>, Zeal Robot <zealci@zte.com.cn>
Subject: Re: [PATCH] phy/rockchip: Use of_device_get_match_data()
Message-ID: <YladpACp1FiLkmXh@matsya>
References: <20220303014406.2059140-1-chi.minghao@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220303014406.2059140-1-chi.minghao@zte.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_025347_586653_60348991 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 03-03-22, 01:44, cgel.zte@gmail.com wrote:
> From: Minghao Chi (CGEL ZTE) <chi.minghao@zte.com.cn>
> 
> Use of_device_get_match_data() to simplify the code.

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
