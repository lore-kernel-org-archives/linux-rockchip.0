Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4C89CD13CF
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Sep 2024 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Np+q87YgxldxQdl1JkFPyn20Oz6rsvpNUufWflvU2A4=; b=sFhdhR3QVQu7/l
	uHbu72Fcx/mJrgybL4gle1OdlZ2OsES4RJZvcABGz0lmgrdPFTGkgMmlCoWAFqmHLeMFXll7CuMU3
	9tiR3fGkn2UhhDWeI0Ry0mxMSVDz5HSBp67LC9M90eLWin3o1k1Du3lmn3OT//h83qTsp+YP4IyMD
	QfHZz4m4jGBFmJ8UgteUy47vPSmptogurGdrNFrrWLDfgLcV8ScO+CUtYtIeH7D6l493ly7GQ1S9e
	2sieaTD608fKS9oZ/lzGLgg+nEMkQaIYx4ipV20dm63IA85pGA+nzXb/8CZNtqME80W6ldi/dF+60
	1cvvgU8nH3FcM9GeynTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl8rH-0000000Ep9Z-3hCB;
	Mon, 02 Sep 2024 15:20:47 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl8rE-0000000Ep8Y-0jCT
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Sep 2024 15:20:45 +0000
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-7a7fd79ff71so269818485a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Sep 2024 08:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1725290442; x=1725895242; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=xiBpNTd7P01i/u+Ss9hpT6kKoKywqkPJFpIHasijFy0=;
        b=BlybtcJz4Lkzta197rRd8cFb8Gcbxlcm4h6G4dMpv0X8ikJu1avZOJ5Zyv6JD8I7yO
         1NImGqC1C2yXa5yFr9/OEu2l0Gt8ZNUZQ7On2Vl7xj6/FfdlH8O1y7BoBzbXtr67neVl
         RRUfu2SAysD5QNlnGcRi4LTIFHTFsJJdoMNH4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725290442; x=1725895242;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xiBpNTd7P01i/u+Ss9hpT6kKoKywqkPJFpIHasijFy0=;
        b=YxSMv1JxV5/OIDcNZg1RBEjPriA6UYznfXQq5QqUNslvFCPzV36Szw8CYexarUNAw4
         lqcD+4044LTRMGR5QzzCsSPvMTF2zO3FqMimfIzfOP3990lsONDCbSaRFnWC69mqTrDK
         0S5ny+kfOgZ+lmrrhN3LROSGNpR1VIx39RGTpD6d2NsKAoPw6cyist5FJbpHgh8Hqa/T
         4hYu8ttKAl35uwTEEkcwMi30cAgRCnjwnWUMRDpC6pC+w6bjshLn1z4jD4OveCs8093g
         q5oLtsIrheOpctoV1idb5AunNeUBsOXdX26mm5EPLY40CwWM3Pc7bhpqG1kF0KIHH6TP
         PflQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZ/d+DfvnGgJMaPrPN5hldqKDer2c6I6lpMwDehq/tjSQCJu7mUrR6kYUy/4nxXLnMnIAMuoTBtGdKMCGH+Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YyUWr/GEtYtVf8Fk58qJMIZAx8L0Y2JH65C8KnuEKPdzBu38GQq
	lzafiqr93+i1ejN2qfChvgiwT/yPLeW98ICMU2wuUhvlxunElWk6r6w8KqUXUg==
X-Google-Smtp-Source: AGHT+IEGddCxgqRqe+vE7jpwRTDhsJODyWT1+afqzlrLtqCjBLp9OyPB0x/+8hLyKZ1oIF+izd420A==
X-Received: by 2002:a05:6214:451e:b0:6c3:54a4:eea1 with SMTP id 6a1803df08f44-6c3551c8ecdmr88033546d6.9.1725290441597;
        Mon, 02 Sep 2024 08:20:41 -0700 (PDT)
Received: from [192.168.1.3] (ip68-4-215-93.oc.oc.cox.net. [68.4.215.93])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-45682c82715sm40718581cf.7.2024.09.02.08.20.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Sep 2024 08:20:40 -0700 (PDT)
Message-ID: <1e92f33b-9900-4834-80e1-dcbb48cd8394@broadcom.com>
Date: Mon, 2 Sep 2024 08:20:35 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 01/12] net: dsa: bcm_sf2: Convert using
 devm_clk_get_optional_enabled() in bcm_sf2_sw_probe()
To: Li Zetao <lizetao1@huawei.com>, andrew@lunn.ch, olteanv@gmail.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, wens@csie.org, jernej.skrabec@gmail.com,
 samuel@sholland.org, heiko@sntech.de, yisen.zhuang@huawei.com,
 salil.mehta@huawei.com, hauke@hauke-m.de, alexandre.torgue@foss.st.com,
 joabreu@synopsys.com, mcoquelin.stm32@gmail.com, wellslutw@gmail.com,
 radhey.shyam.pandey@amd.com, michal.simek@amd.com,
 ajay.kathat@microchip.com, claudiu.beznea@tuxon.dev, kvalo@kernel.org,
 u.kleine-koenig@pengutronix.de, jacky_chou@aspeedtech.com
Cc: netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-wireless@vger.kernel.org
References: <20240831021334.1907921-1-lizetao1@huawei.com>
 <20240831021334.1907921-2-lizetao1@huawei.com>
Content-Language: en-US
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
In-Reply-To: <20240831021334.1907921-2-lizetao1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_082044_522198_A178D4C0 
X-CRM114-Status: UNSURE (   8.55  )
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



On 8/30/2024 7:13 PM, Li Zetao wrote:
> Use devm_clk_get_optional_enabled() instead of devm_clk_get_optional() +
> clk_prepare_enable(), which can make the clk consistent with the device
> life cycle and reduce the risk of unreleased clk resources. Since the
> device framework has automatically released the clk resource, there is
> no need to execute clk_disable_unprepare(clk) on the error path, drop
> the out_clk_mdiv and out_clk labels, and the original error process can
> be returned directly.
> 
> Signed-off-by: Li Zetao <lizetao1@huawei.com>

Acked-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
