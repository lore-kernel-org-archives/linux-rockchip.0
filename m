Return-Path: <SRS0=Y7pG=FI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F0BEC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 11:03:03 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 99D4D229EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 11:03:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 99D4D229EF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AkNWr9G0bi/sJKabEs9zusRoffUheNhXpv9c6DslX9s=; b=1EXouEGP5nfpD5CQA7xCE8n57
	/OqgW/Nic8+nIFzyg3tfcNw3ODhrGS1VfRqNFpkAkDJqswX36uyoUcB12CrBAQYaZCDxSGOb3CLAH
	4+/UY5AhKV3oU1/ku3IlUTDHnqr55Ts29zv6T64UJ43tx3fW5lD3gnfNRd5PY6/TiJ2h88VCWwNwD
	XmfxtMkLj2f+PglPcPLukfjIXmbL7O/MLcARZnoc5WkLKjsKhO9CbBeGCjdyIeaEBBpGay3ayx51j
	15z2x65la7PPpAmZIMCK6gLxUlg/24pIcLs6DQKuyJnnLXcS+3OBvE/3SMbEEwpeKal1CWOcuhV1T
	KLUng+Zdg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kl8ra-0001yk-Ew; Fri, 04 Dec 2020 11:02:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kl8rY-0001xy-9i
 for linux-rockchip@lists.infradead.org; Fri, 04 Dec 2020 11:02:56 +0000
Received: from [95.90.166.74] (helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kl8qf-0005Lx-Ou; Fri, 04 Dec 2020 12:02:01 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Zhang Changzhong <zhangchangzhong@huawei.com>,
 Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH] PM: AVS: rockchip-io: Fix error return code in
 rockchip_iodomain_probe()
Date: Fri,  4 Dec 2020 12:01:56 +0100
Message-Id: <160707971061.1322141.10632143200660381591.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <1607070805-33038-1-git-send-email-zhangchangzhong@huawei.com>
References: <1607070805-33038-1-git-send-email-zhangchangzhong@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201204_060256_456337_07E52B50 
X-CRM114-Status: UNSURE (   9.27  )
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
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 4 Dec 2020 16:33:25 +0800, Zhang Changzhong wrote:
> Fix to return a negative error code from the error handling
> case instead of 0, as done elsewhere in this function.

Applied, thanks!

[1/1] PM: AVS: rockchip-io: Fix error return code in rockchip_iodomain_probe()
      commit: c2867b2e710fc85bb39c6f6e5948450c48e8a33e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
