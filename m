Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF37CC05027
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jan 2023 23:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKXKwGJuW8qmN0sHL1jFZbPIsgOCVVD6zcvagkwzv2o=; b=q8rkcKITufRiEu
	EyH63NQojGMxIVlX40/K++Tdn29SHXSyKq2Ba/sX6ABw0yzt56NEOtvh39OeEahG6qpYKyuL9y8IU
	9bX7bzsArf4Nrz42P9zMpJIJpNCWc5CRXmpgsIAMOrrBk5Ci/izVOEpp5igR0x9KYTRbF6tJjoWHa
	Ce0C4+hZheKovjy8GRQ81YeY8DU+x2AJqCNeI3hWGMS6RGNLIgz9OYR4utOX+e3UzlMu94mRD/7fb
	/d3sfLrvHZWuIzeKBE6NcSRqEusAyTEQhWAXmRDLj/ou6PQhq7wTqiFaf6AUZuiKJynX10Q/q72Xj
	xFng6+sIosIZ4ZMJK1zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJ0zf-00ClA1-JI; Fri, 20 Jan 2023 23:40:23 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJ0za-00Cl8e-Mh; Fri, 20 Jan 2023 23:40:20 +0000
Received: by mail-ed1-x531.google.com with SMTP id w14so8536571edi.5;
        Fri, 20 Jan 2023 15:40:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YlFQs5uK1REKCJrhOvImfAktaMDFYnGI105SvemPmlY=;
        b=RRiBdw8uKBYsQzBGG11bH8QpnGKO+OrOgFZgbwJ0LEsEIPHcP7NIdCOplfvqJq8Gcn
         IDtizdX6lIF3alkc+hWGOqX8r13i2qRyNZp9JDHxXCaqxMbK9x5OKjof6i4tFgOSr3r5
         tjuYBJAMeg/FMtfXejJCJ9r6vFrvi65I7Itw6TiKTUVIyLJegXEgLmgksKWfK+PqzEsi
         H9P7nID/+0DuRX9/GhZ2wmEOfsmc0xKQsQrdu1EA/dnpRuFBVRaPndkx4OiPgtazlxEn
         VdJXWiQveKeHn4g4HKUvrrTXj7UwfzR9tISQR/41dRU/sSQfgY1fuiSQQE0ogA67JIO/
         uUUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YlFQs5uK1REKCJrhOvImfAktaMDFYnGI105SvemPmlY=;
        b=fpC6vMY+SeEvQDI7C8TWKC1hr794bDntrgqWISMhST8VdLofpLordRkPajTeNDwbE7
         TlbGak+lcHhRJ9T3sTPAH2MyYIiJhmvKaFP3S4/GYcteY7T81tWEKLeSj2SN9s6yleO5
         VGcNkhanND84AmrghC5FSpSq1ZLtN4AtjZndjiWK6gBj/afIBLx9fE8uLMjAK4Du6A8k
         zILoq7YveaDqrWpStzSls5IiL+KtM5Epu0rTEZ6hUWWhLAPRVxAIHYLY3klTIcYcoF0R
         8XqCVAUfzbRkCGA/wMC5bwSy+HVGVjMeff+r5qy5DymjIFj4ImveBZ+/PbgLaY36Ok6e
         lTEw==
X-Gm-Message-State: AFqh2kq9F//h1EtBF8FJ18NY7zE1QhBOiVKgrfHH4RZsyJHFi/k/6Jon
	RQ4yf5VPsw6o5wJZGhGEVcg=
X-Google-Smtp-Source: AMrXdXuVuW4WzQPRX+Id1GCwSM7qs0K6dzLXuAUos1Todbd5RBeS68VoXDFF+todOBUIwUvJl8vzWQ==
X-Received: by 2002:aa7:c44d:0:b0:46c:b919:997f with SMTP id n13-20020aa7c44d000000b0046cb919997fmr7738082edr.17.1674258014332;
        Fri, 20 Jan 2023 15:40:14 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id ec49-20020a0564020d7100b0049e249c0e56sm7066080edb.56.2023.01.20.15.40.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 15:40:13 -0800 (PST)
Message-ID: <be193659-e97f-23b9-b89c-d02205705db6@gmail.com>
Date: Sat, 21 Jan 2023 00:40:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 2/2] dt-bindings: usb: rockchip,dwc3: Move RK3399 to
 its own schema
To: Rob Herring <robh@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Felipe Balbi <balbi@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, Thinh Nguyen
 <Thinh.Nguyen@synopsys.com>, linux-arm-kernel@lists.infradead.org,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230118193056.673514-1-robh@kernel.org>
 <20230118193056.673514-2-robh@kernel.org>
 <4eca2695-cb73-eaad-4c8a-82dec923825e@gmail.com>
 <CAL_JsqKqiRbBJErkh2Hch+XZyLggGyjYo1rvKWPhxb99pA8mAA@mail.gmail.com>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <CAL_JsqKqiRbBJErkh2Hch+XZyLggGyjYo1rvKWPhxb99pA8mAA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230120_154018_813466_F9D2983F 
X-CRM114-Status: GOOD (  13.61  )
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



On 1/20/23 21:30, Rob Herring wrote:
> On Wed, Jan 18, 2023 at 3:05 PM Johan Jonker <jbx6244@gmail.com> wrote:
>>
>> Hi,
>>
>> Some alignment at the examples and the unknown extcon property.
>>
>> usb@fe800000: 'extcon' does not match any of the regexes
> 
> Does that go in the wrapper or dwc3 node?:
> 
> arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dtb: usb@fe800000:
> usb@fe800000: Unevaluated properties are not allowed ('extcon' was
> unexpected)
>         From schema:
> /home/rob/proj/linux-dt/Documentation/devicetree/bindings/usb/rockchip,rk3399-dwc3.yaml
> 


> That's the dwc3 node, but the majority are in the wrapper node, so I'm
> going with the majority and leaving this one.

In wrapper code for rk33899 in dwc3-of-simple.c I don't see no extcon activity I think.

In core there's recently made some changes:
https://github.com/torvalds/linux/blame/master/drivers/usb/dwc3/core.c#L1710

usb: dwc3: Don't switch OTG -> peripheral if extcon is present 
https://lore.kernel.org/all/20221017233510.53336-1-andriy.shevchenko@linux.intel.com/

Binding status update for that is unknown for me.
Do whatever suites you best.

Johan
> Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
