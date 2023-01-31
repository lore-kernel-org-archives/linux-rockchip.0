Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D984C38142
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Jan 2023 10:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T18g9mEU2VdVytzkX2udF98x5X9vbagCyOo7hempODc=; b=IG3FGAQY3xUt5m
	IoecsMKAk8G419lkHBfxwm6kDOUqueEsPcqPaRVXlDdbO8Z20hxXbzqvNZEwm7UDIGPlcrGgWmTEI
	lBt5jg+pvZ0ouk3rkqNW4Lw0IRfW/NlcQByQlcrpvNx1r0zMgZtab4xJ7GaLbRoPdGE38rzGHOXiv
	+fivYhoePkEy2ZmE/q5PGgAQSWG0f8eRm9RHjM6TECU0fn28qo9yNNEMlv3Cl+MXO0e5tEpqUUfy+
	gACLmnQPvS0gnx1ElOPOHIXHSR6SPOOC0tsSe7xSjpjX16Tnn2Ag24pb0DyyGINoDznWqNNte6Fuy
	THtpCDR6Z0HDh/riAd2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMo5Z-007VJA-Ei; Tue, 31 Jan 2023 10:42:09 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMo3M-007UIe-G5; Tue, 31 Jan 2023 10:39:53 +0000
Received: by mail-ej1-x62c.google.com with SMTP id hx15so20737819ejc.11;
        Tue, 31 Jan 2023 02:39:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AbpzSrkDvZ+O3U1R2gkZ8q145/ganRKDqvC/xmnbE40=;
        b=CFwvhRlgd3EJKCDVmPccyV4ndF3iNiQbNtl/kkDLBh1rbLn9hq6YA7vKNkHpoXunxx
         9UWMuPaQrycb0/xEBRVFC90V3tpWfX7geKY9LdzkAVF9DrQ7929b24f0Dcp+Qt34TGPR
         en2PiwKNjkYUqad17tawZtVTm6Avd+hosMAGir8ASqaTkxu/FKQkvztqm7u+Vlc5hT36
         KvXrl6WXCJFK0YtFwivmPiN4fBjtmr4QZNIR3Mvhp3YXyyWTmaKOtbbx5YkyeIFG+NkM
         BFmcUlTEGYAPHgYOaE6ZZezWEImxSQsheJ29y9YVh6QyD+y/FF0o421nhVREuDrVrwAU
         W4GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AbpzSrkDvZ+O3U1R2gkZ8q145/ganRKDqvC/xmnbE40=;
        b=75nnqZYcOpo4hpIqWzBB3EHwWOuRlwFALfna/CJIiEqZY6AeVKAEdwJLRhXYx7J49K
         Vm2vtOO4kEHuYUqQeuOx9Ah5YhRO3sXgrHJ5NyA7bARoOo5HfgyrsSPMWMmKjtHfRuLS
         KtQSVtMOUCrJ3EKVSdj4WmKlsS7YnRPtUF3wCTaJv6UzSvkRgNFXMGfuhCaTN6eJLf7u
         Dd+YHZGqYrr4CBL9Qew0H/59NKnTlgXbrHn9L+RJFwOjJ8GjF5aa8XCrkjAJ64K7PzaP
         sudBbIvRtfWi3Bx8ONyrUfw3vWty3H0K7auYcwIc1NRdsqzjqcIfPCknzzJ3a+JuWRXJ
         6UoA==
X-Gm-Message-State: AO0yUKUGdaOE3CQHep11oOtwb7JVowbp416aQoY8unyU7MNw5cxOUK7b
	hl1/EWsNwM3eB0ZVzm2ZYeQ=
X-Google-Smtp-Source: AK7set87n9Vfg8hL/wOt1VTr60pE0bO72l9Og8zMg5sPwSjDV4cOjbpe0BRvjYS7/khoR4jWpG6vqg==
X-Received: by 2002:a17:906:30c4:b0:885:fee4:69ee with SMTP id b4-20020a17090630c400b00885fee469eemr8357176ejb.59.1675161588185;
        Tue, 31 Jan 2023 02:39:48 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id bh13-20020a170906a0cd00b0084d14646fd9sm8108521ejb.165.2023.01.31.02.39.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 02:39:47 -0800 (PST)
Message-ID: <8c33967b-1b91-42d2-879b-fa73dd8ecbeb@gmail.com>
Date: Tue, 31 Jan 2023 11:39:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v1] dt-bindings: phy: rename phy-rockchip-inno-usb2.yaml
To: vkoul@kernel.org
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de,
 linux-phy@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org,
 Rob Herring <robh@kernel.org>
References: <99794484-d67e-ee1f-4e76-200de20a879c@gmail.com>
 <167320365145.195794.14991903357914132463.robh@kernel.org>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <167320365145.195794.14991903357914132463.robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_023952_638097_64AD9F8C 
X-CRM114-Status: GOOD (  13.42  )
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



On 1/8/23 19:48, Rob Herring wrote:
> 
> On Thu, 29 Dec 2022 12:39:17 +0100, Johan Jonker wrote:
>> Rename phy-rockchip-inno-usb2.yaml to a more common format of
>> rockchip,inno-usb2phy.yaml
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>>

>> Apply after:
>>   dt-bindings: soc: rockchip: grf: add rockchip,rk3288-dp-phy.yaml

Hi Vinod, Heiko,

This patch has been acked from the device tree side.
If it suits you is there Ack from the phy side possible, so that Heiko can merge it to grf.yaml in the order that he likes.

Johan


>> ---
>>  .../{phy-rockchip-inno-usb2.yaml => rockchip,inno-usb2phy.yaml} | 2 +-
>>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml         | 2 +-
>>  2 files changed, 2 insertions(+), 2 deletions(-)
>>  rename Documentation/devicetree/bindings/phy/{phy-rockchip-inno-usb2.yaml => rockchip,inno-usb2phy.yaml} (98%)
>>
> 
> Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
