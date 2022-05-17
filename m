Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9127DC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 09:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8pIiFgPfNXUfVQ66aScxIF81wTOwtiWUJweEmJuxvU=; b=XdOvGbidcQODjl
	X8pKupRKhIrInn8HBX1nTpIAICKtj30gX2I9BaPbk6qNsQ4pfVe5tU8CQi0D0j9Fn7vrzzB0/Yeu1
	ULWqSaQpE5XXh9NLfI+ID0I3GgFRmqpc6B0LI7iN6ewA9VYTXUvHPiTVvK+0EaaON6Q0uxsGRP4fo
	9CtLfyqoTi5hihZBNa+4sBNiPgS5j3WAGG39TKHSYbsUA39/Emliup0x901qqMZFKGs0NTM1TvS/A
	yKC0DvXaa2Ys4uPqm7dIgDER8pIFbLPcbrKVb7mLIlnrVRBzSk05CzqTYmNLrYq4PnNXIuD2XBxFp
	hHbjXcdpBX+nUO3DXoug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqt61-00CdG4-GQ; Tue, 17 May 2022 09:02:25 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqt5n-00Cd8e-Cf
 for linux-rockchip@lists.infradead.org; Tue, 17 May 2022 09:02:12 +0000
Received: by mail-ed1-x52b.google.com with SMTP id eg11so7662112edb.11
 for <linux-rockchip@lists.infradead.org>; Tue, 17 May 2022 02:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=RgPVi+DWNHOkIK0uf2dswKPC6dDGkOdaICJBn5DTVB8=;
 b=iQyYjfRVFFzq25dlyesa10yBjX5Xu9MqzA/v9Uw7PphKpywZkAcdJeNgXOUO9M4Pf4
 ZQ94UqmWmlcuSdNOaVq/wueTsWCit44KazORnavmwqIX7rl7Z63K8Q1aNm0Y9ZyUBvco
 ZP6arhkkm6BNe2Z2jfJhdHh5E/OtX8knwXK6rGw2bkUu0kwmAndAAAWWgnJVQBAo6VlO
 bc8F5PiuBOZv/t0wMKs3ALrNsQiIi/K4G51GjqF9QKVwzqKXr9WBz0+QbmZ9KWX48DGl
 eAXXp0wH23PyGnm76FJdbbm+QU/Dohk0Ib/Dk4SbbT3tSZIVVogyeoEwvPzB1UTl892u
 A7Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=RgPVi+DWNHOkIK0uf2dswKPC6dDGkOdaICJBn5DTVB8=;
 b=c8wP0n1IYJ3kRl3c2wxgQsmVahIty7dz/wiIcSR4UJabyxFu36vyvkbvBIiIJjUHHf
 UTAUyPm8AtvxWjNagiXPP6aOlMSLFORYT3xga1ZgsDAKveZrmsEGLhb+0gg/ViW+ckzZ
 qnB3+7Kvn27rvk6Q+1O4VlccQYSJp3CCMERYlkUDWsGi2gSqxszEJ8ZeJEY9jATz+TcS
 9UmZ2EoL+NV7SDEL0vCCfaHqbRsXQ84ixnEo4tdL9reiwC31U7MHSEZlj0YwTaN6udVA
 n/K76L7IpS/6Mg+rjg96fjR91Qbwgr6zKY2Fc2dsIf6WNOk+LVvQxmIcVXphgbcWH6hX
 xLEQ==
X-Gm-Message-State: AOAM533BQVbCzSOEniDQeYb5zRcSnxZ+UXtSPL4DOmqkJ5mKkVPqfpM1
 989t0iRNcNv9QXWpDXAfHapv3g==
X-Google-Smtp-Source: ABdhPJyE0oiGq6f2ZE0B636lzw80jYuv2cwe46N7jkeL31ZT3I5Ap1rxo3ApQT6rHcSk91j4xh1+gQ==
X-Received: by 2002:a05:6402:363:b0:42a:aa92:c302 with SMTP id
 s3-20020a056402036300b0042aaa92c302mr12755919edw.386.1652778127744; 
 Tue, 17 May 2022 02:02:07 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl.
 [78.11.189.27]) by smtp.gmail.com with ESMTPSA id
 w12-20020aa7da4c000000b0042ab649183asm2450941eds.35.2022.05.17.02.02.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 May 2022 02:02:07 -0700 (PDT)
Message-ID: <c397bff2-b4c0-3f85-e5b9-22f03bc80a2b@linaro.org>
Date: Tue, 17 May 2022 11:02:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 1/3] dt-bindings: display: rockchip: make reg-names
 mandatory for VOP2
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org,
 Sascha Hauer <s.hauer@pengutronix.de>, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 krzk+dt@kernel.org
References: <20220511082109.1110043-1-s.hauer@pengutronix.de>
 <20220511082109.1110043-2-s.hauer@pengutronix.de> <6824319.LvFx2qVVIh@phil>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6824319.LvFx2qVVIh@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_020211_555104_E56247BB 
X-CRM114-Status: GOOD (  10.40  )
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

On 14/05/2022 00:26, Heiko Stuebner wrote:
> Hi Rob, Krzysztof,
> 
> Am Mittwoch, 11. Mai 2022, 10:21:07 CEST schrieb Sascha Hauer:
>> The VOP2 driver relies on reg-names properties, but these are not
>> documented. Add the missing documentation, make reg-names mandatory
>> and increase minItems to 2 as always both register spaces are needed.
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> does this look ok now?

Neither Rob nor me was Cced on original email, so I don't have it in my
mailbox... I would expect that scripts/get_maintainers.pl is a known tool.


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
