Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA96FC04A68
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Jul 2022 07:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iOT+3KQdThgUFZYkdDF6/9rQiiNGvtSc3FJR3piydZs=; b=TN7mKQPRKwdTZD
	75COy1iSb3C2az0yAqO3JgNnAEWc6SOS2LLYy4vs7AhRElRTyw3QJEgPARWVlUVh82M40kTRNxots
	OijioXnuxYa8JwoaFggvcqOmNKx5nDS+gGtn3LtI+I4u8kCKBoXZXkcJv0BjiBt08zzJysnqTD33N
	3LZe1tANxwHSBQSCfoQx3JPhlYrlkOjpUIdC7WpLX5HqIIyUPqwuXpmyNd2EkCHeaKczV2+D70FAF
	rBH+6IsNJXVvtcOCmDlZut3JFN4bnjcfQXB6JDAK2tWCaVywvzcxYsJfc7UYMU/cqg0xzQqp8/I/3
	+uVDcovlPMSEc+XIMSiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGbHE-00APec-A0; Wed, 27 Jul 2022 07:16:16 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGbH1-00APX8-Qy
	for linux-rockchip@lists.infradead.org; Wed, 27 Jul 2022 07:16:05 +0000
Received: by mail-lj1-x22e.google.com with SMTP id m9so18787541ljp.9
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Jul 2022 00:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=wrSX0j+EcG826eaPkT4heSeSNOqpVnL4J2dou3r6bpU=;
        b=gXurlmd60qwOO5zmRida9FTQE1bALC6hYOM+EUMz7LD6+L1nP0Ph3C2BhbjrgyUXyR
         UJIl+1CTC1iU1h6+2DNn1dNI6qX/6zsmwsDXjy/BayZr5tQjVdX1V0duoGhdqVKoX87s
         3AW5kDqBKp2Lo03NlUCXLYWJw7RcfeDZndU3uK5dCXHEWZli0nmL3exVeo8Fvb8LbHMe
         qFaRVjpnAHPXIhtvXWNTz8UD5m/TX7TUFIGBSyQYA5qBt8erqYn2P7W+ZM+BLqnR/y6o
         ZgertyEtCa/En3yiLFLsKQZ2I23ch5hCo/wO3i7P/n7Pe34xwWohxCsv2bY6h0HMPEvR
         PYKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wrSX0j+EcG826eaPkT4heSeSNOqpVnL4J2dou3r6bpU=;
        b=Pvm/Pkd01CYRvV5To0i3LkBiRwWcOfCXDXDNaxLDsyvIX/4+GF+dNRC6rAFHkLBLky
         tr41lli74DKSbTEIb69OUvW/LTzGvlWftXy72HTdw5nuewaCmCZ1GQX0NkMuue1uHB6l
         Sdk9NqxTWiO1Bu5x7Pn2tdoDL3hLPhBlaIcF6yYKWvvF+z6wppQr7TdZxPZEcZuEmc17
         tsVDKrK03ZphoqkU5pd2WNH9XJEk57gxhNh6yTcosar+PgV9vLwscHlPKBws0jOpsfJs
         wXCl+3K7w6/fkCb7DVmxsvMUOfcXpYCp/fBNS4l8mjrFpDvJIEvAcR45Vvw91LU6HMH/
         VMeg==
X-Gm-Message-State: AJIora/ijmKhDF/UZHKu3IXmZY73xLigBkNETivrJqdVeRtWz6w7hM8n
	d0H/PCmRGaf7xYQOyglOAiidgg==
X-Google-Smtp-Source: AGRyM1vCKQQH1l7q1IMGQAuPOK2vcRK0IrrOUJJDODqAkc/RQyKVXcG4KoUBvmLa9zwDFPNF8Y8Ogg==
X-Received: by 2002:a05:651c:b8b:b0:25e:35f:db9d with SMTP id bg11-20020a05651c0b8b00b0025e035fdb9dmr5084896ljb.397.1658906161546;
        Wed, 27 Jul 2022 00:16:01 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id v3-20020a05651203a300b00478f174c598sm258621lfp.95.2022.07.27.00.16.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 00:16:00 -0700 (PDT)
Message-ID: <dbd15d26-a0c3-f608-9e06-952403a75b48@linaro.org>
Date: Wed, 27 Jul 2022 09:15:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 02/22] dt-bindings: power: Add power-domain header for
 RV1126
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-3-jagan@edgeble.ai>
 <e1d57de9-060b-bd58-2cea-85f41f75e7be@linaro.org>
 <CA+VMnFwNqm57StGj_JyTT2TM56uD-nFjxCekEH6aKYDMhEuxjw@mail.gmail.com>
 <360f7d11-96f4-369e-1289-6c9dc3c49ca4@linaro.org>
 <CA+VMnFzAjif9Af0305B919Dwadgq7MUjiuKJQ3oXwZztTWNX5w@mail.gmail.com>
 <bc7f2302-92f2-de6c-6102-b2cb388c9906@linaro.org>
 <CA+VMnFynxRL7ynLh4ZwGWYj-97pHP4+me8CvCCbm36Sg=4K9AA@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+VMnFynxRL7ynLh4ZwGWYj-97pHP4+me8CvCCbm36Sg=4K9AA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220727_001603_918040_66599BAB 
X-CRM114-Status: GOOD (  19.47  )
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

On 27/07/2022 09:09, Jagan Teki wrote:
> On Wed, 27 Jul 2022 at 12:31, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 27/07/2022 08:52, Jagan Teki wrote:
>>> On Tue, 26 Jul 2022 at 19:22, Krzysztof Kozlowski
>>> <krzysztof.kozlowski@linaro.org> wrote:
>>>>
>>>> On 26/07/2022 15:44, Jagan Teki wrote:
>>>>> On Sun, 24 Jul 2022 at 02:28, Krzysztof Kozlowski
>>>>> <krzysztof.kozlowski@linaro.org> wrote:
>>>>>>
>>>>>> On 23/07/2022 22:43, Jagan Teki wrote:
>>>>>>> Add power-domain header for RV1126 SoC from description in TRM.
>>>>>>>
>>>>>>> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
>>>>>>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
>>>>>>> ---
>>>>>>>  include/dt-bindings/power/rv1126-power.h | 34 ++++++++++++++++++++++++
>>>>>>>  1 file changed, 34 insertions(+)
>>>>>>>  create mode 100644 include/dt-bindings/power/rv1126-power.h
>>>>>>>
>>>>>>> diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
>>>>>>> new file mode 100644
>>>>>>> index 000000000000..f15930ff06f7
>>>>>>> --- /dev/null
>>>>>>> +++ b/include/dt-bindings/power/rv1126-power.h
>>>>>>> @@ -0,0 +1,34 @@
>>>>>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>>>>>
>>>>>> Dual license and a blank line,  please.
>>>>>
>>>>> Yes, all rockchip power includes (at least here) are GPL-2.0 what is
>>>>> the issue with it?
>>>>
>>>> The headers are part of bindings and all bindings should be dual
>>>> licensed, so they can be used in other projects.
>>>>
>>>> Of course if copyright holder does not agree to release it on BSD, then
>>>> it would be fine as exception. Also would be fine from us not to accept
>>>> such bindings. :)
>>>
>>> I don't hold anything here to use dual-licensing. The only thing I'm
>>> wondering here is none of the rockchip power includes (which are
>>> merged) are using dual-licensing they simply have GPL-2.0 which is
>>> used in BSP.  Let me know what you suggest?
>>
>> Hm, I think you asked this above and I answered that dual license should
>> be used. Maybe we misunderstand each other?
> 
> Sorry, I'm asking again as I'm liable to change the license here or not.
> 
>>
>> Do you include in this header any work which cannot be licensed on BSD
>> (e.g. is derivative of existing GPL-2 work)?
> 
> Yes, it is from BSP
> https://github.com/rockchip-linux/kernel/blob/develop-4.19/include/dt-bindings/power/rv1126-power.h

Eh... if you don't have permission to relicense it and you copied the
IDs (although one would say it is not really copyrightable work), then
let it be GPL-2.0. In the future just write the IDs by yourself (not as
derivative work) and dual-license the header.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
