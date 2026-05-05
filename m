Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7EF8CD3427
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 17:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JwoMbXfn5xHlU+vKokNHeTLfqls24qdxbT4Pks3HF10=; b=kx+RkiUldgJdiVh8rXCjDG9aDC
	K6ChtLS24jN7QX+usKdgCKdxcDaP6DjSQNNXw5fIltRoyAclpoX/mV8xvNHBqETdVnpVICBxA0aQp
	E7fhOylVFqNymc1Y2wA8umK5b14I/nJ+cNfEBmc4En6LykgnBL1MTGbebi1boLPdUQNnxwJQP89o4
	C3Q9bmBxr+sM+V4J59V7hlcYPT3Bd+dIpCP33vJmCQU9L90/DyrNUhOvkrG4+/kd67EoIDrLMgE9i
	Oq3CzMIaEQpwKW7lBUgyCSIXF+A6JkDGmk6ej+PE/Zfzx2/0KLHsZxO6cnfKizYB999W+wY6wMNB3
	TNh8ePhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKJll-0000000H50d-3CI8;
	Tue, 05 May 2026 17:41:17 +0000
Received: from mail-oa1-x64.google.com ([2001:4860:4864:20::64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKJli-0000000H4ze-3g91
	for linux-rockchip@lists.infradead.org;
	Tue, 05 May 2026 17:41:16 +0000
Received: by mail-oa1-x64.google.com with SMTP id 586e51a60fabf-42fc6923f38so86210fac.1
        for <linux-rockchip@lists.infradead.org>; Tue, 05 May 2026 10:41:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778002873; x=1778607673;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EbBVbZQpK7Lvxj1vVsDLr4pX2aQ5pdv85p+B8cI0h8g=;
        b=pp32XlkyPbp65P32JLTsG4SsVZLnJY0Kt2F4/C6vlo/EQqXW69cJDhODJC0KF88gEj
         Rcx+VuuDx/DyjLsJTFKMcx1iW0PJUYn/458blQoUWeL2ujliuB7yizz++ISJyGseT8vI
         rSu3qYQnMw9o9xoJr8mT4GcZgVgeudvg+PzMpLa/Yj9c4zVzUHEZ3bOW17dB9ZhhA+KH
         VHhz6yAHDnHLfkmn/HlyEidR+bexjEcSa8X/+dqEg/QRLvCO3HsgCMLknvBnkbFtctsq
         FFLSQ+LttRDORQO4spbzs8RmG1frKV1a8QPT0e08dVTPFCRd753MDeKlqWSIz9XYspPJ
         g9Ug==
X-Forwarded-Encrypted: i=1; AFNElJ9bUC+qN2zfcMHutKr3autYHpyE0oZf1pBeA2CA3fL2kDh+5hNXTK3qSCYr+EsoB6VIedpUPAwvxd2OACzdVg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzrb8hEIVm1/LKzNlN5HDowbr8v9wkXm+rzcQ+fOjhP68T1Rtkx
	l6Soh4D5Y8yWugpRfnqwc8VL9sdo2N/RqAuTD6OnKEoV1Fp5QFOWclkdUKWKnjnabs6U+ZXOyeU
	Q2/BLhNGNwTrPRwhROAbNZ6h7GIRh7SQO5D9+KTRel5G/EuMQHB48ahvWSeJM7Y+b5qsKiFBpvv
	MwrbkynQ7FGKcxpIGuJ8ouh/pDwtvhK9GyVe2C4p9nvJO4GXRj6NChHJhHJ526c90xKYiypzNCW
	AOijwM9F4CKSlBTs+BEy1QTLTxzvBet
X-Gm-Gg: AeBDieu2amZGhKbLsObcREqmJsSKPsH932e38RSM4a+DFgtO81E1f8kRhTpoLsrsicb
	hMtgzYMZrCsNyXxW/jV/QjfJXslQGKLY2dJp9arWo7yESeliFRDFDsFHNg51cAJW+Q9Ur8aJBO8
	ao0UkZIyIFdSnI0v4QRT57PzEhiSYvYSPV0DVXAzyrjtHhr84hY7LVE1QHZr1PpaQaQ9cou2KOD
	mQsaMOoQWsPPHDHmNIRYiGwDYBJSxI7YUxWXIOsELzgrfmBsafQlfyNxPak4quvO6yGXM7aNKDo
	f7GTstyvGP7T3wkXn7j3a6Q2Y3Rr1+qKcOHf3ncmK+wadKKn9+mhuR/ciofyUZkxNvgtGvCzW6N
	EILcHM7tGdnRxMRW922qXIgSFM7WhPLauBjtwFKSgg9iH2pHg+kRUbcdDAIj795GnHKZPZkBAKJ
	55gPyaLawM8dAsJhywM8zS
X-Received: by 2002:a05:6870:c188:b0:42d:8229:ba3d with SMTP id 586e51a60fabf-434d0d61313mr2326183fac.11.1778002872616;
        Tue, 05 May 2026 10:41:12 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com ([144.49.247.127])
        by smtp-relay.gmail.com with ESMTPS id 586e51a60fabf-434c71e218esm385053fac.5.2026.05.05.10.41.12
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2026 10:41:12 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-902de1c513bso46260085a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 05 May 2026 10:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1778002871; x=1778607671; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=EbBVbZQpK7Lvxj1vVsDLr4pX2aQ5pdv85p+B8cI0h8g=;
        b=J69eaQ/rkHY3KbmWogos4+2C5/RJhIs8CBh3uuelipshRuXS/9pM5WeLq34SJw0yWn
         7n+ToOnPCY0zEs6eO183Jdmvt6W10f4kV7vnLUjX77ZTqXN4PcFnuy7aHj+VlWYuojLk
         J1Rv0o8lezY0Kpjuz9qAtacVHlwyJ64uzqHek=
X-Forwarded-Encrypted: i=1; AFNElJ/RIpJILIdUmXjS3PPn9M0Bj9rkfCZ5qacTuz2BtnnlsY0u3m0DP2as5nmT0v8wkHDQBWh6Ih0bF3jFA1f+ug==@lists.infradead.org
X-Received: by 2002:a05:620a:25c8:b0:8cd:8e8a:3584 with SMTP id af79cd13be357-902e299dd70mr664633685a.11.1778002871623;
        Tue, 05 May 2026 10:41:11 -0700 (PDT)
X-Received: by 2002:a05:620a:25c8:b0:8cd:8e8a:3584 with SMTP id af79cd13be357-902e299dd70mr664627985a.11.1778002871100;
        Tue, 05 May 2026 10:41:11 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8fc2c253259sm1372131985a.24.2026.05.05.10.41.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2026 10:41:10 -0700 (PDT)
Message-ID: <e095fec0-f0fa-4a6f-a758-9d45f804cb3e@broadcom.com>
Date: Tue, 5 May 2026 10:41:08 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] pinctrl: bcm: Move MODULE_DEVICE_TABLE next to the
 table itself
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Linus Walleij <linusw@kernel.org>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20260505094321.75040-3-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US, fr-FR
From: Florian Fainelli <florian.fainelli@broadcom.com>
Autocrypt: addr=florian.fainelli@broadcom.com; keydata=
 xsBNBFPAG8ABCAC3EO02urEwipgbUNJ1r6oI2Vr/+uE389lSEShN2PmL3MVnzhViSAtrYxeT
 M0Txqn1tOWoIc4QUl6Ggqf5KP6FoRkCrgMMTnUAINsINYXK+3OLe7HjP10h2jDRX4Ajs4Ghs
 JrZOBru6rH0YrgAhr6O5gG7NE1jhly+EsOa2MpwOiXO4DE/YKZGuVe6Bh87WqmILs9KvnNrQ
 PcycQnYKTVpqE95d4M824M5cuRB6D1GrYovCsjA9uxo22kPdOoQRAu5gBBn3AdtALFyQj9DQ
 KQuc39/i/Kt6XLZ/RsBc6qLs+p+JnEuPJngTSfWvzGjpx0nkwCMi4yBb+xk7Hki4kEslABEB
 AAHNMEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29tPsLB
 IQQQAQgAywUCZWl41AUJI+Jo+hcKAAG/SMv+fS3xUQWa0NryPuoRGjsA3SAUAAAAAAAWAAFr
 ZXktdXNhZ2UtbWFza0BwZ3AuY29tjDAUgAAAAAAgAAdwcmVmZXJyZWQtZW1haWwtZW5jb2Rp
 bmdAcGdwLmNvbXBncG1pbWUICwkIBwMCAQoFF4AAAAAZGGxkYXA6Ly9rZXlzLmJyb2FkY29t
 Lm5ldAUbAwAAAAMWAgEFHgEAAAAEFQgJChYhBNXZKpfnkVze1+R8aIExtcQpvGagAAoJEIEx
 tcQpvGagWPEH/2l0DNr9QkTwJUxOoP9wgHfmVhqc0ZlDsBFv91I3BbhGKI5UATbipKNqG13Z
 TsBrJHcrnCqnTRS+8n9/myOF0ng2A4YT0EJnayzHugXm+hrkO5O9UEPJ8a+0553VqyoFhHqA
 zjxj8fUu1px5cbb4R9G4UAySqyeLLeqnYLCKb4+GklGSBGsLMYvLmIDNYlkhMdnnzsSUAS61
 WJYW6jjnzMwuKJ0ZHv7xZvSHyhIsFRiYiEs44kiYjbUUMcXor/uLEuTIazGrE3MahuGdjpT2
 IOjoMiTsbMc0yfhHp6G/2E769oDXMVxCCbMVpA+LUtVIQEA+8Zr6mX0Yk4nDS7OiBlvOwE0E
 U8AbwQEIAKxr71oqe+0+MYCc7WafWEcpQHFUwvYLcdBoOnmJPxDwDRpvU5LhqSPvk/yJdh9k
 4xUDQu3rm1qIW2I9Puk5n/Jz/lZsqGw8T13DKyu8eMcvaA/irm9lX9El27DPHy/0qsxmxVmU
 pu9y9S+BmaMb2CM9IuyxMWEl9ruWFS2jAWh/R8CrdnL6+zLk60R7XGzmSJqF09vYNlJ6Bdbs
 MWDXkYWWP5Ub1ZJGNJQ4qT7g8IN0qXxzLQsmz6tbgLMEHYBGx80bBF8AkdThd6SLhreCN7Uh
 IR/5NXGqotAZao2xlDpJLuOMQtoH9WVNuuxQQZHVd8if+yp6yRJ5DAmIUt5CCPcAEQEAAcLB
 gQQYAQIBKwUCU8AbwgUbDAAAAMBdIAQZAQgABgUCU8AbwQAKCRCTYAaomC8PVQ0VCACWk3n+
 obFABEp5Rg6Qvspi9kWXcwCcfZV41OIYWhXMoc57ssjCand5noZi8bKg0bxw4qsg+9cNgZ3P
 N/DFWcNKcAT3Z2/4fTnJqdJS//YcEhlr8uGs+ZWFcqAPbteFCM4dGDRruo69IrHfyyQGx16s
 CcFlrN8vD066RKevFepb/ml7eYEdN5SRALyEdQMKeCSf3mectdoECEqdF/MWpfWIYQ1hEfdm
 C2Kztm+h3Nkt9ZQLqc3wsPJZmbD9T0c9Rphfypgw/SfTf2/CHoYVkKqwUIzI59itl5Lze+R5
 wDByhWHx2Ud2R7SudmT9XK1e0x7W7a5z11Q6vrzuED5nQvkhAAoJEIExtcQpvGagugcIAJd5
 EYe6KM6Y6RvI6TvHp+QgbU5dxvjqSiSvam0Ms3QrLidCtantcGT2Wz/2PlbZqkoJxMQc40rb
 fXa4xQSvJYj0GWpadrDJUvUu3LEsunDCxdWrmbmwGRKqZraV2oG7YEddmDqOe0Xm/NxeSobc
 MIlnaE6V0U8f5zNHB7Y46yJjjYT/Ds1TJo3pvwevDWPvv6rdBeV07D9s43frUS6xYd1uFxHC
 7dZYWJjZmyUf5evr1W1gCgwLXG0PEi9n3qmz1lelQ8lSocmvxBKtMbX/OKhAfuP/iIwnTsww
 95A2SaPiQZA51NywV8OFgsN0ITl2PlZ4Tp9hHERDe6nQCsNI/Us=
In-Reply-To: <20260505094321.75040-3-krzysztof.kozlowski@oss.qualcomm.com>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_104114_963602_08F0A287 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 5/5/26 02:43, 'Krzysztof Kozlowski' via BCM-KERNEL-FEEDBACK-LIST,PDL 
wrote:
> By convention MODULE_DEVICE_TABLE() immediately follows the ID table it
> exports, because this is easier to read and verify.  It also makes more
> sense since #ifdef for ACPI or OF could hide both of them.
> 
> Most of the pin controller drivers already have this correctly placed,
> so adjust the other drivers.  No functional impact.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---

late to the party:

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
