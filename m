Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6BFAC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 07:13:37 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8B585613A9
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 07:13:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8B585613A9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L7qwydBPP13fIrlaWmIkmNPSTrkDB6P4rUw3rx5XWvY=; b=LKNBs9p9PBNxPEuW2icS6g7W0
	pIPNvV3r6XtBXD5eMYGKmct9vBLKE8VU53uqlwE9XQUwsVDiLQRer5sCiNZM7LmuJKnUKS2H5rqvp
	2SuwVYNIxqDVhSCnibfxx2leidi8EY0DLuCCJxFbUpP6APwB5tCoNRSU4j/KEc1OqrIZPMxfZEeI3
	NbdFzWITY68UOfqO16rjfG26PEAjb2hKd2qLHASwKNwkgHPqpARfNB+zgFCzHe+CUTxhL4cp8HRbq
	tj4po+0mU2nIb59yT+b+CIujQsHZ1s8CBkU3+mXd2AS//lgmTE0tMXOTCJq6bm6iqleLqylv0Tw44
	7kYRClZYg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWZiM-00BnG6-49; Wed, 14 Apr 2021 07:13:30 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWZi5-00BnER-LG
 for linux-rockchip@desiato.infradead.org; Wed, 14 Apr 2021 07:13:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Qj0MrsT9MP5e9TP+dMw9mmYBXbSrTZPaBuJ5U6SATfM=; b=q6QwaQ0DRSzxWVyCj0V3vKofEE
 0fKCvCgZbHwNWTStnDEMW71H9xXi7ZX69MgY3PLYzuRI7wyEKLfj0Aru8+FygbNvXbvlAZ/RoGsji
 8KIZiRs87CSitrVCXLbOGYwiQtcA6JCnD/O+Gtxjs61cVW6W8WHZQmhscIwTyfo3UV5SXh3EqCtBI
 MCRCqUQf2OYrfvobPXVyYkVHAJPDBPfLSO29Xbcv+CApLFge45h2GIQcHmiDr+LMLcgXLPYeeguXK
 QdjII++8zrxJvH5YIS1xrAPG/HDNq5CYRi8kYEfm/7SbztpGzPeRf60pBmRfKwwKAqyUfAirasrb/
 BsMwcNRw==;
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWZi2-007YsM-Vn
 for linux-rockchip@lists.infradead.org; Wed, 14 Apr 2021 07:13:12 +0000
Received: by mail-lj1-x22b.google.com with SMTP id c1so13905949ljd.7
 for <linux-rockchip@lists.infradead.org>; Wed, 14 Apr 2021 00:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qj0MrsT9MP5e9TP+dMw9mmYBXbSrTZPaBuJ5U6SATfM=;
 b=VmhuoHIcOki+zO4haBZBKfw7hojfMB7Nw0INkxjwf/vBzvZ7iYvt6XBll6SNoIle4r
 pB5Gvpj5/rJUHz0zQEV+nlXGMLOAEWJNTOTkWxk60N3fFyJb0tjIbRwiU0RKUGs2fYsQ
 bYYdCOzzmtp2F9hkIu1ANqoKCMSY+0gzbWuKMwwgooJOJQsuTqE9HhJJJ3MQggWOslYd
 9uuB22CtOAjy+7GArD2AA79musxSr5z09NoNhvwBqrVaMmq3KnyhdHhFq6wOlL7tMwL5
 LxivJMkFjmCuQXFQlLVCEUmPDsgf7rrWqJDiZd3cem9W6lzUqytJzaDTBm96gz1fx8Gw
 dDNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qj0MrsT9MP5e9TP+dMw9mmYBXbSrTZPaBuJ5U6SATfM=;
 b=qOswVbfenVesl5eHcehCW3GYABkvx1jW3NPUIsZj5Ohl2TBiF+xcIvS+LsKVOsGxhs
 6qNRJG5kRr4XruKyl38EWuCH9t3EI51ZqSj16KxUPJerhWj1IFCPSMfBPKxHsPt2G2ry
 HUISjHq5YKLdTDdRsV4S5nWr+U6oKm07tltEmkD1/DNHRXUHM3Uw9RkL4rZaeIX5jGuK
 83FEMWtX5G58XjBA94nuMvekubHMLwi6E2mPMfJ7OOcpd0s3z5GXAp4wVZy0iu3uSPPP
 ahDMc/F6DQ0ZKfmeSZy8whZXgSTGp6xd2kJxxVFXH6pRsg0GKa6o0GfMtqsbEu/ZRSmH
 BiDw==
X-Gm-Message-State: AOAM530rw5Fy+/PrenKOzCWrkV7w9/tm5wK4ZqqdaWBBOGBCHgJSyPgS
 FYI7yc0qaUvlzz5oZMP+y+40JvSODZH5U9Jno6nKpg==
X-Google-Smtp-Source: ABdhPJzdQYN+OFaEjUwuex2WL91l2G0cQ7jC6a5Gr4VgWvGVniRwFeGdvxQ+vEG70ZSzlMCTweKJjZIDCuUm6uChqLI=
X-Received: by 2002:a2e:7001:: with SMTP id l1mr23239380ljc.200.1618384388240; 
 Wed, 14 Apr 2021 00:13:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210412223617.8634-1-jbx6244@gmail.com>
In-Reply-To: <20210412223617.8634-1-jbx6244@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 14 Apr 2021 09:12:57 +0200
Message-ID: <CACRpkdZ-oq4zKt_qOYTNCL7XqvJygRG0gfb9jRGVi2XRiE_3RQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: gpio: add YAML description for
 rockchip, gpio-bank
To: Johan Jonker <jbx6244@gmail.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Rob Herring <robh+dt@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_001311_112036_28514B16 
X-CRM114-Status: UNSURE (   8.89  )
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

On Tue, Apr 13, 2021 at 12:36 AM Johan Jonker <jbx6244@gmail.com> wrote:

> Current dts files with "rockchip,gpio-bank" subnodes
> are manually verified. In order to automate this process
> the text that describes the compatible in rockchip,pinctrl.txt
> is removed and converted to YAML in rockchip,gpio-bank.yaml.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changed V2:
>   changed example gpio nodename

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
