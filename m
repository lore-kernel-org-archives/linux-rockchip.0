Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77270C43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 18:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUPTl2EE3CsT9HaSQkj7MrMLBbDK6G4AB7icTQhUz6g=; b=ZpVV373avNcXsr
	GXB/o+XZDaz3b6pzrdvTKj1O8areAQDpEsLL1SkxLKXI6oIMbMiL0ukPaAJ8m3ZWgaEWQijI9oMv0
	YNSptGxMVzZR0u+jYDaWfsqdV2FQWNJn7c1AsQT8TOT44j0kyX/y+JP5gMVEOsrviF9uHZbhPwQ0G
	dfz+AxUvB7BtKOQKAmOqq9PM41qrTE7TGI3XAGqRBpO8R5KYxiclTAZ8ySYaq4VEybvWWlUdpxeTR
	jqERtQ+gmOeBK6wDtgUFTjGODwXoITzvrAvOVhlOWZGpU5BrzQ35rL8xm+FWDwQhcoGrGWy3xkPOz
	ovOfI95ojC4UEoSvSUBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whtUZ-00000003DrZ-3Hkd;
	Thu, 09 Jul 2026 18:28:59 +0000
Received: from mail-pj2-x04.google.com ([2607:f8b0:4864:39::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whtUW-00000003Dqo-0bRO
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Jul 2026 18:28:57 +0000
Received: by mail-pj2-x04.google.com with SMTP id 98e67ed59e1d1-381191ea2adso116608a91.1
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Jul 2026 11:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783621735; x=1784226535; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=RN+4SkO8PJ9d9SXPrFRpz0v6UaMeYjDz8fSXVOFCTUQ=;
        b=KeDclZzgQiFiBf2siTEpRGdWjizWNVMyxP/265tqZ71uHIPzN6twsUV36CauJH46Q7
         Ioonxucb9HAjr96pNTNzJ4LubnMBXC3mhi7HtZjDwgq50DTzEXNXp+akf7HW+wFVyoy8
         3ahlHCxUitVaqQEAT+RV5gokfKXvoFuIt4Q3Ry2u3h/XWJKp3UKz+3PeBkLiOYbvIFgR
         Yuk9EDxiTNtXzgVQqdILPbrNZJytLfbBK/UqQdpT2h/B+XNGHlkvQFd8UbgQQ0dgnsxA
         ibff65//MO9WryFDee5sfcoV4jpsK/O0O8I3+hC+3d3TNR7BH8wr9ZQ5yFOQjvh++Eg5
         CRBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783621735; x=1784226535;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RN+4SkO8PJ9d9SXPrFRpz0v6UaMeYjDz8fSXVOFCTUQ=;
        b=GJG6eE5w75Tx/Ky1V7ZDVsHcxBRBrsGk7e3t8txnr37/hqjFct4rThmV9XefzkJGYI
         +vZox/fjOWXHkGPfmo4nMjvP/QbM8+o527aPAdUKyZNusvOv7Ws6584BIE1nOhHZqd7g
         KKnbiGxzm9BSc9LCgoNrJqqquwHfErw9T3joAJQfWI4iI+xbxgoZc+XLOa3oQcsq06w/
         pQTeri5ecLmB8nvTkBDlHz/qDyFT03GZ6tcL3n+OkluSBGn+/FrmCr7dHJ9VP6/9fldx
         G3Vn2IFSH+xOI/sJJ8HOPMP16Cubv3rrxww7efQXnPlPRcGMiRRcRIsryw5AZm7dIavv
         Suxg==
X-Forwarded-Encrypted: i=1; AHgh+RoGkNc+lc8q3WflLY423mjM0cd+NHEYlkkJlBB77Z4dJLEh54qP0giYINzw8R1AIvFDODHl4bapN6qx9CPuCg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxnBzWhM3yl/xUs5KO6UdVDW8eG8h4nCsyLGE9T/8lkCN8lCtGS
	1mHzEgS31BOGCXVrRv/D4VSH/LLgQwSftyViwN88KJzeMZmgWuK79dVT
X-Gm-Gg: AfdE7cmZ5WpMOg0qAuP6fD14xOS5rVvZ/AlPVfBxRW1R1ryGKTdXpOPfM9FV4QtV2GZ
	e89ayFGFT5fZKx/ssikSX2XnsbLp5W4O7ezCaUAaBvh/Wg8SNRxE+7XmdQLxCEaSwas7gBux+p+
	O9yZ7k5bKa9tHIZiFPSX/zqfkaxLtwH+siq3XLDC0zikSXeUNFuDQFHKXSUpPEZrZvSnh7D78k8
	y7yRdwzny7cSbuXTKsn3jxOpYR3M4A1vIZfP5xL5Asmog2DU2TTEfFZ3nqqYqS8XiyBDYT7fVpx
	RoZXIYFhKWMJ495mrQMRorVXy+88ZucdKvfZUhkvakO2plQ/Fy802fYeQPrsS5FJ9NRFJa/zzlh
	V7+xIhMFukiXcwIR8NQ6q4o4L6zkeX1OLUeQ9frWVUXhs6QxfAX2mvzVG4+Dlxqkc4MHTmEEwYN
	TJlZQLHZp1iImFhiCf0wbTzCI=
X-Received: by 2002:a05:6a21:7482:b0:3a2:f7bd:a9a5 with SMTP id adf61e73a8af0-3c0bcbc0455mr10030942637.38.1783621734601;
        Thu, 09 Jul 2026 11:28:54 -0700 (PDT)
Received: from ehlo.thunderbird.net ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ca5af7d5946sm4088600a12.7.2026.07.09.11.28.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2026 11:28:54 -0700 (PDT)
Date: Wed, 01 Jul 2026 18:01:30 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Dragan Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add graperain
User-Agent: K-9 Mail for Android
In-Reply-To: <20260701-sturdy-imported-oryx-dfc12a@quoll>
References: <20260630153810.3574714-2-coiaprant@gmail.com> <20260630153810.3574714-4-coiaprant@gmail.com> <20260701-sturdy-imported-oryx-dfc12a@quoll>
Message-ID: <A4CA0393-B348-48A0-B5DB-D1F9098EB37B@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_112856_206569_F9E38DAB 
X-CRM114-Status: GOOD (  16.83  )
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

On July 1, 2026 3:05:45 PM GMT+08:00, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>On Tue, Jun 30, 2026 at 11:38:09PM +0800, Coia Prant wrote:
>> Add graperain to the vendor prefixes.
>> 
>> Link: https://www.graperain.cn/ (China)
>> Link: https://www.graperain.com/ (Global)
>> 
>> Signed-off-by: Coia Prant <coiaprant@gmail.com>
>> ---
>>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>
><form letter>
>This is a friendly reminder during the review process.
>
>It looks like you received a tag and forgot to add it.
>
>If you do not know the process, here is a short explanation:
>Please add Acked-by/Reviewed-by/Tested-by tags when posting new
>versions of patchset, under or above your Signed-off-by tag, unless
>patch changed significantly (e.g. new properties added to the DT
>bindings). Tag is "received", when provided in a message replied to you
>on the mailing list. Tools like b4 can help here. However, there's no
>need to repost patches *only* to add the tags. The upstream maintainer
>will do that for tags received on the version they apply.
>
>Please read:
>https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
>
>If a tag was not added on purpose, please state in the patch changelog
>or cover letter why and what changed.
></form letter>
>
>Best regards,
>Krzysztof
>

My apologies! I am quite new to the kernel submission process and 
missed picking up the tag from v1. 

Since I need to spin a v3 anyway to fix the text wrapping issue in 
patch 2, I will make sure to include the missing tags and resend the 
entire series.

Thanks for your patience and for pointing this out!

Best,
Coia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
