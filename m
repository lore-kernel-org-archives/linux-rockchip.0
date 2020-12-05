Return-Path: <SRS0=gJGA=FJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BBE4C4361A
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Dec 2020 08:08:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2D53522D0B
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Dec 2020 08:08:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2D53522D0B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nCiMl2qhdL3eEz2mcmhjPvDoTfp57LLQuymEbKPQIbQ=; b=fjjonak9c0fQgCOxsmG2yIj90
	WAr3Emkd6Iuna/vr79MpRm1MdRi7k2i3307Nxy30DGxJ6/frFw+Je4YYlCyGwsMT+L5dHjM8mMXA3
	S8uuz2IlFhwiTCH24vdy8yPq4ANLLpRn5JtKPhNfnttwfuwWexEa6cioz7GNtChrqKevX6ME4O8a4
	/tVNu6PNl0tRMZ4IHAJ0WZ4kFgdXIkdAzZXSEuJJS7WJpk2LkUs9gQOvgyBq69mLA5zVDJZX7ZKJP
	PqD/+McuRXRTmFfNxdSlxkjBqcDlhqcZvJBlKytqx0r6kmCtNopBCGFlJxt7NRqFlc8viJlSmb2F4
	vt8fmgN1A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1klScB-0005tY-VV; Sat, 05 Dec 2020 08:08:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1klSc6-0005sA-NC; Sat, 05 Dec 2020 08:08:19 +0000
Date: Sat, 5 Dec 2020 13:38:13 +0530
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607155697;
 bh=EbXucN/nfm+MLQLvn5FrM2JRv6Qb5nUz2N1QK+to69c=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=DOZFXvI9azl0MI7U7ryC9VuQVsZjuk++HpD8dKuYbmBzw3WN3r3NSL5g7NVHcjIcf
 r3kIj+0lV3SN99apf+cVQhvIXXCETuHOZlSve2oM5KBLQgUzuB0IESfli4H4IK0vYO
 2Oc+Doj3V7scDeNzcE2uI9Ap7SsqiaZlfhkb6pHfFAiSzHWzf4K3kDLByXZIDAPXw/
 uol59ALzEjpmw6254mby3zP8De7h5AwQD3LWTpqjiyrMXI4lOvGgzbrIsWMOjmq8Do
 HvQTANcdacOzc9u2dfmOklvxB5BC7GJi7mWbZMC5SXCh13AAoOOZGC4gZrueRLiA7f
 f4X/C4m1AGT1g==
From: Vinod Koul <vkoul@kernel.org>
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Subject: Re: [PATCH v2] phy: rockchip: set pulldown for strobe line in dts
Message-ID: <20201205080813.GW8403@vkoul-mobl>
References: <20201129054416.3980-1-chris.ruehl@gtsys.com.hk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201129054416.3980-1-chris.ruehl@gtsys.com.hk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201205_030818_821274_42BA1ABA 
X-CRM114-Status: UNSURE (   7.42  )
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

On 29-11-20, 13:44, Chris Ruehl wrote:
> This patchset add support to set the strobe line pulldown via dt property

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
