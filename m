Return-Path: <SRS0=QbJo=OL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F30A8C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 09:21:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BAD5861131
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 09:21:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BAD5861131
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ROckCie2EkINYClEf+aKbq/QwbeOReBHuXsP+rwg6Ao=; b=zai0H7OD9Wg5o9
	1TmovB6cU2nEhu+350Sd6gbDsNxtu0sbpg5SbpwQxgKCNWxMx86JmJwCsYZEPsWdR3OincaTXzJmn
	PnrfM+41rmbJAWy2Ue3Oy6ZqV56fj0d8k5zXmlQ7x5wvzcW2RSij9FFoW86X3/od+M2UJN8vzZ78x
	XxFjQHV7m5PkQbS8GZBEgP39EyymKMUM9zIXKaYGFMRuXo6lKULsCCsXmCNwJjVif5fLrsXdmXcCF
	24sdXq7bx7qyKSuypCtsnPNqFG8gyDFZa8/DP+e847ljFm/ykEF0sKCaAQD62zesvs7ewXpsZdPyw
	cD0iUU4kF7Yk0aE7uk+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSbxk-004244-2P; Tue, 21 Sep 2021 09:21:16 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSbxe-00422c-J0
 for linux-rockchip@lists.infradead.org; Tue, 21 Sep 2021 09:21:14 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1632216072; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=OMY3JiSinJsecAd6FsgSgZC/tu3ABFVOkx6GKyh9kOA=;
 b=vhzdjqmHfRoF6MRIPuzw3kUEIF23Q7R8ePvMEVVUJtbHTqPE9JkUbBgmrR+m/6R1vEZVOjwZ
 /zAlpq1wPomi57xI8QB5lZEpvdvjQezkwNLwQd07x5EFZBGjJas9i2L+m4q7LZWd7Yop9aNe
 i+Sqp76l0/0Nw03pE0F2yveTp5k=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI5NDY2MyIsICJsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-east-1.postgun.com with SMTP id
 6149a3d7bd6681d8edff09a9 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 21 Sep 2021 09:20:23
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 2BACBC4361A; Tue, 21 Sep 2021 09:20:22 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D5C3BC4338F;
 Tue, 21 Sep 2021 09:20:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org D5C3BC4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Shawn Guo <shawn.guo@linaro.org>
Cc: Soeren Moch <smoch@web.de>,  =?utf-8?Q?Rafa=C5=82_Mi=C5=82ecki?=
 <rafal@milecki.pl>,  Arend van Spriel <aspriel@gmail.com>,  Franky Lin
 <franky.lin@broadcom.com>,  Hante Meuleman <hante.meuleman@broadcom.com>,
 Chi-hsien Lin <chi-hsien.lin@infineon.com>,  Wright Feng
 <wright.feng@infineon.com>,  Chung-hsien Hsu
 <chung-hsien.hsu@infineon.com>,  linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org,  brcm80211-dev-list.pdl@broadcom.com,
 SHA-cyfmac-dev-list@infineon.com,  "linux-kernel\@vger.kernel.org"
 <linux-kernel@vger.kernel.org>,  "linux-arm-kernel\@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip\@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [BUG] Re: [PATCH] brcmfmac: use ISO3166 country code and 0 rev as
 fallback
References: <20210425110200.3050-1-shawn.guo@linaro.org>
 <cb7ac252-3356-8ef7-fcf9-eb017f5f161f@web.de>
 <20210908010057.GB25255@dragon>
 <100f5bef-936c-43f1-9b3e-a477a0640d84@web.de>
 <20210909022033.GC25255@dragon>
 <56e9a81a-4e05-cf5e-a8df-782ac75fdbe6@web.de>
 <20210912015137.GD25255@dragon>
Date: Tue, 21 Sep 2021 12:20:13 +0300
In-Reply-To: <20210912015137.GD25255@dragon> (Shawn Guo's message of "Sun, 12
 Sep 2021 09:51:38 +0800")
Message-ID: <87pmt2uvxu.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_022112_648614_9F6FF162 
X-CRM114-Status: GOOD (  12.71  )
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

Shawn Guo <shawn.guo@linaro.org> writes:

>> Is this not the usual DT policy, that missing optional properties should
>> not prevent a device to work, that old dtbs should still work when new
>> properties are added?
>> 
>> I'm not sure what's the best way forward. A plain revert of this patch
>> would at least bring back wifi support for RockPro64 devices with
>> existing dtbs. Maybe someone else has a better proposal how to proceed.
>
> Go ahead to revert if we do not hear a better solution, I would say.

Yes, please do send a revert. And remember to explain the regression in
the commit log.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
