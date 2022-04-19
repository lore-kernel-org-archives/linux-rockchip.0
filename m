Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8798C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Apr 2022 13:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XDlWMi2pOhSrbc1K8e2widGcn4hnT26MTZFlPerXPXg=; b=VBEp6IsvxD8/MR
	6UOsnVSAcYRhvg1s0gO6QJk9RIMBfy8H3vmQYeRFT4Se/RJ4wox7bYblN2DdPYLuhgzi2H/dR1YR3
	Js6xObhCMcHm9kPKHbvyFfK8HcBhsi2o2NjtoAMOAI/pcITxhv7GbzTUvMDAnnIagHek+ze/dKgmE
	ZaZ8kcYngKItb/DQUMlW8cg9ZkBsG0J1y8WPeOJP+RbJfQ5I1THcjBDqwpr9IKW9sGSgAgg65ybtH
	7B05w+9ft5DGMQEY2uFYvq0BtrtpcqJDvPXjIwS0mM3jDQZ25wreRXDkoBwDzF8BmqR/cQqU9ErfA
	xAb3Ye9fgql9UuHP3pPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngncS-003jHJ-G6; Tue, 19 Apr 2022 13:10:12 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngmRe-003HOL-9S
 for linux-rockchip@lists.infradead.org; Tue, 19 Apr 2022 11:54:59 +0000
Received: by mail-ed1-x52b.google.com with SMTP id z12so20932708edl.2
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Apr 2022 04:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=nfsMBJ2xALLgOjM4oOlK5BSYjJIFPGL8NAkh/N0/6yg=;
 b=ZyjMtC8vDpunrZ/RnPfYn6O9lMWHMhEmyFxdKg41YVJvyDuwtoxrmOfkHUt26wLrf0
 8Vra8yynqYlFbnTVedtpqXhG3EjBrNLGB0d4IE5S7o6A2XMii46/SNSAWK0yXDPm10up
 7CSFHusMxjfK2TCkeN6FCjVfhsJgIRRzP6n8gHvMuQZ8OcTpG2OHJft/fq1Cnw0gIVOr
 OwYI8aF1erqTvLAp3Urtm0zi7uAfXiutEQwIOjVKoyHnALBOzadlbILaB2ILvfYmzI4U
 M3lD7DO+wmXjYcJC83REAy8fnhkz/1nN5Q5gW8yGlB64nU3tnbXxpG4SUtR3hFvlovKD
 pfjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=nfsMBJ2xALLgOjM4oOlK5BSYjJIFPGL8NAkh/N0/6yg=;
 b=J/KDEpz8qYU9SrBxw8loVZk+qlSF+JRGPmc5liur8ac/LkF3vsnx3lYFpFlu9aYKbH
 TpqkLDl6SQ4iwse0lXuadjbddQqn5DU2yV+0EJZzCmP86nqOj493BLflGsFYcehu0oD6
 tIW2rJlFff+8n81wsv8cIVFvZ1sFZ7yKnS0DNAEg4tK/0qnl33fOo8GIghhDRtzGD4Ap
 zT+YpmtLXDpIabBYI8AJCC41jOedmr6Nylt5A5kIvcv2glHCQyfVp3c2hg5va7rhM2tL
 t6pLuNIuB9kJzyeTjAIQGYnXLHHymd3aSrl2YjELuXnjoV7jyReKg+uHJ0NKVEru3zbt
 Y/tA==
X-Gm-Message-State: AOAM531Z9RzgMxOAdZjTyQhUwW56sK7lq3Vj8TKMeUjbzc2Rk+RSyjH7
 EKAwRpDGY01mrTYTNkymXW7XyA==
X-Google-Smtp-Source: ABdhPJwTmG5NGqJbQnGnpk+8S5HiLxzmh4OPgLZyw4Ghg8byqWFSS06JiSgvvJYqgbuxen9bp911BA==
X-Received: by 2002:a05:6402:3046:b0:420:120e:ef2c with SMTP id
 bs6-20020a056402304600b00420120eef2cmr17002877edb.160.1650369296744; 
 Tue, 19 Apr 2022 04:54:56 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 r24-20020aa7c158000000b00423fd948d56sm952196edp.3.2022.04.19.04.54.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Apr 2022 04:54:56 -0700 (PDT)
Message-ID: <07d7fa69-dd2f-3e10-f959-474814105d3b@linaro.org>
Date: Tue, 19 Apr 2022 13:54:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v5 24/33] dt-bindings: crypto: convert rockchip-crypto to
 YAML
Content-Language: en-US
To: LABBE Corentin <clabbe@baylibre.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220413190713.1427956-1-clabbe@baylibre.com>
 <20220413190713.1427956-25-clabbe@baylibre.com>
 <44efe8b6-1712-5b87-f030-2f1328533ee8@linaro.org> <Yl6YV9nLVI4qYsPP@Red>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Yl6YV9nLVI4qYsPP@Red>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_045458_372694_CC1859C2 
X-CRM114-Status: GOOD (  11.95  )
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

On 19/04/2022 13:09, LABBE Corentin wrote:
>> This is not needed and dt_bindings_check should complain.
>>
>>> +    items:
>>> +      const: aclk
>>> +      const: hclk
>>> +      const: sclk
>>> +      const: apb_pclk
>>> +
>>> +  resets:
>>> +    maxItems: 1
>>> +
>>> +  reset-names:
>>> +    maxItems: 1
>>
>> The same.
>>
> 
> I forgot to test the intermediate patch...
> Before I send a new version, does the final document is okay ?

Looks ok, if it works. :) I don't remember if dtschema likes the cases:
clock-names:
  minItems:3
  maxItems:4
if:
 ...
clock-names:
  items:
    - ...
     ...
  maxItems:3

This should work correctly, but dtschema has checks for unneeded
min/maxItems so be sure they are not complaining.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
