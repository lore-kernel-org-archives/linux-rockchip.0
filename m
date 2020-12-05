Return-Path: <SRS0=gJGA=FJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F533C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Dec 2020 08:11:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3EF2822D72
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Dec 2020 08:11:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3EF2822D72
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+P5f6EXlUVjX4776ajflek5uL84ahmFPnzQjOdKqPBo=; b=vaIVSGDHpyL/sPacMFnv11vNI
	8a5mVZ3a+fhBxlGipavFC36hszUo9kLyad5dfq+9ZpzRxGW6Yr9aIohJNJ8w412jsh3netxzyeP+Q
	1RzzrKDR0/BHmt6p9bszetoNj4GtuulrcOqXU4Pl4T/85iJEMk1YbuT7hNkwBgCCWOR1PRnLRaTsV
	9f821i6CZKiHznAvazdKSEQx9vs46gTEvdvXWF+4orc8tHcQ0jAIj6BUTrjSTVK8tPo/HF9smg4Q5
	TwFoXDJ9YDD/UFhnyXGkd/D7e8pII4oDbWFu+ThJJuon2TW8uMA9BIUYZb6kpFsdcYJ5gv9Nyk7SI
	VI70ML+3A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1klSeq-0006ML-GB; Sat, 05 Dec 2020 08:11:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1klSel-0006LV-Ui; Sat, 05 Dec 2020 08:11:04 +0000
Date: Sat, 5 Dec 2020 13:40:58 +0530
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607155863;
 bh=mGO4D/CrxcgVNF2XS6aa7J5jfeliiJlvfRPD2/JDX2Q=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=FytETiNBT8lwOtSUknHqUWOsZvEFo0GDLHUrl2+V7imaRlt/mcRQV+R2x0oEfM5V5
 nPM8x6j3kzVAA+s9tjj0x7tpq6kQ7nK0nV2TLccNC+oan2fVm8kHHyzkrC5QNui3sn
 PcPYCdHKpSoo/4aGHAIagjSxfCZ0iFMnLs5i4f/iacOaCywbSNgnuZQSEJN/i0RSyp
 GQCdtM/MlhZrqkX1keBBVqJIEvd5gv3C/vN++Jg/VNL15pgFvYTK/QujunF5NKLiEh
 pRh0luQlWvKQVqA9Ig/l2IbCljiCsJiy7OqO1A2gfhylNihh527fq2YPIo6Vg8rGNp
 zE6CauPE5OgSQ==
From: Vinod Koul <vkoul@kernel.org>
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Subject: Re: [PATCH 0/2] phy: rockchip: set otapdlysec for in dts
Message-ID: <20201205081058.GY8403@vkoul-mobl>
References: <20201202082507.3536-1-chris.ruehl@gtsys.com.hk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201202082507.3536-1-chris.ruehl@gtsys.com.hk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201205_031104_074257_E5A66561 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 02-12-20, 16:25, Chris Ruehl wrote:
> This patchset add support to set output-tapdelay-selec via dt property

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
