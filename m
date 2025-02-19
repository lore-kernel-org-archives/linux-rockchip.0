Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFD8DC021AA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Feb 2025 10:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybsH7pbPOQiwKi8UMPeVuedCo3A87nyWntSoORIldyQ=; b=hAg9lqm5LATffs
	s7cTNVafibyO+Kc4Tt40WQ5BEFou8mUgvVQSnto5kGcH85OhPS5k7K1O5HOLAWLuWBKqpma3cl7zF
	WbvEJHwI4YTRcGgEIQiQwkQzg0Rl7+iLxAdZQcJE9AlcN14AV6xYAp7NTHuZT6/soiKLaleBiFSQc
	MKU/SQ+Bito9kmUVOhJzWxtj2YpPrdS5A3df2RsVWYRhfJC6ZXeMjGis1c5wjnib+jYtb4AvMvFUM
	ijTwDtz9Lv50R+mF0s0D4DcjRUpmjolAa8bdql/7EaBVU+HuyjPsSzL9W0NAGvej7yunVmjZPZK0M
	cxcSaieUmz15x0tQvfvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkhZZ-0000000CCgh-04YL;
	Wed, 19 Feb 2025 10:44:57 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkgvi-0000000C2Yf-2Jx8
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Feb 2025 10:03:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 511E61682;
	Wed, 19 Feb 2025 02:04:04 -0800 (PST)
Received: from bogus (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 57BBB3F6A8;
	Wed, 19 Feb 2025 02:03:44 -0800 (PST)
Date: Wed, 19 Feb 2025 10:03:41 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	<linux-rockchip@lists.infradead.org>, <linux-pm@vger.kernel.org>,
	Steven Price <steven.price@arm.com>
Subject: Re: [PATCH] pmdomain: rockchip: Check if smcc could be handled by TA
Message-ID: <Z7WsfWq1dC71uls0@bogus>
References: <1739926689-151827-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1739926689-151827-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_020346_630512_98F4C905 
X-CRM114-Status: UNSURE (   7.70  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Feb 19, 2025 at 08:58:09AM +0800, Shawn Lin wrote:
> Non-existent trusted-firmware could lead smcc calls into some
> unset location which breaks the system.
>

s/smcc/SMC or s/smcc/SMCCC please. There is nothing called smcc

--
Regards,
Sudeep

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
