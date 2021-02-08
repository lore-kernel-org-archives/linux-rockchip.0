Return-Path: <SRS0=M6n8=HK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C8EAC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 00:24:03 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ABADA64E3A
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 00:24:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ABADA64E3A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Message-ID:Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DtKvOHvnMilPbWsxqv24zqgGpnzNCjbcL5AfbB6JkG8=; b=nlXSOe4o81ECCZMoB1Gr/7nZhQ
	+D+l9H7Jxjzbv2Ed2EwBdtjDkW76gOMPPZL/ecoDfdHhhOAIZbMu9lud90UbTWOxpFz4CJMYibAyV
	9bqLlPenyYDJVi2gimEwQk1w8yq7bC6ad4B4MrbnemDKbaojGoa4n7+CG/xZrlItWyzEV8KCF2ymv
	+1WYRVdsbEreEYwgTCoDtjNFgqaLn/SQlhPO2nx4b5rsQ6N71vhMkBjJobj50voO/IYEFbfPpBf2q
	0JHETlmGamTVMPGOqpTNzBwOtxJ3Lem/b9OWPb22Khi5lfnIt4m0tWiJlYfRxK2RCPwI7NTwrZyyi
	gTOit4mQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l8uLI-0001oj-5n; Mon, 08 Feb 2021 00:23:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l8uLG-0001oX-4p
 for linux-rockchip@merlin.infradead.org; Mon, 08 Feb 2021 00:23:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Date:Reply-To:Content-Type:To:Subject:
 From:Sender:Message-ID:Cc:MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=22PjdP3HY0tZzoW6pHULZs18Ep/qcWy+gXqf0IurJHM=; b=OqFOf5XAVV62ih9a73zL6iRSqr
 IZxmfsR4fUZL0k1jceukCgVFthoY07O+3/zznsF2YpuQsvaYm+IhBNgXiCXuspxh3uqMR0n+51+0h
 ifn9FnL+UApbercSz3Nxft/JkciuWbp+9ThPxyj75YA2XhREpVTKn94AEwypsYHh4sbPSSwkthaBJ
 dzZTpnNm1OMiUqdyfh09Sz+6BzgeQIZlqLMoytRMmudT5NKAfo/Q05YnVSO7CdpDovCMq+K0VqL3i
 SHElRbnXwjRRdK0PiP2fvPg0c7dD98UgekMHNQM6XbbziFE2ws4CrnVcZ5xR+xdHzJwj8OraFCrfU
 f9ST+1vQ==;
Received: from [209.141.46.27] (helo=50uj302.com)
 by casper.infradead.org with smtp (Exim 4.94 #2 (Red Hat Linux))
 id 1l8uLD-005How-Iv
 for linux-rockchip@lists.infradead.org; Mon, 08 Feb 2021 00:23:48 +0000
From: "Ms. Kim Chan" <mskmchanouk@gmail.com>
Subject: Investment research about your country
To: linux-rockchip@lists.infradead.org
Date: Mon, 8 Feb 2021 07:23:47 +0700
X-Priority: 3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210208_002348_815791_F0795B85 
X-CRM114-Status: SPAM  (  -5.18  )
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
Reply-To: "Ms. Kim Chan" <mskmchanouk@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Message-ID: <E1l8uLI-0001oj-5n@merlin.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

My name is Ms. Kim Chan Ouk, A Thai citizen in Asian Continent but currently
residing in abroad, I trust this email meets you in good health, I just got
your contact today during a research about your country and I will say that
I foresee success of my future investment ventures in your country. I want
to invest in your country and I would like you to assist me in my investment
my investment Please do reply me as soon as possible so
we can discuss more.

I look forward to hear from you soon
mskmchanouk@gmail.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
