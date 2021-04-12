Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E81DEC433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 21:46:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 44D5561278
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 21:46:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 44D5561278
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zdCA3jTbTIF3bpu72rjXW1pCgUsp1RhqUweZ322KKww=; b=q89pD51R8+tANEJS/Z1qFn2+4
	94H96uBa7Mc/HkSDVYEKXeoo9kc6IViGgSDU4Ax9fRj6qq0uLtOvrA73eCkJo6cLJEkW6XHEedfAI
	P/HySVbYPksStKausl/bnbRaw4O8jf33nTH+t76kNmzk8c/yir33HOKLZYR0/UwXxXZsoypRgbbiK
	sa+Fk+Z+brzEk2UXXPd1tJR+ClV0n7rLriadczVxGAaDK1YvtobEidNJSg3EXVXHZHVGdln4kOBhD
	WS4WeuKaqttK5JNs4d+6lWM8pkaeDJoQkCtbt+DAZrIeC9UhE00UOKmS3x3OOEG92UrVSMwcbBeVm
	6MfMIiT+w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW4OF-007j8S-Sz; Mon, 12 Apr 2021 21:46:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW4O8-007j85-0D; Mon, 12 Apr 2021 21:46:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=uFUrnfIf09ezybuVkP04vDSdaVZKjH/YcufmPLg/EJA=; b=Jjs5HG7gzgdtd7OykLhp7XCaeG
 PjT3ctfRxQNmR/zAa7ysFN1M5o2vfsnWHuujYfYFlplps3gIfduC1u/DwqhbSLnxRob3K83KGN2BB
 yjHHxQZ0Bgz5pWvWX7zpCYM+MHyGIi+px4e8GPQjPPjzBRx/pYiQ5fReYytpl3b+PXRGiTjY86L/M
 uuXuJ9oSQKpEeQP6d4dvo1w0lO73dYo1BQ4hB1xHkf5HwwDoZTOuH5cUcMKLPQ8K4sNNR7Q+2Iov7
 sD65QWYXdAdTNvVSKeInVM5gMdWLW6DbdymPAsP7HlDRKvYUwO8A1qeKZT6YQxLWyga5lfq7JjgOr
 017JDJhg==;
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW4O5-006ZYq-CM; Mon, 12 Apr 2021 21:46:30 +0000
Received: by mail-ej1-x636.google.com with SMTP id l4so22642147ejc.10;
 Mon, 12 Apr 2021 14:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uFUrnfIf09ezybuVkP04vDSdaVZKjH/YcufmPLg/EJA=;
 b=SR9/ZPn34QjAzkHsEkByTJNEzre4oYG+GlELLhGkzdPICK2PzHnAXXdR2kuXrH+JBV
 3CKshQfZrIH1zhl0sLSqUr+P3VV0MLnge6GRs/X7RQZosh7DpOd69z7rfaU4e7xlM7a4
 nK+TlRUWEScPLSU81NiDnDPKd5sFB84OxNqnYwdL0QFMQXrvFEE3/sP1z8mu5mc86h+l
 QmvlwgwJlwiBHWyBHIl1JnnBfffDXI4QEZDTs1fM8XNFbI0e7kSUlf8sWhXASFkqHPxl
 sWCLRhK0IdebQcZRq78nfb4HRO6gO9aIk3+MdL2X/qbRVOMtraGSvKcqjc8E0f4rOYdg
 dSog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uFUrnfIf09ezybuVkP04vDSdaVZKjH/YcufmPLg/EJA=;
 b=pEl3apNCu/yzqqIN//ikGl5eXwgKznonyfqSxtA+eHBwnBFmE5I+7u/UIBVRYIKa5d
 9zdezzxG3I4BxIDgwMG1iNGNwspl+nD44Bhj7E4pYt8Lke+h9k5oD8GWM1H+IsJLg4Qo
 Sxm5Ap6ebuemOxvOobG6mSVwp5jjdv5lUJdR1LgWseYbdkoxiyeFCk8JyBcvHY8cqCkn
 Kvnee2Touz/N+dV4k0Pe75hL+xsqT6DP9nCTYnh0PB/WOMLtbxOERG3A6luStUgXZ2YV
 DNOZMO5240z/LKnmJ0bSK6b+nZwmwkfkevDAmObdslCMh02bM7in7IqUL9czPRTRaAT7
 jlSg==
X-Gm-Message-State: AOAM533Ajp/PGsqEx/YeXCUKsA8/5pc1cfxs++w9RWETPnva6CtuulzS
 UAmB2g/U6Ks93OLnXa7RNJM=
X-Google-Smtp-Source: ABdhPJzbzVMu26M4OrHzDAxRyzivV5rBNL9tM9AJWb1TsGiwOAomqyu6SFHVzQYgqpT8dKZrtMd0/Q==
X-Received: by 2002:a17:906:5855:: with SMTP id
 h21mr29208531ejs.522.1618263987967; 
 Mon, 12 Apr 2021 14:46:27 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 ke14sm1698718ejc.1.2021.04.12.14.46.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Apr 2021 14:46:27 -0700 (PDT)
Subject: Re: [PATCH v2 1/6] dt-bindings: pwm: convert pwm-rockchip.txt to YAML
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, u.kleine-koenig@pengutronix.de,
 robh+dt@kernel.org, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, lee.jones@linaro.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 thierry.reding@gmail.com, heiko@sntech.de
References: <20210411131007.21757-1-jbx6244@gmail.com>
 <20210412205753.GA158321@robh.at.kernel.org>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <5705f804-5db0-1d14-f853-02be72fe4d2c@gmail.com>
Date: Mon, 12 Apr 2021 23:46:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210412205753.GA158321@robh.at.kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_144629_456485_278CFED8 
X-CRM114-Status: GOOD (  13.31  )
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

On 4/12/21 10:57 PM, Rob Herring wrote:
> On Sun, 11 Apr 2021 15:10:02 +0200, Johan Jonker wrote:
>> Current dts files with 'pwm' nodes are manually verified.
>> In order to automate this process pwm-rockchip.txt
>> has to be converted to yaml.
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>> Changed V2:
>>   changed schema for clocks and clock-names
>> ---
>>  .../devicetree/bindings/pwm/pwm-rockchip.txt       | 27 -------
>>  .../devicetree/bindings/pwm/pwm-rockchip.yaml      | 91 ++++++++++++++++++++++
>>  2 files changed, 91 insertions(+), 27 deletions(-)
>>  delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-rockchip.txt
>>  create mode 100644 Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
>>
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> 
Hi

This tags version 2 with a little mistake instead of version 3?
Is that correct?

Johan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
