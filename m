Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B88CCA1015
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Sep 2025 20:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VY/1d2SGLTny95LSZcwD69gAVE6s23L+dbFmSRFhmPY=; b=rh7EI7xNl6Lyw7
	roIMu3XM1O2VdC+VcAvyAY/xz0j4sibcwN96EbveFRbmk6wmjynmCtpi/sduOIU8eWdNCap3/eYZf
	bomhBHwJsymvhhw23ljwrXcPBC0OuMXbYZlbMVnIb1RGa3vhUZLtMAa31PBVaK3lXzv5RViwJqSL4
	RVwBLLJWQA+cQuOJlQnblmma1ZRRGA1soRboMUMUBkOE+22KMTpmazV1Rx20WgUkEImvAYHJGd/x9
	QEfbzmz1HE0fsaYCaXGcc3mmkC9oMudjXZe9Z1AHF8SHFm4Iy1XmfYJYjwFHKl31d2FottG3LFxj/
	hMoT5AGZDzaKgoKNimUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuGkD-0000000EKV2-0H9R;
	Thu, 04 Sep 2025 20:39:45 +0000
Received: from mail-il1-x161.google.com ([2607:f8b0:4864:20::161])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuEh9-0000000DZ5a-3wa4
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Sep 2025 18:28:29 +0000
Received: by mail-il1-x161.google.com with SMTP id e9e14a558f8ab-3f664c47adbso14547165ab.2
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Sep 2025 11:28:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757010506; x=1757615306;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:dkim-signature:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zUrqc7BcglwR9vmo4HsZlUa9qx6Ep9oVQMWGk598+u0=;
        b=XlLW8fM5zJzfr0lyaym2J6N33mHeCg7EAULKduIYHwjA3gTtrZZG5ZCuzTx4gEHsuv
         uBVeFuvS5qpMMx/ovgK7o4CBVCDw381KvSKF1nr4utV7fK72rX8ecVn0tG08p2RFn3ep
         i6oszddwurlk/dLhsnWlcF+U6YrCaP+EpawU8ciz2yqGYWmwXr2IZU4/rT7XDITYKdQ2
         wDF5I56kz0qRHisxEmP52Cq0w6Ks6XvXGeJL8HMCrCCLYgfccFrO3riZ3FYV5LOV58xv
         MwBA0iNiTUgFiNIfA7DAo+85xc58PlJlx5ZuV692F8aKlCtHqftHPATmAGN7y0RkE0Kr
         ZULw==
X-Forwarded-Encrypted: i=1; AJvYcCV7XLLoxqknRXt8jtaoMuKmjGeKKQWxQWZHtf2dhWVuEdTnQ3lHGavdkO+apWIf1ms/PkUwVl26yGRyjgaLgw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyh0dCiD3AbRTAHbKnxL0pWP8heC7iRk8K+d1gOoYfR28b27R/P
	SCQi8SikoOjrZpeyKTzb7cP1RT1cXHJL+d05sIXFCb0X2Qbf3cE5OlnjhDbpPmbWm3fEc0OvoxJ
	QsoIaAHNcI80/rSDvAGIZfGwJ0biIUmtUdz/5X5zCfUYeN0vDqJoRMR99+njzuuTs9XjYM53Bqt
	mhUxVPy2MHB2AfmT+x224Py8Xjq+4PVPsZWIwi67dECJaA0VFMF8lnd/5+DuhRLYV2bj5s5q5N9
	Kul5YNjR9HdKpgbQDd9yifAERXikLBk
X-Gm-Gg: ASbGnctm0jVq0qpQ0cpLw3IQys7I/5+NWYVxfpuHmH2cenhdNyJ+FgsfqgMvjEuJAw+
	XKtO6Jmj7/dhSdQv3w9n5WC3wnMwAFxDe4OySmwq1fTRQIxCTcOUTvYh5HeZHcQ542RxbDC++Ne
	VmgGgfuKAvRxy3cLlf/QmgDiv1FLVhk1+IqXaercdwhxCUAOYyDf3dgDEZNF0zL4BnsOpdItwqQ
	Uw0E5UlC27X8GcI9BHJ1NgCf9QYx/Bm8LaQFw7oox/D05YNCh59TUsoSyTArFCzPsAZkAGwVZ5d
	M2z/tuo7CC3p62Fd5dXbesibvj7fqKwwDhn8syguve/p2mOuJcXXF9q7/oR6TZMIxHjhfUNPWgk
	av9bmglc67eFQSEE44E4SuIiGa5zI8EVU2jRhAxJiKl3pFwmXK2rSQ6a9mz/G1cA6XSDZGqiPGp
	pMI4ey
X-Google-Smtp-Source: AGHT+IHS/NM+CWJbAeTxO01n/XykcEek1Qu3b+vQJIYEoha/XTqPsJ//Jvh+FmuyXvLCH/kcH3va6dhoQsI3
X-Received: by 2002:a05:6e02:3803:b0:3f3:b6c4:7cce with SMTP id e9e14a558f8ab-3f4026c3393mr312852975ab.27.1757010506352;
        Thu, 04 Sep 2025 11:28:26 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-16.dlp.protect.broadcom.com. [144.49.247.16])
        by smtp-relay.gmail.com with ESMTPS id 8926c6da1cb9f-50d8f28a68csm895010173.27.2025.09.04.11.28.26
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Sep 2025 11:28:26 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-726a649957dso25584836d6.1
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Sep 2025 11:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1757010505; x=1757615305; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zUrqc7BcglwR9vmo4HsZlUa9qx6Ep9oVQMWGk598+u0=;
        b=eNJ6Ulni/BtZt7BV4TfyWRc01imR/v5ChdRcngJ16rWw/3tsJWBRiutFUCaJ57JsgU
         Ls+7KvdiOmCTuQRg6J06T6Z1V54Gv32JEo2jygokv74HjDvlj1y7YzJt54c7ttv73lz1
         fuW5DEfOLFZpDvIHfiPu0pxpo5uHUkJNfCXQc=
X-Forwarded-Encrypted: i=1; AJvYcCXIeUp/89k9z3LsXF7zmEIIeX9T+BwPK1+k5hkGx/CAfGnGCHdvY8NwouuzbuyjYPQ0JigAgOMJpj5qQemlvA==@lists.infradead.org
X-Received: by 2002:a05:6214:f2e:b0:721:ecaf:500c with SMTP id 6a1803df08f44-721ecaf6105mr113127186d6.52.1757010505090;
        Thu, 04 Sep 2025 11:28:25 -0700 (PDT)
X-Received: by 2002:a05:6214:f2e:b0:721:ecaf:500c with SMTP id 6a1803df08f44-721ecaf6105mr113126596d6.52.1757010504453;
        Thu, 04 Sep 2025 11:28:24 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-720b682faa7sm51543216d6.66.2025.09.04.11.28.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 11:28:21 -0700 (PDT)
Message-ID: <e1af06e4-4583-45a9-8404-34a01103e92d@broadcom.com>
Date: Thu, 4 Sep 2025 11:28:17 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
From: Florian Fainelli <florian.fainelli@broadcom.com>
Subject: Re: [PATCH 4/8] clk: rp1: convert from round_rate() to
 determine_rate()
To: Brian Masney <bmasney@redhat.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>,
 Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
 Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>,
 Michal Simek <michal.simek@amd.com>, Bjorn Andersson <andersson@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Andrea della Porta
 <andrea.porta@suse.com>, Maxime Ripard <mripard@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, sophgo@lists.linux.dev,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20250828-clk-round-rate-v2-v1-0-b97ec8ba6cc4@redhat.com>
 <20250828-clk-round-rate-v2-v1-4-b97ec8ba6cc4@redhat.com>
Content-Language: en-US
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
In-Reply-To: <20250828-clk-round-rate-v2-v1-4-b97ec8ba6cc4@redhat.com>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_112828_138323_DFE4D313 
X-CRM114-Status: UNSURE (   7.90  )
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

On 8/28/25 17:38, Brian Masney wrote:
> The round_rate() clk ops is deprecated, so migrate this driver from
> round_rate() to determine_rate() using the Coccinelle semantic patch
> on the cover letter of this series.
> 
> Signed-off-by: Brian Masney <bmasney@redhat.com>

Applied to drivers/next, thanks Brian!
-- 
Florian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
