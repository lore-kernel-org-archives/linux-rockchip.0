Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27127C6FA8E
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Mar 2023 09:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K24BSTJkLLkT9a50jy0VvCOcWrwC7cymCyFleyaasJw=; b=yYIggF/R6jeJ0j
	3Znlk2sdocV6Gq3lavaSiIFgfKbCopZwcMRLxKzba7if29ivQzCzhpJrQ3sgcmA6xl69XlTq5VSVc
	YrbKzy0ilFxmTTowNONI4In8QDb0N8zqnhix0G1Dp246J5jWC2Oj4Iu9cMWcMa23pfOLgKI8Aegd5
	qmAbi3KijoATFRUwictGnGodpQEjwiQ+GZpHgJGXImTTDsl/hSfauvNv0/a9xyQjKTpJNHUZlz/1h
	+/SlLkBlSOhJiyCnjfsI49uXHZSSd7zgD93XVilSxwiTWRDvy6yued6O1AiIT0z0TYXFUv7X8n2Zo
	fV3c+2qlgkLeQ1jdYksg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYl2h-00A376-2r; Sun, 05 Mar 2023 09:52:35 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYl2e-00A36D-1V
	for linux-rockchip@lists.infradead.org; Sun, 05 Mar 2023 09:52:33 +0000
Received: by mail-ed1-x530.google.com with SMTP id g3so27061911eda.1
        for <linux-rockchip@lists.infradead.org>; Sun, 05 Mar 2023 01:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678009949;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jLcIcgKroiO3LAX4K2goFQC49e0+5OXdVgM9vt+k+U8=;
        b=qC1bKDJHzB44F60jMplLRxTqMhObOvgJm5h6fd1Z7I1xBG8B6/uF4sP82sW6YgJ4NF
         R2rswwWCB/Pxdluv922eNrBl0bO0oy1EBBe/7mhDQO19lZU+zVMgJgO1EG2JcL6p8d7c
         2EcwJxX8xRaA2D+GsKWcPMCdI8XUh25zHDbur+8V7FNH0EANLiMQF5f5IMmbOFsBs11M
         GeB+liJuEE3D9MBEBZ62xYTYhDYVE3DAGzkguKm9GmfkgCoeATY2YtgGHnXZ5+QTcx09
         qLpW5UK1wMQjqmEXOEyafjyNYdvxubFMMfeoMq/OZTr0bJdSte/aNIuCL4f3NZ6sPD4O
         Wbag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678009949;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jLcIcgKroiO3LAX4K2goFQC49e0+5OXdVgM9vt+k+U8=;
        b=51W2FTDquC5m/H1tSgSPytXX4EyfC8Ynnq/qPjLKWnMKaJipa8LjLFPqm9BqmVog64
         tvsiKdgw3f3731zZC8oaW+Hgp1VJtyUxsH3KG/4AAmgU/n6A0Sob+vJLLytFN9BmUXzB
         ozavDFYTHxRQw8+uPbtm/B1AwZGAxfslyQil+SuRctpg44Ph9NCQG43GOT32s1ahGH0Z
         x/AEt94NMRgMPVVO+1hrvQuRi2FnLv7Wr1Ybw/ekGUs0U3TcjU4YGfDtjKiQntGz19rT
         +oq9COCGQb4AvL8guhfr+c7ZLXc250KXmjMwU+xpWxtwnaStWNbFC0mnhW0V6/mXmoTg
         xB0g==
X-Gm-Message-State: AO0yUKWQJ824ZKXNAdE+NwZvxDHPHxWAy3f4GcD6PZSRJDQcLcuhwsUB
	sQto5aY+TQqxkU34FykOULyQ8A364KszkSKzYw0=
X-Google-Smtp-Source: AK7set8+aB4KfTV76BGlzOWWxq0US73n/o3nY1jD5So9BMEmtbRCmWB6ONpncr6DuJlXUH910Ab96A==
X-Received: by 2002:a05:6402:7ce:b0:4c0:57b:47a9 with SMTP id u14-20020a05640207ce00b004c0057b47a9mr6795298edy.35.1678009949288;
        Sun, 05 Mar 2023 01:52:29 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:71e7:13d:1c29:505f? ([2a02:810d:15c0:828:71e7:13d:1c29:505f])
        by smtp.gmail.com with ESMTPSA id d9-20020a17090648c900b008b17b0f5d07sm3015052ejt.217.2023.03.05.01.52.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Mar 2023 01:52:28 -0800 (PST)
Message-ID: <30017cc2-12cb-37dd-cd0a-f2e91fc6c252@linaro.org>
Date: Sun, 5 Mar 2023 10:52:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] arm64: dts: rockchip: Lower SD card speed on Pinebook Pro
Content-Language: en-US
To: Dan Johansen <strit@manjaro.org>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Dragan Simic <dragan.simic@gmail.com>, JR Gonzalez <jrg@scientiam.org>
References: <20230304172838.38059-1-strit@manjaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230304172838.38059-1-strit@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230305_015232_122147_CB4877C4 
X-CRM114-Status: GOOD (  10.34  )
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

On 04/03/2023 18:28, Dan Johansen wrote:
> MicroSD card slot in the Pinebook Pro is located on a separate
> daughterboard that's connected to the mainboard using a rather
> long flat cable.  The resulting signal degradation causes many
> perfectly fine microSD cards not to work in the Pinebook Pro,
> which is a common source of frustration among the owners.
> 
> Changing the mode and lowering the speed reportedly fixes this
> issue and makes many microSD cards work as expected.
> 
> Co-authored-by: Dragan Simic <dragan.simic@gmail.com>

That's not a valid tag. Run checkpatch.

Missing SoB, which would be pointed out by checkpatch with correct tag.



Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
