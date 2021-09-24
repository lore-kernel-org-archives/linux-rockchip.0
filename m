Return-Path: <SRS0=mPt0=OO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C2D6C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Sep 2021 19:49:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 480D461039
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Sep 2021 19:49:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 480D461039
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FesQ9VOR8sDMycu0JwL3xxhUiLtKJW59Pfliytbx8pg=; b=EKYNNCc6JXq+aR
	D+sm4Ur7TNmzAhlsNnX11SpSj0w0cV2QxgzjkbZSNbf+vcM5vSSTFIkaSkSXonuWxmC+nXBQwdtoO
	6X8VlikQth2TKsRQ6VJ89ryhJwe50/h/Ews3V4CQOT8n7uoGHNHpFIscPcSsDl7nHSluR20QOXGEZ
	aTqSSsls+/ov1FMTIg3Lf8ClyDZo/qmEaHjcCRci2P78PcZojtQmT1cnHPaPHbt8iUCbOHMHkUuJ+
	nEgs+DrPeKW+Slvs00Be6p0b6WVB4Dm6TFjnJ7j1c1xFHHtNN1GHOEc9kicqxN62KiogrHFZkNJup
	N8yTVIL6u1b1vKqSZxMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTrC3-00FPG9-NB; Fri, 24 Sep 2021 19:49:11 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTrC0-00FPFR-Uu; Fri, 24 Sep 2021 19:49:10 +0000
Received: by mail-ed1-x530.google.com with SMTP id y12so4062021edo.9;
 Fri, 24 Sep 2021 12:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QW92Qv4SFz+xJLwMpitNeGeXSEO3iCzliN7CNcfcGjQ=;
 b=kW5TWvYFOIDlox9qryStTHaG6TKCh1jV7oeBP7mFypDNlqoXoZZ5YNPWK/7WB8MjNO
 kedSkgmIGfnPOH8P1zcoMBkjZBQEU2qlDcHnDujwPGu5VEWQsOoxNbWZAB3Z4R4H8yV6
 JwXTBr1zcML/Guk7pJFDMwDGG/TrUTrDy7YeKvjaun8j1Pc2YZ7oTTo5xDTikU2+R6ra
 nTFtjQQpqajFIxcHgBY1IS/Lnd0qdJm08bqKScONTo/gHSaBMj0G0P2ShJePmwMOvWS0
 C2hmDkHQXT+6hULa4FRf3xTnrxYjMMnWlIfbWqKqYV5AAsjkC3k8mHSrzS6+s49UaEnC
 qfew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QW92Qv4SFz+xJLwMpitNeGeXSEO3iCzliN7CNcfcGjQ=;
 b=5HycCPHK+0ENbQ2iFBcusjrDx/OKdLHdDuB/VDhjwNPNwSOOvdGYPsOuRHAVjesc/x
 mhj2bPrYsMuE0rjkF+ObTFQCCFfSCCud+B8Vc5lLIvT+FQxlu0e3lPHDczr4nfHf4Qad
 Hv+dFEupg5Q7GQl7hr/bW/1c48Ks0sr6MwieD4c643xLN0yNLgJRO7opSgXzzZ3xnRJq
 hdjs0FV3FbWZdB966GikMdth/7Wc+7pu7MH1WR7xqgAazVnOy88XAUmp+vk4UPNNKX8j
 D/65szGQnNoH/aeDtJiy6Zryiijb1D2Qt+kPdLonxDcKzZ0r1LHojmHTwqgOyeUkMAo+
 e9fQ==
X-Gm-Message-State: AOAM532P0+yzXQALEYmp6cQNWv4iCHIHdnAQNBSJRzisItNqLvUdZrgd
 vUGklR3dG8DvWZYb9Nc0L+oNUTEzN9Y=
X-Google-Smtp-Source: ABdhPJzYofOMU3LuxBg3WTEPoVXRm3su2KB2lGTTymDEMccd1unXUv1Mx+hLdCM2QYORTyM7LmzQcA==
X-Received: by 2002:a17:906:25db:: with SMTP id
 n27mr13301176ejb.108.1632512946568; 
 Fri, 24 Sep 2021 12:49:06 -0700 (PDT)
Received: from tom-desktop (net-93-71-218-228.cust.vodafonedsl.it.
 [93.71.218.228])
 by smtp.gmail.com with ESMTPSA id r23sm5885384edw.39.2021.09.24.12.49.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 12:49:06 -0700 (PDT)
Date: Fri, 24 Sep 2021 21:49:03 +0200
From: Tommaso Merciai <tomm.merciai@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix: PCI reg address is not
 configuration space
Message-ID: <20210924194903.GA4836@tom-desktop>
References: <20210918164153.207146-1-tomm.merciai@gmail.com>
 <163214478702.1547258.5943542169692932677.b4-ty@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <163214478702.1547258.5943542169692932677.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210924_124909_038587_D1718CED 
X-CRM114-Status: GOOD (  11.55  )
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

On Mon, Sep 20, 2021 at 04:28:48PM +0200, Heiko Stuebner wrote:
> On Sat, 18 Sep 2021 18:41:51 +0200, Tommaso Merciai wrote:
> > Warning (pci_device_reg): /pcie@f8000000/pcie@0,0:reg: PCI reg address is not configuration space
> 
> Applied, thanks!

  Hi Heiko,
  It's a pleasure. If you need an help on other stuff let me know.
  
  Regards.
  Tommaso Merciai
> 
> [1/1] arm64: dts: rockchip: fix: PCI reg address is not configuration space
>       commit: d146198a858ac54653be6d90e3282a7f788c1960
> 
> Best regards,
> -- 
> Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
